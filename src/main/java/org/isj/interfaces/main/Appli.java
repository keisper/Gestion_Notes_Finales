package org.isj.interfaces.main;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;
import javafx.stage.Window;

import java.io.File;
import java.net.URL;

public class Appli extends Application {

    public static Window getPrimaryStage;
    static Stage primaryStage;

    @Override
    public void start(Stage primaryStage) {
        try {
            this.primaryStage = primaryStage;
            this.primaryStage.setTitle("ISJ Application");

            this.primaryStage.getIcons().add(new Image("images/logo_isj.jpeg"));

            showSeConnecter();
        } catch (Exception e) {
            e.printStackTrace();
            e.getMessage();
        }

    }

    public void showSeConnecter() {
        try {
            if (!new File("config.properties").exists()) {
                FXMLLoader loader = new FXMLLoader();
                loader.setLocation(getClass().getClassLoader().getResource("view/Properties.fxml"));
                BorderPane page = loader.load();

/*                URL url2 = getClass().getClassLoader().getResource("view/Properties.fxml");
                System.out.println("File 2:" + url2.getPath());

                File file2 = new File(url2.getPath());
                if (file2.exists())
                    System.out.println("File 2 existe");*/

                Stage dialogStage = new Stage();
                dialogStage.setTitle("Propriétés de l'application");
                dialogStage.getIcons().add(new Image("images/logo_isj.jpeg"));
                Scene scene = new Scene(page);
                dialogStage.setScene(scene);
                dialogStage.show();
            } else {
                FXMLLoader loader = new FXMLLoader();
                loader.setLocation(Appli.class.getClassLoader().getResource("view/Connexion.fxml"));
                //loader.setLocation(getClass().getClassLoader().getResource("Connexion.fxml"));
                AnchorPane connex = loader.load();

                Scene fen = new Scene(connex);
                primaryStage.setScene(fen);
                primaryStage.show();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public static Stage getPrimaryStage() {

        return primaryStage;
    }

    public static void main(String[] args) {
        launch(args);
    }
}


