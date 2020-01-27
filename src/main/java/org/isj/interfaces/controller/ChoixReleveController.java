package org.isj.interfaces.controller;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.concurrent.Task;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TextField;
import org.isj.etats.GeneratePDF;
import org.isj.interfaces.main.Appli;
import org.isj.interfaces.util.litsenners.AutoCompleteComboBoxListener;
import org.isj.metier.entites.Classe;
import org.isj.metier.facade.ClasseFacade;

import java.net.URL;
import java.util.ResourceBundle;

public class ChoixReleveController implements Initializable {

    @FXML
    private TextField matricule;

    @FXML
    private ComboBox<Classe> classe;
    ObservableList<Classe> listeClasses = FXCollections.observableArrayList();

    @FXML
    private TextField annee;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        listeClasses();
    }

    public void listeClasses() {
        listeClasses.addAll(new ClasseFacade().lister());
        classe.setItems(listeClasses);
    }

    @FXML
    public void handleOK() {

        Task<Void> task = new Task<Void>() {
            @Override
            public Void call() throws Exception {
                String mat, ann;
                mat = matricule.getText();
                Classe clas = (Classe) classe.getSelectionModel().getSelectedItem();
                String clas1 = clas.getLibelle();
                Integer niv = clas.getNiveau().getNumero();
                String fil = clas.getSpecialite().getFiliere().toString();
                ann = annee.getText();
                new GeneratePDF().genererReleve(mat, clas1, Integer.parseInt(ann));

                return null ;
            }
        };
        task.setOnSucceeded(e -> {
            Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
            alert.initOwner(Appli.getPrimaryStage);
            alert.setTitle("ISJ");
            alert.setContentText("Releve de notes produit avec succes !");
            alert.show();
        });
        task.setOnFailed(e -> {
            e.getSource().getException().printStackTrace();
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.initOwner(Appli.getPrimaryStage);
            alert.setTitle("ISJ");
            alert.setContentText("Releve de notes échoué !");
            alert.show();
        });

        new Thread(task).start();

    }
}
