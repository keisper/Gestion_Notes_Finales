package org.isj.etats;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.*;

import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
import org.isj.metier.Isj;
import org.isj.metier.entites.Etudiant;
import org.isj.metier.facade.AbstractFacade;
import org.isj.metier.facade.UtilisateurFacade;

/**
 * @author USER
 */
public class GeneratePDF {

    public static void genererReleve(String matricule, String classe, int annee) throws Exception {

        Etudiant etudiant = new Isj().retrouverEtudiantMatricule(matricule);
        try {
            Connection connection = null;

            long t1 = System.currentTimeMillis();
            // - ConnexionController à la base
/*            Driver monDriver = new com.mysql.jdbc.Driver();
            DriverManager.registerDriver(monDriver);
            //connection = DriverManager.getConnection(url, login, password);*/
            connection = AbstractFacade.getConnection();

            // - Chargement et compilation du rapport
            JasperDesign jasperDesign = JRXmlLoader.load(GeneratePDF.class.getClassLoader().getResourceAsStream("etats/ReleveFinal.jrxml"));
            JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);

            // - Paramètres à envoyer au rapport
            Map parameters = new HashMap();
            SimpleDateFormat dateFormat = new SimpleDateFormat("dd MMMMMM yyyy");
            parameters.put("filiere", etudiant.getClasse().getSpecialite().getFiliere());
            parameters.put("nom_etudiant", etudiant.getNom() + " " + etudiant.getPrenom());
            parameters.put("date_naissance", dateFormat.format(etudiant.getDateNaissance()));
            parameters.put("classe", classe);
            parameters.put("niveau", etudiant.getClasse().getNiveau().getNumero());
            parameters.put("annee_academique", annee);
            parameters.put("sexe", etudiant.getSexe());
            parameters.put("matricule", matricule);
            parameters.put("image_isj", new File("images/logo_isj.jpeg").getAbsolutePath());
            parameters.put("image_uy1", new File("images/logo_uy1.jpg").getAbsolutePath());
            parameters.put("image_ensp", new File("images/logo_ensp.jpg").getAbsolutePath());
            parameters.put("numero", etudiant.getCode() + annee);

            // - Execution du rapport
            JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameters, connection);

            // - Création du rapport au format PDF
            File f = new File("etats/Releve-" + matricule + "-" + classe + "-" + System.currentTimeMillis() + ".pdf");
            f.createNewFile();
            JasperExportManager.exportReportToPdfFile(jasperPrint, f.getAbsolutePath());

            long t2 = System.currentTimeMillis();
            System.out.println("Fin d'impression du releve en..." + (t2 - t1) / 60000 + " min");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void genererFicheAbsence(String libelle, Integer niveau, String filiere, Integer annee_academique, String semestre) throws Exception {

        Connection connection = null;

        try {
            long t1 = System.currentTimeMillis();
            // - ConnexionController à la base
/*            Driver monDriver = new com.mysql.jdbc.Driver();
            DriverManager.registerDriver(monDriver);
            //connection = DriverManager.getConnection(url, login, password);*/
            connection = AbstractFacade.getConnection();

/*            String path="images/logo_isj.jpeg";
            System.out.println(new File(path).getAbsolutePath());
            System.out.println(new File(path).getPath());
            System.out.println(new File(path).getCanonicalPath());
            System.out.println(new File(path).getAbsoluteFile().getCanonicalPath());
            System.out.println(new File(path).getAbsoluteFile().getPath());
            System.out.println(new File(path).getAbsoluteFile().getAbsoluteFile());*/

            // - Chargement et compilation du rapport
            JasperDesign jasperDesign = JRXmlLoader.load(GeneratePDF.class.getClassLoader().getResourceAsStream("etats/FicheAbsences.jrxml"));
            JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);

            // - Paramètres à envoyer au rapport
            Map parameters = new HashMap();
            parameters.put("filiere", filiere);
            parameters.put("niveau", niveau);
            parameters.put("annee_academique", annee_academique);
            parameters.put("semestre", semestre);
            parameters.put("classe", libelle);
            parameters.put("logo_isj", new File("images/logo_isj.jpeg").getAbsolutePath());

            // - Execution du rapport
            JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameters, connection);
            // - Création du rapport au format PDF
            String destination = new File("etats/" + "Fiche " + filiere + "-" + niveau + "-" + semestre + "-" + System.currentTimeMillis() + ".pdf").getAbsolutePath();
            new File(destination).createNewFile();
            System.out.println("Generation de l'etat..." + destination);
            JasperExportManager.exportReportToPdfFile(jasperPrint, destination);
            System.out.println("Etat Genere...");

            long t2 = System.currentTimeMillis();

            System.out.println("Fin d'impression de la fiche en..." + (t2 - t1) / 60000 + " min");
            //connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void genererPv(Integer niveau, String filiere, Integer annee_academique, String semestre) throws Exception {

        try {
            Connection connection = null;
            long t1 = System.currentTimeMillis();
            System.out.println("Début d'impression du PV..." + t1);
            // - ConnexionController à la base
/*            Driver monDriver = new com.mysql.jdbc.Driver();
            DriverManager.registerDriver(monDriver);
            //connection = DriverManager.getConnection(url, login, password);*/
            connection = AbstractFacade.getConnection();

            // - Chargement et compilation du rapport
            JasperDesign jasperDesign = JRXmlLoader.load(GeneratePDF.class.getClassLoader().getResourceAsStream("etats/PvFinal.jrxml"));
            JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);
            org.eclipse.jdt.internal.compiler.Compiler j;

            // - Paramètres à envoyer au rapport
            Map parameters = new HashMap();
            parameters.put("filiere", filiere);
            parameters.put("niveau", niveau);
            parameters.put("annee_academique", annee_academique);
            parameters.put("semestre", semestre);
            parameters.put("image_isj", new File("images/logo_isj.jpeg").getAbsolutePath());

            // - Execution du rapport
            JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameters, connection);

            // - Création du rapport au format PDF
            File f = new File("etats/" + "PV-" + filiere + "-" + niveau + "-" + semestre + "-" + System.currentTimeMillis() + ".pdf");
            f.createNewFile();
            JasperExportManager.exportReportToPdfFile(jasperPrint, f.getAbsolutePath());
            long t2 = System.currentTimeMillis();
            System.out.println("Fin d'impression du PV en..." + (t2 - t1) / 60000 + " min");
            //connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) throws Exception {

        //long timer= (long) (1579791257166.0-1579783528456.0);

        Properties properties = new Isj().readSettingApplication();
        new UtilisateurFacade().setProperties((Map) properties);

        //genererPv(1, "Ingenieur", 2019, "Semestre 1");
        genererReleve("1920i001", "ING 1", 2019);

    }

}
