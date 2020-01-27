/*
 Navicat Premium Data Transfer

 Source Server         : MySQL Local
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : isj

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 08/10/2019 16:25:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for annee_academique
-- ----------------------------
DROP TABLE IF EXISTS `annee_academique`;
CREATE TABLE `annee_academique`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_cloture` datetime(0) NULL DEFAULT NULL,
  `date_creation` datetime(0) NOT NULL,
  `date_debut` datetime(0) NULL DEFAULT NULL,
  `date_modification` datetime(0) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut_vie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `createur` bigint(20) NOT NULL,
  `modificateur` bigint(20) NOT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_annee_academique_createur`(`createur`) USING BTREE,
  INDEX `FK_annee_academique_modificateur`(`modificateur`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 74 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of annee_academique
-- ----------------------------
INSERT INTO `annee_academique` VALUES (70, '2017-08-29 22:00:00', '2019-08-27 19:40:28', '2016-08-30 22:00:00', '2019-08-27 19:40:28', 'Année Académique 2016/2017', '', '386303935', 'ACTIVE', 1, 1);
INSERT INTO `annee_academique` VALUES (71, '2018-08-29 22:00:00', '2019-08-27 19:40:58', '2017-08-30 22:00:00', '2019-08-27 19:40:58', 'Année Académique 2017/2018', '', '1284927145', 'ACTIVE', 1, 1);
INSERT INTO `annee_academique` VALUES (72, '2019-08-29 22:00:00', '2019-08-27 19:41:26', '2018-08-30 22:00:00', '2019-08-27 19:41:26', 'Année Académique 2018/2019', '', '2093022202', 'ACTIVE', 1, 1);
INSERT INTO `annee_academique` VALUES (73, '2020-08-29 22:00:00', '2019-08-27 19:41:55', '2019-08-30 22:00:00', '2019-08-27 19:41:55', 'Année Académique 2019/2020', '', '-1237189404', 'ACTIVE', 1, 1);

-- ----------------------------
-- Table structure for anonymat
-- ----------------------------
DROP TABLE IF EXISTS `anonymat`;
CREATE TABLE `anonymat`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_creation` datetime(0) NOT NULL,
  `date_modification` datetime(0) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `numero_anonymat` int(11) NULL DEFAULT NULL,
  `numero_table` int(11) NULL DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut_vie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `createur` bigint(20) NOT NULL,
  `evaluation` bigint(20) NULL DEFAULT NULL,
  `modificateur` bigint(20) NOT NULL,
  `est_inscrit` bigint(20) NULL DEFAULT NULL,
  `note` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_anonymat_createur`(`createur`) USING BTREE,
  INDEX `FK_anonymat_note`(`note`) USING BTREE,
  INDEX `FK_anonymat_modificateur`(`modificateur`) USING BTREE,
  INDEX `FK_anonymat_est_inscrit`(`est_inscrit`) USING BTREE,
  INDEX `FK_anonymat_evaluation`(`evaluation`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6680 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for candidat
-- ----------------------------
DROP TABLE IF EXISTS `candidat`;
CREATE TABLE `candidat`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `DTYPE` varchar(31) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_creation` datetime(0) NOT NULL,
  `date_modification` datetime(0) NOT NULL,
  `date_naissance` datetime(0) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ecole_origine` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nom` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nom_de_la_mere` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nom_du_pere` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `prenom` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `profession_de_la_mere` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `profession_du_pere` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `region_origine` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sexe` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `signature` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `statut_vie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telephone` int(11) NOT NULL,
  `telephone_de_la_mere` int(11) NULL DEFAULT NULL,
  `telephone_du_pere` int(11) NULL DEFAULT NULL,
  `classe` bigint(20) NULL DEFAULT NULL,
  `createur` bigint(20) NOT NULL,
  `modificateur` bigint(20) NOT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  UNIQUE INDEX `telephone`(`telephone`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_candidat_classe`(`classe`) USING BTREE,
  INDEX `FK_candidat_modificateur`(`modificateur`) USING BTREE,
  INDEX `FK_candidat_createur`(`createur`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10526 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of candidat
-- ----------------------------
INSERT INTO `candidat` VALUES (281, 'Etudiant', '2019-09-12 17:53:40', '2019-09-12 17:53:40', '1998-12-17 23:00:00', NULL, 'UNIVERSITE DE YAOUNDE (ICT4D)', 'rutrum.non.hendrerit@orci.ca', NULL, 'KASSA', 'Deirdre Roman', 'Yvette Dale', 'Phillipe', '', '', 'OUEST', 'MASCULIN', '-883049555', 'ACTIVE', 'ACTIVE', 658544657, 674000847, 694160102, 64, 1, 1);
INSERT INTO `candidat` VALUES (282, 'Etudiant', '2019-09-12 17:53:40', '2019-09-12 17:53:40', '1998-12-18 23:00:00', NULL, 'NESCAS', 'est.ac@pede.ca', NULL, 'OBIANG', 'Destiny Potter', 'Helen Booth', 'Gregroire', '', '', 'OUEST', 'MASCULIN', '-883048563', 'ACTIVE', 'ACTIVE', 658725338, 677640961, 677607064, 64, 1, 1);
INSERT INTO `candidat` VALUES (283, 'Etudiant', '2019-09-12 17:53:40', '2019-09-12 17:53:40', '1998-12-19 23:00:00', NULL, 'COLLEGE SAINT BENOIT', 'eu@laciniaorci.co.uk', NULL, 'KOUMBA', 'Petra Stewart', 'Yoko Roy', 'Steve', '', '', 'OUEST', 'MASCULIN', '-883047571', 'ACTIVE', 'ACTIVE', 658663287, 677454346, 677882493, 64, 1, 1);
INSERT INTO `candidat` VALUES (284, 'Etudiant', '2019-09-12 17:53:40', '2019-09-12 17:53:40', '1998-12-20 23:00:00', NULL, 'ENSPT', 'rutrum@non.co.uk', NULL, 'NGUEMA', 'Blair Tran', 'Jessamine Dalton', 'Marc', '', '', 'BRETAGNE', 'MASCULIN', '-883046579', 'ACTIVE', 'ACTIVE', 658686458, 699824737, 699934699, 64, 1, 1);
INSERT INTO `candidat` VALUES (285, 'Etudiant', '2019-09-12 17:53:40', '2019-09-12 17:53:40', '1998-12-21 23:00:00', NULL, 'COLLEGE FLEMING', 'purus@vulputate.org', NULL, 'ONDO', 'Carissa Gibbs', 'Jerome Ewing', 'Ivan', '', '', 'Ouest', 'MASCULIN', '-883045587', 'ACTIVE', 'ACTIVE', 658608212, 677623877, 677218094, 64, 1, 1);
INSERT INTO `candidat` VALUES (286, 'Etudiant', '2019-09-12 17:53:40', '2019-09-12 17:53:40', '1998-12-22 23:00:00', NULL, 'LYCEE CLASSIQUE DE BAFOUSSAM', 'nonummy@orcisemeget.net', NULL, 'EDZANG', 'Felicia Velasquez', 'Lance Robles', 'Yann', '', '', 'OUEST', 'MASCULIN', '-883044595', 'ACTIVE', 'ACTIVE', 658605430, 699848953, 677947592, 64, 1, 1);
INSERT INTO `candidat` VALUES (287, 'Etudiant', '2019-09-12 17:53:40', '2019-09-12 17:53:40', '1998-12-23 23:00:00', NULL, 'UNIVERSITE DE YAOUNDE 1 (ICT4D)', 'elementum.sem@montesnascetur.co.uk', NULL, 'NGOMO', 'Hanna Cabrera', 'Caesar Bolton', 'Jessica', '', '', 'OUEST', 'FEMININ', '-883043603', 'ACTIVE', 'ACTIVE', 658571858, 699460982, 697768481, 64, 1, 1);
INSERT INTO `candidat` VALUES (288, 'Etudiant', '2019-09-12 17:53:41', '2019-09-12 17:53:41', '1998-12-24 23:00:00', NULL, 'UNIVERSITE DE YAOUNDE I FACULTE DES SCIENCES', 'libero@magnamalesuadavel.net', NULL, 'MOUSSAVOU', 'Tana Ortega', 'George Mcguire', 'Marie', '', '', 'OUEST', 'FEMININ', '-883042611', 'ACTIVE', 'ACTIVE', 658348470, 699298367, 699879606, 64, 1, 1);
INSERT INTO `candidat` VALUES (289, 'Etudiant', '2019-09-12 17:53:41', '2019-09-12 17:53:41', '1998-12-25 23:00:00', NULL, 'UNIVERSITE DE YAOUNDE I FACULTE DES SCIENCES', 'vestibulum.nec.euismod@ridiculusmusAenean.edu', NULL, 'PAMBO', 'Gay Mckay', 'Calvin Roman', 'Desia', '', '', 'OUEST', 'FEMININ', '-883041619', 'ACTIVE', 'ACTIVE', 657892083, 699008519, 696296021, 64, 1, 1);
INSERT INTO `candidat` VALUES (290, 'Etudiant', '2019-09-12 17:53:41', '2019-09-12 17:53:41', '1998-12-26 23:00:00', NULL, 'UNIVERSITE DE YAOUNDE I FACULTE DES SCIENCES', 'ut.nulla.Cras@senectusetnetus.ca', NULL, 'MAMBO', 'Clio Hancock', 'Justina Mays', 'Denisia', '', '', 'OUEST', 'FEMININ', '-883039976', 'ACTIVE', 'ACTIVE', 658778023, 0, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (291, 'Etudiant', '2019-09-12 17:53:41', '2019-09-12 17:53:41', '1998-12-27 23:00:00', NULL, 'LYCEE BILINGUE DE MENDONG', 'Nulla.facilisis.Suspendisse@Etiamimperdiet.org', NULL, 'TARTINA', 'Xena Castillo', 'Amena Hardy', 'Mamadou', '', '', 'OUEST', 'MASCULIN', '-883038984', 'ACTIVE', 'ACTIVE', 658765551, 677810123, 677810123, 64, 1, 1);
INSERT INTO `candidat` VALUES (292, 'Etudiant', '2019-09-12 17:53:41', '2019-09-12 17:53:41', '1998-12-28 23:00:00', NULL, 'UNIVERSITE DE YAOUNDE I FACULTE DES SCIENCES', 'dis@montesnascetur.ca', NULL, 'NUTELLA', 'Brynn Solomon', 'Hamish Woods', 'Victoire', '', '', 'CENTRE', 'FEMININ', '-883037992', 'ACTIVE', 'ACTIVE', 658203139, 670094999, 670910402, 64, 1, 1);
INSERT INTO `candidat` VALUES (293, 'Etudiant', '2019-09-12 17:53:41', '2019-09-12 17:53:41', '1998-12-29 23:00:00', NULL, 'UNIVERSITE DE BUEA', 'hymenaeos.Mauris@quis.com', NULL, 'TANDANOU', 'Tana Fry', 'Lucius Wolfe', 'Merveille', '', '', 'OUEST', 'FEMININ', '-883037000', 'ACTIVE', 'ACTIVE', 657938598, 673793205, 242020471, 64, 1, 1);
INSERT INTO `candidat` VALUES (294, 'Etudiant', '2019-09-12 17:53:42', '2019-09-12 17:53:42', '1998-12-30 23:00:00', NULL, 'UNIVERSITE DE YAOUNDE 1 (ICT4D)', 'ullamcorper@sollicitudinorci.org', NULL, 'NDONDI', 'Breanna Bentley', 'Brody Wade', 'Cena', '', '', 'OUEST', 'MASCULIN', '-883036008', 'ACTIVE', 'ACTIVE', 658830163, 677000375, 677792655, 64, 1, 1);
INSERT INTO `candidat` VALUES (295, 'Etudiant', '2019-09-12 17:53:42', '2019-09-12 17:53:42', '1998-12-31 23:00:00', NULL, 'UNIVERSITE DE BUEA', 'nunc.Quisque.ornare@cursusluctus.ca', NULL, 'NDAMA', 'Jordan Eaton', 'Ariel Brooks', 'Rigobert', '', '', 'SUD', 'MASCULIN', '-883035016', 'ACTIVE', 'ACTIVE', 658014448, 677589196, 677616535, 64, 1, 1);
INSERT INTO `candidat` VALUES (296, 'Etudiant', '2019-09-12 17:53:42', '2019-09-12 17:53:42', '1999-01-01 23:00:00', NULL, 'COLLEGE MARIE ALBERT', 'convallis.erat@sem.org', NULL, 'BISSAGHE', 'Cassady Nelson', 'Maggie Anderson', 'Chloe', '', '', 'Ouest', 'FEMININ', '-883034024', 'ACTIVE', 'ACTIVE', 658694972, 699302414, 693222744, 65, 1, 1);
INSERT INTO `candidat` VALUES (297, 'Etudiant', '2019-09-12 17:53:42', '2019-09-12 17:53:42', '1999-01-02 23:00:00', NULL, 'UNIVERSITE DE YAOUNDE I FACULTE DES SCIENCES', 'vestibulum.neque.sed@vel.co.uk', NULL, 'EMANE', 'Willow Lambert', 'Boris Witt', 'Wubembi', '', '', 'OUEST', 'FEMININ', '-883033032', 'ACTIVE', 'ACTIVE', 657972864, 670601545, 677487105, 65, 1, 1);
INSERT INTO `candidat` VALUES (298, 'Etudiant', '2019-09-12 17:53:43', '2019-09-12 17:53:43', '1999-01-03 23:00:00', NULL, 'UNIVERSITE DE YAOUNDE I FACULTE DES SCIENCES', 'tellus.sem.mollis@scelerisquemollisPhasellus.com', NULL, 'EMANA', 'Larissa Williamson', 'Catherine Lowery', 'Theo', '', '', 'SUD', 'MASCULIN', '-883032040', 'ACTIVE', 'ACTIVE', 658218858, 677577751, 677785786, 65, 1, 1);
INSERT INTO `candidat` VALUES (299, 'Etudiant', '2019-09-12 17:53:43', '2019-09-12 17:53:43', '1999-01-04 23:00:00', NULL, 'COLLEGE VOGT', 'venenatis.a.magna@nunc.com', NULL, 'ELEGUET', 'Keely Cote', 'Caleb Woodward', 'Patrick', '', '', 'Sud', 'MASCULIN', '-883031048', 'ACTIVE', 'ACTIVE', 658107562, 699849761, 699849761, 65, 1, 1);
INSERT INTO `candidat` VALUES (300, 'Etudiant', '2019-09-12 17:53:43', '2019-09-12 17:53:43', '1999-01-05 23:00:00', NULL, 'LYCEE GENERAL LECLERC', 'pharetra.Nam.ac@condimentum.co.uk', NULL, 'GANDONOU', 'Joan Edwards', 'Aristotle Holder', 'Loricka', '', '', 'CENTRE', 'FEMININ', '-883029405', 'ACTIVE', 'ACTIVE', 658308229, 698312070, 699808633, 65, 1, 1);
INSERT INTO `candidat` VALUES (301, 'Etudiant', '2019-09-12 17:53:43', '2019-09-12 17:53:43', '1999-01-06 23:00:00', NULL, 'LYCEE MGR BESSIEUX', 'felis.ullamcorper@egetipsumSuspendisse.ca', NULL, 'POUNOU', 'Isabelle Morris', 'Nevada Calderon', 'Gloria', '', '', 'OUEST', 'FEMININ', '-883028413', 'ACTIVE', 'ACTIVE', 658749261, 699569571, 699924195, 65, 1, 1);
INSERT INTO `candidat` VALUES (302, 'Etudiant', '2019-09-12 17:53:43', '2019-09-12 17:53:43', '1999-01-07 23:00:00', NULL, 'LYCEE GENERAL LECLERC', 'velit@semegestasblandit.net', NULL, 'MAPONGOU', 'Chantale Villarreal', 'Kerry Murphy', 'Antho', '', '', 'OUEST', 'FEMININ', '-883027421', 'ACTIVE', 'ACTIVE', 658623485, 0, 696785339, 65, 1, 1);
INSERT INTO `candidat` VALUES (303, 'Etudiant', '2019-09-12 17:53:43', '2019-09-12 17:53:43', '1999-01-08 23:00:00', NULL, 'LYCEE MGR BESSIEUX', 'auctor@milaciniamattis.edu', NULL, 'MALI', 'Emerald Edwards', 'Wade Buckner', 'Gisela', '', '', 'OUEST', 'FEMININ', '-883026429', 'ACTIVE', 'ACTIVE', 658670801, 0, 0, 65, 1, 1);
INSERT INTO `candidat` VALUES (304, 'Etudiant', '2019-09-12 17:53:44', '2019-09-12 17:53:44', '1999-01-09 23:00:00', NULL, 'UNIVERSITE DE YAOUNDE I FACULTE DES SCIENCES', 'ut@nisl.org', NULL, 'AYANG', 'Inga Terrell', 'Quinn Mccall', 'Emmanuelle', '', '', 'OUEST', 'FEMININ', '-883025437', 'ACTIVE', 'ACTIVE', 657908545, 696664700, 0, 65, 1, 1);
INSERT INTO `candidat` VALUES (305, 'Etudiant', '2019-09-12 17:53:44', '2019-09-12 17:53:44', '1999-01-10 23:00:00', NULL, 'UNIVERSITE DE YAOUNDE I FACULTE DES SCIENCES', 'ligula@Nullam.edu', NULL, 'RENOMBO', 'Virginia Gillespie', 'Judah Davenport', 'Berna', '', '', 'OUEST', 'FEMININ', '-883024445', 'ACTIVE', 'ACTIVE', 658696936, 699816006, 699871636, 65, 1, 1);
INSERT INTO `candidat` VALUES (306, 'Etudiant', '2019-09-12 17:53:44', '2019-09-12 17:53:44', '1999-01-11 23:00:00', NULL, 'UNIVERSITE DE BUEA', 'Curae.Donec.tincidunt@magnaSed.ca', NULL, 'NZANG', 'Hiroko Odonnell', 'Phillip Randolph', 'Jussy', '', '', 'OUEST', 'FEMININ', '-883023453', 'ACTIVE', 'ACTIVE', 658475252, 675000847, 695160102, 65, 1, 1);
INSERT INTO `candidat` VALUES (307, 'Etudiant', '2019-09-12 17:53:44', '2019-09-12 17:53:44', '1999-01-12 23:00:00', NULL, 'UNIVERSITE DE YAOUNDE 1 (ICT4D)', 'vehicula@Vestibulum.ca', NULL, 'MBA', 'Farrah Watkins', 'Darryl Dixon', 'Vynonlia', '', '', 'OUEST', 'FEMININ', '-883022461', 'ACTIVE', 'ACTIVE', 658090279, 707157124, 707469053, 65, 1, 1);
INSERT INTO `candidat` VALUES (308, 'Etudiant', '2019-09-12 17:53:44', '2019-09-12 17:53:44', '1999-01-13 23:00:00', NULL, 'UNIVERSITE DE BUEA', 'sem.molestie.sodales@Curabitur.co.uk', NULL, 'OSSENDO', 'Fleur Chen', 'Cain Hickman', 'Mathis', '', '', 'OUEST', 'FEMININ', '-883021469', 'ACTIVE', 'ACTIVE', 658002073, 718249012, 718632871, 65, 1, 1);
INSERT INTO `candidat` VALUES (309, 'Etudiant', '2019-09-12 17:53:44', '2019-09-12 17:53:44', '1999-01-14 23:00:00', NULL, 'COLLEGE MARIE ALBERT', 'ut@urnaNuncquis.co.uk', NULL, 'OYET', 'Darryl Foley', 'Vanna Gomez', 'Angel', '', '', 'OUEST', 'MASCULIN', '-883020477', 'ACTIVE', 'ACTIVE', 658345289, 729340900, 729796688, 65, 1, 1);
INSERT INTO `candidat` VALUES (310, 'Etudiant', '2019-09-12 17:53:44', '2019-09-12 17:53:44', '1999-01-15 23:00:00', NULL, 'UNIVERSITE DE YAOUNDE I FACULTE DES SCIENCES', 'risus.quis.diam@eleifend.ca', NULL, 'MAGANGA', 'Wynter Rose', 'Ronan Ferrell', 'Brenda', '', '', 'OUEST', 'FEMININ', '-883018834', 'ACTIVE', 'ACTIVE', 657886784, 677623877, 677218094, 65, 1, 1);

-- ----------------------------
-- Table structure for classe
-- ----------------------------
DROP TABLE IF EXISTS `classe`;
CREATE TABLE `classe`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_creation` datetime(0) NOT NULL,
  `date_modification` datetime(0) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut_vie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `createur` bigint(20) NOT NULL,
  `modificateur` bigint(20) NOT NULL,
  `niveau` bigint(20) NULL DEFAULT NULL,
  `specialite` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_classe_createur`(`createur`) USING BTREE,
  INDEX `FK_classe_niveau`(`niveau`) USING BTREE,
  INDEX `FK_classe_modificateur`(`modificateur`) USING BTREE,
  INDEX `FK_classe_specialite`(`specialite`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 70 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classe
-- ----------------------------
INSERT INTO `classe` VALUES (61, '2019-08-27 19:27:06', '2019-08-27 19:27:06', 'Licence Premiere Année', 'LIC 1', '991470961', 'ACTIVE', 1, 1, 57, 53);
INSERT INTO `classe` VALUES (62, '2019-08-27 19:27:31', '2019-08-27 19:27:31', 'Licence Deuxieme Année', 'LIC 2', '-1786506554', 'ACTIVE', 1, 1, 58, 53);
INSERT INTO `classe` VALUES (63, '2019-08-27 19:27:50', '2019-08-27 19:27:50', 'Licence Troisième Année', 'LIC 3', '-2128575543', 'ACTIVE', 1, 1, 59, 53);
INSERT INTO `classe` VALUES (64, '2019-08-27 19:29:08', '2019-08-27 19:30:10', 'Ingénieur Première Année', 'ING 1', '1190514874', 'ACTIVE', 1, 1, 57, 56);
INSERT INTO `classe` VALUES (65, '2019-08-27 19:31:34', '2019-08-27 19:31:34', 'Ingénieur Deuxieme Année', 'ING 2', '-1559872118', 'ACTIVE', 1, 1, 58, 56);
INSERT INTO `classe` VALUES (68, '2019-08-27 19:37:01', '2019-08-27 19:37:01', 'Troisième Année Ingénieur', 'ING 3', '508715326', 'ACTIVE', 1, 1, 59, 56);
INSERT INTO `classe` VALUES (67, '2019-08-27 19:33:43', '2019-08-27 19:33:43', 'Ingénieur Quatrième Année', 'ING 4', '1860209945', 'ACTIVE', 1, 1, 60, 55);
INSERT INTO `classe` VALUES (69, '2019-08-27 19:37:50', '2019-08-27 19:37:50', 'Ingénieur Troisième Année', 'ING 4', '2123821836', 'ACTIVE', 1, 1, 59, 54);

-- ----------------------------
-- Table structure for discipline
-- ----------------------------
DROP TABLE IF EXISTS `discipline`;
CREATE TABLE `discipline`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_creation` datetime(0) NOT NULL,
  `date_modification` datetime(0) NOT NULL,
  `date_retard` datetime(0) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `heure_justifie` int(11) NULL DEFAULT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nb_heures_absences` int(11) NULL DEFAULT NULL,
  `nb_retards` int(11) NULL DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut_vie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `createur` bigint(20) NOT NULL,
  `etudiant` bigint(20) NULL DEFAULT NULL,
  `modificateur` bigint(20) NOT NULL,
  `semestre` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_discipline_modificateur`(`modificateur`) USING BTREE,
  INDEX `FK_discipline_createur`(`createur`) USING BTREE,
  INDEX `FK_discipline_semestre`(`semestre`) USING BTREE,
  INDEX `FK_discipline_etudiant`(`etudiant`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8504 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discipline
-- ----------------------------
INSERT INTO `discipline` VALUES (4542, '2019-09-13 13:17:16', '2019-09-13 13:17:16', '2018-10-09 22:00:00', '1819I01 KASSA Phillipe', 0, 'Abscences', 12, 11, '-1433360275', 'ACTIVE', 1, 281, 1, 155);
INSERT INTO `discipline` VALUES (4543, '2019-09-13 13:17:16', '2019-09-13 13:17:16', '2018-10-10 22:00:00', '1819I02 OBIANG Gregroire', 0, 'Abscences', 21, 3, '-1525975213', 'ACTIVE', 1, 282, 1, 155);
INSERT INTO `discipline` VALUES (4544, '2019-09-13 13:17:17', '2019-09-13 13:17:17', '2018-10-11 22:00:00', '1819I03 KOUMBA Steve', 0, 'Abscences', 3, 6, '-1835010240', 'ACTIVE', 1, 283, 1, 155);
INSERT INTO `discipline` VALUES (4545, '2019-09-13 13:17:17', '2019-09-13 13:17:17', '2018-10-12 22:00:00', '1819I04 NGUEMA Marc', 0, 'Abscences', 19, 12, '-1364290135', 'ACTIVE', 1, 284, 1, 155);
INSERT INTO `discipline` VALUES (4546, '2019-09-13 13:17:17', '2019-09-13 13:17:17', '2018-10-13 22:00:00', '1819I05 ONDO Ivan', 0, 'Abscences', 17, 6, '-1719317331', 'ACTIVE', 1, 285, 1, 155);
INSERT INTO `discipline` VALUES (4547, '2019-09-13 13:17:17', '2019-09-13 13:17:17', '2018-10-14 22:00:00', '1819I06 EDZANG Yann', 0, 'Abscences', 21, 9, '1776643022', 'ACTIVE', 1, 286, 1, 155);
INSERT INTO `discipline` VALUES (4548, '2019-09-13 13:17:17', '2019-09-13 13:17:17', '2018-10-15 22:00:00', '1819I07 NGOMO Jessica', 0, 'Abscences', 11, 4, '1114760946', 'ACTIVE', 1, 287, 1, 155);
INSERT INTO `discipline` VALUES (4549, '2019-09-13 13:17:17', '2019-09-13 13:17:17', '2018-10-16 22:00:00', '1819I08 MOUSSAVOU Marie', 0, 'Abscences', 0, 13, '-664110833', 'ACTIVE', 1, 288, 1, 155);
INSERT INTO `discipline` VALUES (4550, '2019-09-13 13:17:18', '2019-09-13 13:17:18', '2018-10-17 22:00:00', '1819I09 PAMBO Desia', 0, 'Abscences', 6, 11, '-1892386463', 'ACTIVE', 1, 289, 1, 155);
INSERT INTO `discipline` VALUES (4551, '2019-09-13 13:17:18', '2019-09-13 13:17:18', '2018-10-18 22:00:00', '1819I10 MAMBO Denisia', 0, 'Abscences', 25, 6, '-930290397', 'ACTIVE', 1, 290, 1, 155);
INSERT INTO `discipline` VALUES (4552, '2019-09-13 13:17:18', '2019-09-13 13:17:18', '2018-10-19 22:00:00', '1819I11 TARTINA Mamadou', 0, 'Abscences', 19, 10, '2128627704', 'ACTIVE', 1, 291, 1, 155);
INSERT INTO `discipline` VALUES (4553, '2019-09-13 13:17:18', '2019-09-13 13:17:18', '2018-10-20 22:00:00', '1819I12 NUTELLA Victoire', 0, 'Abscences', 8, 4, '1297548749', 'ACTIVE', 1, 292, 1, 155);
INSERT INTO `discipline` VALUES (4554, '2019-09-13 13:17:18', '2019-09-13 13:17:18', '2018-10-21 22:00:00', '1819I13 TANDANOU Merveille', 0, 'Abscences', 12, 13, '-32948982', 'ACTIVE', 1, 293, 1, 155);
INSERT INTO `discipline` VALUES (4555, '2019-09-13 13:17:18', '2019-09-13 13:17:18', '2018-10-22 22:00:00', '1819I14 NDONDI Cena', 0, 'Abscences', 20, 9, '-1811267225', 'ACTIVE', 1, 294, 1, 155);
INSERT INTO `discipline` VALUES (4556, '2019-09-13 13:17:19', '2019-09-13 13:17:19', '2018-10-23 22:00:00', '1819I15 NDAMA Rigobert', 0, 'Abscences', 4, 9, '-1226320329', 'ACTIVE', 1, 295, 1, 155);
INSERT INTO `discipline` VALUES (4557, '2019-09-13 13:17:19', '2019-09-13 13:17:19', '2019-02-22 23:00:00', '1819I01 KASSA Phillipe', 0, 'Abscences', 1, 0, '1552593024', 'ACTIVE', 1, 281, 1, 156);
INSERT INTO `discipline` VALUES (4558, '2019-09-13 13:17:19', '2019-09-13 13:17:19', '2019-02-23 23:00:00', '1819I02 OBIANG Gregroire', 0, 'Abscences', 9, 6, '242646192', 'ACTIVE', 1, 282, 1, 156);
INSERT INTO `discipline` VALUES (4559, '2019-09-13 13:17:19', '2019-09-13 13:17:19', '2019-02-24 23:00:00', '1819I03 KOUMBA Steve', 0, 'Abscences', 22, 11, '754145199', 'ACTIVE', 1, 283, 1, 156);
INSERT INTO `discipline` VALUES (4560, '2019-09-13 13:17:19', '2019-09-13 13:17:19', '2019-02-25 23:00:00', '1819I04 NGUEMA Marc', 0, 'Abscences', 14, 13, '-1102720608', 'ACTIVE', 1, 284, 1, 156);
INSERT INTO `discipline` VALUES (4561, '2019-09-13 13:17:19', '2019-09-13 13:17:19', '2019-02-26 23:00:00', '1819I05 ONDO Ivan', 0, 'Abscences', 19, 9, '1142499855', 'ACTIVE', 1, 285, 1, 156);
INSERT INTO `discipline` VALUES (4562, '2019-09-13 13:17:19', '2019-09-13 13:17:19', '2019-02-27 23:00:00', '1819I06 EDZANG Yann', 0, 'Abscences', 15, 1, '765145638', 'ACTIVE', 1, 286, 1, 156);
INSERT INTO `discipline` VALUES (4563, '2019-09-13 13:17:19', '2019-09-13 13:17:19', '2019-02-28 23:00:00', '1819I07 NGOMO Jessica', 0, 'Abscences', 22, 9, '733790348', 'ACTIVE', 1, 287, 1, 156);
INSERT INTO `discipline` VALUES (4564, '2019-09-13 13:17:20', '2019-09-13 13:17:20', '2019-03-01 23:00:00', '1819I08 MOUSSAVOU Marie', 0, 'Abscences', 4, 12, '1590019762', 'ACTIVE', 1, 288, 1, 156);
INSERT INTO `discipline` VALUES (4565, '2019-09-13 13:17:20', '2019-09-13 13:17:20', '2019-03-02 23:00:00', '1819I09 PAMBO Desia', 0, 'Abscences', 1, 10, '1413385484', 'ACTIVE', 1, 289, 1, 156);
INSERT INTO `discipline` VALUES (4566, '2019-09-13 13:17:20', '2019-09-13 13:17:20', '2019-03-03 23:00:00', '1819I10 MAMBO Denisia', 0, 'Abscences', 14, 8, '1423738407', 'ACTIVE', 1, 290, 1, 156);
INSERT INTO `discipline` VALUES (4567, '2019-09-13 13:17:20', '2019-09-13 13:17:20', '2019-03-04 23:00:00', '1819I11 TARTINA Mamadou', 0, 'Abscences', 8, 1, '-806588774', 'ACTIVE', 1, 291, 1, 156);
INSERT INTO `discipline` VALUES (4568, '2019-09-13 13:17:20', '2019-09-13 13:17:20', '2019-03-05 23:00:00', '1819I12 NUTELLA Victoire', 0, 'Abscences', 20, 9, '-1386064483', 'ACTIVE', 1, 292, 1, 156);
INSERT INTO `discipline` VALUES (4569, '2019-09-13 13:17:20', '2019-09-13 13:17:20', '2019-03-06 23:00:00', '1819I13 TANDANOU Merveille', 0, 'Abscences', 11, 1, '373698684', 'ACTIVE', 1, 293, 1, 156);
INSERT INTO `discipline` VALUES (4570, '2019-09-13 13:17:21', '2019-09-13 13:17:21', '2019-03-07 23:00:00', '1819I14 NDONDI Cena', 0, 'Abscences', 19, 5, '1362662314', 'ACTIVE', 1, 294, 1, 156);
INSERT INTO `discipline` VALUES (4571, '2019-09-13 13:17:21', '2019-09-13 13:17:21', '2019-03-08 23:00:00', '1819I15 NDAMA Rigobert', 0, 'Abscences', 7, 4, '2023973188', 'ACTIVE', 1, 295, 1, 156);
INSERT INTO `discipline` VALUES (4572, '2019-09-13 13:22:20', '2019-09-13 13:22:20', '2018-10-09 22:00:00', '1819I16 BISSAGHE Chloe', 0, 'Abscences', 24, 1, '644727357', 'ACTIVE', 1, 296, 1, 155);
INSERT INTO `discipline` VALUES (4573, '2019-09-13 13:22:20', '2019-09-13 13:22:20', '2018-10-10 22:00:00', '1819I17 EMANE Wubembi', 0, 'Abscences', 12, 4, '55279121', 'ACTIVE', 1, 297, 1, 155);
INSERT INTO `discipline` VALUES (4574, '2019-09-13 13:22:20', '2019-09-13 13:22:20', '2018-10-11 22:00:00', '1819I18 EMANA Theo', 0, 'Abscences', 14, 4, '-2106077312', 'ACTIVE', 1, 298, 1, 155);
INSERT INTO `discipline` VALUES (4575, '2019-09-13 13:22:21', '2019-09-13 13:22:21', '2018-10-12 22:00:00', '1819I19 ELEGUET Patrick', 0, 'Abscences', 16, 0, '302628965', 'ACTIVE', 1, 299, 1, 155);
INSERT INTO `discipline` VALUES (4576, '2019-09-13 13:22:21', '2019-09-13 13:22:21', '2018-10-13 22:00:00', '1819I20 GANDONOU Loricka', 0, 'Abscences', 23, 6, '-1817033670', 'ACTIVE', 1, 300, 1, 155);
INSERT INTO `discipline` VALUES (4577, '2019-09-13 13:22:21', '2019-09-13 13:22:21', '2018-10-14 22:00:00', '1819I21 POUNOU Gloria', 0, 'Abscences', 19, 3, '-1261419521', 'ACTIVE', 1, 301, 1, 155);
INSERT INTO `discipline` VALUES (4578, '2019-09-13 13:22:21', '2019-09-13 13:22:21', '2018-10-15 22:00:00', '1819I22 MAPONGOU Antho', 0, 'Abscences', 16, 7, '1355251710', 'ACTIVE', 1, 302, 1, 155);
INSERT INTO `discipline` VALUES (4579, '2019-09-13 13:22:22', '2019-09-13 13:22:22', '2018-10-16 22:00:00', '1819I23 MALI Gisela', 0, 'Abscences', 14, 11, '-1497531743', 'ACTIVE', 1, 303, 1, 155);
INSERT INTO `discipline` VALUES (4580, '2019-09-13 13:22:22', '2019-09-13 13:22:22', '2018-10-17 22:00:00', '1819I24 AYANG Emmanuelle', 0, 'Abscences', 24, 0, '-283643905', 'ACTIVE', 1, 304, 1, 155);
INSERT INTO `discipline` VALUES (4581, '2019-09-13 13:22:22', '2019-09-13 13:22:22', '2018-10-18 22:00:00', '1819I25 RENOMBO Berna', 0, 'Abscences', 21, 9, '140052878', 'ACTIVE', 1, 305, 1, 155);
INSERT INTO `discipline` VALUES (4582, '2019-09-13 13:22:22', '2019-09-13 13:22:22', '2018-10-19 22:00:00', '1819I26 NZANG Jussy', 0, 'Abscences', 13, 9, '-1320938784', 'ACTIVE', 1, 306, 1, 155);
INSERT INTO `discipline` VALUES (4583, '2019-09-13 13:22:22', '2019-09-13 13:22:22', '2018-10-20 22:00:00', '1819I27 MBA Vynonlia', 0, 'Abscences', 5, 10, '1970217732', 'ACTIVE', 1, 307, 1, 155);
INSERT INTO `discipline` VALUES (4584, '2019-09-13 13:22:22', '2019-09-13 13:22:22', '2018-10-21 22:00:00', '1819I28 OSSENDO Mathis', 0, 'Abscences', 7, 8, '-107473009', 'ACTIVE', 1, 308, 1, 155);
INSERT INTO `discipline` VALUES (4585, '2019-09-13 13:22:23', '2019-09-13 13:22:23', '2018-10-22 22:00:00', '1819I29 OYET Angel', 0, 'Abscences', 7, 0, '-694743425', 'ACTIVE', 1, 309, 1, 155);
INSERT INTO `discipline` VALUES (4586, '2019-09-13 13:22:23', '2019-09-13 13:22:23', '2018-10-23 22:00:00', '1819I30 MAGANGA Brenda', 0, 'Abscences', 2, 9, '785134886', 'ACTIVE', 1, 310, 1, 155);
INSERT INTO `discipline` VALUES (4587, '2019-09-13 13:22:23', '2019-09-13 13:22:23', '2019-02-22 23:00:00', '1819I16 BISSAGHE Chloe', 0, 'Abscences', 26, 0, '-799510234', 'ACTIVE', 1, 296, 1, 156);
INSERT INTO `discipline` VALUES (4588, '2019-09-13 13:22:23', '2019-09-13 13:22:23', '2019-02-23 23:00:00', '1819I17 EMANE Wubembi', 0, 'Abscences', 1, 11, '-136744212', 'ACTIVE', 1, 297, 1, 156);
INSERT INTO `discipline` VALUES (4589, '2019-09-13 13:22:23', '2019-09-13 13:22:23', '2019-02-24 23:00:00', '1819I18 EMANA Theo', 0, 'Abscences', 14, 3, '1030775706', 'ACTIVE', 1, 298, 1, 156);
INSERT INTO `discipline` VALUES (4590, '2019-09-13 13:22:23', '2019-09-13 13:22:23', '2019-02-25 23:00:00', '1819I19 ELEGUET Patrick', 0, 'Abscences', 25, 11, '323071558', 'ACTIVE', 1, 299, 1, 156);
INSERT INTO `discipline` VALUES (4591, '2019-09-13 13:22:24', '2019-09-13 13:22:24', '2019-02-26 23:00:00', '1819I20 GANDONOU Loricka', 0, 'Abscences', 17, 8, '1960833211', 'ACTIVE', 1, 300, 1, 156);
INSERT INTO `discipline` VALUES (4592, '2019-09-13 13:22:24', '2019-09-13 13:22:24', '2019-02-27 23:00:00', '1819I21 POUNOU Gloria', 0, 'Abscences', 1, 12, '-121148043', 'ACTIVE', 1, 301, 1, 156);
INSERT INTO `discipline` VALUES (4593, '2019-09-13 13:22:24', '2019-09-13 13:22:24', '2019-02-28 23:00:00', '1819I22 MAPONGOU Antho', 0, 'Abscences', 8, 4, '271213815', 'ACTIVE', 1, 302, 1, 156);
INSERT INTO `discipline` VALUES (4594, '2019-09-13 13:22:24', '2019-09-13 13:22:24', '2019-03-01 23:00:00', '1819I23 MALI Gisela', 0, 'Abscences', 3, 11, '-708307167', 'ACTIVE', 1, 303, 1, 156);
INSERT INTO `discipline` VALUES (4595, '2019-09-13 13:22:24', '2019-09-13 13:22:24', '2019-03-02 23:00:00', '1819I24 AYANG Emmanuelle', 0, 'Abscences', 18, 12, '1808555228', 'ACTIVE', 1, 304, 1, 156);
INSERT INTO `discipline` VALUES (4596, '2019-09-13 13:22:24', '2019-09-13 13:22:24', '2019-03-03 23:00:00', '1819I25 RENOMBO Berna', 0, 'Abscences', 18, 8, '-484823320', 'ACTIVE', 1, 305, 1, 156);
INSERT INTO `discipline` VALUES (4597, '2019-09-13 13:22:24', '2019-09-13 13:22:24', '2019-03-04 23:00:00', '1819I26 NZANG Jussy', 0, 'Abscences', 12, 2, '-1979208563', 'ACTIVE', 1, 306, 1, 156);
INSERT INTO `discipline` VALUES (4598, '2019-09-13 13:22:24', '2019-09-13 13:22:24', '2019-03-05 23:00:00', '1819I27 MBA Vynonlia', 0, 'Abscences', 3, 6, '1713388052', 'ACTIVE', 1, 307, 1, 156);
INSERT INTO `discipline` VALUES (4599, '2019-09-13 13:22:25', '2019-09-13 13:22:25', '2019-03-06 23:00:00', '1819I28 OSSENDO Mathis', 0, 'Abscences', 12, 9, '1622614584', 'ACTIVE', 1, 308, 1, 156);
INSERT INTO `discipline` VALUES (4600, '2019-09-13 13:22:25', '2019-09-13 13:22:25', '2019-03-07 23:00:00', '1819I29 OYET Angel', 0, 'Abscences', 2, 4, '-353263442', 'ACTIVE', 1, 309, 1, 156);
INSERT INTO `discipline` VALUES (4601, '2019-09-13 13:22:25', '2019-09-13 13:22:25', '2019-03-08 23:00:00', '1819I30 MAGANGA Brenda', 0, 'Abscences', 2, 9, '-1971326377', 'ACTIVE', 1, 310, 1, 156);

-- ----------------------------
-- Table structure for droit
-- ----------------------------
DROP TABLE IF EXISTS `droit`;
CREATE TABLE `droit`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `categorie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date_creation` datetime(0) NOT NULL,
  `date_modification` datetime(0) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ecriture` tinyint(1) NULL DEFAULT 0,
  `lecture` tinyint(1) NULL DEFAULT 0,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `modification` tinyint(1) NULL DEFAULT 0,
  `signature` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut_vie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `suppression` tinyint(1) NULL DEFAULT 0,
  `createur` bigint(20) NOT NULL,
  `modificateur` bigint(20) NOT NULL,
  `role` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_droit_modificateur`(`modificateur`) USING BTREE,
  INDEX `FK_droit_role`(`role`) USING BTREE,
  INDEX `FK_droit_createur`(`createur`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 580 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for email
-- ----------------------------
DROP TABLE IF EXISTS `email`;
CREATE TABLE `email`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `objet` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`code`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 152 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for enseignant
-- ----------------------------
DROP TABLE IF EXISTS `enseignant`;
CREATE TABLE `enseignant`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_creation` datetime(0) NOT NULL,
  `date_modification` datetime(0) NOT NULL,
  `date_naissance` datetime(0) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nom` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `prenom` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `qualification` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sexe` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `signature` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `statut_vie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telephone` int(11) NOT NULL,
  `createur` bigint(20) NOT NULL,
  `modificateur` bigint(20) NOT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  UNIQUE INDEX `telephone`(`telephone`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_enseignant_createur`(`createur`) USING BTREE,
  INDEX `FK_enseignant_modificateur`(`modificateur`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for enseignement
-- ----------------------------
DROP TABLE IF EXISTS `enseignement`;
CREATE TABLE `enseignement`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_creation` datetime(0) NOT NULL,
  `date_modification` datetime(0) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `heures_de_cours` int(11) NULL DEFAULT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `programme_de_cours` varchar(1020) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut_vie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `createur` bigint(20) NOT NULL,
  `modificateur` bigint(20) NOT NULL,
  `semestre` bigint(20) NULL DEFAULT NULL,
  `ue` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_enseignement_ue`(`ue`) USING BTREE,
  INDEX `FK_enseignement_modificateur`(`modificateur`) USING BTREE,
  INDEX `FK_enseignement_createur`(`createur`) USING BTREE,
  INDEX `FK_enseignement_semestre`(`semestre`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7578 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of enseignement
-- ----------------------------
INSERT INTO `enseignement` VALUES (247, '2019-09-12 17:53:12', '2019-09-12 17:53:12', 'Structure et transformation de la matière', 120, 'Structure et transformation de la matière', '', '85113323', 'ACTIVE', 1, 1, 155, 213);
INSERT INTO `enseignement` VALUES (248, '2019-09-12 17:53:12', '2019-09-12 17:53:12', 'Outils mathématiques pour l’ingénieur', 120, 'Outils mathématiques pour l’ingénieur', '', '-910066405', 'ACTIVE', 1, 1, 155, 214);
INSERT INTO `enseignement` VALUES (249, '2019-09-12 17:53:12', '2019-09-12 17:53:12', 'Algorithmique', 120, 'Algorithmique', '', '25053988', 'ACTIVE', 1, 1, 155, 215);
INSERT INTO `enseignement` VALUES (250, '2019-09-12 17:53:12', '2019-09-12 17:53:12', 'Initiation à la définition et à la fabrication d’un objet technique', 60, 'Initiation à la définition et à la fabrication d’un objet technique', '', '252762168', 'ACTIVE', 1, 1, 155, 216);
INSERT INTO `enseignement` VALUES (251, '2019-09-12 17:53:12', '2019-09-12 17:53:13', 'Stage technique', 120, 'Stage technique', '', '-1811925999', 'ACTIVE', 1, 1, 155, 217);
INSERT INTO `enseignement` VALUES (252, '2019-09-12 17:53:13', '2019-09-12 17:53:13', 'Anglais - niveau pratique B1', 150, 'Anglais - niveau pratique B1', '', '1765264166', 'ACTIVE', 1, 1, 155, 218);
INSERT INTO `enseignement` VALUES (253, '2019-09-12 17:53:13', '2019-09-12 17:53:13', 'Atelier d\'écriture / Image, imaginaire et nouvelles technologies', 120, 'Atelier d\'écriture / Image, imaginaire et nouvelles technologies', '', '-1127800537', 'ACTIVE', 1, 1, 155, 219);
INSERT INTO `enseignement` VALUES (254, '2019-09-12 17:53:13', '2019-09-12 17:53:13', 'Réflexion humaine1', 60, 'Réflexion humaine1', '', '-634330088', 'ACTIVE', 1, 1, 155, 220);
INSERT INTO `enseignement` VALUES (255, '2019-09-12 17:53:13', '2019-09-12 17:53:13', 'Arduino / Raspberry', 30, 'Arduino / Raspberry', '', '1124730698', 'ACTIVE', 1, 1, 155, 221);
INSERT INTO `enseignement` VALUES (256, '2019-09-12 17:53:13', '2019-09-12 17:53:13', 'Bases mathématiques pour l’ingénieur', 180, 'Bases mathématiques pour l’ingénieur', '', '-1034227635', 'ACTIVE', 1, 1, 156, 222);
INSERT INTO `enseignement` VALUES (257, '2019-09-12 17:53:13', '2019-09-12 17:53:13', 'Bases de physique pour l’ingénieur', 150, 'Bases de physique pour l’ingénieur', '', '-485652225', 'ACTIVE', 1, 1, 156, 223);
INSERT INTO `enseignement` VALUES (258, '2019-09-12 17:53:13', '2019-09-12 17:53:13', 'Mesure physique et instrumentation', 120, 'Mesure physique et instrumentation', '', '-1328303805', 'ACTIVE', 1, 1, 156, 224);
INSERT INTO `enseignement` VALUES (259, '2019-09-12 17:53:14', '2019-09-12 17:53:14', 'Arduino / Raspberry', 120, 'Arduino / Raspberry', '', '-1379136751', 'ACTIVE', 1, 1, 156, 225);
INSERT INTO `enseignement` VALUES (260, '2019-09-12 17:53:14', '2019-09-12 17:53:14', 'Anglais Remise à niveau A2', 120, 'Anglais Remise à niveau A2', '', '-776351450', 'ACTIVE', 1, 1, 156, 226);
INSERT INTO `enseignement` VALUES (261, '2019-09-12 17:53:14', '2019-09-12 17:53:14', 'Formation à la communication écrite et orale', 60, 'Formation à la communication écrite et orale', '', '718093069', 'ACTIVE', 1, 1, 156, 227);
INSERT INTO `enseignement` VALUES (262, '2019-09-12 17:53:14', '2019-09-12 17:53:14', 'Réflexion humaine1', 60, 'Réflexion humaine1', '', '-107931418', 'ACTIVE', 1, 1, 156, 228);
INSERT INTO `enseignement` VALUES (263, '2019-09-12 17:53:14', '2019-09-12 17:53:14', 'Analyse avancée', 60, 'Analyse avancée', '', '45695528', 'ACTIVE', 1, 1, 155, 229);
INSERT INTO `enseignement` VALUES (264, '2019-09-12 17:53:14', '2019-09-12 17:53:14', 'Eléments de probabilités', 30, 'Eléments de probabilités', '', '-1648576858', 'ACTIVE', 1, 1, 155, 230);
INSERT INTO `enseignement` VALUES (265, '2019-09-12 17:53:14', '2019-09-12 17:53:14', 'Eléments de base en électronique', 34, 'Eléments de base en électronique', '', '-1558030488', 'ACTIVE', 1, 1, 155, 231);
INSERT INTO `enseignement` VALUES (266, '2019-09-12 17:53:14', '2019-09-12 17:53:14', 'Introduction au langage C', 120, 'Introduction au langage C', '', '1756521477', 'ACTIVE', 1, 1, 155, 232);
INSERT INTO `enseignement` VALUES (267, '2019-09-12 17:53:14', '2019-09-12 17:53:14', 'Réseaux d\'entreprise', 120, 'Réseaux d\'entreprise', '', '-1355570517', 'ACTIVE', 1, 1, 155, 233);
INSERT INTO `enseignement` VALUES (268, '2019-09-12 17:53:14', '2019-09-12 17:53:14', 'Anglais Niveau pratique B1/B2', 120, 'Anglais Niveau pratique B1/B2', '', '1135065404', 'ACTIVE', 1, 1, 155, 234);
INSERT INTO `enseignement` VALUES (269, '2019-09-12 17:53:15', '2019-09-12 17:53:15', 'Économie générale pour l’ingénieur', 120, 'Économie générale pour l’ingénieur', '', '-1812649073', 'ACTIVE', 1, 1, 155, 235);
INSERT INTO `enseignement` VALUES (270, '2019-09-12 17:53:15', '2019-09-12 17:53:15', 'Ethique et développement1', 120, 'Ethique et développement1', '', '-171277205', 'ACTIVE', 1, 1, 155, 236);
INSERT INTO `enseignement` VALUES (271, '2019-09-12 17:53:15', '2019-09-12 17:53:15', 'Arduino / Raspberry', 120, 'Arduino / Raspberry', '', '-582788799', 'ACTIVE', 1, 1, 155, 237);
INSERT INTO `enseignement` VALUES (272, '2019-09-12 17:53:15', '2019-09-12 17:53:15', 'Algèbre linéaire', 90, 'Algèbre linéaire', '', '1418763737', 'ACTIVE', 1, 1, 156, 238);
INSERT INTO `enseignement` VALUES (273, '2019-09-12 17:53:15', '2019-09-12 17:53:15', 'Champs, ondes, vibrations, propagation', 60, 'Champs, ondes, vibrations, propagation', '', '1244111085', 'ACTIVE', 1, 1, 156, 239);
INSERT INTO `enseignement` VALUES (274, '2019-09-12 17:53:15', '2019-09-12 17:53:15', 'Analyse et traitement du signal', 30, 'Analyse et traitement du signal', '', '-1046972812', 'ACTIVE', 1, 1, 156, 240);
INSERT INTO `enseignement` VALUES (275, '2019-09-12 17:53:15', '2019-09-12 17:53:15', 'Architectures programmables', 120, 'Architectures programmables', '', '-1754784077', 'ACTIVE', 1, 1, 156, 241);
INSERT INTO `enseignement` VALUES (276, '2019-09-12 17:53:15', '2019-09-12 17:53:15', 'Administration des systèmes', 120, 'Administration des systèmes', '', '-1770687310', 'ACTIVE', 1, 1, 156, 242);
INSERT INTO `enseignement` VALUES (277, '2019-09-12 17:53:15', '2019-09-12 17:53:15', 'Anglais Niveau pratique B2', 120, 'Anglais Niveau pratique B2', '', '-1181902870', 'ACTIVE', 1, 1, 156, 243);
INSERT INTO `enseignement` VALUES (278, '2019-09-12 17:53:16', '2019-09-12 17:53:16', 'L\'entreprise et la gestion', 90, 'L\'entreprise et la gestion', '', '-2020554674', 'ACTIVE', 1, 1, 156, 244);
INSERT INTO `enseignement` VALUES (279, '2019-09-12 17:53:16', '2019-09-12 17:53:16', 'Ethique et développement 2', 120, 'Ethique et développement 2', '', '-1321532274', 'ACTIVE', 1, 1, 156, 245);
INSERT INTO `enseignement` VALUES (280, '2019-09-12 17:53:16', '2019-09-12 17:53:16', 'Arduino / Raspberry', 90, 'Arduino / Raspberry', '', '731938959', 'ACTIVE', 1, 1, 156, 246);

-- ----------------------------
-- Table structure for enseignement_enseignant
-- ----------------------------
DROP TABLE IF EXISTS `enseignement_enseignant`;
CREATE TABLE `enseignement_enseignant`  (
  `code_enseignant` bigint(20) NOT NULL,
  `code_enseignement` bigint(20) NOT NULL,
  PRIMARY KEY (`code_enseignant`, `code_enseignement`) USING BTREE,
  INDEX `FK_enseignement_enseignant_code_enseignement`(`code_enseignement`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for envoi_message
-- ----------------------------
DROP TABLE IF EXISTS `envoi_message`;
CREATE TABLE `envoi_message`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_creation` datetime(0) NOT NULL,
  `date_envoi` datetime(0) NULL DEFAULT NULL,
  `date_modification` datetime(0) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut_vie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `candidat` bigint(20) NULL DEFAULT NULL,
  `createur` bigint(20) NOT NULL,
  `modificateur` bigint(20) NOT NULL,
  `message` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_envoi_message_createur`(`createur`) USING BTREE,
  INDEX `FK_envoi_message_candidat`(`candidat`) USING BTREE,
  INDEX `FK_envoi_message_modificateur`(`modificateur`) USING BTREE,
  INDEX `FK_envoi_message_message`(`message`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 402 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for est_inscrit
-- ----------------------------
DROP TABLE IF EXISTS `est_inscrit`;
CREATE TABLE `est_inscrit`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_creation` datetime(0) NOT NULL,
  `date_modification` datetime(0) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut_vie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `candidat_inscrit` bigint(20) NULL DEFAULT NULL,
  `createur` bigint(20) NOT NULL,
  `enseignement` bigint(20) NULL DEFAULT NULL,
  `modificateur` bigint(20) NOT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_est_inscrit_candidat_inscrit`(`candidat_inscrit`) USING BTREE,
  INDEX `FK_est_inscrit_createur`(`createur`) USING BTREE,
  INDEX `FK_est_inscrit_modificateur`(`modificateur`) USING BTREE,
  INDEX `FK_est_inscrit_enseignement`(`enseignement`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12352 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of est_inscrit
-- ----------------------------
INSERT INTO `est_inscrit` VALUES (773, '2019-09-12 18:17:06', '2019-09-12 18:17:06', 'MAT1011', '', '-541806509', 'VALIDE', 'ACTIVE', 288, 1, 256, 1);
INSERT INTO `est_inscrit` VALUES (772, '2019-09-12 18:17:06', '2019-09-12 18:17:06', 'ARD1098', '', '-266738424', 'VALIDE', 'ACTIVE', 288, 1, 255, 1);
INSERT INTO `est_inscrit` VALUES (771, '2019-09-12 18:17:05', '2019-09-12 18:17:05', 'HUM1022', '', '1548819779', 'VALIDE', 'ACTIVE', 288, 1, 254, 1);
INSERT INTO `est_inscrit` VALUES (770, '2019-09-12 18:17:05', '2019-09-12 18:17:05', 'COM1022', '', '-283814247', 'VALIDE', 'ACTIVE', 288, 1, 253, 1);
INSERT INTO `est_inscrit` VALUES (769, '2019-09-12 18:17:05', '2019-09-12 18:17:05', 'LAC1022', '', '-1169941390', 'VALIDE', 'ACTIVE', 288, 1, 252, 1);
INSERT INTO `est_inscrit` VALUES (768, '2019-09-12 18:17:05', '2019-09-12 18:17:05', 'STG1012', '', '89342174', 'VALIDE', 'ACTIVE', 288, 1, 251, 1);
INSERT INTO `est_inscrit` VALUES (767, '2019-09-12 18:17:05', '2019-09-12 18:17:05', 'ING1022', '', '1437070219', 'VALIDE', 'ACTIVE', 288, 1, 250, 1);
INSERT INTO `est_inscrit` VALUES (766, '2019-09-12 18:17:05', '2019-09-12 18:17:05', 'INF1012', '', '1949580629', 'VALIDE', 'ACTIVE', 288, 1, 249, 1);
INSERT INTO `est_inscrit` VALUES (765, '2019-09-12 18:17:05', '2019-09-12 18:17:05', 'MAT1022', '', '-528606359', 'VALIDE', 'ACTIVE', 288, 1, 248, 1);
INSERT INTO `est_inscrit` VALUES (764, '2019-09-12 18:17:05', '2019-09-12 18:17:05', 'CHM1012', '', '-390121879', 'VALIDE', 'ACTIVE', 288, 1, 247, 1);
INSERT INTO `est_inscrit` VALUES (763, '2019-09-12 18:17:04', '2019-09-12 18:17:04', 'HUM1011', '', '1344251775', 'VALIDE', 'ACTIVE', 287, 1, 262, 1);
INSERT INTO `est_inscrit` VALUES (762, '2019-09-12 18:17:04', '2019-09-12 18:17:04', 'COM1011', '', '394235706', 'VALIDE', 'ACTIVE', 287, 1, 261, 1);
INSERT INTO `est_inscrit` VALUES (761, '2019-09-12 18:17:04', '2019-09-12 18:17:04', 'LAC1011', '', '-929521227', 'VALIDE', 'ACTIVE', 287, 1, 260, 1);
INSERT INTO `est_inscrit` VALUES (760, '2019-09-12 18:17:04', '2019-09-12 18:17:04', 'ADR1090', '', '-20264029', 'VALIDE', 'ACTIVE', 287, 1, 259, 1);
INSERT INTO `est_inscrit` VALUES (759, '2019-09-12 18:17:04', '2019-09-12 18:17:04', 'PHY1021', '', '1522115487', 'VALIDE', 'ACTIVE', 287, 1, 258, 1);
INSERT INTO `est_inscrit` VALUES (758, '2019-09-12 18:17:04', '2019-09-12 18:17:04', 'PHY1011', '', '-1897429706', 'VALIDE', 'ACTIVE', 287, 1, 257, 1);
INSERT INTO `est_inscrit` VALUES (757, '2019-09-12 18:17:04', '2019-09-12 18:17:04', 'MAT1011', '', '1011329734', 'VALIDE', 'ACTIVE', 287, 1, 256, 1);
INSERT INTO `est_inscrit` VALUES (756, '2019-09-12 18:17:04', '2019-09-12 18:17:04', 'ARD1098', '', '-1877643535', 'VALIDE', 'ACTIVE', 287, 1, 255, 1);
INSERT INTO `est_inscrit` VALUES (755, '2019-09-12 18:17:04', '2019-09-12 18:17:04', 'HUM1022', '', '29402829', 'VALIDE', 'ACTIVE', 287, 1, 254, 1);
INSERT INTO `est_inscrit` VALUES (754, '2019-09-12 18:17:04', '2019-09-12 18:17:04', 'COM1022', '', '-975428680', 'VALIDE', 'ACTIVE', 287, 1, 253, 1);
INSERT INTO `est_inscrit` VALUES (753, '2019-09-12 18:17:04', '2019-09-12 18:17:04', 'LAC1022', '', '2010140945', 'VALIDE', 'ACTIVE', 287, 1, 252, 1);
INSERT INTO `est_inscrit` VALUES (752, '2019-09-12 18:17:04', '2019-09-12 18:17:04', 'STG1012', '', '-1009008782', 'VALIDE', 'ACTIVE', 287, 1, 251, 1);
INSERT INTO `est_inscrit` VALUES (751, '2019-09-12 18:17:04', '2019-09-12 18:17:04', 'ING1022', '', '354151001', 'VALIDE', 'ACTIVE', 287, 1, 250, 1);
INSERT INTO `est_inscrit` VALUES (750, '2019-09-12 18:17:04', '2019-09-12 18:17:04', 'INF1012', '', '603219598', 'VALIDE', 'ACTIVE', 287, 1, 249, 1);
INSERT INTO `est_inscrit` VALUES (749, '2019-09-12 18:17:04', '2019-09-12 18:17:04', 'MAT1022', '', '-1588377970', 'VALIDE', 'ACTIVE', 287, 1, 248, 1);
INSERT INTO `est_inscrit` VALUES (748, '2019-09-12 18:17:03', '2019-09-12 18:17:03', 'CHM1012', '', '-1182042609', 'VALIDE', 'ACTIVE', 287, 1, 247, 1);
INSERT INTO `est_inscrit` VALUES (747, '2019-09-12 18:17:03', '2019-09-12 18:17:03', 'HUM1011', '', '347309383', 'VALIDE', 'ACTIVE', 286, 1, 262, 1);
INSERT INTO `est_inscrit` VALUES (746, '2019-09-12 18:17:03', '2019-09-12 18:17:03', 'COM1011', '', '-925670917', 'VALIDE', 'ACTIVE', 286, 1, 261, 1);
INSERT INTO `est_inscrit` VALUES (745, '2019-09-12 18:17:03', '2019-09-12 18:17:03', 'LAC1011', '', '1534087558', 'VALIDE', 'ACTIVE', 286, 1, 260, 1);
INSERT INTO `est_inscrit` VALUES (744, '2019-09-12 18:17:03', '2019-09-12 18:17:03', 'ADR1090', '', '-1851622540', 'VALIDE', 'ACTIVE', 286, 1, 259, 1);
INSERT INTO `est_inscrit` VALUES (743, '2019-09-12 18:17:03', '2019-09-12 18:17:03', 'PHY1021', '', '239685942', 'VALIDE', 'ACTIVE', 286, 1, 258, 1);
INSERT INTO `est_inscrit` VALUES (742, '2019-09-12 18:17:03', '2019-09-12 18:17:03', 'PHY1011', '', '1475549354', 'VALIDE', 'ACTIVE', 286, 1, 257, 1);
INSERT INTO `est_inscrit` VALUES (741, '2019-09-12 18:17:03', '2019-09-12 18:17:03', 'MAT1011', '', '404589860', 'VALIDE', 'ACTIVE', 286, 1, 256, 1);
INSERT INTO `est_inscrit` VALUES (740, '2019-09-12 18:17:03', '2019-09-12 18:17:03', 'ARD1098', '', '1568085147', 'VALIDE', 'ACTIVE', 286, 1, 255, 1);
INSERT INTO `est_inscrit` VALUES (739, '2019-09-12 18:17:03', '2019-09-12 18:17:03', 'HUM1022', '', '-1940841324', 'VALIDE', 'ACTIVE', 286, 1, 254, 1);
INSERT INTO `est_inscrit` VALUES (738, '2019-09-12 18:17:03', '2019-09-12 18:17:03', 'COM1022', '', '1126636529', 'VALIDE', 'ACTIVE', 286, 1, 253, 1);
INSERT INTO `est_inscrit` VALUES (737, '2019-09-12 18:17:02', '2019-09-12 18:17:02', 'LAC1022', '', '129180419', 'VALIDE', 'ACTIVE', 286, 1, 252, 1);
INSERT INTO `est_inscrit` VALUES (736, '2019-09-12 18:17:02', '2019-09-12 18:17:02', 'STG1012', '', '1736780355', 'VALIDE', 'ACTIVE', 286, 1, 251, 1);
INSERT INTO `est_inscrit` VALUES (735, '2019-09-12 18:17:02', '2019-09-12 18:17:02', 'ING1022', '', '-597598444', 'VALIDE', 'ACTIVE', 286, 1, 250, 1);
INSERT INTO `est_inscrit` VALUES (734, '2019-09-12 18:17:02', '2019-09-12 18:17:02', 'INF1012', '', '-906276949', 'VALIDE', 'ACTIVE', 286, 1, 249, 1);
INSERT INTO `est_inscrit` VALUES (733, '2019-09-12 18:17:02', '2019-09-12 18:17:02', 'MAT1022', '', '1391091771', 'VALIDE', 'ACTIVE', 286, 1, 248, 1);
INSERT INTO `est_inscrit` VALUES (732, '2019-09-12 18:17:02', '2019-09-12 18:17:02', 'CHM1012', '', '1293691113', 'VALIDE', 'ACTIVE', 286, 1, 247, 1);
INSERT INTO `est_inscrit` VALUES (731, '2019-09-12 18:17:02', '2019-09-12 18:17:02', 'HUM1011', '', '1995240588', 'VALIDE', 'ACTIVE', 285, 1, 262, 1);
INSERT INTO `est_inscrit` VALUES (730, '2019-09-12 18:17:02', '2019-09-12 18:17:02', 'COM1011', '', '809339381', 'VALIDE', 'ACTIVE', 285, 1, 261, 1);
INSERT INTO `est_inscrit` VALUES (729, '2019-09-12 18:17:01', '2019-09-12 18:17:01', 'LAC1011', '', '122692774', 'VALIDE', 'ACTIVE', 285, 1, 260, 1);
INSERT INTO `est_inscrit` VALUES (728, '2019-09-12 18:17:01', '2019-09-12 18:17:01', 'ADR1090', '', '1090370123', 'VALIDE', 'ACTIVE', 285, 1, 259, 1);
INSERT INTO `est_inscrit` VALUES (727, '2019-09-12 18:17:01', '2019-09-12 18:17:01', 'PHY1021', '', '-1049357205', 'VALIDE', 'ACTIVE', 285, 1, 258, 1);
INSERT INTO `est_inscrit` VALUES (726, '2019-09-12 18:17:01', '2019-09-12 18:17:01', 'PHY1011', '', '-1189123009', 'VALIDE', 'ACTIVE', 285, 1, 257, 1);
INSERT INTO `est_inscrit` VALUES (725, '2019-09-12 18:17:01', '2019-09-12 18:17:01', 'MAT1011', '', '-1967981748', 'VALIDE', 'ACTIVE', 285, 1, 256, 1);
INSERT INTO `est_inscrit` VALUES (724, '2019-09-12 18:17:01', '2019-09-12 18:17:01', 'ARD1098', '', '-732839106', 'VALIDE', 'ACTIVE', 285, 1, 255, 1);
INSERT INTO `est_inscrit` VALUES (723, '2019-09-12 18:17:01', '2019-09-12 18:17:01', 'HUM1022', '', '123746807', 'VALIDE', 'ACTIVE', 285, 1, 254, 1);
INSERT INTO `est_inscrit` VALUES (722, '2019-09-12 18:17:00', '2019-09-12 18:17:00', 'COM1022', '', '-1038708883', 'VALIDE', 'ACTIVE', 285, 1, 253, 1);
INSERT INTO `est_inscrit` VALUES (721, '2019-09-12 18:17:00', '2019-09-12 18:17:00', 'LAC1022', '', '-1730837034', 'VALIDE', 'ACTIVE', 285, 1, 252, 1);
INSERT INTO `est_inscrit` VALUES (720, '2019-09-12 18:17:00', '2019-09-12 18:17:00', 'STG1012', '', '-687597802', 'VALIDE', 'ACTIVE', 285, 1, 251, 1);
INSERT INTO `est_inscrit` VALUES (719, '2019-09-12 18:17:00', '2019-09-12 18:17:00', 'ING1022', '', '522346868', 'VALIDE', 'ACTIVE', 285, 1, 250, 1);
INSERT INTO `est_inscrit` VALUES (718, '2019-09-12 18:17:00', '2019-09-12 18:17:00', 'INF1012', '', '1421752995', 'VALIDE', 'ACTIVE', 285, 1, 249, 1);
INSERT INTO `est_inscrit` VALUES (717, '2019-09-12 18:17:00', '2019-09-12 18:17:00', 'MAT1022', '', '-921957419', 'VALIDE', 'ACTIVE', 285, 1, 248, 1);
INSERT INTO `est_inscrit` VALUES (716, '2019-09-12 18:16:59', '2019-09-12 18:17:00', 'CHM1012', '', '-1830626589', 'VALIDE', 'ACTIVE', 285, 1, 247, 1);
INSERT INTO `est_inscrit` VALUES (715, '2019-09-12 18:16:59', '2019-09-12 18:16:59', 'HUM1011', '', '77905251', 'VALIDE', 'ACTIVE', 284, 1, 262, 1);
INSERT INTO `est_inscrit` VALUES (714, '2019-09-12 18:16:59', '2019-09-12 18:16:59', 'COM1011', '', '-1877378322', 'VALIDE', 'ACTIVE', 284, 1, 261, 1);
INSERT INTO `est_inscrit` VALUES (713, '2019-09-12 18:16:59', '2019-09-12 18:16:59', 'LAC1011', '', '1210672343', 'VALIDE', 'ACTIVE', 284, 1, 260, 1);
INSERT INTO `est_inscrit` VALUES (712, '2019-09-12 18:16:59', '2019-09-12 18:16:59', 'ADR1090', '', '-2005288637', 'VALIDE', 'ACTIVE', 284, 1, 259, 1);
INSERT INTO `est_inscrit` VALUES (711, '2019-09-12 18:16:58', '2019-09-12 18:16:59', 'PHY1021', '', '-298671338', 'VALIDE', 'ACTIVE', 284, 1, 258, 1);
INSERT INTO `est_inscrit` VALUES (710, '2019-09-12 18:16:58', '2019-09-12 18:16:58', 'PHY1011', '', '559114493', 'VALIDE', 'ACTIVE', 284, 1, 257, 1);
INSERT INTO `est_inscrit` VALUES (709, '2019-09-12 18:16:58', '2019-09-12 18:16:58', 'MAT1011', '', '-1045342229', 'VALIDE', 'ACTIVE', 284, 1, 256, 1);
INSERT INTO `est_inscrit` VALUES (708, '2019-09-12 18:16:57', '2019-09-12 18:16:58', 'ARD1098', '', '-446207646', 'VALIDE', 'ACTIVE', 284, 1, 255, 1);
INSERT INTO `est_inscrit` VALUES (707, '2019-09-12 18:16:57', '2019-09-12 18:16:57', 'HUM1022', '', '1336282547', 'VALIDE', 'ACTIVE', 284, 1, 254, 1);
INSERT INTO `est_inscrit` VALUES (706, '2019-09-12 18:16:57', '2019-09-12 18:16:57', 'COM1022', '', '317121567', 'VALIDE', 'ACTIVE', 284, 1, 253, 1);
INSERT INTO `est_inscrit` VALUES (705, '2019-09-12 18:16:57', '2019-09-12 18:16:57', 'LAC1022', '', '-1002196507', 'VALIDE', 'ACTIVE', 284, 1, 252, 1);
INSERT INTO `est_inscrit` VALUES (704, '2019-09-12 18:16:57', '2019-09-12 18:16:57', 'STG1012', '', '226223581', 'VALIDE', 'ACTIVE', 284, 1, 251, 1);
INSERT INTO `est_inscrit` VALUES (703, '2019-09-12 18:16:57', '2019-09-12 18:16:57', 'ING1022', '', '1604815102', 'VALIDE', 'ACTIVE', 284, 1, 250, 1);
INSERT INTO `est_inscrit` VALUES (702, '2019-09-12 18:16:57', '2019-09-12 18:16:57', 'INF1012', '', '1849474631', 'VALIDE', 'ACTIVE', 284, 1, 249, 1);
INSERT INTO `est_inscrit` VALUES (701, '2019-09-12 18:16:57', '2019-09-12 18:16:57', 'MAT1022', '', '-331100267', 'VALIDE', 'ACTIVE', 284, 1, 248, 1);
INSERT INTO `est_inscrit` VALUES (700, '2019-09-12 18:16:57', '2019-09-12 18:16:57', 'CHM1012', '', '58701089', 'VALIDE', 'ACTIVE', 284, 1, 247, 1);
INSERT INTO `est_inscrit` VALUES (699, '2019-09-12 18:16:57', '2019-09-12 18:16:57', 'HUM1011', '', '1551678270', 'VALIDE', 'ACTIVE', 283, 1, 262, 1);
INSERT INTO `est_inscrit` VALUES (698, '2019-09-12 18:16:57', '2019-09-12 18:16:57', 'COM1011', '', '290822907', 'VALIDE', 'ACTIVE', 283, 1, 261, 1);
INSERT INTO `est_inscrit` VALUES (697, '2019-09-12 18:16:57', '2019-09-12 18:16:57', 'LAC1011', '', '-694538057', 'VALIDE', 'ACTIVE', 283, 1, 260, 1);
INSERT INTO `est_inscrit` VALUES (696, '2019-09-12 18:16:57', '2019-09-12 18:16:57', 'ADR1090', '', '-611981109', 'VALIDE', 'ACTIVE', 283, 1, 259, 1);
INSERT INTO `est_inscrit` VALUES (695, '2019-09-12 18:16:56', '2019-09-12 18:16:56', 'PHY1021', '', '1724030647', 'VALIDE', 'ACTIVE', 283, 1, 258, 1);
INSERT INTO `est_inscrit` VALUES (694, '2019-09-12 18:16:56', '2019-09-12 18:16:56', 'PHY1011', '', '-1913763412', 'VALIDE', 'ACTIVE', 283, 1, 257, 1);
INSERT INTO `est_inscrit` VALUES (693, '2019-09-12 18:16:56', '2019-09-12 18:16:56', 'MAT1011', '', '1556049931', 'VALIDE', 'ACTIVE', 283, 1, 256, 1);
INSERT INTO `est_inscrit` VALUES (692, '2019-09-12 18:16:56', '2019-09-12 18:16:56', 'ARD1098', '', '-1353866411', 'VALIDE', 'ACTIVE', 283, 1, 255, 1);
INSERT INTO `est_inscrit` VALUES (691, '2019-09-12 18:16:56', '2019-09-12 18:16:56', 'HUM1022', '', '-15589819', 'VALIDE', 'ACTIVE', 283, 1, 254, 1);
INSERT INTO `est_inscrit` VALUES (690, '2019-09-12 18:16:56', '2019-09-12 18:16:56', 'COM1022', '', '-991762386', 'VALIDE', 'ACTIVE', 283, 1, 253, 1);
INSERT INTO `est_inscrit` VALUES (689, '2019-09-12 18:16:56', '2019-09-12 18:16:56', 'LAC1022', '', '1464719079', 'VALIDE', 'ACTIVE', 283, 1, 252, 1);
INSERT INTO `est_inscrit` VALUES (688, '2019-09-12 18:16:56', '2019-09-12 18:16:56', 'STG1012', '', '-1602930396', 'VALIDE', 'ACTIVE', 283, 1, 251, 1);
INSERT INTO `est_inscrit` VALUES (687, '2019-09-12 18:16:56', '2019-09-12 18:16:56', 'ING1022', '', '349942232', 'VALIDE', 'ACTIVE', 283, 1, 250, 1);
INSERT INTO `est_inscrit` VALUES (686, '2019-09-12 18:16:56', '2019-09-12 18:16:56', 'INF1012', '', '819464229', 'VALIDE', 'ACTIVE', 283, 1, 249, 1);
INSERT INTO `est_inscrit` VALUES (685, '2019-09-12 18:16:56', '2019-09-12 18:16:56', 'MAT1022', '', '-1026021501', 'VALIDE', 'ACTIVE', 283, 1, 248, 1);
INSERT INTO `est_inscrit` VALUES (684, '2019-09-12 18:16:56', '2019-09-12 18:16:56', 'CHM1012', '', '-1216012587', 'VALIDE', 'ACTIVE', 283, 1, 247, 1);
INSERT INTO `est_inscrit` VALUES (683, '2019-09-12 18:16:56', '2019-09-12 18:16:56', 'HUM1011', '', '326566609', 'VALIDE', 'ACTIVE', 282, 1, 262, 1);
INSERT INTO `est_inscrit` VALUES (682, '2019-09-12 18:16:55', '2019-09-12 18:16:56', 'COM1011', '', '-1518490264', 'VALIDE', 'ACTIVE', 282, 1, 261, 1);
INSERT INTO `est_inscrit` VALUES (681, '2019-09-12 18:16:55', '2019-09-12 18:16:55', 'LAC1011', '', '1511140250', 'VALIDE', 'ACTIVE', 282, 1, 260, 1);
INSERT INTO `est_inscrit` VALUES (680, '2019-09-12 18:16:55', '2019-09-12 18:16:55', 'ADR1090', '', '-1872365314', 'VALIDE', 'ACTIVE', 282, 1, 259, 1);
INSERT INTO `est_inscrit` VALUES (679, '2019-09-12 18:16:55', '2019-09-12 18:16:55', 'PHY1021', '', '835110421', 'VALIDE', 'ACTIVE', 282, 1, 258, 1);
INSERT INTO `est_inscrit` VALUES (678, '2019-09-12 18:16:55', '2019-09-12 18:16:55', 'PHY1011', '', '1697305320', 'VALIDE', 'ACTIVE', 282, 1, 257, 1);
INSERT INTO `est_inscrit` VALUES (677, '2019-09-12 18:16:55', '2019-09-12 18:16:55', 'MAT1011', '', '366210814', 'VALIDE', 'ACTIVE', 282, 1, 256, 1);
INSERT INTO `est_inscrit` VALUES (676, '2019-09-12 18:16:55', '2019-09-12 18:16:55', 'ARD1098', '', '902516178', 'VALIDE', 'ACTIVE', 282, 1, 255, 1);
INSERT INTO `est_inscrit` VALUES (675, '2019-09-12 18:16:55', '2019-09-12 18:16:55', 'HUM1022', '', '-1751051101', 'VALIDE', 'ACTIVE', 282, 1, 254, 1);
INSERT INTO `est_inscrit` VALUES (674, '2019-09-12 18:16:55', '2019-09-12 18:16:55', 'COM1022', '', '1293279145', 'VALIDE', 'ACTIVE', 282, 1, 253, 1);
INSERT INTO `est_inscrit` VALUES (673, '2019-09-12 18:16:55', '2019-09-12 18:16:55', 'LAC1022', '', '568082984', 'VALIDE', 'ACTIVE', 282, 1, 252, 1);
INSERT INTO `est_inscrit` VALUES (672, '2019-09-12 18:16:55', '2019-09-12 18:16:55', 'STG1012', '', '1853820956', 'VALIDE', 'ACTIVE', 282, 1, 251, 1);
INSERT INTO `est_inscrit` VALUES (671, '2019-09-12 18:16:55', '2019-09-12 18:16:55', 'ING1022', '', '-516932654', 'VALIDE', 'ACTIVE', 282, 1, 250, 1);
INSERT INTO `est_inscrit` VALUES (670, '2019-09-12 18:16:55', '2019-09-12 18:16:55', 'INF1012', '', '-34183453', 'VALIDE', 'ACTIVE', 282, 1, 249, 1);
INSERT INTO `est_inscrit` VALUES (669, '2019-09-12 18:16:54', '2019-09-12 18:16:54', 'MAT1022', '', '1275554035', 'VALIDE', 'ACTIVE', 282, 1, 248, 1);
INSERT INTO `est_inscrit` VALUES (668, '2019-09-12 18:16:54', '2019-09-12 18:16:54', 'CHM1012', '', '1195789649', 'VALIDE', 'ACTIVE', 282, 1, 247, 1);
INSERT INTO `est_inscrit` VALUES (667, '2019-09-12 18:16:54', '2019-09-12 18:16:54', 'HUM1011', '', '-1299770240', 'VALIDE', 'ACTIVE', 281, 1, 262, 1);
INSERT INTO `est_inscrit` VALUES (666, '2019-09-12 18:16:54', '2019-09-12 18:16:54', 'COM1011', '', '1775125572', 'VALIDE', 'ACTIVE', 281, 1, 261, 1);
INSERT INTO `est_inscrit` VALUES (665, '2019-09-12 18:16:54', '2019-09-12 18:16:54', 'LAC1011', '', '754492064', 'VALIDE', 'ACTIVE', 281, 1, 260, 1);
INSERT INTO `est_inscrit` VALUES (664, '2019-09-12 18:16:54', '2019-09-12 18:16:54', 'ADR1090', '', '918616770', 'VALIDE', 'ACTIVE', 281, 1, 259, 1);
INSERT INTO `est_inscrit` VALUES (663, '2019-09-12 18:16:54', '2019-09-12 18:16:54', 'PHY1021', '', '-1243155898', 'VALIDE', 'ACTIVE', 281, 1, 258, 1);
INSERT INTO `est_inscrit` VALUES (662, '2019-09-12 18:16:54', '2019-09-12 18:16:54', 'PHY1011', '', '-61303569', 'VALIDE', 'ACTIVE', 281, 1, 257, 1);
INSERT INTO `est_inscrit` VALUES (661, '2019-09-12 18:16:54', '2019-09-12 18:16:54', 'MAT1011', '', '-1382477672', 'VALIDE', 'ACTIVE', 281, 1, 256, 1);
INSERT INTO `est_inscrit` VALUES (660, '2019-09-12 18:16:53', '2019-09-12 18:16:53', 'ARD1098', '', '-754684147', 'VALIDE', 'ACTIVE', 281, 1, 255, 1);
INSERT INTO `est_inscrit` VALUES (659, '2019-09-12 18:16:53', '2019-09-12 18:16:53', 'HUM1022', '', '638705795', 'VALIDE', 'ACTIVE', 281, 1, 254, 1);
INSERT INTO `est_inscrit` VALUES (658, '2019-09-12 18:16:53', '2019-09-12 18:16:53', 'COM1022', '', '16360935', 'VALIDE', 'ACTIVE', 281, 1, 253, 1);
INSERT INTO `est_inscrit` VALUES (657, '2019-09-12 18:16:53', '2019-09-12 18:16:53', 'LAC1022', '', '-1234616585', 'VALIDE', 'ACTIVE', 281, 1, 252, 1);
INSERT INTO `est_inscrit` VALUES (656, '2019-09-12 18:16:53', '2019-09-12 18:16:53', 'STG1012', '', '-768965261', 'VALIDE', 'ACTIVE', 281, 1, 251, 1);
INSERT INTO `est_inscrit` VALUES (655, '2019-09-12 18:16:53', '2019-09-12 18:16:53', 'ING1022', '', '1293031800', 'VALIDE', 'ACTIVE', 281, 1, 250, 1);
INSERT INTO `est_inscrit` VALUES (654, '2019-09-12 18:16:53', '2019-09-12 18:16:53', 'INF1012', '', '2098745232', 'VALIDE', 'ACTIVE', 281, 1, 249, 1);
INSERT INTO `est_inscrit` VALUES (653, '2019-09-12 18:16:52', '2019-09-12 18:16:53', 'MAT1022', '', '-214101706', 'VALIDE', 'ACTIVE', 281, 1, 248, 1);
INSERT INTO `est_inscrit` VALUES (652, '2019-09-12 18:16:52', '2019-09-12 18:16:52', 'CHM1012', '', '-1093009667', 'VALIDE', 'ACTIVE', 281, 1, 247, 1);
INSERT INTO `est_inscrit` VALUES (774, '2019-09-12 18:17:06', '2019-09-12 18:17:06', 'PHY1011', '', '358301600', 'VALIDE', 'ACTIVE', 288, 1, 257, 1);
INSERT INTO `est_inscrit` VALUES (775, '2019-09-12 18:17:07', '2019-09-12 18:17:07', 'PHY1021', '', '309579747', 'VALIDE', 'ACTIVE', 288, 1, 258, 1);
INSERT INTO `est_inscrit` VALUES (776, '2019-09-12 18:17:07', '2019-09-12 18:17:07', 'ADR1090', '', '2118626975', 'VALIDE', 'ACTIVE', 288, 1, 259, 1);
INSERT INTO `est_inscrit` VALUES (777, '2019-09-12 18:17:07', '2019-09-12 18:17:07', 'LAC1011', '', '2125353654', 'VALIDE', 'ACTIVE', 288, 1, 260, 1);
INSERT INTO `est_inscrit` VALUES (778, '2019-09-12 18:17:07', '2019-09-12 18:17:07', 'COM1011', '', '-1540284919', 'VALIDE', 'ACTIVE', 288, 1, 261, 1);
INSERT INTO `est_inscrit` VALUES (779, '2019-09-12 18:17:07', '2019-09-12 18:17:07', 'HUM1011', '', '431532659', 'VALIDE', 'ACTIVE', 288, 1, 262, 1);
INSERT INTO `est_inscrit` VALUES (780, '2019-09-12 18:17:08', '2019-09-12 18:17:08', 'CHM1012', '', '-879570467', 'VALIDE', 'ACTIVE', 289, 1, 247, 1);
INSERT INTO `est_inscrit` VALUES (781, '2019-09-12 18:17:08', '2019-09-12 18:17:08', 'MAT1022', '', '-1422586936', 'VALIDE', 'ACTIVE', 289, 1, 248, 1);
INSERT INTO `est_inscrit` VALUES (782, '2019-09-12 18:17:08', '2019-09-12 18:17:08', 'INF1012', '', '1770971335', 'VALIDE', 'ACTIVE', 289, 1, 249, 1);
INSERT INTO `est_inscrit` VALUES (783, '2019-09-12 18:17:08', '2019-09-12 18:17:08', 'ING1022', '', '1451357650', 'VALIDE', 'ACTIVE', 289, 1, 250, 1);
INSERT INTO `est_inscrit` VALUES (784, '2019-09-12 18:17:08', '2019-09-12 18:17:08', 'STG1012', '', '-1167284246', 'VALIDE', 'ACTIVE', 289, 1, 251, 1);
INSERT INTO `est_inscrit` VALUES (785, '2019-09-12 18:17:08', '2019-09-12 18:17:08', 'LAC1022', '', '2141761702', 'VALIDE', 'ACTIVE', 289, 1, 252, 1);
INSERT INTO `est_inscrit` VALUES (786, '2019-09-12 18:17:08', '2019-09-12 18:17:08', 'COM1022', '', '-359912710', 'VALIDE', 'ACTIVE', 289, 1, 253, 1);
INSERT INTO `est_inscrit` VALUES (787, '2019-09-12 18:17:09', '2019-09-12 18:17:09', 'HUM1022', '', '780497640', 'VALIDE', 'ACTIVE', 289, 1, 254, 1);
INSERT INTO `est_inscrit` VALUES (788, '2019-09-12 18:17:09', '2019-09-12 18:17:09', 'ARD1098', '', '-934754266', 'VALIDE', 'ACTIVE', 289, 1, 255, 1);
INSERT INTO `est_inscrit` VALUES (789, '2019-09-12 18:17:09', '2019-09-12 18:17:09', 'MAT1011', '', '-1559240990', 'VALIDE', 'ACTIVE', 289, 1, 256, 1);
INSERT INTO `est_inscrit` VALUES (790, '2019-09-12 18:17:09', '2019-09-12 18:17:09', 'PHY1011', '', '-240271421', 'VALIDE', 'ACTIVE', 289, 1, 257, 1);
INSERT INTO `est_inscrit` VALUES (791, '2019-09-12 18:17:09', '2019-09-12 18:17:09', 'PHY1021', '', '-1466214430', 'VALIDE', 'ACTIVE', 289, 1, 258, 1);
INSERT INTO `est_inscrit` VALUES (792, '2019-09-12 18:17:09', '2019-09-12 18:17:09', 'ADR1090', '', '585331538', 'VALIDE', 'ACTIVE', 289, 1, 259, 1);
INSERT INTO `est_inscrit` VALUES (793, '2019-09-12 18:17:09', '2019-09-12 18:17:10', 'LAC1011', '', '426718167', 'VALIDE', 'ACTIVE', 289, 1, 260, 1);
INSERT INTO `est_inscrit` VALUES (794, '2019-09-12 18:17:10', '2019-09-12 18:17:10', 'COM1011', '', '1348147645', 'VALIDE', 'ACTIVE', 289, 1, 261, 1);
INSERT INTO `est_inscrit` VALUES (795, '2019-09-12 18:17:10', '2019-09-12 18:17:10', 'HUM1011', '', '-1798395522', 'VALIDE', 'ACTIVE', 289, 1, 262, 1);
INSERT INTO `est_inscrit` VALUES (796, '2019-09-12 18:17:10', '2019-09-12 18:17:10', 'CHM1012', '', '1742114134', 'VALIDE', 'ACTIVE', 290, 1, 247, 1);
INSERT INTO `est_inscrit` VALUES (797, '2019-09-12 18:17:10', '2019-09-12 18:17:10', 'MAT1022', '', '1822980787', 'VALIDE', 'ACTIVE', 290, 1, 248, 1);
INSERT INTO `est_inscrit` VALUES (798, '2019-09-12 18:17:10', '2019-09-12 18:17:10', 'INF1012', '', '-430297253', 'VALIDE', 'ACTIVE', 290, 1, 249, 1);
INSERT INTO `est_inscrit` VALUES (799, '2019-09-12 18:17:10', '2019-09-12 18:17:10', 'ING1022', '', '-169016229', 'VALIDE', 'ACTIVE', 290, 1, 250, 1);
INSERT INTO `est_inscrit` VALUES (800, '2019-09-12 18:17:11', '2019-09-12 18:17:11', 'STG1012', '', '2061749472', 'VALIDE', 'ACTIVE', 290, 1, 251, 1);
INSERT INTO `est_inscrit` VALUES (801, '2019-09-12 18:17:11', '2019-09-12 18:17:11', 'LAC1022', '', '1412019559', 'VALIDE', 'ACTIVE', 290, 1, 252, 1);
INSERT INTO `est_inscrit` VALUES (802, '2019-09-12 18:17:11', '2019-09-12 18:17:11', 'COM1022', '', '-2062956614', 'VALIDE', 'ACTIVE', 290, 1, 253, 1);
INSERT INTO `est_inscrit` VALUES (803, '2019-09-12 18:17:11', '2019-09-12 18:17:12', 'HUM1022', '', '-218197651', 'VALIDE', 'ACTIVE', 290, 1, 254, 1);
INSERT INTO `est_inscrit` VALUES (804, '2019-09-12 18:17:12', '2019-09-12 18:17:12', 'ARD1098', '', '-2035960388', 'VALIDE', 'ACTIVE', 290, 1, 255, 1);
INSERT INTO `est_inscrit` VALUES (805, '2019-09-12 18:17:12', '2019-09-12 18:17:12', 'MAT1011', '', '1765689957', 'VALIDE', 'ACTIVE', 290, 1, 256, 1);
INSERT INTO `est_inscrit` VALUES (806, '2019-09-12 18:17:12', '2019-09-12 18:17:12', 'PHY1011', '', '-1598305754', 'VALIDE', 'ACTIVE', 290, 1, 257, 1);
INSERT INTO `est_inscrit` VALUES (807, '2019-09-12 18:17:12', '2019-09-12 18:17:12', 'PHY1021', '', '-1566562116', 'VALIDE', 'ACTIVE', 290, 1, 258, 1);
INSERT INTO `est_inscrit` VALUES (808, '2019-09-12 18:17:13', '2019-09-12 18:17:13', 'ADR1090', '', '513642794', 'VALIDE', 'ACTIVE', 290, 1, 259, 1);
INSERT INTO `est_inscrit` VALUES (809, '2019-09-12 18:17:13', '2019-09-12 18:17:13', 'LAC1011', '', '-582999794', 'VALIDE', 'ACTIVE', 290, 1, 260, 1);
INSERT INTO `est_inscrit` VALUES (810, '2019-09-12 18:17:13', '2019-09-12 18:17:13', 'COM1011', '', '1372356130', 'VALIDE', 'ACTIVE', 290, 1, 261, 1);
INSERT INTO `est_inscrit` VALUES (811, '2019-09-12 18:17:13', '2019-09-12 18:17:13', 'HUM1011', '', '1949805953', 'VALIDE', 'ACTIVE', 290, 1, 262, 1);
INSERT INTO `est_inscrit` VALUES (812, '2019-09-12 18:17:14', '2019-09-12 18:17:14', 'CHM1012', '', '1413596528', 'VALIDE', 'ACTIVE', 291, 1, 247, 1);
INSERT INTO `est_inscrit` VALUES (813, '2019-09-12 18:17:14', '2019-09-12 18:17:14', 'MAT1022', '', '1141737741', 'VALIDE', 'ACTIVE', 291, 1, 248, 1);
INSERT INTO `est_inscrit` VALUES (814, '2019-09-12 18:17:14', '2019-09-12 18:17:14', 'INF1012', '', '-776451131', 'VALIDE', 'ACTIVE', 291, 1, 249, 1);
INSERT INTO `est_inscrit` VALUES (815, '2019-09-12 18:17:14', '2019-09-12 18:17:14', 'ING1022', '', '-540522248', 'VALIDE', 'ACTIVE', 291, 1, 250, 1);
INSERT INTO `est_inscrit` VALUES (816, '2019-09-12 18:17:14', '2019-09-12 18:17:14', 'STG1012', '', '1710084259', 'VALIDE', 'ACTIVE', 291, 1, 251, 1);
INSERT INTO `est_inscrit` VALUES (817, '2019-09-12 18:17:14', '2019-09-12 18:17:14', 'LAC1022', '', '136654600', 'VALIDE', 'ACTIVE', 291, 1, 252, 1);
INSERT INTO `est_inscrit` VALUES (818, '2019-09-12 18:17:15', '2019-09-12 18:17:15', 'COM1022', '', '-2096066664', 'VALIDE', 'ACTIVE', 291, 1, 253, 1);
INSERT INTO `est_inscrit` VALUES (819, '2019-09-12 18:17:15', '2019-09-12 18:17:15', 'HUM1022', '', '-1360188303', 'VALIDE', 'ACTIVE', 291, 1, 254, 1);
INSERT INTO `est_inscrit` VALUES (820, '2019-09-12 18:17:15', '2019-09-12 18:17:15', 'ARD1098', '', '-2120876987', 'VALIDE', 'ACTIVE', 291, 1, 255, 1);
INSERT INTO `est_inscrit` VALUES (821, '2019-09-12 18:17:15', '2019-09-12 18:17:15', 'MAT1011', '', '580710892', 'VALIDE', 'ACTIVE', 291, 1, 256, 1);
INSERT INTO `est_inscrit` VALUES (822, '2019-09-12 18:17:16', '2019-09-12 18:17:16', 'PHY1011', '', '-1662279280', 'VALIDE', 'ACTIVE', 291, 1, 257, 1);
INSERT INTO `est_inscrit` VALUES (823, '2019-09-12 18:17:16', '2019-09-12 18:17:16', 'PHY1021', '', '1579800926', 'VALIDE', 'ACTIVE', 291, 1, 258, 1);
INSERT INTO `est_inscrit` VALUES (824, '2019-09-12 18:17:16', '2019-09-12 18:17:16', 'ADR1090', '', '124500503', 'VALIDE', 'ACTIVE', 291, 1, 259, 1);
INSERT INTO `est_inscrit` VALUES (825, '2019-09-12 18:17:16', '2019-09-12 18:17:16', 'LAC1011', '', '-620518912', 'VALIDE', 'ACTIVE', 291, 1, 260, 1);
INSERT INTO `est_inscrit` VALUES (826, '2019-09-12 18:17:16', '2019-09-12 18:17:16', 'COM1011', '', '-3315126', 'VALIDE', 'ACTIVE', 291, 1, 261, 1);
INSERT INTO `est_inscrit` VALUES (827, '2019-09-12 18:17:17', '2019-09-12 18:17:17', 'HUM1011', '', '1976218321', 'VALIDE', 'ACTIVE', 291, 1, 262, 1);
INSERT INTO `est_inscrit` VALUES (828, '2019-09-12 18:17:17', '2019-09-12 18:17:17', 'CHM1012', '', '698183205', 'VALIDE', 'ACTIVE', 292, 1, 247, 1);
INSERT INTO `est_inscrit` VALUES (829, '2019-09-12 18:17:17', '2019-09-12 18:17:17', 'MAT1022', '', '138632731', 'VALIDE', 'ACTIVE', 292, 1, 248, 1);
INSERT INTO `est_inscrit` VALUES (830, '2019-09-12 18:17:17', '2019-09-12 18:17:17', 'INF1012', '', '-947344556', 'VALIDE', 'ACTIVE', 292, 1, 249, 1);
INSERT INTO `est_inscrit` VALUES (831, '2019-09-12 18:17:17', '2019-09-12 18:17:17', 'ING1022', '', '-1250424236', 'VALIDE', 'ACTIVE', 292, 1, 250, 1);
INSERT INTO `est_inscrit` VALUES (832, '2019-09-12 18:17:17', '2019-09-12 18:17:17', 'STG1012', '', '401651290', 'VALIDE', 'ACTIVE', 292, 1, 251, 1);
INSERT INTO `est_inscrit` VALUES (833, '2019-09-12 18:17:18', '2019-09-12 18:17:18', 'LAC1022', '', '-640485675', 'VALIDE', 'ACTIVE', 292, 1, 252, 1);
INSERT INTO `est_inscrit` VALUES (834, '2019-09-12 18:17:18', '2019-09-12 18:17:18', 'COM1022', '', '997387562', 'VALIDE', 'ACTIVE', 292, 1, 253, 1);
INSERT INTO `est_inscrit` VALUES (835, '2019-09-12 18:17:18', '2019-09-12 18:17:18', 'HUM1022', '', '-1384480217', 'VALIDE', 'ACTIVE', 292, 1, 254, 1);
INSERT INTO `est_inscrit` VALUES (836, '2019-09-12 18:17:18', '2019-09-12 18:17:18', 'ARD1098', '', '1040917793', 'VALIDE', 'ACTIVE', 292, 1, 255, 1);
INSERT INTO `est_inscrit` VALUES (837, '2019-09-12 18:17:19', '2019-09-12 18:17:19', 'MAT1011', '', '545396308', 'VALIDE', 'ACTIVE', 292, 1, 256, 1);
INSERT INTO `est_inscrit` VALUES (838, '2019-09-12 18:17:19', '2019-09-12 18:17:19', 'PHY1011', '', '1796025323', 'VALIDE', 'ACTIVE', 292, 1, 257, 1);
INSERT INTO `est_inscrit` VALUES (839, '2019-09-12 18:17:19', '2019-09-12 18:17:19', 'PHY1021', '', '737626898', 'VALIDE', 'ACTIVE', 292, 1, 258, 1);
INSERT INTO `est_inscrit` VALUES (840, '2019-09-12 18:17:19', '2019-09-12 18:17:19', 'ADR1090', '', '-707753122', 'VALIDE', 'ACTIVE', 292, 1, 259, 1);
INSERT INTO `est_inscrit` VALUES (841, '2019-09-12 18:17:20', '2019-09-12 18:17:20', 'LAC1011', '', '-1827543317', 'VALIDE', 'ACTIVE', 292, 1, 260, 1);
INSERT INTO `est_inscrit` VALUES (842, '2019-09-12 18:17:20', '2019-09-12 18:17:20', 'COM1011', '', '-62879584', 'VALIDE', 'ACTIVE', 292, 1, 261, 1);
INSERT INTO `est_inscrit` VALUES (843, '2019-09-12 18:17:20', '2019-09-12 18:17:20', 'HUM1011', '', '759273513', 'VALIDE', 'ACTIVE', 292, 1, 262, 1);
INSERT INTO `est_inscrit` VALUES (844, '2019-09-12 18:17:20', '2019-09-12 18:17:20', 'CHM1012', '', '-555136414', 'VALIDE', 'ACTIVE', 293, 1, 247, 1);
INSERT INTO `est_inscrit` VALUES (845, '2019-09-12 18:17:20', '2019-09-12 18:17:20', 'MAT1022', '', '118749885', 'VALIDE', 'ACTIVE', 293, 1, 248, 1);
INSERT INTO `est_inscrit` VALUES (846, '2019-09-12 18:17:20', '2019-09-12 18:17:20', 'INF1012', '', '-1823688861', 'VALIDE', 'ACTIVE', 293, 1, 249, 1);
INSERT INTO `est_inscrit` VALUES (847, '2019-09-12 18:17:21', '2019-09-12 18:17:21', 'ING1022', '', '1870586665', 'VALIDE', 'ACTIVE', 293, 1, 250, 1);
INSERT INTO `est_inscrit` VALUES (848, '2019-09-12 18:17:21', '2019-09-12 18:17:21', 'STG1012', '', '439086328', 'VALIDE', 'ACTIVE', 293, 1, 251, 1);
INSERT INTO `est_inscrit` VALUES (849, '2019-09-12 18:17:21', '2019-09-12 18:17:21', 'LAC1022', '', '-635016380', 'VALIDE', 'ACTIVE', 293, 1, 252, 1);
INSERT INTO `est_inscrit` VALUES (850, '2019-09-12 18:17:21', '2019-09-12 18:17:21', 'COM1022', '', '58214038', 'VALIDE', 'ACTIVE', 293, 1, 253, 1);
INSERT INTO `est_inscrit` VALUES (851, '2019-09-12 18:17:21', '2019-09-12 18:17:21', 'HUM1022', '', '1229487864', 'VALIDE', 'ACTIVE', 293, 1, 254, 1);
INSERT INTO `est_inscrit` VALUES (852, '2019-09-12 18:17:21', '2019-09-12 18:17:21', 'ARD1098', '', '326606737', 'VALIDE', 'ACTIVE', 293, 1, 255, 1);
INSERT INTO `est_inscrit` VALUES (853, '2019-09-12 18:17:21', '2019-09-12 18:17:21', 'MAT1011', '', '-852320288', 'VALIDE', 'ACTIVE', 293, 1, 256, 1);
INSERT INTO `est_inscrit` VALUES (854, '2019-09-12 18:17:22', '2019-09-12 18:17:22', 'PHY1011', '', '145889584', 'VALIDE', 'ACTIVE', 293, 1, 257, 1);
INSERT INTO `est_inscrit` VALUES (855, '2019-09-12 18:17:22', '2019-09-12 18:17:22', 'PHY1021', '', '13395439', 'VALIDE', 'ACTIVE', 293, 1, 258, 1);
INSERT INTO `est_inscrit` VALUES (856, '2019-09-12 18:17:22', '2019-09-12 18:17:22', 'ADR1090', '', '2114543422', 'VALIDE', 'ACTIVE', 293, 1, 259, 1);
INSERT INTO `est_inscrit` VALUES (857, '2019-09-12 18:17:22', '2019-09-12 18:17:22', 'LAC1011', '', '843742648', 'VALIDE', 'ACTIVE', 293, 1, 260, 1);
INSERT INTO `est_inscrit` VALUES (858, '2019-09-12 18:17:22', '2019-09-12 18:17:22', 'COM1011', '', '2069397818', 'VALIDE', 'ACTIVE', 293, 1, 261, 1);
INSERT INTO `est_inscrit` VALUES (859, '2019-09-12 18:17:22', '2019-09-12 18:17:22', 'HUM1011', '', '-423501018', 'VALIDE', 'ACTIVE', 293, 1, 262, 1);
INSERT INTO `est_inscrit` VALUES (860, '2019-09-12 18:17:22', '2019-09-12 18:17:22', 'CHM1012', '', '-1693820265', 'VALIDE', 'ACTIVE', 294, 1, 247, 1);
INSERT INTO `est_inscrit` VALUES (861, '2019-09-12 18:17:22', '2019-09-12 18:17:22', 'MAT1022', '', '2111039378', 'VALIDE', 'ACTIVE', 294, 1, 248, 1);
INSERT INTO `est_inscrit` VALUES (862, '2019-09-12 18:17:23', '2019-09-12 18:17:23', 'INF1012', '', '228123050', 'VALIDE', 'ACTIVE', 294, 1, 249, 1);
INSERT INTO `est_inscrit` VALUES (863, '2019-09-12 18:17:23', '2019-09-12 18:17:23', 'ING1022', '', '547824225', 'VALIDE', 'ACTIVE', 294, 1, 250, 1);
INSERT INTO `est_inscrit` VALUES (864, '2019-09-12 18:17:23', '2019-09-12 18:17:23', 'STG1012', '', '-1508661501', 'VALIDE', 'ACTIVE', 294, 1, 251, 1);
INSERT INTO `est_inscrit` VALUES (865, '2019-09-12 18:17:23', '2019-09-12 18:17:23', 'LAC1022', '', '1250353214', 'VALIDE', 'ACTIVE', 294, 1, 252, 1);
INSERT INTO `est_inscrit` VALUES (866, '2019-09-12 18:17:23', '2019-09-12 18:17:23', 'COM1022', '', '-1791432028', 'VALIDE', 'ACTIVE', 294, 1, 253, 1);
INSERT INTO `est_inscrit` VALUES (867, '2019-09-12 18:17:23', '2019-09-12 18:17:23', 'HUM1022', '', '-54695231', 'VALIDE', 'ACTIVE', 294, 1, 254, 1);
INSERT INTO `est_inscrit` VALUES (868, '2019-09-12 18:17:23', '2019-09-12 18:17:23', 'ARD1098', '', '-1446982906', 'VALIDE', 'ACTIVE', 294, 1, 255, 1);
INSERT INTO `est_inscrit` VALUES (869, '2019-09-12 18:17:24', '2019-09-12 18:17:24', 'MAT1011', '', '1187366686', 'VALIDE', 'ACTIVE', 294, 1, 256, 1);
INSERT INTO `est_inscrit` VALUES (870, '2019-09-12 18:17:24', '2019-09-12 18:17:24', 'PHY1011', '', '-1064441622', 'VALIDE', 'ACTIVE', 294, 1, 257, 1);
INSERT INTO `est_inscrit` VALUES (871, '2019-09-12 18:17:24', '2019-09-12 18:17:24', 'PHY1021', '', '2099377627', 'VALIDE', 'ACTIVE', 294, 1, 258, 1);
INSERT INTO `est_inscrit` VALUES (872, '2019-09-12 18:17:24', '2019-09-12 18:17:24', 'ADR1090', '', '617622796', 'VALIDE', 'ACTIVE', 294, 1, 259, 1);
INSERT INTO `est_inscrit` VALUES (873, '2019-09-12 18:17:25', '2019-09-12 18:17:25', 'LAC1011', '', '273828569', 'VALIDE', 'ACTIVE', 294, 1, 260, 1);
INSERT INTO `est_inscrit` VALUES (874, '2019-09-12 18:17:25', '2019-09-12 18:17:25', 'COM1011', '', '1111485755', 'VALIDE', 'ACTIVE', 294, 1, 261, 1);
INSERT INTO `est_inscrit` VALUES (875, '2019-09-12 18:17:25', '2019-09-12 18:17:25', 'HUM1011', '', '-1340629202', 'VALIDE', 'ACTIVE', 294, 1, 262, 1);
INSERT INTO `est_inscrit` VALUES (876, '2019-09-12 18:17:26', '2019-09-12 18:17:26', 'CHM1012', '', '1218862173', 'VALIDE', 'ACTIVE', 295, 1, 247, 1);
INSERT INTO `est_inscrit` VALUES (877, '2019-09-12 18:17:26', '2019-09-12 18:17:26', 'MAT1022', '', '2054781721', 'VALIDE', 'ACTIVE', 295, 1, 248, 1);
INSERT INTO `est_inscrit` VALUES (878, '2019-09-12 18:17:26', '2019-09-12 18:17:26', 'INF1012', '', '84786300', 'VALIDE', 'ACTIVE', 295, 1, 249, 1);
INSERT INTO `est_inscrit` VALUES (879, '2019-09-12 18:17:26', '2019-09-12 18:17:26', 'ING1022', '', '-569916553', 'VALIDE', 'ACTIVE', 295, 1, 250, 1);
INSERT INTO `est_inscrit` VALUES (880, '2019-09-12 18:17:26', '2019-09-12 18:17:26', 'STG1012', '', '-1865838049', 'VALIDE', 'ACTIVE', 295, 1, 251, 1);
INSERT INTO `est_inscrit` VALUES (881, '2019-09-12 18:17:27', '2019-09-12 18:17:27', 'LAC1022', '', '992380696', 'VALIDE', 'ACTIVE', 295, 1, 252, 1);
INSERT INTO `est_inscrit` VALUES (882, '2019-09-12 18:17:27', '2019-09-12 18:17:27', 'COM1022', '', '-1509293716', 'VALIDE', 'ACTIVE', 295, 1, 253, 1);
INSERT INTO `est_inscrit` VALUES (883, '2019-09-12 18:17:27', '2019-09-12 18:17:27', 'HUM1022', '', '-353451628', 'VALIDE', 'ACTIVE', 295, 1, 254, 1);
INSERT INTO `est_inscrit` VALUES (884, '2019-09-12 18:17:27', '2019-09-12 18:17:27', 'ARD1098', '', '-2105078345', 'VALIDE', 'ACTIVE', 295, 1, 255, 1);
INSERT INTO `est_inscrit` VALUES (885, '2019-09-12 18:17:27', '2019-09-12 18:17:27', 'MAT1011', '', '1526822882', 'VALIDE', 'ACTIVE', 295, 1, 256, 1);
INSERT INTO `est_inscrit` VALUES (886, '2019-09-12 18:17:28', '2019-09-12 18:17:28', 'PHY1011', '', '-1508697263', 'VALIDE', 'ACTIVE', 295, 1, 257, 1);
INSERT INTO `est_inscrit` VALUES (887, '2019-09-12 18:17:28', '2019-09-12 18:17:28', 'PHY1021', '', '1800621230', 'VALIDE', 'ACTIVE', 295, 1, 258, 1);
INSERT INTO `est_inscrit` VALUES (888, '2019-09-12 18:17:28', '2019-09-12 18:17:28', 'ADR1090', '', '171162621', 'VALIDE', 'ACTIVE', 295, 1, 259, 1);
INSERT INTO `est_inscrit` VALUES (889, '2019-09-12 18:17:28', '2019-09-12 18:17:28', 'LAC1011', '', '-570549993', 'VALIDE', 'ACTIVE', 295, 1, 260, 1);
INSERT INTO `est_inscrit` VALUES (890, '2019-09-12 18:17:28', '2019-09-12 18:17:28', 'COM1011', '', '73108201', 'VALIDE', 'ACTIVE', 295, 1, 261, 1);
INSERT INTO `est_inscrit` VALUES (891, '2019-09-12 18:17:28', '2019-09-12 18:17:28', 'HUM1011', '', '2083505124', 'VALIDE', 'ACTIVE', 295, 1, 262, 1);
INSERT INTO `est_inscrit` VALUES (892, '2019-09-12 18:17:28', '2019-09-12 18:17:29', 'MAT2054', '', '399133490', 'VALIDE', 'ACTIVE', 296, 1, 263, 1);
INSERT INTO `est_inscrit` VALUES (893, '2019-09-12 18:17:29', '2019-09-12 18:17:29', 'MAT2043', '', '-962284458', 'VALIDE', 'ACTIVE', 296, 1, 264, 1);
INSERT INTO `est_inscrit` VALUES (894, '2019-09-12 18:17:29', '2019-09-12 18:17:29', 'PHY2033', '', '-1238791771', 'VALIDE', 'ACTIVE', 296, 1, 265, 1);
INSERT INTO `est_inscrit` VALUES (895, '2019-09-12 18:17:29', '2019-09-12 18:17:29', 'INF2023', '', '251411431', 'VALIDE', 'ACTIVE', 296, 1, 266, 1);
INSERT INTO `est_inscrit` VALUES (896, '2019-09-12 18:17:29', '2019-09-12 18:17:29', 'INF2033', '', '-1020856583', 'VALIDE', 'ACTIVE', 296, 1, 267, 1);
INSERT INTO `est_inscrit` VALUES (897, '2019-09-12 18:17:29', '2019-09-12 18:17:29', 'LAC2033', '', '-643741288', 'VALIDE', 'ACTIVE', 296, 1, 268, 1);
INSERT INTO `est_inscrit` VALUES (898, '2019-09-12 18:17:29', '2019-09-12 18:17:29', 'ECO2013', '', '-2134163231', 'VALIDE', 'ACTIVE', 296, 1, 269, 1);
INSERT INTO `est_inscrit` VALUES (899, '2019-09-12 18:17:30', '2019-09-12 18:17:30', 'HUM2033', '', '-362556198', 'VALIDE', 'ACTIVE', 296, 1, 270, 1);
INSERT INTO `est_inscrit` VALUES (900, '2019-09-12 18:17:30', '2019-09-12 18:17:30', 'ARD2076', '', '-1617083978', 'VALIDE', 'ACTIVE', 296, 1, 271, 1);
INSERT INTO `est_inscrit` VALUES (901, '2019-09-12 18:17:30', '2019-09-12 18:17:30', 'MAT2033', '', '-887002990', 'VALIDE', 'ACTIVE', 296, 1, 272, 1);
INSERT INTO `est_inscrit` VALUES (902, '2019-09-12 18:17:30', '2019-09-12 18:17:30', 'PHY2054', '', '1563003768', 'VALIDE', 'ACTIVE', 296, 1, 273, 1);
INSERT INTO `est_inscrit` VALUES (903, '2019-09-12 18:17:30', '2019-09-12 18:17:30', 'PHY2051', '', '795476449', 'VALIDE', 'ACTIVE', 296, 1, 274, 1);
INSERT INTO `est_inscrit` VALUES (904, '2019-09-12 18:17:30', '2019-09-12 18:17:30', 'INF2054', '', '-1192575888', 'VALIDE', 'ACTIVE', 296, 1, 275, 1);
INSERT INTO `est_inscrit` VALUES (905, '2019-09-12 18:17:30', '2019-09-12 18:17:30', 'INF2053', '', '-210656523', 'VALIDE', 'ACTIVE', 296, 1, 276, 1);
INSERT INTO `est_inscrit` VALUES (906, '2019-09-12 18:17:30', '2019-09-12 18:17:30', 'LAC2054', '', '1147007617', 'VALIDE', 'ACTIVE', 296, 1, 277, 1);
INSERT INTO `est_inscrit` VALUES (907, '2019-09-12 18:17:31', '2019-09-12 18:17:31', 'ECO2024', '', '381360347', 'VALIDE', 'ACTIVE', 296, 1, 278, 1);
INSERT INTO `est_inscrit` VALUES (908, '2019-09-12 18:17:31', '2019-09-12 18:17:31', 'HUM2054', '', '-928486278', 'VALIDE', 'ACTIVE', 296, 1, 279, 1);
INSERT INTO `est_inscrit` VALUES (909, '2019-09-12 18:17:31', '2019-09-12 18:17:31', 'ARD2067', '', '-1769924567', 'VALIDE', 'ACTIVE', 296, 1, 280, 1);
INSERT INTO `est_inscrit` VALUES (910, '2019-09-12 18:17:31', '2019-09-12 18:17:31', 'MAT2054', '', '-1048123617', 'VALIDE', 'ACTIVE', 297, 1, 263, 1);
INSERT INTO `est_inscrit` VALUES (911, '2019-09-12 18:17:31', '2019-09-12 18:17:31', 'MAT2043', '', '1935027746', 'VALIDE', 'ACTIVE', 297, 1, 264, 1);
INSERT INTO `est_inscrit` VALUES (912, '2019-09-12 18:17:31', '2019-09-12 18:17:31', 'PHY2033', '', '1655213632', 'VALIDE', 'ACTIVE', 297, 1, 265, 1);
INSERT INTO `est_inscrit` VALUES (913, '2019-09-12 18:17:31', '2019-09-12 18:17:31', 'INF2023', '', '-1360083459', 'VALIDE', 'ACTIVE', 297, 1, 266, 1);
INSERT INTO `est_inscrit` VALUES (914, '2019-09-12 18:17:32', '2019-09-12 18:17:32', 'INF2033', '', '-2099956512', 'VALIDE', 'ACTIVE', 297, 1, 267, 1);
INSERT INTO `est_inscrit` VALUES (915, '2019-09-12 18:17:32', '2019-09-12 18:17:32', 'LAC2033', '', '2050753788', 'VALIDE', 'ACTIVE', 297, 1, 268, 1);
INSERT INTO `est_inscrit` VALUES (916, '2019-09-12 18:17:32', '2019-09-12 18:17:32', 'ECO2013', '', '-1824325', 'VALIDE', 'ACTIVE', 297, 1, 269, 1);
INSERT INTO `est_inscrit` VALUES (917, '2019-09-12 18:17:32', '2019-09-12 18:17:32', 'HUM2033', '', '-1938778544', 'VALIDE', 'ACTIVE', 297, 1, 270, 1);
INSERT INTO `est_inscrit` VALUES (918, '2019-09-12 18:17:32', '2019-09-12 18:17:32', 'ARD2076', '', '1650589938', 'VALIDE', 'ACTIVE', 297, 1, 271, 1);
INSERT INTO `est_inscrit` VALUES (919, '2019-09-12 18:17:32', '2019-09-12 18:17:32', 'MAT2033', '', '1978343471', 'VALIDE', 'ACTIVE', 297, 1, 272, 1);
INSERT INTO `est_inscrit` VALUES (920, '2019-09-12 18:17:33', '2019-09-12 18:17:33', 'PHY2054', '', '244711900', 'VALIDE', 'ACTIVE', 297, 1, 273, 1);
INSERT INTO `est_inscrit` VALUES (921, '2019-09-12 18:17:33', '2019-09-12 18:17:33', 'PHY2051', '', '-167885445', 'VALIDE', 'ACTIVE', 297, 1, 274, 1);
INSERT INTO `est_inscrit` VALUES (922, '2019-09-12 18:17:33', '2019-09-12 18:17:33', 'INF2054', '', '-1999415868', 'VALIDE', 'ACTIVE', 297, 1, 275, 1);
INSERT INTO `est_inscrit` VALUES (923, '2019-09-12 18:17:33', '2019-09-12 18:17:33', 'INF2053', '', '-1118905067', 'VALIDE', 'ACTIVE', 297, 1, 276, 1);
INSERT INTO `est_inscrit` VALUES (924, '2019-09-12 18:17:34', '2019-09-12 18:17:34', 'LAC2054', '', '412917259', 'VALIDE', 'ACTIVE', 297, 1, 277, 1);
INSERT INTO `est_inscrit` VALUES (925, '2019-09-12 18:17:34', '2019-09-12 18:17:34', 'ECO2024', '', '-761671068', 'VALIDE', 'ACTIVE', 297, 1, 278, 1);
INSERT INTO `est_inscrit` VALUES (926, '2019-09-12 18:17:34', '2019-09-12 18:17:34', 'HUM2054', '', '-947205353', 'VALIDE', 'ACTIVE', 297, 1, 279, 1);
INSERT INTO `est_inscrit` VALUES (927, '2019-09-12 18:17:34', '2019-09-12 18:17:34', 'ARD2067', '', '1292727687', 'VALIDE', 'ACTIVE', 297, 1, 280, 1);
INSERT INTO `est_inscrit` VALUES (928, '2019-09-12 18:17:34', '2019-09-12 18:17:35', 'MAT2054', '', '-1574987779', 'VALIDE', 'ACTIVE', 298, 1, 263, 1);
INSERT INTO `est_inscrit` VALUES (929, '2019-09-12 18:17:35', '2019-09-12 18:17:35', 'MAT2043', '', '1537128823', 'VALIDE', 'ACTIVE', 298, 1, 264, 1);
INSERT INTO `est_inscrit` VALUES (930, '2019-09-12 18:17:35', '2019-09-12 18:17:35', 'PHY2033', '', '2006856269', 'VALIDE', 'ACTIVE', 298, 1, 265, 1);
INSERT INTO `est_inscrit` VALUES (931, '2019-09-12 18:17:35', '2019-09-12 18:17:35', 'INF2023', '', '-2053389938', 'VALIDE', 'ACTIVE', 298, 1, 266, 1);
INSERT INTO `est_inscrit` VALUES (932, '2019-09-12 18:17:36', '2019-09-12 18:17:36', 'INF2033', '', '-2019471557', 'VALIDE', 'ACTIVE', 298, 1, 267, 1);
INSERT INTO `est_inscrit` VALUES (933, '2019-09-12 18:17:36', '2019-09-12 18:17:36', 'LAC2033', '', '-2073342659', 'VALIDE', 'ACTIVE', 298, 1, 268, 1);
INSERT INTO `est_inscrit` VALUES (934, '2019-09-12 18:17:36', '2019-09-12 18:17:36', 'ECO2013', '', '1114791610', 'VALIDE', 'ACTIVE', 298, 1, 269, 1);
INSERT INTO `est_inscrit` VALUES (935, '2019-09-12 18:17:36', '2019-09-12 18:17:36', 'HUM2033', '', '-1956395352', 'VALIDE', 'ACTIVE', 298, 1, 270, 1);
INSERT INTO `est_inscrit` VALUES (936, '2019-09-12 18:17:37', '2019-09-12 18:17:37', 'ARD2076', '', '-1932293412', 'VALIDE', 'ACTIVE', 298, 1, 271, 1);
INSERT INTO `est_inscrit` VALUES (937, '2019-09-12 18:17:37', '2019-09-12 18:17:37', 'MAT2033', '', '-1271655245', 'VALIDE', 'ACTIVE', 298, 1, 272, 1);
INSERT INTO `est_inscrit` VALUES (938, '2019-09-12 18:17:37', '2019-09-12 18:17:37', 'PHY2054', '', '284412976', 'VALIDE', 'ACTIVE', 298, 1, 273, 1);
INSERT INTO `est_inscrit` VALUES (939, '2019-09-12 18:17:37', '2019-09-12 18:17:37', 'PHY2051', '', '-10241800', 'VALIDE', 'ACTIVE', 298, 1, 274, 1);
INSERT INTO `est_inscrit` VALUES (940, '2019-09-12 18:17:37', '2019-09-12 18:17:37', 'INF2054', '', '-1464796909', 'VALIDE', 'ACTIVE', 298, 1, 275, 1);
INSERT INTO `est_inscrit` VALUES (941, '2019-09-12 18:17:37', '2019-09-12 18:17:37', 'INF2053', '', '-791512304', 'VALIDE', 'ACTIVE', 298, 1, 276, 1);
INSERT INTO `est_inscrit` VALUES (942, '2019-09-12 18:17:38', '2019-09-12 18:17:38', 'LAC2054', '', '475765942', 'VALIDE', 'ACTIVE', 298, 1, 277, 1);
INSERT INTO `est_inscrit` VALUES (943, '2019-09-12 18:17:38', '2019-09-12 18:17:38', 'ECO2024', '', '-639299967', 'VALIDE', 'ACTIVE', 298, 1, 278, 1);
INSERT INTO `est_inscrit` VALUES (944, '2019-09-12 18:17:38', '2019-09-12 18:17:38', 'HUM2054', '', '-661698736', 'VALIDE', 'ACTIVE', 298, 1, 279, 1);
INSERT INTO `est_inscrit` VALUES (945, '2019-09-12 18:17:38', '2019-09-12 18:17:38', 'ARD2067', '', '1510996017', 'VALIDE', 'ACTIVE', 298, 1, 280, 1);
INSERT INTO `est_inscrit` VALUES (946, '2019-09-12 18:17:39', '2019-09-12 18:17:39', 'MAT2054', '', '-1372151187', 'VALIDE', 'ACTIVE', 299, 1, 263, 1);
INSERT INTO `est_inscrit` VALUES (947, '2019-09-12 18:17:39', '2019-09-12 18:17:39', 'MAT2043', '', '1745476750', 'VALIDE', 'ACTIVE', 299, 1, 264, 1);
INSERT INTO `est_inscrit` VALUES (948, '2019-09-12 18:17:39', '2019-09-12 18:17:39', 'PHY2033', '', '-2128262848', 'VALIDE', 'ACTIVE', 299, 1, 265, 1);
INSERT INTO `est_inscrit` VALUES (949, '2019-09-12 18:17:39', '2019-09-12 18:17:39', 'INF2023', '', '-1885825890', 'VALIDE', 'ACTIVE', 299, 1, 266, 1);
INSERT INTO `est_inscrit` VALUES (950, '2019-09-12 18:17:40', '2019-09-12 18:17:40', 'INF2033', '', '-1759317081', 'VALIDE', 'ACTIVE', 299, 1, 267, 1);
INSERT INTO `est_inscrit` VALUES (951, '2019-09-12 18:17:40', '2019-09-12 18:17:40', 'LAC2033', '', '-1752563498', 'VALIDE', 'ACTIVE', 299, 1, 268, 1);
INSERT INTO `est_inscrit` VALUES (952, '2019-09-12 18:17:40', '2019-09-12 18:17:40', 'ECO2013', '', '378496718', 'VALIDE', 'ACTIVE', 299, 1, 269, 1);
INSERT INTO `est_inscrit` VALUES (953, '2019-09-12 18:17:40', '2019-09-12 18:17:40', 'HUM2033', '', '-1357844907', 'VALIDE', 'ACTIVE', 299, 1, 270, 1);
INSERT INTO `est_inscrit` VALUES (954, '2019-09-12 18:17:40', '2019-09-12 18:17:40', 'ARD2076', '', '1882104936', 'VALIDE', 'ACTIVE', 299, 1, 271, 1);
INSERT INTO `est_inscrit` VALUES (955, '2019-09-12 18:17:41', '2019-09-12 18:17:41', 'MAT2033', '', '-1149284144', 'VALIDE', 'ACTIVE', 299, 1, 272, 1);
INSERT INTO `est_inscrit` VALUES (956, '2019-09-12 18:17:41', '2019-09-12 18:17:41', 'PHY2054', '', '668021356', 'VALIDE', 'ACTIVE', 299, 1, 273, 1);
INSERT INTO `est_inscrit` VALUES (957, '2019-09-12 18:17:41', '2019-09-12 18:17:41', 'PHY2051', '', '-439004199', 'VALIDE', 'ACTIVE', 299, 1, 274, 1);
INSERT INTO `est_inscrit` VALUES (958, '2019-09-12 18:17:41', '2019-09-12 18:17:41', 'INF2054', '', '-1325891803', 'VALIDE', 'ACTIVE', 299, 1, 275, 1);
INSERT INTO `est_inscrit` VALUES (959, '2019-09-12 18:17:41', '2019-09-12 18:17:41', 'INF2053', '', '-340665637', 'VALIDE', 'ACTIVE', 299, 1, 276, 1);
INSERT INTO `est_inscrit` VALUES (960, '2019-09-12 18:17:41', '2019-09-12 18:17:41', 'LAC2054', '', '-104007036', 'VALIDE', 'ACTIVE', 299, 1, 277, 1);
INSERT INTO `est_inscrit` VALUES (961, '2019-09-12 18:17:42', '2019-09-12 18:17:42', 'ECO2024', '', '-900517782', 'VALIDE', 'ACTIVE', 299, 1, 278, 1);
INSERT INTO `est_inscrit` VALUES (962, '2019-09-12 18:17:42', '2019-09-12 18:17:42', 'HUM2054', '', '-1097074737', 'VALIDE', 'ACTIVE', 299, 1, 279, 1);
INSERT INTO `est_inscrit` VALUES (963, '2019-09-12 18:17:42', '2019-09-12 18:17:42', 'ARD2067', '', '1204585255', 'VALIDE', 'ACTIVE', 299, 1, 280, 1);
INSERT INTO `est_inscrit` VALUES (964, '2019-09-12 18:17:42', '2019-09-12 18:17:42', 'MAT2054', '', '1812853355', 'VALIDE', 'ACTIVE', 300, 1, 263, 1);
INSERT INTO `est_inscrit` VALUES (965, '2019-09-12 18:17:42', '2019-09-12 18:17:42', 'MAT2043', '', '1813837419', 'VALIDE', 'ACTIVE', 300, 1, 264, 1);
INSERT INTO `est_inscrit` VALUES (966, '2019-09-12 18:17:43', '2019-09-12 18:17:43', 'PHY2033', '', '1230899880', 'VALIDE', 'ACTIVE', 300, 1, 265, 1);
INSERT INTO `est_inscrit` VALUES (967, '2019-09-12 18:17:43', '2019-09-12 18:17:43', 'INF2023', '', '-1937612324', 'VALIDE', 'ACTIVE', 300, 1, 266, 1);
INSERT INTO `est_inscrit` VALUES (968, '2019-09-12 18:17:43', '2019-09-12 18:17:43', 'INF2033', '', '1497334816', 'VALIDE', 'ACTIVE', 300, 1, 267, 1);
INSERT INTO `est_inscrit` VALUES (969, '2019-09-12 18:17:43', '2019-09-12 18:17:43', 'LAC2033', '', '-1640112149', 'VALIDE', 'ACTIVE', 300, 1, 268, 1);
INSERT INTO `est_inscrit` VALUES (970, '2019-09-12 18:17:44', '2019-09-12 18:17:44', 'ECO2013', '', '142631695', 'VALIDE', 'ACTIVE', 300, 1, 269, 1);
INSERT INTO `est_inscrit` VALUES (971, '2019-09-12 18:17:44', '2019-09-12 18:17:44', 'HUM2033', '', '-1622368872', 'VALIDE', 'ACTIVE', 300, 1, 270, 1);
INSERT INTO `est_inscrit` VALUES (972, '2019-09-12 18:17:44', '2019-09-12 18:17:44', 'ARD2076', '', '1550342684', 'VALIDE', 'ACTIVE', 300, 1, 271, 1);
INSERT INTO `est_inscrit` VALUES (973, '2019-09-12 18:17:44', '2019-09-12 18:17:44', 'MAT2033', '', '-1303581409', 'VALIDE', 'ACTIVE', 300, 1, 272, 1);
INSERT INTO `est_inscrit` VALUES (974, '2019-09-12 18:17:45', '2019-09-12 18:17:45', 'PHY2054', '', '93760364', 'VALIDE', 'ACTIVE', 300, 1, 273, 1);
INSERT INTO `est_inscrit` VALUES (975, '2019-09-12 18:17:45', '2019-09-12 18:17:45', 'PHY2051', '', '47115663', 'VALIDE', 'ACTIVE', 300, 1, 274, 1);
INSERT INTO `est_inscrit` VALUES (976, '2019-09-12 18:17:45', '2019-09-12 18:17:45', 'INF2054', '', '-1764573954', 'VALIDE', 'ACTIVE', 300, 1, 275, 1);
INSERT INTO `est_inscrit` VALUES (977, '2019-09-12 18:17:45', '2019-09-12 18:17:45', 'INF2053', '', '-280020837', 'VALIDE', 'ACTIVE', 300, 1, 276, 1);
INSERT INTO `est_inscrit` VALUES (978, '2019-09-12 18:17:46', '2019-09-12 18:17:46', 'LAC2054', '', '123080081', 'VALIDE', 'ACTIVE', 300, 1, 277, 1);
INSERT INTO `est_inscrit` VALUES (979, '2019-09-12 18:17:46', '2019-09-12 18:17:46', 'ECO2024', '', '104769837', 'VALIDE', 'ACTIVE', 300, 1, 278, 1);
INSERT INTO `est_inscrit` VALUES (980, '2019-09-12 18:17:46', '2019-09-12 18:17:46', 'HUM2054', '', '-714567973', 'VALIDE', 'ACTIVE', 300, 1, 279, 1);
INSERT INTO `est_inscrit` VALUES (981, '2019-09-12 18:17:46', '2019-09-12 18:17:46', 'ARD2067', '', '1318138871', 'VALIDE', 'ACTIVE', 300, 1, 280, 1);
INSERT INTO `est_inscrit` VALUES (982, '2019-09-12 18:17:46', '2019-09-12 18:17:46', 'MAT2054', '', '-1437145361', 'VALIDE', 'ACTIVE', 301, 1, 263, 1);
INSERT INTO `est_inscrit` VALUES (983, '2019-09-12 18:17:46', '2019-09-12 18:17:46', 'MAT2043', '', '2027696681', 'VALIDE', 'ACTIVE', 301, 1, 264, 1);
INSERT INTO `est_inscrit` VALUES (984, '2019-09-12 18:17:47', '2019-09-12 18:17:47', 'PHY2033', '', '1217692140', 'VALIDE', 'ACTIVE', 301, 1, 265, 1);
INSERT INTO `est_inscrit` VALUES (985, '2019-09-12 18:17:47', '2019-09-12 18:17:47', 'INF2023', '', '-1639980770', 'VALIDE', 'ACTIVE', 301, 1, 266, 1);
INSERT INTO `est_inscrit` VALUES (986, '2019-09-12 18:17:47', '2019-09-12 18:17:47', 'INF2033', '', '1598762844', 'VALIDE', 'ACTIVE', 301, 1, 267, 1);
INSERT INTO `est_inscrit` VALUES (987, '2019-09-12 18:17:47', '2019-09-12 18:17:47', 'LAC2033', '', '1896514915', 'VALIDE', 'ACTIVE', 301, 1, 268, 1);
INSERT INTO `est_inscrit` VALUES (988, '2019-09-12 18:17:47', '2019-09-12 18:17:47', 'ECO2013', '', '621035037', 'VALIDE', 'ACTIVE', 301, 1, 269, 1);
INSERT INTO `est_inscrit` VALUES (989, '2019-09-12 18:17:48', '2019-09-12 18:17:48', 'HUM2033', '', '1787497487', 'VALIDE', 'ACTIVE', 301, 1, 270, 1);
INSERT INTO `est_inscrit` VALUES (990, '2019-09-12 18:17:48', '2019-09-12 18:17:48', 'ARD2076', '', '1863405976', 'VALIDE', 'ACTIVE', 301, 1, 271, 1);
INSERT INTO `est_inscrit` VALUES (991, '2019-09-12 18:17:48', '2019-09-12 18:17:48', 'MAT2033', '', '-1762105017', 'VALIDE', 'ACTIVE', 301, 1, 272, 1);
INSERT INTO `est_inscrit` VALUES (992, '2019-09-12 18:17:48', '2019-09-12 18:17:48', 'PHY2054', '', '-180684655', 'VALIDE', 'ACTIVE', 301, 1, 273, 1);
INSERT INTO `est_inscrit` VALUES (993, '2019-09-12 18:17:48', '2019-09-12 18:17:48', 'PHY2051', '', '-431248751', 'VALIDE', 'ACTIVE', 301, 1, 274, 1);
INSERT INTO `est_inscrit` VALUES (994, '2019-09-12 18:17:48', '2019-09-12 18:17:48', 'INF2054', '', '-1912258268', 'VALIDE', 'ACTIVE', 301, 1, 275, 1);
INSERT INTO `est_inscrit` VALUES (995, '2019-09-12 18:17:49', '2019-09-12 18:17:49', 'INF2053', '', '-1462733864', 'VALIDE', 'ACTIVE', 301, 1, 276, 1);
INSERT INTO `est_inscrit` VALUES (996, '2019-09-12 18:17:49', '2019-09-12 18:17:49', 'LAC2054', '', '-708009773', 'VALIDE', 'ACTIVE', 301, 1, 277, 1);
INSERT INTO `est_inscrit` VALUES (997, '2019-09-12 18:17:49', '2019-09-12 18:17:49', 'ECO2024', '', '-914807674', 'VALIDE', 'ACTIVE', 301, 1, 278, 1);
INSERT INTO `est_inscrit` VALUES (998, '2019-09-12 18:17:49', '2019-09-12 18:17:49', 'HUM2054', '', '-1654782260', 'VALIDE', 'ACTIVE', 301, 1, 279, 1);
INSERT INTO `est_inscrit` VALUES (999, '2019-09-12 18:17:49', '2019-09-12 18:17:49', 'ARD2067', '', '678843475', 'VALIDE', 'ACTIVE', 301, 1, 280, 1);
INSERT INTO `est_inscrit` VALUES (1000, '2019-09-12 18:17:49', '2019-09-12 18:17:49', 'MAT2054', '', '1915403114', 'VALIDE', 'ACTIVE', 302, 1, 263, 1);
INSERT INTO `est_inscrit` VALUES (1001, '2019-09-12 18:17:50', '2019-09-12 18:17:50', 'MAT2043', '', '1140391210', 'VALIDE', 'ACTIVE', 302, 1, 264, 1);
INSERT INTO `est_inscrit` VALUES (1002, '2019-09-12 18:17:50', '2019-09-12 18:17:50', 'PHY2033', '', '296216392', 'VALIDE', 'ACTIVE', 302, 1, 265, 1);
INSERT INTO `est_inscrit` VALUES (1003, '2019-09-12 18:17:50', '2019-09-12 18:17:50', 'INF2023', '', '971844281', 'VALIDE', 'ACTIVE', 302, 1, 266, 1);
INSERT INTO `est_inscrit` VALUES (1004, '2019-09-12 18:17:50', '2019-09-12 18:17:50', 'INF2033', '', '1102762158', 'VALIDE', 'ACTIVE', 302, 1, 267, 1);
INSERT INTO `est_inscrit` VALUES (1005, '2019-09-12 18:17:50', '2019-09-12 18:17:50', 'LAC2033', '', '978345968', 'VALIDE', 'ACTIVE', 302, 1, 268, 1);
INSERT INTO `est_inscrit` VALUES (1006, '2019-09-12 18:17:50', '2019-09-12 18:17:50', 'ECO2013', '', '-1089663883', 'VALIDE', 'ACTIVE', 302, 1, 269, 1);
INSERT INTO `est_inscrit` VALUES (1007, '2019-09-12 18:17:50', '2019-09-12 18:17:50', 'HUM2033', '', '1196701839', 'VALIDE', 'ACTIVE', 302, 1, 270, 1);
INSERT INTO `est_inscrit` VALUES (1008, '2019-09-12 18:17:51', '2019-09-12 18:17:51', 'ARD2076', '', '34764487', 'VALIDE', 'ACTIVE', 302, 1, 271, 1);
INSERT INTO `est_inscrit` VALUES (1009, '2019-09-12 18:17:51', '2019-09-12 18:17:51', 'MAT2033', '', '1501159831', 'VALIDE', 'ACTIVE', 302, 1, 272, 1);
INSERT INTO `est_inscrit` VALUES (1010, '2019-09-12 18:17:51', '2019-09-12 18:17:51', 'PHY2054', '', '-1310488866', 'VALIDE', 'ACTIVE', 302, 1, 273, 1);
INSERT INTO `est_inscrit` VALUES (1011, '2019-09-12 18:17:51', '2019-09-12 18:17:51', 'PHY2051', '', '-1339497295', 'VALIDE', 'ACTIVE', 302, 1, 274, 1);
INSERT INTO `est_inscrit` VALUES (1012, '2019-09-12 18:17:52', '2019-09-12 18:17:52', 'INF2054', '', '1127246379', 'VALIDE', 'ACTIVE', 302, 1, 275, 1);
INSERT INTO `est_inscrit` VALUES (1013, '2019-09-12 18:17:52', '2019-09-12 18:17:52', 'INF2053', '', '2017677583', 'VALIDE', 'ACTIVE', 302, 1, 276, 1);
INSERT INTO `est_inscrit` VALUES (1014, '2019-09-12 18:17:52', '2019-09-12 18:17:52', 'LAC2054', '', '-695865372', 'VALIDE', 'ACTIVE', 302, 1, 277, 1);
INSERT INTO `est_inscrit` VALUES (1015, '2019-09-12 18:17:52', '2019-09-12 18:17:52', 'ECO2024', '', '-2060043623', 'VALIDE', 'ACTIVE', 302, 1, 278, 1);
INSERT INTO `est_inscrit` VALUES (1016, '2019-09-12 18:17:52', '2019-09-12 18:17:52', 'HUM2054', '', '1492744553', 'VALIDE', 'ACTIVE', 302, 1, 279, 1);
INSERT INTO `est_inscrit` VALUES (1017, '2019-09-12 18:17:53', '2019-09-12 18:17:53', 'ARD2067', '', '362512310', 'VALIDE', 'ACTIVE', 302, 1, 280, 1);
INSERT INTO `est_inscrit` VALUES (1018, '2019-09-12 18:17:53', '2019-09-12 18:17:53', 'MAT2054', '', '759144495', 'VALIDE', 'ACTIVE', 303, 1, 263, 1);
INSERT INTO `est_inscrit` VALUES (1019, '2019-09-12 18:17:53', '2019-09-12 18:17:53', 'MAT2043', '', '-70980759', 'VALIDE', 'ACTIVE', 303, 1, 264, 1);
INSERT INTO `est_inscrit` VALUES (1020, '2019-09-12 18:17:53', '2019-09-12 18:17:53', 'PHY2033', '', '255451977', 'VALIDE', 'ACTIVE', 303, 1, 265, 1);
INSERT INTO `est_inscrit` VALUES (1021, '2019-09-12 18:17:53', '2019-09-12 18:17:53', 'INF2023', '', '569536290', 'VALIDE', 'ACTIVE', 303, 1, 266, 1);
INSERT INTO `est_inscrit` VALUES (1022, '2019-09-12 18:17:53', '2019-09-12 18:17:53', 'INF2033', '', '-130655151', 'VALIDE', 'ACTIVE', 303, 1, 267, 1);
INSERT INTO `est_inscrit` VALUES (1023, '2019-09-12 18:17:53', '2019-09-12 18:17:53', 'LAC2033', '', '859320596', 'VALIDE', 'ACTIVE', 303, 1, 268, 1);
INSERT INTO `est_inscrit` VALUES (1024, '2019-09-12 18:17:54', '2019-09-12 18:17:54', 'ECO2013', '', '-1213098323', 'VALIDE', 'ACTIVE', 303, 1, 269, 1);
INSERT INTO `est_inscrit` VALUES (1025, '2019-09-12 18:17:54', '2019-09-12 18:17:54', 'HUM2033', '', '54772691', 'VALIDE', 'ACTIVE', 303, 1, 270, 1);
INSERT INTO `est_inscrit` VALUES (1026, '2019-09-12 18:17:54', '2019-09-12 18:17:54', 'ARD2076', '', '-697121337', 'VALIDE', 'ACTIVE', 303, 1, 271, 1);
INSERT INTO `est_inscrit` VALUES (1027, '2019-09-12 18:17:54', '2019-09-12 18:17:54', 'MAT2033', '', '571968214', 'VALIDE', 'ACTIVE', 303, 1, 272, 1);
INSERT INTO `est_inscrit` VALUES (1028, '2019-09-12 18:17:54', '2019-09-12 18:17:54', 'PHY2054', '', '2144570440', 'VALIDE', 'ACTIVE', 303, 1, 273, 1);
INSERT INTO `est_inscrit` VALUES (1029, '2019-09-12 18:17:54', '2019-09-12 18:17:54', 'PHY2051', '', '1352793247', 'VALIDE', 'ACTIVE', 303, 1, 274, 1);
INSERT INTO `est_inscrit` VALUES (1030, '2019-09-12 18:17:54', '2019-09-12 18:17:54', 'INF2054', '', '460394308', 'VALIDE', 'ACTIVE', 303, 1, 275, 1);
INSERT INTO `est_inscrit` VALUES (1031, '2019-09-12 18:17:55', '2019-09-12 18:17:55', 'INF2053', '', '1468768081', 'VALIDE', 'ACTIVE', 303, 1, 276, 1);
INSERT INTO `est_inscrit` VALUES (1032, '2019-09-12 18:17:55', '2019-09-12 18:17:55', 'LAC2054', '', '1661336002', 'VALIDE', 'ACTIVE', 303, 1, 277, 1);
INSERT INTO `est_inscrit` VALUES (1033, '2019-09-12 18:17:55', '2019-09-12 18:17:55', 'ECO2024', '', '844984450', 'VALIDE', 'ACTIVE', 303, 1, 278, 1);
INSERT INTO `est_inscrit` VALUES (1034, '2019-09-12 18:17:55', '2019-09-12 18:17:55', 'HUM2054', '', '670472835', 'VALIDE', 'ACTIVE', 303, 1, 279, 1);
INSERT INTO `est_inscrit` VALUES (1035, '2019-09-12 18:17:55', '2019-09-12 18:17:55', 'ARD2067', '', '-1300789129', 'VALIDE', 'ACTIVE', 303, 1, 280, 1);
INSERT INTO `est_inscrit` VALUES (1036, '2019-09-12 18:17:55', '2019-09-12 18:17:55', 'MAT2054', '', '-616465257', 'VALIDE', 'ACTIVE', 304, 1, 263, 1);
INSERT INTO `est_inscrit` VALUES (1037, '2019-09-12 18:17:55', '2019-09-12 18:17:55', 'MAT2043', '', '-748855500', 'VALIDE', 'ACTIVE', 304, 1, 264, 1);
INSERT INTO `est_inscrit` VALUES (1038, '2019-09-12 18:17:56', '2019-09-12 18:17:56', 'PHY2033', '', '-974658531', 'VALIDE', 'ACTIVE', 304, 1, 265, 1);
INSERT INTO `est_inscrit` VALUES (1039, '2019-09-12 18:17:56', '2019-09-12 18:17:56', 'INF2023', '', '-876618550', 'VALIDE', 'ACTIVE', 304, 1, 266, 1);
INSERT INTO `est_inscrit` VALUES (1040, '2019-09-12 18:17:56', '2019-09-12 18:17:56', 'INF2033', '', '-1564685054', 'VALIDE', 'ACTIVE', 304, 1, 267, 1);
INSERT INTO `est_inscrit` VALUES (1041, '2019-09-12 18:17:56', '2019-09-12 18:17:56', 'LAC2033', '', '-578016108', 'VALIDE', 'ACTIVE', 304, 1, 268, 1);
INSERT INTO `est_inscrit` VALUES (1042, '2019-09-12 18:17:56', '2019-09-12 18:17:56', 'ECO2013', '', '1419669801', 'VALIDE', 'ACTIVE', 304, 1, 269, 1);
INSERT INTO `est_inscrit` VALUES (1043, '2019-09-12 18:17:56', '2019-09-12 18:17:56', 'HUM2033', '', '-1072826986', 'VALIDE', 'ACTIVE', 304, 1, 270, 1);
INSERT INTO `est_inscrit` VALUES (1044, '2019-09-12 18:17:56', '2019-09-12 18:17:56', 'ARD2076', '', '1946669457', 'VALIDE', 'ACTIVE', 304, 1, 271, 1);
INSERT INTO `est_inscrit` VALUES (1045, '2019-09-12 18:17:56', '2019-09-12 18:17:56', 'MAT2033', '', '-1614910050', 'VALIDE', 'ACTIVE', 304, 1, 272, 1);
INSERT INTO `est_inscrit` VALUES (1046, '2019-09-12 18:17:57', '2019-09-12 18:17:57', 'PHY2054', '', '886903257', 'VALIDE', 'ACTIVE', 304, 1, 273, 1);
INSERT INTO `est_inscrit` VALUES (1047, '2019-09-12 18:17:57', '2019-09-12 18:17:57', 'PHY2051', '', '119375938', 'VALIDE', 'ACTIVE', 304, 1, 274, 1);
INSERT INTO `est_inscrit` VALUES (1048, '2019-09-12 18:17:57', '2019-09-12 18:17:57', 'INF2054', '', '-1836710656', 'VALIDE', 'ACTIVE', 304, 1, 275, 1);
INSERT INTO `est_inscrit` VALUES (1049, '2019-09-12 18:17:57', '2019-09-12 18:17:57', 'INF2053', '', '-865813961', 'VALIDE', 'ACTIVE', 304, 1, 276, 1);
INSERT INTO `est_inscrit` VALUES (1050, '2019-09-12 18:17:57', '2019-09-12 18:17:57', 'LAC2054', '', '543656728', 'VALIDE', 'ACTIVE', 304, 1, 277, 1);
INSERT INTO `est_inscrit` VALUES (1051, '2019-09-12 18:17:57', '2019-09-12 18:17:57', 'ECO2024', '', '-274899358', 'VALIDE', 'ACTIVE', 304, 1, 278, 1);
INSERT INTO `est_inscrit` VALUES (1052, '2019-09-12 18:17:57', '2019-09-12 18:17:57', 'HUM2054', '', '-1417201399', 'VALIDE', 'ACTIVE', 304, 1, 279, 1);
INSERT INTO `est_inscrit` VALUES (1053, '2019-09-12 18:17:58', '2019-09-12 18:17:58', 'ARD2067', '', '1897441966', 'VALIDE', 'ACTIVE', 304, 1, 280, 1);
INSERT INTO `est_inscrit` VALUES (1054, '2019-09-12 18:17:58', '2019-09-12 18:17:58', 'MAT2054', '', '2135347703', 'VALIDE', 'ACTIVE', 305, 1, 263, 1);
INSERT INTO `est_inscrit` VALUES (1055, '2019-09-12 18:17:58', '2019-09-12 18:17:58', 'MAT2043', '', '2087832019', 'VALIDE', 'ACTIVE', 305, 1, 264, 1);
INSERT INTO `est_inscrit` VALUES (1056, '2019-09-12 18:17:59', '2019-09-12 18:17:59', 'PHY2033', '', '1429940324', 'VALIDE', 'ACTIVE', 305, 1, 265, 1);
INSERT INTO `est_inscrit` VALUES (1057, '2019-09-12 18:17:59', '2019-09-12 18:17:59', 'INF2023', '', '-1483948203', 'VALIDE', 'ACTIVE', 305, 1, 266, 1);
INSERT INTO `est_inscrit` VALUES (1058, '2019-09-12 18:17:59', '2019-09-12 18:17:59', 'INF2033', '', '1718420600', 'VALIDE', 'ACTIVE', 305, 1, 267, 1);
INSERT INTO `est_inscrit` VALUES (1059, '2019-09-12 18:17:59', '2019-09-12 18:17:59', 'LAC2033', '', '-1336356340', 'VALIDE', 'ACTIVE', 305, 1, 268, 1);
INSERT INTO `est_inscrit` VALUES (1060, '2019-09-12 18:17:59', '2019-09-12 18:17:59', 'ECO2013', '', '234752240', 'VALIDE', 'ACTIVE', 305, 1, 269, 1);
INSERT INTO `est_inscrit` VALUES (1061, '2019-09-12 18:18:00', '2019-09-12 18:18:00', 'HUM2033', '', '-1520327924', 'VALIDE', 'ACTIVE', 305, 1, 270, 1);
INSERT INTO `est_inscrit` VALUES (1062, '2019-09-12 18:18:00', '2019-09-12 18:18:00', 'ARD2076', '', '1699781113', 'VALIDE', 'ACTIVE', 305, 1, 271, 1);
INSERT INTO `est_inscrit` VALUES (1063, '2019-09-12 18:18:00', '2019-09-12 18:18:00', 'MAT2033', '', '-1938957084', 'VALIDE', 'ACTIVE', 305, 1, 272, 1);
INSERT INTO `est_inscrit` VALUES (1064, '2019-09-12 18:18:00', '2019-09-12 18:18:00', 'PHY2054', '', '729298540', 'VALIDE', 'ACTIVE', 305, 1, 273, 1);
INSERT INTO `est_inscrit` VALUES (1065, '2019-09-12 18:18:00', '2019-09-12 18:18:00', 'PHY2051', '', '-645577896', 'VALIDE', 'ACTIVE', 305, 1, 274, 1);
INSERT INTO `est_inscrit` VALUES (1066, '2019-09-12 18:18:01', '2019-09-12 18:18:01', 'INF2054', '', '-2142019151', 'VALIDE', 'ACTIVE', 305, 1, 275, 1);
INSERT INTO `est_inscrit` VALUES (1067, '2019-09-12 18:18:01', '2019-09-12 18:18:01', 'INF2053', '', '-304740594', 'VALIDE', 'ACTIVE', 305, 1, 276, 1);
INSERT INTO `est_inscrit` VALUES (1068, '2019-09-12 18:18:01', '2019-09-12 18:18:01', 'LAC2054', '', '-170592824', 'VALIDE', 'ACTIVE', 305, 1, 277, 1);
INSERT INTO `est_inscrit` VALUES (1069, '2019-09-12 18:18:01', '2019-09-12 18:18:01', 'ECO2024', '', '-975921706', 'VALIDE', 'ACTIVE', 305, 1, 278, 1);
INSERT INTO `est_inscrit` VALUES (1070, '2019-09-12 18:18:01', '2019-09-12 18:18:01', 'HUM2054', '', '-1002729543', 'VALIDE', 'ACTIVE', 305, 1, 279, 1);
INSERT INTO `est_inscrit` VALUES (1071, '2019-09-12 18:18:02', '2019-09-12 18:18:02', 'ARD2067', '', '1209646822', 'VALIDE', 'ACTIVE', 305, 1, 280, 1);
INSERT INTO `est_inscrit` VALUES (1072, '2019-09-12 18:18:02', '2019-09-12 18:18:02', 'MAT2054', '', '-1648148241', 'VALIDE', 'ACTIVE', 306, 1, 263, 1);
INSERT INTO `est_inscrit` VALUES (1073, '2019-09-12 18:18:02', '2019-09-12 18:18:02', 'MAT2043', '', '-2018628156', 'VALIDE', 'ACTIVE', 306, 1, 264, 1);
INSERT INTO `est_inscrit` VALUES (1074, '2019-09-12 18:18:02', '2019-09-12 18:18:02', 'PHY2033', '', '1952434346', 'VALIDE', 'ACTIVE', 306, 1, 265, 1);
INSERT INTO `est_inscrit` VALUES (1075, '2019-09-12 18:18:03', '2019-09-12 18:18:03', 'INF2023', '', '-2062618914', 'VALIDE', 'ACTIVE', 306, 1, 266, 1);
INSERT INTO `est_inscrit` VALUES (1076, '2019-09-12 18:18:03', '2019-09-12 18:18:03', 'INF2033', '', '-2006655193', 'VALIDE', 'ACTIVE', 306, 1, 267, 1);
INSERT INTO `est_inscrit` VALUES (1077, '2019-09-12 18:18:03', '2019-09-12 18:18:03', 'LAC2033', '', '-1973447202', 'VALIDE', 'ACTIVE', 306, 1, 268, 1);
INSERT INTO `est_inscrit` VALUES (1078, '2019-09-12 18:18:03', '2019-09-12 18:18:03', 'ECO2013', '', '729689587', 'VALIDE', 'ACTIVE', 306, 1, 269, 1);
INSERT INTO `est_inscrit` VALUES (1079, '2019-09-12 18:18:03', '2019-09-12 18:18:03', 'HUM2033', '', '-2072544227', 'VALIDE', 'ACTIVE', 306, 1, 270, 1);
INSERT INTO `est_inscrit` VALUES (1080, '2019-09-12 18:18:04', '2019-09-12 18:18:04', 'ARD2076', '', '1412108890', 'VALIDE', 'ACTIVE', 306, 1, 271, 1);
INSERT INTO `est_inscrit` VALUES (1081, '2019-09-12 18:18:04', '2019-09-12 18:18:04', 'MAT2033', '', '-1751552230', 'VALIDE', 'ACTIVE', 306, 1, 272, 1);
INSERT INTO `est_inscrit` VALUES (1082, '2019-09-12 18:18:04', '2019-09-12 18:18:04', 'PHY2054', '', '788840422', 'VALIDE', 'ACTIVE', 306, 1, 273, 1);
INSERT INTO `est_inscrit` VALUES (1083, '2019-09-12 18:18:04', '2019-09-12 18:18:04', 'PHY2051', '', '-411877828', 'VALIDE', 'ACTIVE', 306, 1, 274, 1);
INSERT INTO `est_inscrit` VALUES (1084, '2019-09-12 18:18:05', '2019-09-12 18:18:05', 'INF2054', '', '-1086027901', 'VALIDE', 'ACTIVE', 306, 1, 275, 1);
INSERT INTO `est_inscrit` VALUES (1085, '2019-09-12 18:18:05', '2019-09-12 18:18:05', 'INF2053', '', '-558242540', 'VALIDE', 'ACTIVE', 306, 1, 276, 1);
INSERT INTO `est_inscrit` VALUES (1086, '2019-09-12 18:18:05', '2019-09-12 18:18:05', 'LAC2054', '', '959250315', 'VALIDE', 'ACTIVE', 306, 1, 277, 1);
INSERT INTO `est_inscrit` VALUES (1087, '2019-09-12 18:18:05', '2019-09-12 18:18:05', 'ECO2024', '', '147307831', 'VALIDE', 'ACTIVE', 306, 1, 278, 1);
INSERT INTO `est_inscrit` VALUES (1088, '2019-09-12 18:18:06', '2019-09-12 18:18:06', 'HUM2054', '', '-965233001', 'VALIDE', 'ACTIVE', 306, 1, 279, 1);
INSERT INTO `est_inscrit` VALUES (1089, '2019-09-12 18:18:06', '2019-09-12 18:18:06', 'ARD2067', '', '-2099874312', 'VALIDE', 'ACTIVE', 306, 1, 280, 1);
INSERT INTO `est_inscrit` VALUES (1090, '2019-09-12 18:18:06', '2019-09-12 18:18:06', 'MAT2054', '', '-1793628021', 'VALIDE', 'ACTIVE', 307, 1, 263, 1);
INSERT INTO `est_inscrit` VALUES (1091, '2019-09-12 18:18:06', '2019-09-12 18:18:06', 'MAT2043', '', '1706486565', 'VALIDE', 'ACTIVE', 307, 1, 264, 1);
INSERT INTO `est_inscrit` VALUES (1092, '2019-09-12 18:18:06', '2019-09-12 18:18:07', 'PHY2033', '', '-2127571421', 'VALIDE', 'ACTIVE', 307, 1, 265, 1);
INSERT INTO `est_inscrit` VALUES (1093, '2019-09-12 18:18:07', '2019-09-12 18:18:07', 'INF2023', '', '-1067252349', 'VALIDE', 'ACTIVE', 307, 1, 266, 1);
INSERT INTO `est_inscrit` VALUES (1094, '2019-09-12 18:18:07', '2019-09-12 18:18:07', 'INF2033', '', '-1815943538', 'VALIDE', 'ACTIVE', 307, 1, 267, 1);
INSERT INTO `est_inscrit` VALUES (1095, '2019-09-12 18:18:07', '2019-09-12 18:18:07', 'LAC2033', '', '-1952484665', 'VALIDE', 'ACTIVE', 307, 1, 268, 1);
INSERT INTO `est_inscrit` VALUES (1096, '2019-09-12 18:18:07', '2019-09-12 18:18:07', 'ECO2013', '', '251325173', 'VALIDE', 'ACTIVE', 307, 1, 269, 1);
INSERT INTO `est_inscrit` VALUES (1097, '2019-09-12 18:18:07', '2019-09-12 18:18:07', 'HUM2033', '', '-1468482447', 'VALIDE', 'ACTIVE', 307, 1, 270, 1);
INSERT INTO `est_inscrit` VALUES (1098, '2019-09-12 18:18:08', '2019-09-12 18:18:08', 'ARD2076', '', '1534479991', 'VALIDE', 'ACTIVE', 307, 1, 271, 1);
INSERT INTO `est_inscrit` VALUES (1099, '2019-09-12 18:18:08', '2019-09-12 18:18:08', 'MAT2033', '', '-2080008332', 'VALIDE', 'ACTIVE', 307, 1, 272, 1);
INSERT INTO `est_inscrit` VALUES (1100, '2019-09-12 18:18:08', '2019-09-12 18:18:08', 'PHY2054', '', '621315302', 'VALIDE', 'ACTIVE', 307, 1, 273, 1);
INSERT INTO `est_inscrit` VALUES (1101, '2019-09-12 18:18:08', '2019-09-12 18:18:08', 'PHY2051', '', '-763481537', 'VALIDE', 'ACTIVE', 307, 1, 274, 1);
INSERT INTO `est_inscrit` VALUES (1102, '2019-09-12 18:18:08', '2019-09-12 18:18:08', 'INF2054', '', '2075828383', 'VALIDE', 'ACTIVE', 307, 1, 275, 1);
INSERT INTO `est_inscrit` VALUES (1103, '2019-09-12 18:18:08', '2019-09-12 18:18:08', 'INF2053', '', '-697108718', 'VALIDE', 'ACTIVE', 307, 1, 276, 1);
INSERT INTO `est_inscrit` VALUES (1104, '2019-09-12 18:18:09', '2019-09-12 18:18:09', 'LAC2054', '', '-234485382', 'VALIDE', 'ACTIVE', 307, 1, 277, 1);
INSERT INTO `est_inscrit` VALUES (1105, '2019-09-12 18:18:09', '2019-09-12 18:18:09', 'ECO2024', '', '-1012257589', 'VALIDE', 'ACTIVE', 307, 1, 278, 1);
INSERT INTO `est_inscrit` VALUES (1106, '2019-09-12 18:18:09', '2019-09-12 18:18:09', 'HUM2054', '', '-1182360136', 'VALIDE', 'ACTIVE', 307, 1, 279, 1);
INSERT INTO `est_inscrit` VALUES (1107, '2019-09-12 18:18:09', '2019-09-12 18:18:09', 'ARD2067', '', '1377230334', 'VALIDE', 'ACTIVE', 307, 1, 280, 1);
INSERT INTO `est_inscrit` VALUES (1108, '2019-09-12 18:18:09', '2019-09-12 18:18:09', 'MAT2054', '', '1691192494', 'VALIDE', 'ACTIVE', 308, 1, 263, 1);
INSERT INTO `est_inscrit` VALUES (1109, '2019-09-12 18:18:10', '2019-09-12 18:18:10', 'MAT2043', '', '1641472276', 'VALIDE', 'ACTIVE', 308, 1, 264, 1);
INSERT INTO `est_inscrit` VALUES (1110, '2019-09-12 18:18:10', '2019-09-12 18:18:10', 'PHY2033', '', '1776110554', 'VALIDE', 'ACTIVE', 308, 1, 265, 1);
INSERT INTO `est_inscrit` VALUES (1111, '2019-09-12 18:18:10', '2019-09-12 18:18:10', 'INF2023', '', '1982172701', 'VALIDE', 'ACTIVE', 308, 1, 266, 1);
INSERT INTO `est_inscrit` VALUES (1112, '2019-09-12 18:18:10', '2019-09-12 18:18:10', 'INF2033', '', '1264344988', 'VALIDE', 'ACTIVE', 308, 1, 267, 1);
INSERT INTO `est_inscrit` VALUES (1113, '2019-09-12 18:18:11', '2019-09-12 18:18:11', 'LAC2033', '', '-1860977040', 'VALIDE', 'ACTIVE', 308, 1, 268, 1);
INSERT INTO `est_inscrit` VALUES (1114, '2019-09-12 18:18:11', '2019-09-12 18:18:11', 'ECO2013', '', '-55085589', 'VALIDE', 'ACTIVE', 308, 1, 269, 1);
INSERT INTO `est_inscrit` VALUES (1115, '2019-09-12 18:18:11', '2019-09-12 18:18:11', 'HUM2033', '', '-1843233763', 'VALIDE', 'ACTIVE', 308, 1, 270, 1);
INSERT INTO `est_inscrit` VALUES (1116, '2019-09-12 18:18:11', '2019-09-12 18:18:11', 'ARD2076', '', '1300818851', 'VALIDE', 'ACTIVE', 308, 1, 271, 1);
INSERT INTO `est_inscrit` VALUES (1117, '2019-09-12 18:18:12', '2019-09-12 18:18:12', 'MAT2033', '', '-1479253353', 'VALIDE', 'ACTIVE', 308, 1, 272, 1);
INSERT INTO `est_inscrit` VALUES (1118, '2019-09-12 18:18:12', '2019-09-12 18:18:12', 'PHY2054', '', '-243944829', 'VALIDE', 'ACTIVE', 308, 1, 273, 1);
INSERT INTO `est_inscrit` VALUES (1119, '2019-09-12 18:18:12', '2019-09-12 18:18:12', 'PHY2051', '', '-243192049', 'VALIDE', 'ACTIVE', 308, 1, 274, 1);
INSERT INTO `est_inscrit` VALUES (1120, '2019-09-12 18:18:12', '2019-09-12 18:18:12', 'INF2054', '', '-2071415671', 'VALIDE', 'ACTIVE', 308, 1, 275, 1);
INSERT INTO `est_inscrit` VALUES (1121, '2019-09-12 18:18:12', '2019-09-12 18:18:12', 'INF2053', '', '-377431824', 'VALIDE', 'ACTIVE', 308, 1, 276, 1);
INSERT INTO `est_inscrit` VALUES (1122, '2019-09-12 18:18:13', '2019-09-12 18:18:13', 'LAC2054', '', '-8501183', 'VALIDE', 'ACTIVE', 308, 1, 277, 1);
INSERT INTO `est_inscrit` VALUES (1123, '2019-09-12 18:18:13', '2019-09-12 18:18:13', 'ECO2024', '', '-52163568', 'VALIDE', 'ACTIVE', 308, 1, 278, 1);
INSERT INTO `est_inscrit` VALUES (1124, '2019-09-12 18:18:13', '2019-09-12 18:18:13', 'HUM2054', '', '-1208795080', 'VALIDE', 'ACTIVE', 308, 1, 279, 1);
INSERT INTO `est_inscrit` VALUES (1125, '2019-09-12 18:18:13', '2019-09-12 18:18:13', 'ARD2067', '', '-2146130598', 'VALIDE', 'ACTIVE', 308, 1, 280, 1);
INSERT INTO `est_inscrit` VALUES (1126, '2019-09-12 18:18:14', '2019-09-12 18:18:14', 'MAT2054', '', '-1918145264', 'VALIDE', 'ACTIVE', 309, 1, 263, 1);
INSERT INTO `est_inscrit` VALUES (1127, '2019-09-12 18:18:14', '2019-09-12 18:18:14', 'MAT2043', '', '-1916058933', 'VALIDE', 'ACTIVE', 309, 1, 264, 1);
INSERT INTO `est_inscrit` VALUES (1128, '2019-09-12 18:18:14', '2019-09-12 18:18:14', 'PHY2033', '', '2075946642', 'VALIDE', 'ACTIVE', 309, 1, 265, 1);
INSERT INTO `est_inscrit` VALUES (1129, '2019-09-12 18:18:14', '2019-09-12 18:18:14', 'INF2023', '', '-1897220472', 'VALIDE', 'ACTIVE', 309, 1, 266, 1);
INSERT INTO `est_inscrit` VALUES (1130, '2019-09-12 18:18:15', '2019-09-12 18:18:15', 'INF2033', '', '-2126743904', 'VALIDE', 'ACTIVE', 309, 1, 267, 1);
INSERT INTO `est_inscrit` VALUES (1131, '2019-09-12 18:18:15', '2019-09-12 18:18:15', 'LAC2033', '', '-2019684024', 'VALIDE', 'ACTIVE', 309, 1, 268, 1);
INSERT INTO `est_inscrit` VALUES (1132, '2019-09-12 18:18:15', '2019-09-12 18:18:15', 'ECO2013', '', '140035134', 'VALIDE', 'ACTIVE', 309, 1, 269, 1);
INSERT INTO `est_inscrit` VALUES (1133, '2019-09-12 18:18:15', '2019-09-12 18:18:15', 'HUM2033', '', '-1790305483', 'VALIDE', 'ACTIVE', 309, 1, 270, 1);
INSERT INTO `est_inscrit` VALUES (1134, '2019-09-12 18:18:15', '2019-09-12 18:18:15', 'ARD2076', '', '1419883151', 'VALIDE', 'ACTIVE', 309, 1, 271, 1);
INSERT INTO `est_inscrit` VALUES (1135, '2019-09-12 18:18:15', '2019-09-12 18:18:15', 'MAT2033', '', '-2147207691', 'VALIDE', 'ACTIVE', 309, 1, 272, 1);
INSERT INTO `est_inscrit` VALUES (1136, '2019-09-12 18:18:16', '2019-09-12 18:18:16', 'PHY2054', '', '502309394', 'VALIDE', 'ACTIVE', 309, 1, 273, 1);
INSERT INTO `est_inscrit` VALUES (1137, '2019-09-12 18:18:16', '2019-09-12 18:18:16', 'PHY2051', '', '-824067294', 'VALIDE', 'ACTIVE', 309, 1, 274, 1);
INSERT INTO `est_inscrit` VALUES (1138, '2019-09-12 18:18:16', '2019-09-12 18:18:16', 'INF2054', '', '2000913155', 'VALIDE', 'ACTIVE', 309, 1, 275, 1);
INSERT INTO `est_inscrit` VALUES (1139, '2019-09-12 18:18:16', '2019-09-12 18:18:16', 'INF2053', '', '-800682888', 'VALIDE', 'ACTIVE', 309, 1, 276, 1);
INSERT INTO `est_inscrit` VALUES (1140, '2019-09-12 18:18:16', '2019-09-12 18:18:16', 'LAC2054', '', '-361207159', 'VALIDE', 'ACTIVE', 309, 1, 277, 1);
INSERT INTO `est_inscrit` VALUES (1141, '2019-09-12 18:18:16', '2019-09-12 18:18:16', 'ECO2024', '', '-1147797502', 'VALIDE', 'ACTIVE', 309, 1, 278, 1);
INSERT INTO `est_inscrit` VALUES (1142, '2019-09-12 18:18:17', '2019-09-12 18:18:17', 'HUM2054', '', '-1310184180', 'VALIDE', 'ACTIVE', 309, 1, 279, 1);
INSERT INTO `est_inscrit` VALUES (1143, '2019-09-12 18:18:17', '2019-09-12 18:18:17', 'ARD2067', '', '1283576567', 'VALIDE', 'ACTIVE', 309, 1, 280, 1);
INSERT INTO `est_inscrit` VALUES (1144, '2019-09-12 18:18:17', '2019-09-12 18:18:17', 'MAT2054', '', '1448733333', 'VALIDE', 'ACTIVE', 310, 1, 263, 1);
INSERT INTO `est_inscrit` VALUES (1145, '2019-09-12 18:18:17', '2019-09-12 18:18:17', 'MAT2043', '', '672619162', 'VALIDE', 'ACTIVE', 310, 1, 264, 1);
INSERT INTO `est_inscrit` VALUES (1146, '2019-09-12 18:18:17', '2019-09-12 18:18:17', 'PHY2033', '', '1011176835', 'VALIDE', 'ACTIVE', 310, 1, 265, 1);
INSERT INTO `est_inscrit` VALUES (1147, '2019-09-12 18:18:17', '2019-09-12 18:18:17', 'INF2023', '', '1648225379', 'VALIDE', 'ACTIVE', 310, 1, 266, 1);
INSERT INTO `est_inscrit` VALUES (1148, '2019-09-12 18:18:17', '2019-09-12 18:18:17', 'INF2033', '', '420048045', 'VALIDE', 'ACTIVE', 310, 1, 267, 1);
INSERT INTO `est_inscrit` VALUES (1149, '2019-09-12 18:18:17', '2019-09-12 18:18:17', 'LAC2033', '', '839049486', 'VALIDE', 'ACTIVE', 310, 1, 268, 1);
INSERT INTO `est_inscrit` VALUES (1150, '2019-09-12 18:18:18', '2019-09-12 18:18:18', 'ECO2013', '', '-617202180', 'VALIDE', 'ACTIVE', 310, 1, 269, 1);
INSERT INTO `est_inscrit` VALUES (1151, '2019-09-12 18:18:18', '2019-09-12 18:18:18', 'HUM2033', '', '1187472863', 'VALIDE', 'ACTIVE', 310, 1, 270, 1);
INSERT INTO `est_inscrit` VALUES (1152, '2019-09-12 18:18:18', '2019-09-12 18:18:18', 'ARD2076', '', '140171279', 'VALIDE', 'ACTIVE', 310, 1, 271, 1);
INSERT INTO `est_inscrit` VALUES (1153, '2019-09-12 18:18:18', '2019-09-12 18:18:18', 'MAT2033', '', '1592237152', 'VALIDE', 'ACTIVE', 310, 1, 272, 1);
INSERT INTO `est_inscrit` VALUES (1154, '2019-09-12 18:18:18', '2019-09-12 18:18:18', 'PHY2054', '', '-1285547565', 'VALIDE', 'ACTIVE', 310, 1, 273, 1);
INSERT INTO `est_inscrit` VALUES (1155, '2019-09-12 18:18:19', '2019-09-12 18:18:19', 'PHY2051', '', '-1374078412', 'VALIDE', 'ACTIVE', 310, 1, 274, 1);
INSERT INTO `est_inscrit` VALUES (1156, '2019-09-12 18:18:19', '2019-09-12 18:18:19', 'INF2054', '', '1091562995', 'VALIDE', 'ACTIVE', 310, 1, 275, 1);
INSERT INTO `est_inscrit` VALUES (1157, '2019-09-12 18:18:19', '2019-09-12 18:18:19', 'INF2053', '', '-1545795265', 'VALIDE', 'ACTIVE', 310, 1, 276, 1);
INSERT INTO `est_inscrit` VALUES (1158, '2019-09-12 18:18:19', '2019-09-12 18:18:19', 'LAC2054', '', '-1192296362', 'VALIDE', 'ACTIVE', 310, 1, 277, 1);
INSERT INTO `est_inscrit` VALUES (1159, '2019-09-12 18:18:20', '2019-09-12 18:18:20', 'ECO2024', '', '-1237061014', 'VALIDE', 'ACTIVE', 310, 1, 278, 1);
INSERT INTO `est_inscrit` VALUES (1160, '2019-09-12 18:18:20', '2019-09-12 18:18:20', 'HUM2054', '', '1935445047', 'VALIDE', 'ACTIVE', 310, 1, 279, 1);
INSERT INTO `est_inscrit` VALUES (1161, '2019-09-12 18:18:20', '2019-09-12 18:18:20', 'ARD2067', '', '1022359403', 'VALIDE', 'ACTIVE', 310, 1, 280, 1);

-- ----------------------------
-- Table structure for etudiant
-- ----------------------------
DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE `etudiant`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `code_authentification` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `matricule` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `matricule`(`matricule`) USING BTREE,
  UNIQUE INDEX `code_authentification`(`code_authentification`, `matricule`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10526 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of etudiant
-- ----------------------------
INSERT INTO `etudiant` VALUES (281, '0', '1819I01');
INSERT INTO `etudiant` VALUES (282, '0', '1819I02');
INSERT INTO `etudiant` VALUES (283, '0', '1819I03');
INSERT INTO `etudiant` VALUES (284, '0', '1819I04');
INSERT INTO `etudiant` VALUES (285, '0', '1819I05');
INSERT INTO `etudiant` VALUES (286, '0', '1819I06');
INSERT INTO `etudiant` VALUES (287, '0', '1819I07');
INSERT INTO `etudiant` VALUES (288, '0', '1819I08');
INSERT INTO `etudiant` VALUES (289, '0', '1819I09');
INSERT INTO `etudiant` VALUES (290, '0', '1819I10');
INSERT INTO `etudiant` VALUES (291, '0', '1819I11');
INSERT INTO `etudiant` VALUES (292, '0', '1819I12');
INSERT INTO `etudiant` VALUES (293, '0', '1819I13');
INSERT INTO `etudiant` VALUES (294, '0', '1819I14');
INSERT INTO `etudiant` VALUES (295, '0', '1819I15');
INSERT INTO `etudiant` VALUES (296, '0', '1819I16');
INSERT INTO `etudiant` VALUES (297, '0', '1819I17');
INSERT INTO `etudiant` VALUES (298, '0', '1819I18');
INSERT INTO `etudiant` VALUES (299, '0', '1819I19');
INSERT INTO `etudiant` VALUES (300, '0', '1819I20');
INSERT INTO `etudiant` VALUES (301, '0', '1819I21');
INSERT INTO `etudiant` VALUES (302, '0', '1819I22');
INSERT INTO `etudiant` VALUES (303, '0', '1819I23');
INSERT INTO `etudiant` VALUES (304, '0', '1819I24');
INSERT INTO `etudiant` VALUES (305, '0', '1819I25');
INSERT INTO `etudiant` VALUES (306, '0', '1819I26');
INSERT INTO `etudiant` VALUES (307, '0', '1819I27');
INSERT INTO `etudiant` VALUES (308, '0', '1819I28');
INSERT INTO `etudiant` VALUES (309, '0', '1819I29');
INSERT INTO `etudiant` VALUES (310, '0', '1819I30');

-- ----------------------------
-- Table structure for evaluation
-- ----------------------------
DROP TABLE IF EXISTS `evaluation`;
CREATE TABLE `evaluation`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_creation` datetime(0) NOT NULL,
  `date_evaluation` datetime(0) NULL DEFAULT NULL,
  `date_modification` datetime(0) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `statut_vie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `createur` bigint(20) NOT NULL,
  `modificateur` bigint(20) NOT NULL,
  `type_evaluation` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_evaluation_modificateur`(`modificateur`) USING BTREE,
  INDEX `FK_evaluation_type_evaluation`(`type_evaluation`) USING BTREE,
  INDEX `FK_evaluation_createur`(`createur`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8235 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of evaluation
-- ----------------------------
INSERT INTO `evaluation` VALUES (2434, '2019-09-13 12:26:02', '2019-04-11 22:00:00', '2019-09-13 12:26:02', 'SN ARD2076', 'Session normale', '359217052', 'ACTIVE', 'ACTIVE', 1, 1, 379);
INSERT INTO `evaluation` VALUES (2433, '2019-09-13 12:26:02', '2019-04-10 22:00:00', '2019-09-13 12:26:02', 'SN HUM2033', 'Session normale', '704373968', 'ACTIVE', 'ACTIVE', 1, 1, 378);
INSERT INTO `evaluation` VALUES (2432, '2019-09-13 12:26:02', '2019-04-09 22:00:00', '2019-09-13 12:26:02', 'SN ECO2013', 'Session normale', '1663517368', 'ACTIVE', 'ACTIVE', 1, 1, 375);
INSERT INTO `evaluation` VALUES (2431, '2019-09-13 12:26:02', '2019-04-08 22:00:00', '2019-09-13 12:26:02', 'SN LAC2033', 'Session normale', '-1976959400', 'ACTIVE', 'ACTIVE', 1, 1, 372);
INSERT INTO `evaluation` VALUES (2430, '2019-09-13 12:26:02', '2019-04-07 22:00:00', '2019-09-13 12:26:02', 'SN INF2033', 'Session normale', '1154489233', 'ACTIVE', 'ACTIVE', 1, 1, 368);
INSERT INTO `evaluation` VALUES (2429, '2019-09-13 12:26:02', '2019-04-06 22:00:00', '2019-09-13 12:26:02', 'SN INF2023', 'Session normale', '-1700247960', 'ACTIVE', 'ACTIVE', 1, 1, 364);
INSERT INTO `evaluation` VALUES (2428, '2019-09-13 12:26:02', '2019-04-05 22:00:00', '2019-09-13 12:26:02', 'SN PHY2033', 'Session normale', '-2116793442', 'ACTIVE', 'ACTIVE', 1, 1, 361);
INSERT INTO `evaluation` VALUES (2427, '2019-09-13 12:26:02', '2019-04-04 22:00:00', '2019-09-13 12:26:02', 'SN MAT2043', 'Session normale', '1072554227', 'ACTIVE', 'ACTIVE', 1, 1, 358);
INSERT INTO `evaluation` VALUES (2426, '2019-09-13 12:26:02', '2019-04-03 22:00:00', '2019-09-13 12:26:02', 'SN MAT2054', 'Session normale', '-1062288256', 'ACTIVE', 'ACTIVE', 1, 1, 355);
INSERT INTO `evaluation` VALUES (2425, '2019-09-13 12:26:01', '2019-01-18 23:00:00', '2019-09-13 12:26:01', 'CC HUM2054', 'Controle Continu', '-1640926768', 'ACTIVE', 'ACTIVE', 1, 1, 402);
INSERT INTO `evaluation` VALUES (2424, '2019-09-13 12:26:01', '2019-01-17 23:00:00', '2019-09-13 12:26:01', 'CC ECO2024', 'Controle Continu', '-709547619', 'ACTIVE', 'ACTIVE', 1, 1, 399);
INSERT INTO `evaluation` VALUES (2423, '2019-09-13 12:26:01', '2019-01-16 23:00:00', '2019-09-13 12:26:01', 'CC LAC2054', 'Controle Continu', '1423291493', 'ACTIVE', 'ACTIVE', 1, 1, 396);
INSERT INTO `evaluation` VALUES (2422, '2019-09-13 12:26:01', '2019-01-15 23:00:00', '2019-09-13 12:26:01', 'CC INF2053', 'Controle Continu', '1126587801', 'ACTIVE', 'ACTIVE', 1, 1, 392);
INSERT INTO `evaluation` VALUES (2421, '2019-09-13 12:26:01', '2019-01-13 23:00:00', '2019-09-13 12:26:01', 'CC PHY2051', 'Controle Continu', '-531447273', 'ACTIVE', 'ACTIVE', 1, 1, 386);
INSERT INTO `evaluation` VALUES (2420, '2019-09-13 12:26:01', '2019-01-12 23:00:00', '2019-09-13 12:26:01', 'CC PHY2054', 'Controle Continu', '1650484552', 'ACTIVE', 'ACTIVE', 1, 1, 383);
INSERT INTO `evaluation` VALUES (2419, '2019-09-13 12:26:01', '2019-01-11 23:00:00', '2019-09-13 12:26:01', 'CC MAT2033', 'Controle Continu', '-2068780932', 'ACTIVE', 'ACTIVE', 1, 1, 380);
INSERT INTO `evaluation` VALUES (2418, '2019-09-13 12:26:01', '2019-01-09 23:00:00', '2019-09-13 12:26:01', 'CC HUM2033', 'Controle Continu', '1395513697', 'ACTIVE', 'ACTIVE', 1, 1, 376);
INSERT INTO `evaluation` VALUES (2417, '2019-09-13 12:26:01', '2019-01-08 23:00:00', '2019-09-13 12:26:01', 'CC ECO2013', 'Controle Continu', '-1389176699', 'ACTIVE', 'ACTIVE', 1, 1, 373);
INSERT INTO `evaluation` VALUES (2416, '2019-09-13 12:26:01', '2019-01-07 23:00:00', '2019-09-13 12:26:01', 'CC LAC2033', 'Controle Continu', '-737992011', 'ACTIVE', 'ACTIVE', 1, 1, 370);
INSERT INTO `evaluation` VALUES (2415, '2019-09-13 12:26:00', '2019-01-06 23:00:00', '2019-09-13 12:26:00', 'CC INF2033', 'Controle Continu', '1735487047', 'ACTIVE', 'ACTIVE', 1, 1, 366);
INSERT INTO `evaluation` VALUES (2414, '2019-09-13 12:26:00', '2019-01-05 23:00:00', '2019-09-13 12:26:00', 'CC INF2023', 'Controle Continu', '-1671521470', 'ACTIVE', 'ACTIVE', 1, 1, 362);
INSERT INTO `evaluation` VALUES (2413, '2019-09-13 12:26:00', '2019-01-04 23:00:00', '2019-09-13 12:26:00', 'CC PHY2033', 'Controle Continu', '-1439484425', 'ACTIVE', 'ACTIVE', 1, 1, 359);
INSERT INTO `evaluation` VALUES (2412, '2019-09-13 12:26:00', '2019-01-03 23:00:00', '2019-09-13 12:26:00', 'CC MAT2043', 'Controle Continu', '1552059653', 'ACTIVE', 'ACTIVE', 1, 1, 356);
INSERT INTO `evaluation` VALUES (2411, '2019-09-13 12:26:00', '2019-01-02 23:00:00', '2019-09-13 12:26:00', 'CC MAT2054', 'Controle Continu', '196768838', 'ACTIVE', 'ACTIVE', 1, 1, 353);
INSERT INTO `evaluation` VALUES (2410, '2019-09-13 12:26:00', '2019-01-15 23:00:00', '2019-09-13 12:26:00', 'SN HUM1011', 'Session normale', '-1808872524', 'ACTIVE', 'ACTIVE', 1, 1, 352);
INSERT INTO `evaluation` VALUES (2409, '2019-09-13 12:26:00', '2019-01-14 23:00:00', '2019-09-13 12:26:00', 'SN COM1011', 'Session normale', '1551352424', 'ACTIVE', 'ACTIVE', 1, 1, 349);
INSERT INTO `evaluation` VALUES (2408, '2019-09-13 12:26:00', '2019-01-13 23:00:00', '2019-09-13 12:26:00', 'SN LAC1011', 'Session normale', '2098602095', 'ACTIVE', 'ACTIVE', 1, 1, 346);
INSERT INTO `evaluation` VALUES (2407, '2019-09-13 12:26:00', '2019-01-12 23:00:00', '2019-09-13 12:26:00', 'SN ADR1090', 'Session normale', '1325252432', 'ACTIVE', 'ACTIVE', 1, 1, 343);
INSERT INTO `evaluation` VALUES (2406, '2019-09-13 12:26:00', '2019-01-11 23:00:00', '2019-09-13 12:26:00', 'SN PHY1021', 'Session normale', '1417763729', 'ACTIVE', 'ACTIVE', 1, 1, 342);
INSERT INTO `evaluation` VALUES (2405, '2019-09-13 12:25:59', '2019-01-10 23:00:00', '2019-09-13 12:25:59', 'SN PHY1011', 'Session normale', '-1962790380', 'ACTIVE', 'ACTIVE', 1, 1, 339);
INSERT INTO `evaluation` VALUES (2404, '2019-09-13 12:25:59', '2019-01-09 23:00:00', '2019-09-13 12:25:59', 'SN MAT1011', 'Session normale', '-470124840', 'ACTIVE', 'ACTIVE', 1, 1, 336);
INSERT INTO `evaluation` VALUES (2403, '2019-09-13 12:25:59', '2019-01-08 23:00:00', '2019-09-13 12:25:59', 'SN ARD1098', 'Session normale', '1304447234', 'ACTIVE', 'ACTIVE', 1, 1, 333);
INSERT INTO `evaluation` VALUES (2402, '2019-09-13 12:25:59', '2019-01-07 23:00:00', '2019-09-13 12:25:59', 'SN HUM1022', 'Session normale', '-1601611649', 'ACTIVE', 'ACTIVE', 1, 1, 332);
INSERT INTO `evaluation` VALUES (2401, '2019-09-13 12:25:59', '2019-01-06 23:00:00', '2019-09-13 12:25:59', 'SN COM1022', 'Session normale', '1792722072', 'ACTIVE', 'ACTIVE', 1, 1, 329);
INSERT INTO `evaluation` VALUES (2400, '2019-09-13 12:25:59', '2019-01-05 23:00:00', '2019-09-13 12:25:59', 'SN LAC1022', 'Session normale', '-1891312005', 'ACTIVE', 'ACTIVE', 1, 1, 326);
INSERT INTO `evaluation` VALUES (2399, '2019-09-13 12:25:59', '2019-01-04 23:00:00', '2019-09-13 12:25:59', 'SN STG1012', 'Session normale', '-1400789906', 'ACTIVE', 'ACTIVE', 1, 1, 323);
INSERT INTO `evaluation` VALUES (2398, '2019-09-13 12:25:59', '2019-01-03 23:00:00', '2019-09-13 12:25:59', 'SN ING1022', 'Session normale', '2093872110', 'ACTIVE', 'ACTIVE', 1, 1, 322);
INSERT INTO `evaluation` VALUES (2397, '2019-09-13 12:25:58', '2019-01-02 23:00:00', '2019-09-13 12:25:58', 'SN INF1012', 'Session normale', '128435211', 'ACTIVE', 'ACTIVE', 1, 1, 319);
INSERT INTO `evaluation` VALUES (2396, '2019-09-13 12:25:58', '2019-01-01 23:00:00', '2019-09-13 12:25:58', 'SN MAT1022', 'Session normale', '-1825363184', 'ACTIVE', 'ACTIVE', 1, 1, 316);
INSERT INTO `evaluation` VALUES (2395, '2019-09-13 12:25:58', '2018-12-31 23:00:00', '2019-09-13 12:25:58', 'SN CHM1012', 'Session normale', '-155296515', 'ACTIVE', 'ACTIVE', 1, 1, 313);
INSERT INTO `evaluation` VALUES (2394, '2019-09-13 12:25:58', '2018-11-03 23:00:00', '2019-09-13 12:25:58', 'CC HUM1011', 'Controle Continu', '-405859638', 'ACTIVE', 'ACTIVE', 1, 1, 350);
INSERT INTO `evaluation` VALUES (2393, '2019-09-13 12:25:58', '2018-11-02 23:00:00', '2019-09-13 12:25:58', 'CC COM1011', 'Controle Continu', '2135594271', 'ACTIVE', 'ACTIVE', 1, 1, 347);
INSERT INTO `evaluation` VALUES (2392, '2019-09-13 12:25:58', '2018-11-01 23:00:00', '2019-09-13 12:25:58', 'CC LAC1011', 'Controle Continu', '-1536280273', 'ACTIVE', 'ACTIVE', 1, 1, 344);
INSERT INTO `evaluation` VALUES (2391, '2019-09-13 12:25:58', '2018-10-30 23:00:00', '2019-09-13 12:25:58', 'CC PHY1021', 'Controle Continu', '-1321870259', 'ACTIVE', 'ACTIVE', 1, 1, 340);
INSERT INTO `evaluation` VALUES (2390, '2019-09-13 12:25:57', '2018-10-29 23:00:00', '2019-09-13 12:25:57', 'CC PHY1011', 'Controle Continu', '-1102063067', 'ACTIVE', 'ACTIVE', 1, 1, 337);
INSERT INTO `evaluation` VALUES (2389, '2019-09-13 12:25:57', '2018-10-28 23:00:00', '2019-09-13 12:25:57', 'CC MAT1011', 'Controle Continu', '-89985939', 'ACTIVE', 'ACTIVE', 1, 1, 334);
INSERT INTO `evaluation` VALUES (2388, '2019-09-13 12:25:57', '2018-10-26 22:00:00', '2019-09-13 12:25:57', 'CC HUM1022', 'Controle Continu', '628009979', 'ACTIVE', 'ACTIVE', 1, 1, 330);
INSERT INTO `evaluation` VALUES (2387, '2019-09-13 12:25:57', '2018-10-25 22:00:00', '2019-09-13 12:25:57', 'CC COM1022', 'Controle Continu', '-811632159', 'ACTIVE', 'ACTIVE', 1, 1, 327);
INSERT INTO `evaluation` VALUES (2386, '2019-09-13 12:25:57', '2018-10-24 22:00:00', '2019-09-13 12:25:57', 'CC LAC1022', 'Controle Continu', '-752934707', 'ACTIVE', 'ACTIVE', 1, 1, 324);
INSERT INTO `evaluation` VALUES (2385, '2019-09-13 12:25:57', '2018-10-22 22:00:00', '2019-09-13 12:25:57', 'CC ING1022', 'Controle Continu', '-497225126', 'ACTIVE', 'ACTIVE', 1, 1, 320);
INSERT INTO `evaluation` VALUES (2384, '2019-09-13 12:25:56', '2018-10-21 22:00:00', '2019-09-13 12:25:56', 'CC INF1012', 'Controle Continu', '1519439228', 'ACTIVE', 'ACTIVE', 1, 1, 317);
INSERT INTO `evaluation` VALUES (2383, '2019-09-13 12:25:56', '2018-10-20 22:00:00', '2019-09-13 12:25:56', 'CC MAT1022', 'Controle Continu', '-275810504', 'ACTIVE', 'ACTIVE', 1, 1, 314);
INSERT INTO `evaluation` VALUES (2382, '2019-09-13 12:25:56', '2018-10-19 22:00:00', '2019-09-13 12:25:56', 'CC CHM1012', 'Controle Continu', '1439662454', 'ACTIVE', 'ACTIVE', 1, 1, 311);
INSERT INTO `evaluation` VALUES (2435, '2019-09-13 12:26:02', '2019-04-12 22:00:00', '2019-09-13 12:26:02', 'SN MAT2033', 'Session normale', '2045426047', 'ACTIVE', 'ACTIVE', 1, 1, 382);
INSERT INTO `evaluation` VALUES (2436, '2019-09-13 12:26:02', '2019-04-13 22:00:00', '2019-09-13 12:26:02', 'SN PHY2054', 'Session normale', '934022473', 'ACTIVE', 'ACTIVE', 1, 1, 385);
INSERT INTO `evaluation` VALUES (2437, '2019-09-13 12:26:03', '2019-04-14 22:00:00', '2019-09-13 12:26:03', 'SN PHY2051', 'Session normale', '-879645503', 'ACTIVE', 'ACTIVE', 1, 1, 388);
INSERT INTO `evaluation` VALUES (2438, '2019-09-13 12:26:03', '2019-04-16 22:00:00', '2019-09-13 12:26:03', 'SN INF2053', 'Session normale', '-70333172', 'ACTIVE', 'ACTIVE', 1, 1, 394);
INSERT INTO `evaluation` VALUES (2439, '2019-09-13 12:26:03', '2019-04-17 22:00:00', '2019-09-13 12:26:03', 'SN LAC2054', 'Session normale', '763045031', 'ACTIVE', 'ACTIVE', 1, 1, 398);
INSERT INTO `evaluation` VALUES (2440, '2019-09-13 12:26:03', '2019-04-18 22:00:00', '2019-09-13 12:26:03', 'SN ECO2024', 'Session normale', '-1013761840', 'ACTIVE', 'ACTIVE', 1, 1, 401);
INSERT INTO `evaluation` VALUES (2441, '2019-09-13 12:26:03', '2019-04-19 22:00:00', '2019-09-13 12:26:03', 'SN HUM2054', 'Session normale', '-1549772135', 'ACTIVE', 'ACTIVE', 1, 1, 452);
INSERT INTO `evaluation` VALUES (2442, '2019-09-13 12:26:03', '2019-04-20 22:00:00', '2019-09-13 12:26:03', 'SN ARD2067', 'Session normale', '-588650613', 'ACTIVE', 'ACTIVE', 1, 1, 453);
INSERT INTO `evaluation` VALUES (2443, '2019-09-13 12:26:03', '2019-04-21 22:00:00', '2019-09-13 12:26:03', 'TP INF2023', 'Traveaux Pratique', '-1194846913', 'ACTIVE', 'ACTIVE', 1, 1, 365);
INSERT INTO `evaluation` VALUES (2444, '2019-09-13 12:26:03', '2019-04-22 22:00:00', '2019-09-13 12:26:03', 'TP INF2033', 'Traveaux Pratique', '1972934108', 'ACTIVE', 'ACTIVE', 1, 1, 369);
INSERT INTO `evaluation` VALUES (2445, '2019-09-13 12:26:03', '2019-04-23 22:00:00', '2019-09-13 12:26:03', 'CC INF2054', 'Controle Continu', '920407130', 'ACTIVE', 'ACTIVE', 1, 1, 389);
INSERT INTO `evaluation` VALUES (2446, '2019-09-13 12:26:03', '2019-04-24 22:00:00', '2019-09-13 12:26:03', 'SN INF2054', 'Session normale', '-1703222336', 'ACTIVE', 'ACTIVE', 1, 1, 391);
INSERT INTO `evaluation` VALUES (4526, '2019-09-13 13:12:50', '2019-02-24 23:00:00', '2019-09-13 13:12:50', '', 'Traveaux Pratique', '-50260844', 'ACTIVE', 'ACTIVE', 1, 1, 395);

-- ----------------------------
-- Table structure for filiere
-- ----------------------------
DROP TABLE IF EXISTS `filiere`;
CREATE TABLE `filiere`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_creation` datetime(0) NOT NULL,
  `date_modification` datetime(0) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut_vie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `createur` bigint(20) NOT NULL,
  `modificateur` bigint(20) NOT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_filiere_createur`(`createur`) USING BTREE,
  INDEX `FK_filiere_modificateur`(`modificateur`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 53 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of filiere
-- ----------------------------
INSERT INTO `filiere` VALUES (51, '2019-08-27 19:09:46', '2019-08-27 19:11:52', 'Ingénieurie Informatique', 'Ingenieur', '34995017', 'ACTIVE', 1, 1);
INSERT INTO `filiere` VALUES (52, '2019-08-27 19:10:39', '2019-08-27 19:10:39', 'Licence en Informatique', 'Licence', '36968709', 'ACTIVE', 1, 1);

-- ----------------------------
-- Table structure for historique_note
-- ----------------------------
DROP TABLE IF EXISTS `historique_note`;
CREATE TABLE `historique_note`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_creation` datetime(0) NOT NULL,
  `date_modification` datetime(0) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut_vie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `valeur_note` double NOT NULL,
  `createur` bigint(20) NOT NULL,
  `modificateur` bigint(20) NOT NULL,
  `note` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_historique_note_note`(`note`) USING BTREE,
  INDEX `FK_historique_note_modificateur`(`modificateur`) USING BTREE,
  INDEX `FK_historique_note_createur`(`createur`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5222 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `DTYPE` varchar(31) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `contenu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_creation` datetime(0) NOT NULL,
  `date_modification` datetime(0) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `destinataire` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `emetteur` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut_vie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `createur` bigint(20) NOT NULL,
  `modificateur` bigint(20) NOT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_message_createur`(`createur`) USING BTREE,
  INDEX `FK_message_modificateur`(`modificateur`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 152 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module`  (
  `code` bigint(20) NOT NULL,
  `code_module` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_creation` datetime(0) NOT NULL,
  `date_modification` datetime(0) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut_vie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `createur` bigint(20) NOT NULL,
  `modificateur` bigint(20) NOT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_Module_modificateur`(`modificateur`) USING BTREE,
  INDEX `FK_Module_createur`(`createur`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES (201, 'ING103', '2019-09-12 17:51:37', '2019-09-12 17:51:37', 'Ingenieur 1 Semestre 1', 'Initiation a la Maths et Chimie', '-1359191992', 'ACTIVE', 1, 1);
INSERT INTO `module` VALUES (202, 'ING101', '2019-09-12 17:51:37', '2019-09-12 17:51:37', 'Ingenieur 1 Semestre 1', 'Introduction aux bases de l\'informatique', '-1358984356', 'ACTIVE', 1, 1);
INSERT INTO `module` VALUES (203, 'ING105', '2019-09-12 17:51:37', '2019-09-12 17:51:37', 'Ingenieur 1 Semestre 1', 'Developpement de l\'esprit d\'Ingenieur', '-1359076081', 'ACTIVE', 1, 1);
INSERT INTO `module` VALUES (204, 'ING104', '2019-09-12 17:51:37', '2019-09-12 17:51:37', 'Ingenieur 1 Semestre 1', 'Communicatin et Langue A', '-1359485530', 'ACTIVE', 1, 1);
INSERT INTO `module` VALUES (205, 'ING102', '2019-09-12 17:51:37', '2019-09-12 17:51:37', 'Ingenieur 1 Semestre 2', 'Bases des mathematiques', '-1359318039', 'ACTIVE', 1, 1);
INSERT INTO `module` VALUES (206, 'ING106', '2019-09-12 17:51:37', '2019-09-12 17:51:37', 'Ingenieur 1 Semestre 2', 'Maniement des outils informatiques', '-1359382236', 'ACTIVE', 1, 1);
INSERT INTO `module` VALUES (207, 'ING203', '2019-09-12 17:51:37', '2019-09-12 17:51:37', 'Ingenieur 2 Semestre 1', 'Mathematiques avances', '-1358612757', 'ACTIVE', 1, 1);
INSERT INTO `module` VALUES (208, 'ING201', '2019-09-12 17:51:37', '2019-09-12 17:51:37', 'Ingenieur 2 Semestre 1', 'Notions avances en outils informatiques', '-1358426914', 'ACTIVE', 1, 1);
INSERT INTO `module` VALUES (209, 'ING202', '2019-09-12 17:51:37', '2019-09-12 17:51:37', 'Ingenieur 2 Semestre 1', 'Communicatin et Langue B', '-1358829479', 'ACTIVE', 1, 1);
INSERT INTO `module` VALUES (210, 'ING205', '2019-09-12 17:51:37', '2019-09-12 17:51:37', 'Ingenieur 2 Semestre 2', 'Notions de physique avance', '-1358930381', 'ACTIVE', 1, 1);
INSERT INTO `module` VALUES (211, 'ING206', '2019-09-12 17:51:37', '2019-09-12 17:51:37', 'Ingenieur 2 Semestre 2', 'Administration Systeme et Architecture', '-1358708978', 'ACTIVE', 1, 1);
INSERT INTO `module` VALUES (212, 'ING204', '2019-09-12 17:51:37', '2019-09-12 17:51:38', 'Ingenieur 2 Semestre 2', 'Economie et Gestion', '-1358788092', 'ACTIVE', 1, 1);

-- ----------------------------
-- Table structure for niveau
-- ----------------------------
DROP TABLE IF EXISTS `niveau`;
CREATE TABLE `niveau`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_creation` datetime(0) NOT NULL,
  `date_modification` datetime(0) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `numero` int(11) NULL DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut_vie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `createur` bigint(20) NOT NULL,
  `modificateur` bigint(20) NOT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_Niveau_modificateur`(`modificateur`) USING BTREE,
  INDEX `FK_Niveau_createur`(`createur`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 61 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of niveau
-- ----------------------------
INSERT INTO `niveau` VALUES (57, '2019-08-27 19:23:48', '2019-08-27 19:23:48', 'Première Année', 'Niveau 1', 1, '-1464896833', 'ACTIVE', 1, 1);
INSERT INTO `niveau` VALUES (58, '2019-08-27 19:24:11', '2019-08-27 19:24:11', 'Deuxieme Année', 'Niveau 2', 2, '-613554589', 'ACTIVE', 1, 1);
INSERT INTO `niveau` VALUES (59, '2019-08-27 19:24:26', '2019-08-27 19:25:19', 'Troisième Année', 'Niveau 3', 3, '-90403455', 'ACTIVE', 1, 1);
INSERT INTO `niveau` VALUES (60, '2019-08-27 19:24:45', '2019-08-27 19:24:45', 'Quatrième Année', 'Niveau 4', 4, '597376589', 'ACTIVE', 1, 1);

-- ----------------------------
-- Table structure for note
-- ----------------------------
DROP TABLE IF EXISTS `note`;
CREATE TABLE `note`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_creation` datetime(0) NOT NULL,
  `date_modification` datetime(0) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `numero_table` int(11) NULL DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut_vie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `valeur_note` double NOT NULL,
  `createur` bigint(20) NOT NULL,
  `evaluation` bigint(20) NULL DEFAULT NULL,
  `modificateur` bigint(20) NOT NULL,
  `est_inscrit` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_note_est_inscrit`(`est_inscrit`) USING BTREE,
  INDEX `FK_note_createur`(`createur`) USING BTREE,
  INDEX `FK_note_modificateur`(`modificateur`) USING BTREE,
  INDEX `FK_note_evaluation`(`evaluation`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9530 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of note
-- ----------------------------
INSERT INTO `note` VALUES (4541, '2019-09-13 13:15:04', '2019-09-13 13:15:04', 'TP', 'Administration des systèmes', 36, '511676488', 'ACTIVE', 0, 1, 4526, 1, 1157);
INSERT INTO `note` VALUES (4540, '2019-09-13 13:15:04', '2019-09-13 13:15:04', 'TP', 'Administration des systèmes', 76, '1015904261', 'ACTIVE', 15, 1, 4526, 1, 1139);
INSERT INTO `note` VALUES (4539, '2019-09-13 13:15:04', '2019-09-13 13:15:04', 'TP', 'Administration des systèmes', 243, '-295088809', 'ACTIVE', 2, 1, 4526, 1, 1121);
INSERT INTO `note` VALUES (4538, '2019-09-13 13:15:04', '2019-09-13 13:15:04', 'TP', 'Administration des systèmes', 58, '1191510163', 'ACTIVE', 11, 1, 4526, 1, 1103);
INSERT INTO `note` VALUES (4536, '2019-09-13 13:15:03', '2019-09-13 13:15:03', 'TP', 'Administration des systèmes', 211, '-1873108489', 'ACTIVE', 6, 1, 4526, 1, 1067);
INSERT INTO `note` VALUES (4537, '2019-09-13 13:15:04', '2019-09-13 13:15:04', 'TP', 'Administration des systèmes', 121, '-847528422', 'ACTIVE', 7, 1, 4526, 1, 1085);
INSERT INTO `note` VALUES (4535, '2019-09-13 13:15:03', '2019-09-13 13:15:03', 'TP', 'Administration des systèmes', 142, '-225084928', 'ACTIVE', 12, 1, 4526, 1, 1049);
INSERT INTO `note` VALUES (4534, '2019-09-13 13:15:03', '2019-09-13 13:15:03', 'TP', 'Administration des systèmes', 248, '-277224790', 'ACTIVE', 20, 1, 4526, 1, 1031);
INSERT INTO `note` VALUES (4532, '2019-09-13 13:15:03', '2019-09-13 13:15:03', 'TP', 'Administration des systèmes', 218, '1196458113', 'ACTIVE', 17, 1, 4526, 1, 995);
INSERT INTO `note` VALUES (4533, '2019-09-13 13:15:03', '2019-09-13 13:15:03', 'TP', 'Administration des systèmes', 189, '-682706289', 'ACTIVE', 14, 1, 4526, 1, 1013);
INSERT INTO `note` VALUES (4531, '2019-09-13 13:15:03', '2019-09-13 13:15:03', 'TP', 'Administration des systèmes', 269, '1674703770', 'ACTIVE', 18, 1, 4526, 1, 977);
INSERT INTO `note` VALUES (4530, '2019-09-13 13:15:03', '2019-09-13 13:15:03', 'TP', 'Administration des systèmes', 40, '1586731176', 'ACTIVE', 11, 1, 4526, 1, 959);
INSERT INTO `note` VALUES (4529, '2019-09-13 13:15:03', '2019-09-13 13:15:03', 'TP', 'Administration des systèmes', 233, '-1180355062', 'ACTIVE', 16, 1, 4526, 1, 941);
INSERT INTO `note` VALUES (4528, '2019-09-13 13:15:02', '2019-09-13 13:15:02', 'TP', 'Administration des systèmes', 111, '-1389733753', 'ACTIVE', 10, 1, 4526, 1, 923);
INSERT INTO `note` VALUES (4527, '2019-09-13 13:15:02', '2019-09-13 13:15:02', 'TP', 'Administration des systèmes', 186, '1434209320', 'ACTIVE', 19, 1, 4526, 1, 905);
INSERT INTO `note` VALUES (4525, '2019-09-13 12:55:01', '2019-09-13 12:55:01', 'SN', 'ARDUINO / RASPBERRY', 0, '326276312', 'ACTIVE', 12, 1, 2442, 1, 1152);
INSERT INTO `note` VALUES (4524, '2019-09-13 12:55:01', '2019-09-13 12:55:01', 'SN', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '-728476384', 'ACTIVE', 15, 1, 2441, 1, 1160);
INSERT INTO `note` VALUES (4523, '2019-09-13 12:55:01', '2019-09-13 12:55:01', 'CC', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '840758884', 'ACTIVE', 3, 1, 2425, 1, 1160);
INSERT INTO `note` VALUES (4521, '2019-09-13 12:55:00', '2019-09-13 12:55:00', 'CC', 'L\'ENTREPRISE ET LA GESTION', 0, '309537188', 'ACTIVE', 10, 1, 2424, 1, 1159);
INSERT INTO `note` VALUES (4522, '2019-09-13 12:55:01', '2019-09-13 12:55:01', 'SN', 'L\'ENTREPRISE ET LA GESTION', 0, '1695384212', 'ACTIVE', 3, 1, 2440, 1, 1159);
INSERT INTO `note` VALUES (4519, '2019-09-13 12:55:00', '2019-09-13 12:55:00', 'CC', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '1654970067', 'ACTIVE', 8, 1, 2423, 1, 1158);
INSERT INTO `note` VALUES (4520, '2019-09-13 12:55:00', '2019-09-13 12:55:00', 'SN', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '781783171', 'ACTIVE', 7, 1, 2439, 1, 1158);
INSERT INTO `note` VALUES (4517, '2019-09-13 12:55:00', '2019-09-13 12:55:00', 'CC', 'ADMINISTRATION DES SYSTÈMES', 0, '-1750858086', 'ACTIVE', 7, 1, 2422, 1, 1157);
INSERT INTO `note` VALUES (4518, '2019-09-13 12:55:00', '2019-09-13 12:55:00', 'SN', 'ADMINISTRATION DES SYSTÈMES', 0, '712571672', 'ACTIVE', 18, 1, 2438, 1, 1157);
INSERT INTO `note` VALUES (4516, '2019-09-13 12:55:00', '2019-09-13 12:55:00', 'SN', 'ARCHITECTURES PROGRAMMABLES', 0, '195995373', 'ACTIVE', 13, 1, 2446, 1, 1156);
INSERT INTO `note` VALUES (4515, '2019-09-13 12:54:59', '2019-09-13 12:54:59', 'CC', 'ARCHITECTURES PROGRAMMABLES', 0, '-2013461075', 'ACTIVE', 5, 1, 2445, 1, 1156);
INSERT INTO `note` VALUES (4514, '2019-09-13 12:54:59', '2019-09-13 12:54:59', 'SN', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '-1026375830', 'ACTIVE', 15, 1, 2437, 1, 1155);
INSERT INTO `note` VALUES (4513, '2019-09-13 12:54:59', '2019-09-13 12:54:59', 'CC', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '-1099666614', 'ACTIVE', 13, 1, 2421, 1, 1155);
INSERT INTO `note` VALUES (4512, '2019-09-13 12:54:59', '2019-09-13 12:54:59', 'SN', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '768042096', 'ACTIVE', 18, 1, 2436, 1, 1154);
INSERT INTO `note` VALUES (4511, '2019-09-13 12:54:59', '2019-09-13 12:54:59', 'CC', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '-2044643264', 'ACTIVE', 19, 1, 2420, 1, 1154);
INSERT INTO `note` VALUES (4509, '2019-09-13 12:54:59', '2019-09-13 12:54:59', 'CC', 'ALGÈBRE LINÉAIRE', 0, '352022271', 'ACTIVE', 10, 1, 2419, 1, 1153);
INSERT INTO `note` VALUES (4510, '2019-09-13 12:54:59', '2019-09-13 12:54:59', 'SN', 'ALGÈBRE LINÉAIRE', 0, '-606138384', 'ACTIVE', 19, 1, 2435, 1, 1153);
INSERT INTO `note` VALUES (4508, '2019-09-13 12:54:58', '2019-09-13 12:54:58', 'SN', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '-1897315999', 'ACTIVE', 12, 1, 2433, 1, 1151);
INSERT INTO `note` VALUES (4507, '2019-09-13 12:54:58', '2019-09-13 12:54:58', 'CC', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '-1882512454', 'ACTIVE', 13, 1, 2418, 1, 1151);
INSERT INTO `note` VALUES (4506, '2019-09-13 12:54:58', '2019-09-13 12:54:58', 'SN', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '1367858426', 'ACTIVE', 15, 1, 2432, 1, 1150);
INSERT INTO `note` VALUES (4504, '2019-09-13 12:54:58', '2019-09-13 12:54:58', 'SN', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '-1516817307', 'ACTIVE', 12, 1, 2431, 1, 1149);
INSERT INTO `note` VALUES (4505, '2019-09-13 12:54:58', '2019-09-13 12:54:58', 'CC', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '1865587436', 'ACTIVE', 2, 1, 2417, 1, 1150);
INSERT INTO `note` VALUES (4503, '2019-09-13 12:54:58', '2019-09-13 12:54:58', 'CC', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '1408410939', 'ACTIVE', 5, 1, 2416, 1, 1149);
INSERT INTO `note` VALUES (4502, '2019-09-13 12:54:57', '2019-09-13 12:54:57', 'SN', 'RÉSEAUX D\'ENTREPRISE', 0, '294518866', 'ACTIVE', 16, 1, 2430, 1, 1148);
INSERT INTO `note` VALUES (4501, '2019-09-13 12:54:57', '2019-09-13 12:54:57', 'TP', 'RÉSEAUX D\'ENTREPRISE', 0, '1078992919', 'ACTIVE', 13, 1, 2444, 1, 1148);
INSERT INTO `note` VALUES (4500, '2019-09-13 12:54:57', '2019-09-13 12:54:57', 'CC', 'RÉSEAUX D\'ENTREPRISE', 0, '389886089', 'ACTIVE', 2, 1, 2415, 1, 1148);
INSERT INTO `note` VALUES (4498, '2019-09-13 12:54:57', '2019-09-13 12:54:57', 'SN', 'INTRODUCTION AU LANGAGE C', 0, '-1644593132', 'ACTIVE', 5, 1, 2429, 1, 1147);
INSERT INTO `note` VALUES (4499, '2019-09-13 12:54:57', '2019-09-13 12:54:57', 'SN', 'ARDUINO / RASPBERRY', 0, '-1493897887', 'ACTIVE', 6, 1, 2434, 1, 1152);
INSERT INTO `note` VALUES (4497, '2019-09-13 12:54:57', '2019-09-13 12:54:57', 'TP', 'INTRODUCTION AU LANGAGE C', 0, '-461013015', 'ACTIVE', 18, 1, 2443, 1, 1147);
INSERT INTO `note` VALUES (4496, '2019-09-13 12:54:56', '2019-09-13 12:54:56', 'CC', 'INTRODUCTION AU LANGAGE C', 0, '1397234454', 'ACTIVE', 9, 1, 2414, 1, 1147);
INSERT INTO `note` VALUES (4495, '2019-09-13 12:54:56', '2019-09-13 12:54:56', 'SN', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '1425045012', 'ACTIVE', 13, 1, 2428, 1, 1146);
INSERT INTO `note` VALUES (4494, '2019-09-13 12:54:56', '2019-09-13 12:54:56', 'CC', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '-532532684', 'ACTIVE', 8, 1, 2413, 1, 1146);
INSERT INTO `note` VALUES (4493, '2019-09-13 12:54:56', '2019-09-13 12:54:56', 'SN', 'ELÉMENTS DE PROBABILITÉS', 0, '2033375734', 'ACTIVE', 13, 1, 2427, 1, 1145);
INSERT INTO `note` VALUES (4491, '2019-09-13 12:54:55', '2019-09-13 12:54:55', 'SN', 'ANALYSE AVANCÉE', 0, '946688428', 'ACTIVE', 14, 1, 2426, 1, 1144);
INSERT INTO `note` VALUES (4492, '2019-09-13 12:54:55', '2019-09-13 12:54:55', 'CC', 'ELÉMENTS DE PROBABILITÉS', 0, '1279537880', 'ACTIVE', 8, 1, 2412, 1, 1145);
INSERT INTO `note` VALUES (4490, '2019-09-13 12:54:55', '2019-09-13 12:54:55', 'CC', 'ANALYSE AVANCÉE', 0, '1414310191', 'ACTIVE', 17, 1, 2411, 1, 1144);
INSERT INTO `note` VALUES (4489, '2019-09-13 12:54:55', '2019-09-13 12:54:55', 'SN', 'ARDUINO / RASPBERRY', 0, '1062084213', 'ACTIVE', 7, 1, 2442, 1, 1134);
INSERT INTO `note` VALUES (4488, '2019-09-13 12:54:54', '2019-09-13 12:54:54', 'SN', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '-921300180', 'ACTIVE', 2, 1, 2441, 1, 1142);
INSERT INTO `note` VALUES (4487, '2019-09-13 12:54:54', '2019-09-13 12:54:54', 'CC', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '-2111599813', 'ACTIVE', 7, 1, 2425, 1, 1142);
INSERT INTO `note` VALUES (4486, '2019-09-13 12:54:54', '2019-09-13 12:54:54', 'SN', 'L\'ENTREPRISE ET LA GESTION', 0, '-901471438', 'ACTIVE', 11, 1, 2440, 1, 1141);
INSERT INTO `note` VALUES (4485, '2019-09-13 12:54:54', '2019-09-13 12:54:54', 'CC', 'L\'ENTREPRISE ET LA GESTION', 0, '-1721435628', 'ACTIVE', 9, 1, 2424, 1, 1141);
INSERT INTO `note` VALUES (4484, '2019-09-13 12:54:54', '2019-09-13 12:54:54', 'SN', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '-701267703', 'ACTIVE', 6, 1, 2439, 1, 1140);
INSERT INTO `note` VALUES (4482, '2019-09-13 12:54:53', '2019-09-13 12:54:53', 'SN', 'ADMINISTRATION DES SYSTÈMES', 0, '2073928643', 'ACTIVE', 8, 1, 2438, 1, 1139);
INSERT INTO `note` VALUES (4483, '2019-09-13 12:54:53', '2019-09-13 12:54:53', 'CC', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '-1189872911', 'ACTIVE', 15, 1, 2423, 1, 1140);
INSERT INTO `note` VALUES (4481, '2019-09-13 12:54:53', '2019-09-13 12:54:53', 'CC', 'ADMINISTRATION DES SYSTÈMES', 0, '-733965056', 'ACTIVE', 7, 1, 2422, 1, 1139);
INSERT INTO `note` VALUES (4480, '2019-09-13 12:54:53', '2019-09-13 12:54:53', 'SN', 'ARCHITECTURES PROGRAMMABLES', 0, '-1055544944', 'ACTIVE', 13, 1, 2446, 1, 1138);
INSERT INTO `note` VALUES (4479, '2019-09-13 12:54:53', '2019-09-13 12:54:53', 'CC', 'ARCHITECTURES PROGRAMMABLES', 0, '-804795160', 'ACTIVE', 11, 1, 2445, 1, 1138);
INSERT INTO `note` VALUES (4477, '2019-09-13 12:54:53', '2019-09-13 12:54:53', 'CC', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '572811858', 'ACTIVE', 17, 1, 2421, 1, 1137);
INSERT INTO `note` VALUES (4478, '2019-09-13 12:54:53', '2019-09-13 12:54:53', 'SN', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '-1715676474', 'ACTIVE', 6, 1, 2437, 1, 1137);
INSERT INTO `note` VALUES (4476, '2019-09-13 12:54:53', '2019-09-13 12:54:53', 'SN', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '829224584', 'ACTIVE', 7, 1, 2436, 1, 1136);
INSERT INTO `note` VALUES (4475, '2019-09-13 12:54:52', '2019-09-13 12:54:52', 'CC', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '-1339937167', 'ACTIVE', 9, 1, 2420, 1, 1136);
INSERT INTO `note` VALUES (4474, '2019-09-13 12:54:52', '2019-09-13 12:54:52', 'SN', 'ALGÈBRE LINÉAIRE', 0, '385213193', 'ACTIVE', 5, 1, 2435, 1, 1135);
INSERT INTO `note` VALUES (4473, '2019-09-13 12:54:52', '2019-09-13 12:54:52', 'CC', 'ALGÈBRE LINÉAIRE', 0, '1319880489', 'ACTIVE', 10, 1, 2419, 1, 1135);
INSERT INTO `note` VALUES (4472, '2019-09-13 12:54:52', '2019-09-13 12:54:52', 'SN', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '1585354180', 'ACTIVE', 18, 1, 2433, 1, 1133);
INSERT INTO `note` VALUES (4471, '2019-09-13 12:54:52', '2019-09-13 12:54:52', 'CC', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '815968058', 'ACTIVE', 12, 1, 2418, 1, 1133);
INSERT INTO `note` VALUES (4470, '2019-09-13 12:54:52', '2019-09-13 12:54:52', 'SN', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '2088258510', 'ACTIVE', 5, 1, 2432, 1, 1132);
INSERT INTO `note` VALUES (4469, '2019-09-13 12:54:51', '2019-09-13 12:54:51', 'CC', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '-290431562', 'ACTIVE', 5, 1, 2417, 1, 1132);
INSERT INTO `note` VALUES (4468, '2019-09-13 12:54:51', '2019-09-13 12:54:51', 'SN', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '72269112', 'ACTIVE', 5, 1, 2431, 1, 1131);
INSERT INTO `note` VALUES (4466, '2019-09-13 12:54:51', '2019-09-13 12:54:51', 'SN', 'RÉSEAUX D\'ENTREPRISE', 0, '-1405159979', 'ACTIVE', 4, 1, 2430, 1, 1130);
INSERT INTO `note` VALUES (4467, '2019-09-13 12:54:51', '2019-09-13 12:54:51', 'CC', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '553671039', 'ACTIVE', 16, 1, 2416, 1, 1131);
INSERT INTO `note` VALUES (4465, '2019-09-13 12:54:51', '2019-09-13 12:54:51', 'TP', 'RÉSEAUX D\'ENTREPRISE', 0, '-1635162812', 'ACTIVE', 10, 1, 2444, 1, 1130);
INSERT INTO `note` VALUES (4463, '2019-09-13 12:54:50', '2019-09-13 12:54:50', 'SN', 'ARDUINO / RASPBERRY', 0, '-745443340', 'ACTIVE', 14, 1, 2434, 1, 1134);
INSERT INTO `note` VALUES (4464, '2019-09-13 12:54:51', '2019-09-13 12:54:51', 'CC', 'RÉSEAUX D\'ENTREPRISE', 0, '-208032644', 'ACTIVE', 4, 1, 2415, 1, 1130);
INSERT INTO `note` VALUES (4462, '2019-09-13 12:54:50', '2019-09-13 12:54:50', 'SN', 'INTRODUCTION AU LANGAGE C', 0, '914467848', 'ACTIVE', 5, 1, 2429, 1, 1129);
INSERT INTO `note` VALUES (4461, '2019-09-13 12:54:50', '2019-09-13 12:54:50', 'TP', 'INTRODUCTION AU LANGAGE C', 0, '-64132625', 'ACTIVE', 14, 1, 2443, 1, 1129);
INSERT INTO `note` VALUES (4460, '2019-09-13 12:54:50', '2019-09-13 12:54:50', 'CC', 'INTRODUCTION AU LANGAGE C', 0, '-205983922', 'ACTIVE', 18, 1, 2414, 1, 1129);
INSERT INTO `note` VALUES (4459, '2019-09-13 12:54:50', '2019-09-13 12:54:50', 'SN', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '2130096420', 'ACTIVE', 16, 1, 2428, 1, 1128);
INSERT INTO `note` VALUES (4458, '2019-09-13 12:54:50', '2019-09-13 12:54:50', 'CC', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '538884920', 'ACTIVE', 18, 1, 2413, 1, 1128);
INSERT INTO `note` VALUES (4455, '2019-09-13 12:54:49', '2019-09-13 12:54:49', 'SN', 'ANALYSE AVANCÉE', 0, '-1032295571', 'ACTIVE', 6, 1, 2426, 1, 1126);
INSERT INTO `note` VALUES (4456, '2019-09-13 12:54:49', '2019-09-13 12:54:49', 'CC', 'ELÉMENTS DE PROBABILITÉS', 0, '-1375718696', 'ACTIVE', 12, 1, 2412, 1, 1127);
INSERT INTO `note` VALUES (4457, '2019-09-13 12:54:49', '2019-09-13 12:54:49', 'SN', 'ELÉMENTS DE PROBABILITÉS', 0, '-1320154439', 'ACTIVE', 14, 1, 2427, 1, 1127);
INSERT INTO `note` VALUES (4454, '2019-09-13 12:54:49', '2019-09-13 12:54:49', 'CC', 'ANALYSE AVANCÉE', 0, '1382735245', 'ACTIVE', 9, 1, 2411, 1, 1126);
INSERT INTO `note` VALUES (4452, '2019-09-13 12:54:48', '2019-09-13 12:54:48', 'SN', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '1575961562', 'ACTIVE', 12, 1, 2441, 1, 1124);
INSERT INTO `note` VALUES (4453, '2019-09-13 12:54:49', '2019-09-13 12:54:49', 'SN', 'ARDUINO / RASPBERRY', 0, '2010709836', 'ACTIVE', 13, 1, 2442, 1, 1116);
INSERT INTO `note` VALUES (4450, '2019-09-13 12:54:48', '2019-09-13 12:54:48', 'SN', 'L\'ENTREPRISE ET LA GESTION', 0, '-78709268', 'ACTIVE', 17, 1, 2440, 1, 1123);
INSERT INTO `note` VALUES (4451, '2019-09-13 12:54:48', '2019-09-13 12:54:48', 'CC', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '1561095625', 'ACTIVE', 17, 1, 2425, 1, 1124);
INSERT INTO `note` VALUES (4449, '2019-09-13 12:54:48', '2019-09-13 12:54:48', 'CC', 'L\'ENTREPRISE ET LA GESTION', 0, '1253217497', 'ACTIVE', 13, 1, 2424, 1, 1123);
INSERT INTO `note` VALUES (4448, '2019-09-13 12:54:48', '2019-09-13 12:54:48', 'SN', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '-1679879104', 'ACTIVE', 8, 1, 2439, 1, 1122);
INSERT INTO `note` VALUES (4447, '2019-09-13 12:54:48', '2019-09-13 12:54:48', 'CC', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '-437960783', 'ACTIVE', 16, 1, 2423, 1, 1122);
INSERT INTO `note` VALUES (4446, '2019-09-13 12:54:48', '2019-09-13 12:54:48', 'SN', 'ADMINISTRATION DES SYSTÈMES', 0, '1329456892', 'ACTIVE', 5, 1, 2438, 1, 1121);
INSERT INTO `note` VALUES (4445, '2019-09-13 12:54:47', '2019-09-13 12:54:47', 'CC', 'ADMINISTRATION DES SYSTÈMES', 0, '-1858096833', 'ACTIVE', 2, 1, 2422, 1, 1121);
INSERT INTO `note` VALUES (4444, '2019-09-13 12:54:47', '2019-09-13 12:54:47', 'SN', 'ARCHITECTURES PROGRAMMABLES', 0, '637738863', 'ACTIVE', 18, 1, 2446, 1, 1120);
INSERT INTO `note` VALUES (4443, '2019-09-13 12:54:47', '2019-09-13 12:54:47', 'CC', 'ARCHITECTURES PROGRAMMABLES', 0, '-2053447447', 'ACTIVE', 4, 1, 2445, 1, 1120);
INSERT INTO `note` VALUES (4442, '2019-09-13 12:54:47', '2019-09-13 12:54:47', 'SN', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '304298228', 'ACTIVE', 2, 1, 2437, 1, 1119);
INSERT INTO `note` VALUES (4441, '2019-09-13 12:54:47', '2019-09-13 12:54:47', 'CC', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '-2096420742', 'ACTIVE', 11, 1, 2421, 1, 1119);
INSERT INTO `note` VALUES (4439, '2019-09-13 12:54:47', '2019-09-13 12:54:47', 'CC', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '600759721', 'ACTIVE', 15, 1, 2420, 1, 1118);
INSERT INTO `note` VALUES (4440, '2019-09-13 12:54:47', '2019-09-13 12:54:47', 'SN', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '1612071510', 'ACTIVE', 13, 1, 2436, 1, 1118);
INSERT INTO `note` VALUES (4438, '2019-09-13 12:54:46', '2019-09-13 12:54:46', 'SN', 'ALGÈBRE LINÉAIRE', 0, '-1699615230', 'ACTIVE', 3, 1, 2435, 1, 1117);
INSERT INTO `note` VALUES (4437, '2019-09-13 12:54:46', '2019-09-13 12:54:46', 'CC', 'ALGÈBRE LINÉAIRE', 0, '461395059', 'ACTIVE', 3, 1, 2419, 1, 1117);
INSERT INTO `note` VALUES (4436, '2019-09-13 12:54:46', '2019-09-13 12:54:46', 'SN', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '536749632', 'ACTIVE', 8, 1, 2433, 1, 1115);
INSERT INTO `note` VALUES (4434, '2019-09-13 12:54:46', '2019-09-13 12:54:46', 'SN', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '-1435239674', 'ACTIVE', 17, 1, 2432, 1, 1114);
INSERT INTO `note` VALUES (4435, '2019-09-13 12:54:46', '2019-09-13 12:54:46', 'CC', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '1496160335', 'ACTIVE', 7, 1, 2418, 1, 1115);
INSERT INTO `note` VALUES (4433, '2019-09-13 12:54:46', '2019-09-13 12:54:46', 'CC', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '-472627246', 'ACTIVE', 16, 1, 2417, 1, 1114);
INSERT INTO `note` VALUES (4431, '2019-09-13 12:54:45', '2019-09-13 12:54:45', 'CC', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '2141098031', 'ACTIVE', 14, 1, 2416, 1, 1113);
INSERT INTO `note` VALUES (4432, '2019-09-13 12:54:45', '2019-09-13 12:54:45', 'SN', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '1975396027', 'ACTIVE', 11, 1, 2431, 1, 1113);
INSERT INTO `note` VALUES (4429, '2019-09-13 12:54:45', '2019-09-13 12:54:45', 'TP', 'RÉSEAUX D\'ENTREPRISE', 0, '1771818479', 'ACTIVE', 19, 1, 2444, 1, 1112);
INSERT INTO `note` VALUES (4430, '2019-09-13 12:54:45', '2019-09-13 12:54:45', 'SN', 'RÉSEAUX D\'ENTREPRISE', 0, '2127825502', 'ACTIVE', 2, 1, 2430, 1, 1112);
INSERT INTO `note` VALUES (4428, '2019-09-13 12:54:45', '2019-09-13 12:54:45', 'CC', 'RÉSEAUX D\'ENTREPRISE', 0, '598463640', 'ACTIVE', 7, 1, 2415, 1, 1112);
INSERT INTO `note` VALUES (4427, '2019-09-13 12:54:45', '2019-09-13 12:54:45', 'SN', 'ARDUINO / RASPBERRY', 0, '1234451460', 'ACTIVE', 9, 1, 2434, 1, 1116);
INSERT INTO `note` VALUES (4426, '2019-09-13 12:54:45', '2019-09-13 12:54:45', 'SN', 'INTRODUCTION AU LANGAGE C', 0, '-500960768', 'ACTIVE', 17, 1, 2429, 1, 1111);
INSERT INTO `note` VALUES (4425, '2019-09-13 12:54:44', '2019-09-13 12:54:44', 'TP', 'INTRODUCTION AU LANGAGE C', 0, '1188778272', 'ACTIVE', 18, 1, 2443, 1, 1111);
INSERT INTO `note` VALUES (4423, '2019-09-13 12:54:44', '2019-09-13 12:54:44', 'SN', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '-1153904430', 'ACTIVE', 8, 1, 2428, 1, 1110);
INSERT INTO `note` VALUES (4424, '2019-09-13 12:54:44', '2019-09-13 12:54:44', 'CC', 'INTRODUCTION AU LANGAGE C', 0, '-202451505', 'ACTIVE', 14, 1, 2414, 1, 1111);
INSERT INTO `note` VALUES (4422, '2019-09-13 12:54:44', '2019-09-13 12:54:44', 'CC', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '-1329257857', 'ACTIVE', 2, 1, 2413, 1, 1110);
INSERT INTO `note` VALUES (4421, '2019-09-13 12:54:44', '2019-09-13 12:54:44', 'SN', 'ELÉMENTS DE PROBABILITÉS', 0, '947979293', 'ACTIVE', 2, 1, 2427, 1, 1109);
INSERT INTO `note` VALUES (4420, '2019-09-13 12:54:43', '2019-09-13 12:54:43', 'CC', 'ELÉMENTS DE PROBABILITÉS', 0, '1879458666', 'ACTIVE', 4, 1, 2412, 1, 1109);
INSERT INTO `note` VALUES (4419, '2019-09-13 12:54:43', '2019-09-13 12:54:43', 'SN', 'ANALYSE AVANCÉE', 0, '-1045360263', 'ACTIVE', 5, 1, 2426, 1, 1108);
INSERT INTO `note` VALUES (4417, '2019-09-13 12:54:43', '2019-09-13 12:54:43', 'SN', 'ARDUINO / RASPBERRY', 0, '1778301055', 'ACTIVE', 18, 1, 2442, 1, 1098);
INSERT INTO `note` VALUES (4418, '2019-09-13 12:54:43', '2019-09-13 12:54:43', 'CC', 'ANALYSE AVANCÉE', 0, '859329150', 'ACTIVE', 14, 1, 2411, 1, 1108);
INSERT INTO `note` VALUES (4416, '2019-09-13 12:54:43', '2019-09-13 12:54:43', 'SN', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '-782144400', 'ACTIVE', 3, 1, 2441, 1, 1106);
INSERT INTO `note` VALUES (4415, '2019-09-13 12:54:43', '2019-09-13 12:54:43', 'CC', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '1477233429', 'ACTIVE', 4, 1, 2425, 1, 1106);
INSERT INTO `note` VALUES (4414, '2019-09-13 12:54:42', '2019-09-13 12:54:42', 'SN', 'L\'ENTREPRISE ET LA GESTION', 0, '803739978', 'ACTIVE', 17, 1, 2440, 1, 1105);
INSERT INTO `note` VALUES (4413, '2019-09-13 12:54:42', '2019-09-13 12:54:42', 'CC', 'L\'ENTREPRISE ET LA GESTION', 0, '925477516', 'ACTIVE', 16, 1, 2424, 1, 1105);
INSERT INTO `note` VALUES (4411, '2019-09-13 12:54:42', '2019-09-13 12:54:42', 'CC', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '-566192785', 'ACTIVE', 18, 1, 2423, 1, 1104);
INSERT INTO `note` VALUES (4412, '2019-09-13 12:54:42', '2019-09-13 12:54:42', 'SN', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '-466655689', 'ACTIVE', 7, 1, 2439, 1, 1104);
INSERT INTO `note` VALUES (4410, '2019-09-13 12:54:42', '2019-09-13 12:54:42', 'SN', 'ADMINISTRATION DES SYSTÈMES', 0, '1918797185', 'ACTIVE', 4, 1, 2438, 1, 1103);
INSERT INTO `note` VALUES (4409, '2019-09-13 12:54:42', '2019-09-13 12:54:42', 'CC', 'ADMINISTRATION DES SYSTÈMES', 0, '279924632', 'ACTIVE', 14, 1, 2422, 1, 1103);
INSERT INTO `note` VALUES (4408, '2019-09-13 12:54:42', '2019-09-13 12:54:42', 'SN', 'ARCHITECTURES PROGRAMMABLES', 0, '-339779663', 'ACTIVE', 13, 1, 2446, 1, 1102);
INSERT INTO `note` VALUES (4406, '2019-09-13 12:54:41', '2019-09-13 12:54:41', 'SN', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '1825581715', 'ACTIVE', 11, 1, 2437, 1, 1101);
INSERT INTO `note` VALUES (4407, '2019-09-13 12:54:41', '2019-09-13 12:54:41', 'CC', 'ARCHITECTURES PROGRAMMABLES', 0, '180932641', 'ACTIVE', 14, 1, 2445, 1, 1102);
INSERT INTO `note` VALUES (4405, '2019-09-13 12:54:41', '2019-09-13 12:54:41', 'CC', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '-580300490', 'ACTIVE', 17, 1, 2421, 1, 1101);
INSERT INTO `note` VALUES (4403, '2019-09-13 12:54:41', '2019-09-13 12:54:41', 'CC', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '-1991126784', 'ACTIVE', 3, 1, 2420, 1, 1100);
INSERT INTO `note` VALUES (4404, '2019-09-13 12:54:41', '2019-09-13 12:54:41', 'SN', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '649969460', 'ACTIVE', 3, 1, 2436, 1, 1100);
INSERT INTO `note` VALUES (4401, '2019-09-13 12:54:40', '2019-09-13 12:54:40', 'CC', 'ALGÈBRE LINÉAIRE', 0, '-771918826', 'ACTIVE', 15, 1, 2419, 1, 1099);
INSERT INTO `note` VALUES (4402, '2019-09-13 12:54:41', '2019-09-13 12:54:41', 'SN', 'ALGÈBRE LINÉAIRE', 0, '-1205311016', 'ACTIVE', 17, 1, 2435, 1, 1099);
INSERT INTO `note` VALUES (4399, '2019-09-13 12:54:40', '2019-09-13 12:54:40', 'CC', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '-527396660', 'ACTIVE', 13, 1, 2418, 1, 1097);
INSERT INTO `note` VALUES (4400, '2019-09-13 12:54:40', '2019-09-13 12:54:40', 'SN', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '-180214460', 'ACTIVE', 15, 1, 2433, 1, 1097);
INSERT INTO `note` VALUES (4397, '2019-09-13 12:54:40', '2019-09-13 12:54:40', 'CC', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '-901847113', 'ACTIVE', 13, 1, 2417, 1, 1096);
INSERT INTO `note` VALUES (4398, '2019-09-13 12:54:40', '2019-09-13 12:54:40', 'SN', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '-1706263461', 'ACTIVE', 19, 1, 2432, 1, 1096);
INSERT INTO `note` VALUES (4396, '2019-09-13 12:54:39', '2019-09-13 12:54:39', 'SN', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '1311958144', 'ACTIVE', 7, 1, 2431, 1, 1095);
INSERT INTO `note` VALUES (4395, '2019-09-13 12:54:39', '2019-09-13 12:54:39', 'CC', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '623996695', 'ACTIVE', 6, 1, 2416, 1, 1095);
INSERT INTO `note` VALUES (4394, '2019-09-13 12:54:39', '2019-09-13 12:54:39', 'SN', 'RÉSEAUX D\'ENTREPRISE', 0, '1569630563', 'ACTIVE', 8, 1, 2430, 1, 1094);
INSERT INTO `note` VALUES (4393, '2019-09-13 12:54:39', '2019-09-13 12:54:39', 'TP', 'RÉSEAUX D\'ENTREPRISE', 0, '-1487789412', 'ACTIVE', 13, 1, 2444, 1, 1094);
INSERT INTO `note` VALUES (4392, '2019-09-13 12:54:38', '2019-09-13 12:54:38', 'CC', 'RÉSEAUX D\'ENTREPRISE', 0, '-1305117513', 'ACTIVE', 6, 1, 2415, 1, 1094);
INSERT INTO `note` VALUES (4391, '2019-09-13 12:54:38', '2019-09-13 12:54:38', 'SN', 'ARDUINO / RASPBERRY', 0, '-1107258886', 'ACTIVE', 12, 1, 2434, 1, 1098);
INSERT INTO `note` VALUES (4390, '2019-09-13 12:54:38', '2019-09-13 12:54:38', 'SN', 'INTRODUCTION AU LANGAGE C', 0, '551389340', 'ACTIVE', 4, 1, 2429, 1, 1093);
INSERT INTO `note` VALUES (4389, '2019-09-13 12:54:38', '2019-09-13 12:54:38', 'TP', 'INTRODUCTION AU LANGAGE C', 0, '1010845490', 'ACTIVE', 16, 1, 2443, 1, 1093);
INSERT INTO `note` VALUES (4388, '2019-09-13 12:54:37', '2019-09-13 12:54:37', 'CC', 'INTRODUCTION AU LANGAGE C', 0, '262752480', 'ACTIVE', 3, 1, 2414, 1, 1093);
INSERT INTO `note` VALUES (4387, '2019-09-13 12:54:37', '2019-09-13 12:54:37', 'SN', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '-162453437', 'ACTIVE', 13, 1, 2428, 1, 1092);
INSERT INTO `note` VALUES (4385, '2019-09-13 12:54:37', '2019-09-13 12:54:37', 'SN', 'ELÉMENTS DE PROBABILITÉS', 0, '46375279', 'ACTIVE', 6, 1, 2427, 1, 1091);
INSERT INTO `note` VALUES (4386, '2019-09-13 12:54:37', '2019-09-13 12:54:37', 'CC', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '-623239572', 'ACTIVE', 16, 1, 2413, 1, 1092);
INSERT INTO `note` VALUES (4384, '2019-09-13 12:54:37', '2019-09-13 12:54:37', 'CC', 'ELÉMENTS DE PROBABILITÉS', 0, '-1451535946', 'ACTIVE', 18, 1, 2412, 1, 1091);
INSERT INTO `note` VALUES (4383, '2019-09-13 12:54:37', '2019-09-13 12:54:37', 'SN', 'ANALYSE AVANCÉE', 0, '507244572', 'ACTIVE', 10, 1, 2426, 1, 1090);
INSERT INTO `note` VALUES (4382, '2019-09-13 12:54:37', '2019-09-13 12:54:37', 'CC', 'ANALYSE AVANCÉE', 0, '1954723290', 'ACTIVE', 19, 1, 2411, 1, 1090);
INSERT INTO `note` VALUES (4380, '2019-09-13 12:54:36', '2019-09-13 12:54:36', 'SN', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '-1492414176', 'ACTIVE', 18, 1, 2441, 1, 1088);
INSERT INTO `note` VALUES (4381, '2019-09-13 12:54:36', '2019-09-13 12:54:36', 'SN', 'ARDUINO / RASPBERRY', 0, '725258822', 'ACTIVE', 11, 1, 2442, 1, 1080);
INSERT INTO `note` VALUES (4379, '2019-09-13 12:54:36', '2019-09-13 12:54:36', 'CC', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '224529566', 'ACTIVE', 5, 1, 2425, 1, 1088);
INSERT INTO `note` VALUES (4378, '2019-09-13 12:54:36', '2019-09-13 12:54:36', 'SN', 'L\'ENTREPRISE ET LA GESTION', 0, '453060194', 'ACTIVE', 3, 1, 2440, 1, 1087);
INSERT INTO `note` VALUES (4376, '2019-09-13 12:54:36', '2019-09-13 12:54:36', 'SN', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '-1174166642', 'ACTIVE', 16, 1, 2439, 1, 1086);
INSERT INTO `note` VALUES (4377, '2019-09-13 12:54:36', '2019-09-13 12:54:36', 'CC', 'L\'ENTREPRISE ET LA GESTION', 0, '-1977737120', 'ACTIVE', 9, 1, 2424, 1, 1087);
INSERT INTO `note` VALUES (4375, '2019-09-13 12:54:36', '2019-09-13 12:54:36', 'CC', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '1400842136', 'ACTIVE', 7, 1, 2423, 1, 1086);
INSERT INTO `note` VALUES (4374, '2019-09-13 12:54:36', '2019-09-13 12:54:36', 'SN', 'ADMINISTRATION DES SYSTÈMES', 0, '-1193881494', 'ACTIVE', 2, 1, 2438, 1, 1085);
INSERT INTO `note` VALUES (4373, '2019-09-13 12:54:35', '2019-09-13 12:54:35', 'CC', 'ADMINISTRATION DES SYSTÈMES', 0, '382606634', 'ACTIVE', 2, 1, 2422, 1, 1085);
INSERT INTO `note` VALUES (4372, '2019-09-13 12:54:35', '2019-09-13 12:54:35', 'SN', 'ARCHITECTURES PROGRAMMABLES', 0, '-806478956', 'ACTIVE', 8, 1, 2446, 1, 1084);
INSERT INTO `note` VALUES (4370, '2019-09-13 12:54:35', '2019-09-13 12:54:35', 'SN', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '-1754441736', 'ACTIVE', 18, 1, 2437, 1, 1083);
INSERT INTO `note` VALUES (4371, '2019-09-13 12:54:35', '2019-09-13 12:54:35', 'CC', 'ARCHITECTURES PROGRAMMABLES', 0, '-1218258265', 'ACTIVE', 6, 1, 2445, 1, 1084);
INSERT INTO `note` VALUES (4369, '2019-09-13 12:54:35', '2019-09-13 12:54:35', 'CC', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '1279891724', 'ACTIVE', 17, 1, 2421, 1, 1083);
INSERT INTO `note` VALUES (4368, '2019-09-13 12:54:35', '2019-09-13 12:54:35', 'SN', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '835818101', 'ACTIVE', 3, 1, 2436, 1, 1082);
INSERT INTO `note` VALUES (4367, '2019-09-13 12:54:35', '2019-09-13 12:54:35', 'CC', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '-327150277', 'ACTIVE', 13, 1, 2420, 1, 1082);
INSERT INTO `note` VALUES (4366, '2019-09-13 12:54:34', '2019-09-13 12:54:34', 'SN', 'ALGÈBRE LINÉAIRE', 0, '-2142404329', 'ACTIVE', 18, 1, 2435, 1, 1081);
INSERT INTO `note` VALUES (4365, '2019-09-13 12:54:34', '2019-09-13 12:54:34', 'CC', 'ALGÈBRE LINÉAIRE', 0, '-197443068', 'ACTIVE', 13, 1, 2419, 1, 1081);
INSERT INTO `note` VALUES (4364, '2019-09-13 12:54:34', '2019-09-13 12:54:34', 'SN', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '-789636564', 'ACTIVE', 14, 1, 2433, 1, 1079);
INSERT INTO `note` VALUES (4363, '2019-09-13 12:54:34', '2019-09-13 12:54:34', 'CC', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '-1211266473', 'ACTIVE', 15, 1, 2418, 1, 1079);
INSERT INTO `note` VALUES (4362, '2019-09-13 12:54:34', '2019-09-13 12:54:34', 'SN', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '-928682057', 'ACTIVE', 7, 1, 2432, 1, 1078);
INSERT INTO `note` VALUES (4361, '2019-09-13 12:54:34', '2019-09-13 12:54:34', 'CC', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '-859524466', 'ACTIVE', 17, 1, 2417, 1, 1078);
INSERT INTO `note` VALUES (4359, '2019-09-13 12:54:34', '2019-09-13 12:54:34', 'CC', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '-1709347076', 'ACTIVE', 3, 1, 2416, 1, 1077);
INSERT INTO `note` VALUES (4360, '2019-09-13 12:54:34', '2019-09-13 12:54:34', 'SN', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '-983869366', 'ACTIVE', 6, 1, 2431, 1, 1077);
INSERT INTO `note` VALUES (4358, '2019-09-13 12:54:33', '2019-09-13 12:54:33', 'SN', 'RÉSEAUX D\'ENTREPRISE', 0, '1602895572', 'ACTIVE', 8, 1, 2430, 1, 1076);
INSERT INTO `note` VALUES (4357, '2019-09-13 12:54:33', '2019-09-13 12:54:33', 'TP', 'RÉSEAUX D\'ENTREPRISE', 0, '80970363', 'ACTIVE', 18, 1, 2444, 1, 1076);
INSERT INTO `note` VALUES (4356, '2019-09-13 12:54:33', '2019-09-13 12:54:33', 'CC', 'RÉSEAUX D\'ENTREPRISE', 0, '1984856470', 'ACTIVE', 15, 1, 2415, 1, 1076);
INSERT INTO `note` VALUES (4355, '2019-09-13 12:54:33', '2019-09-13 12:54:33', 'SN', 'ARDUINO / RASPBERRY', 0, '-807224864', 'ACTIVE', 5, 1, 2434, 1, 1080);
INSERT INTO `note` VALUES (4354, '2019-09-13 12:54:33', '2019-09-13 12:54:33', 'SN', 'INTRODUCTION AU LANGAGE C', 0, '332950923', 'ACTIVE', 18, 1, 2429, 1, 1075);
INSERT INTO `note` VALUES (4353, '2019-09-13 12:54:33', '2019-09-13 12:54:33', 'TP', 'INTRODUCTION AU LANGAGE C', 0, '-1422643883', 'ACTIVE', 8, 1, 2443, 1, 1075);
INSERT INTO `note` VALUES (4351, '2019-09-13 12:54:33', '2019-09-13 12:54:33', 'SN', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '-217268675', 'ACTIVE', 18, 1, 2428, 1, 1074);
INSERT INTO `note` VALUES (4352, '2019-09-13 12:54:33', '2019-09-13 12:54:33', 'CC', 'INTRODUCTION AU LANGAGE C', 0, '-1517723310', 'ACTIVE', 16, 1, 2414, 1, 1075);
INSERT INTO `note` VALUES (4350, '2019-09-13 12:54:32', '2019-09-13 12:54:32', 'CC', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '-988825863', 'ACTIVE', 3, 1, 2413, 1, 1074);
INSERT INTO `note` VALUES (4349, '2019-09-13 12:54:32', '2019-09-13 12:54:32', 'SN', 'ELÉMENTS DE PROBABILITÉS', 0, '-1650232535', 'ACTIVE', 3, 1, 2427, 1, 1073);
INSERT INTO `note` VALUES (4348, '2019-09-13 12:54:32', '2019-09-13 12:54:32', 'CC', 'ELÉMENTS DE PROBABILITÉS', 0, '-1390582917', 'ACTIVE', 2, 1, 2412, 1, 1073);
INSERT INTO `note` VALUES (4347, '2019-09-13 12:54:32', '2019-09-13 12:54:32', 'SN', 'ANALYSE AVANCÉE', 0, '1157898265', 'ACTIVE', 5, 1, 2426, 1, 1072);
INSERT INTO `note` VALUES (4346, '2019-09-13 12:54:32', '2019-09-13 12:54:32', 'CC', 'ANALYSE AVANCÉE', 0, '-611306242', 'ACTIVE', 9, 1, 2411, 1, 1072);
INSERT INTO `note` VALUES (4345, '2019-09-13 12:54:32', '2019-09-13 12:54:32', 'SN', 'ARDUINO / RASPBERRY', 0, '-244418801', 'ACTIVE', 6, 1, 2442, 1, 1062);
INSERT INTO `note` VALUES (4343, '2019-09-13 12:54:32', '2019-09-13 12:54:32', 'CC', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '289411044', 'ACTIVE', 3, 1, 2425, 1, 1070);
INSERT INTO `note` VALUES (4344, '2019-09-13 12:54:32', '2019-09-13 12:54:32', 'SN', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '396102235', 'ACTIVE', 3, 1, 2441, 1, 1070);
INSERT INTO `note` VALUES (4342, '2019-09-13 12:54:32', '2019-09-13 12:54:32', 'SN', 'L\'ENTREPRISE ET LA GESTION', 0, '-318746048', 'ACTIVE', 15, 1, 2440, 1, 1069);
INSERT INTO `note` VALUES (4341, '2019-09-13 12:54:31', '2019-09-13 12:54:31', 'CC', 'L\'ENTREPRISE ET LA GESTION', 0, '-2124620636', 'ACTIVE', 5, 1, 2424, 1, 1069);
INSERT INTO `note` VALUES (4340, '2019-09-13 12:54:31', '2019-09-13 12:54:31', 'SN', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '1728424402', 'ACTIVE', 13, 1, 2439, 1, 1068);
INSERT INTO `note` VALUES (4339, '2019-09-13 12:54:31', '2019-09-13 12:54:31', 'CC', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '981828401', 'ACTIVE', 4, 1, 2423, 1, 1068);
INSERT INTO `note` VALUES (4338, '2019-09-13 12:54:31', '2019-09-13 12:54:31', 'SN', 'ADMINISTRATION DES SYSTÈMES', 0, '1291219209', 'ACTIVE', 19, 1, 2438, 1, 1067);
INSERT INTO `note` VALUES (4337, '2019-09-13 12:54:31', '2019-09-13 12:54:31', 'CC', 'ADMINISTRATION DES SYSTÈMES', 0, '862346571', 'ACTIVE', 13, 1, 2422, 1, 1067);
INSERT INTO `note` VALUES (4336, '2019-09-13 12:54:31', '2019-09-13 12:54:31', 'SN', 'ARCHITECTURES PROGRAMMABLES', 0, '-1113132779', 'ACTIVE', 3, 1, 2446, 1, 1066);
INSERT INTO `note` VALUES (4334, '2019-09-13 12:54:31', '2019-09-13 12:54:31', 'SN', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '194682483', 'ACTIVE', 9, 1, 2437, 1, 1065);
INSERT INTO `note` VALUES (4335, '2019-09-13 12:54:31', '2019-09-13 12:54:31', 'CC', 'ARCHITECTURES PROGRAMMABLES', 0, '-251464095', 'ACTIVE', 19, 1, 2445, 1, 1066);
INSERT INTO `note` VALUES (4333, '2019-09-13 12:54:31', '2019-09-13 12:54:31', 'CC', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '-1647187851', 'ACTIVE', 4, 1, 2421, 1, 1065);
INSERT INTO `note` VALUES (4332, '2019-09-13 12:54:30', '2019-09-13 12:54:30', 'SN', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '-966070374', 'ACTIVE', 18, 1, 2436, 1, 1064);
INSERT INTO `note` VALUES (4331, '2019-09-13 12:54:30', '2019-09-13 12:54:30', 'CC', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '198488199', 'ACTIVE', 15, 1, 2420, 1, 1064);
INSERT INTO `note` VALUES (4330, '2019-09-13 12:54:30', '2019-09-13 12:54:30', 'SN', 'ALGÈBRE LINÉAIRE', 0, '-959947973', 'ACTIVE', 15, 1, 2435, 1, 1063);
INSERT INTO `note` VALUES (4329, '2019-09-13 12:54:30', '2019-09-13 12:54:30', 'CC', 'ALGÈBRE LINÉAIRE', 0, '-43387294', 'ACTIVE', 3, 1, 2419, 1, 1063);
INSERT INTO `note` VALUES (4327, '2019-09-13 12:54:30', '2019-09-13 12:54:30', 'CC', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '-1465463041', 'ACTIVE', 2, 1, 2418, 1, 1061);
INSERT INTO `note` VALUES (4328, '2019-09-13 12:54:30', '2019-09-13 12:54:30', 'SN', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '-38575461', 'ACTIVE', 10, 1, 2433, 1, 1061);
INSERT INTO `note` VALUES (4325, '2019-09-13 12:54:29', '2019-09-13 12:54:29', 'CC', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '-758104693', 'ACTIVE', 6, 1, 2417, 1, 1060);
INSERT INTO `note` VALUES (4326, '2019-09-13 12:54:30', '2019-09-13 12:54:30', 'SN', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '1210002295', 'ACTIVE', 4, 1, 2432, 1, 1060);
INSERT INTO `note` VALUES (4324, '2019-09-13 12:54:29', '2019-09-13 12:54:29', 'SN', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '-287379505', 'ACTIVE', 7, 1, 2431, 1, 1059);
INSERT INTO `note` VALUES (4323, '2019-09-13 12:54:29', '2019-09-13 12:54:29', 'CC', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '1618793874', 'ACTIVE', 5, 1, 2416, 1, 1059);
INSERT INTO `note` VALUES (4321, '2019-09-13 12:54:29', '2019-09-13 12:54:29', 'TP', 'RÉSEAUX D\'ENTREPRISE', 0, '170814351', 'ACTIVE', 17, 1, 2444, 1, 1058);
INSERT INTO `note` VALUES (4322, '2019-09-13 12:54:29', '2019-09-13 12:54:29', 'SN', 'RÉSEAUX D\'ENTREPRISE', 0, '1150152555', 'ACTIVE', 6, 1, 2430, 1, 1058);
INSERT INTO `note` VALUES (4320, '2019-09-13 12:54:29', '2019-09-13 12:54:29', 'CC', 'RÉSEAUX D\'ENTREPRISE', 0, '988248957', 'ACTIVE', 6, 1, 2415, 1, 1058);
INSERT INTO `note` VALUES (4319, '2019-09-13 12:54:29', '2019-09-13 12:54:29', 'SN', 'ARDUINO / RASPBERRY', 0, '-1122701960', 'ACTIVE', 13, 1, 2434, 1, 1062);
INSERT INTO `note` VALUES (4318, '2019-09-13 12:54:28', '2019-09-13 12:54:28', 'SN', 'INTRODUCTION AU LANGAGE C', 0, '191581090', 'ACTIVE', 12, 1, 2429, 1, 1057);
INSERT INTO `note` VALUES (4317, '2019-09-13 12:54:28', '2019-09-13 12:54:28', 'TP', 'INTRODUCTION AU LANGAGE C', 0, '1142624842', 'ACTIVE', 8, 1, 2443, 1, 1057);
INSERT INTO `note` VALUES (4316, '2019-09-13 12:54:28', '2019-09-13 12:54:28', 'CC', 'INTRODUCTION AU LANGAGE C', 0, '924652844', 'ACTIVE', 11, 1, 2414, 1, 1057);
INSERT INTO `note` VALUES (4315, '2019-09-13 12:54:28', '2019-09-13 12:54:28', 'SN', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '1206630822', 'ACTIVE', 4, 1, 2428, 1, 1056);
INSERT INTO `note` VALUES (4314, '2019-09-13 12:54:28', '2019-09-13 12:54:28', 'CC', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '-596645197', 'ACTIVE', 9, 1, 2413, 1, 1056);
INSERT INTO `note` VALUES (4313, '2019-09-13 12:54:28', '2019-09-13 12:54:28', 'SN', 'ELÉMENTS DE PROBABILITÉS', 0, '1674946192', 'ACTIVE', 6, 1, 2427, 1, 1055);
INSERT INTO `note` VALUES (4312, '2019-09-13 12:54:27', '2019-09-13 12:54:27', 'CC', 'ELÉMENTS DE PROBABILITÉS', 0, '54690815', 'ACTIVE', 3, 1, 2412, 1, 1055);
INSERT INTO `note` VALUES (4311, '2019-09-13 12:54:27', '2019-09-13 12:54:27', 'SN', 'ANALYSE AVANCÉE', 0, '-70231986', 'ACTIVE', 7, 1, 2426, 1, 1054);
INSERT INTO `note` VALUES (4310, '2019-09-13 12:54:27', '2019-09-13 12:54:27', 'CC', 'ANALYSE AVANCÉE', 0, '-738351300', 'ACTIVE', 4, 1, 2411, 1, 1054);
INSERT INTO `note` VALUES (4309, '2019-09-13 12:54:27', '2019-09-13 12:54:27', 'SN', 'ARDUINO / RASPBERRY', 0, '1224548168', 'ACTIVE', 18, 1, 2442, 1, 1044);
INSERT INTO `note` VALUES (4308, '2019-09-13 12:54:27', '2019-09-13 12:54:27', 'SN', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '-1894147314', 'ACTIVE', 3, 1, 2441, 1, 1052);
INSERT INTO `note` VALUES (4307, '2019-09-13 12:54:27', '2019-09-13 12:54:27', 'CC', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '-1152742447', 'ACTIVE', 8, 1, 2425, 1, 1052);
INSERT INTO `note` VALUES (4306, '2019-09-13 12:54:26', '2019-09-13 12:54:26', 'SN', 'L\'ENTREPRISE ET LA GESTION', 0, '197895987', 'ACTIVE', 5, 1, 2440, 1, 1051);
INSERT INTO `note` VALUES (4305, '2019-09-13 12:54:26', '2019-09-13 12:54:26', 'CC', 'L\'ENTREPRISE ET LA GESTION', 0, '1479506927', 'ACTIVE', 2, 1, 2424, 1, 1051);
INSERT INTO `note` VALUES (4303, '2019-09-13 12:54:26', '2019-09-13 12:54:26', 'CC', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '-283366550', 'ACTIVE', 9, 1, 2423, 1, 1050);
INSERT INTO `note` VALUES (4304, '2019-09-13 12:54:26', '2019-09-13 12:54:26', 'SN', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '-248877736', 'ACTIVE', 13, 1, 2439, 1, 1050);
INSERT INTO `note` VALUES (4302, '2019-09-13 12:54:26', '2019-09-13 12:54:26', 'SN', 'ADMINISTRATION DES SYSTÈMES', 0, '236811286', 'ACTIVE', 15, 1, 2438, 1, 1049);
INSERT INTO `note` VALUES (4301, '2019-09-13 12:54:25', '2019-09-13 12:54:25', 'CC', 'ADMINISTRATION DES SYSTÈMES', 0, '250821046', 'ACTIVE', 16, 1, 2422, 1, 1049);
INSERT INTO `note` VALUES (4300, '2019-09-13 12:54:25', '2019-09-13 12:54:25', 'SN', 'ARCHITECTURES PROGRAMMABLES', 0, '-1083751607', 'ACTIVE', 15, 1, 2446, 1, 1048);
INSERT INTO `note` VALUES (4299, '2019-09-13 12:54:25', '2019-09-13 12:54:25', 'CC', 'ARCHITECTURES PROGRAMMABLES', 0, '1509780468', 'ACTIVE', 8, 1, 2445, 1, 1048);
INSERT INTO `note` VALUES (4298, '2019-09-13 12:54:24', '2019-09-13 12:54:25', 'SN', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '-923994019', 'ACTIVE', 5, 1, 2437, 1, 1047);
INSERT INTO `note` VALUES (4297, '2019-09-13 12:54:24', '2019-09-13 12:54:24', 'CC', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '1061251724', 'ACTIVE', 6, 1, 2421, 1, 1047);
INSERT INTO `note` VALUES (4295, '2019-09-13 12:54:24', '2019-09-13 12:54:24', 'CC', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '975619216', 'ACTIVE', 12, 1, 2420, 1, 1046);
INSERT INTO `note` VALUES (4296, '2019-09-13 12:54:24', '2019-09-13 12:54:24', 'SN', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '729520695', 'ACTIVE', 19, 1, 2436, 1, 1046);
INSERT INTO `note` VALUES (4293, '2019-09-13 12:54:24', '2019-09-13 12:54:24', 'CC', 'ALGÈBRE LINÉAIRE', 0, '1843844141', 'ACTIVE', 11, 1, 2419, 1, 1045);
INSERT INTO `note` VALUES (4294, '2019-09-13 12:54:24', '2019-09-13 12:54:24', 'SN', 'ALGÈBRE LINÉAIRE', 0, '414737966', 'ACTIVE', 10, 1, 2435, 1, 1045);
INSERT INTO `note` VALUES (4292, '2019-09-13 12:54:23', '2019-09-13 12:54:23', 'SN', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '-773784559', 'ACTIVE', 9, 1, 2433, 1, 1043);
INSERT INTO `note` VALUES (4291, '2019-09-13 12:54:23', '2019-09-13 12:54:23', 'CC', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '1135944515', 'ACTIVE', 10, 1, 2418, 1, 1043);
INSERT INTO `note` VALUES (4290, '2019-09-13 12:54:23', '2019-09-13 12:54:23', 'SN', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '-883885381', 'ACTIVE', 17, 1, 2432, 1, 1042);
INSERT INTO `note` VALUES (4289, '2019-09-13 12:54:23', '2019-09-13 12:54:23', 'CC', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '684833601', 'ACTIVE', 7, 1, 2417, 1, 1042);
INSERT INTO `note` VALUES (4288, '2019-09-13 12:54:23', '2019-09-13 12:54:23', 'SN', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '-2112672258', 'ACTIVE', 4, 1, 2431, 1, 1041);
INSERT INTO `note` VALUES (4287, '2019-09-13 12:54:23', '2019-09-13 12:54:23', 'CC', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '-514031372', 'ACTIVE', 3, 1, 2416, 1, 1041);
INSERT INTO `note` VALUES (4286, '2019-09-13 12:54:22', '2019-09-13 12:54:22', 'SN', 'RÉSEAUX D\'ENTREPRISE', 0, '-2133434743', 'ACTIVE', 5, 1, 2430, 1, 1040);
INSERT INTO `note` VALUES (4285, '2019-09-13 12:54:22', '2019-09-13 12:54:22', 'TP', 'RÉSEAUX D\'ENTREPRISE', 0, '-964182923', 'ACTIVE', 20, 1, 2444, 1, 1040);
INSERT INTO `note` VALUES (4284, '2019-09-13 12:54:22', '2019-09-13 12:54:22', 'CC', 'RÉSEAUX D\'ENTREPRISE', 0, '-79784019', 'ACTIVE', 4, 1, 2415, 1, 1040);
INSERT INTO `note` VALUES (4283, '2019-09-13 12:54:22', '2019-09-13 12:54:22', 'SN', 'ARDUINO / RASPBERRY', 0, '-790312564', 'ACTIVE', 16, 1, 2434, 1, 1044);
INSERT INTO `note` VALUES (4282, '2019-09-13 12:54:22', '2019-09-13 12:54:22', 'SN', 'INTRODUCTION AU LANGAGE C', 0, '1487350670', 'ACTIVE', 14, 1, 2429, 1, 1039);
INSERT INTO `note` VALUES (4281, '2019-09-13 12:54:22', '2019-09-13 12:54:22', 'TP', 'INTRODUCTION AU LANGAGE C', 0, '1262276707', 'ACTIVE', 11, 1, 2443, 1, 1039);
INSERT INTO `note` VALUES (4280, '2019-09-13 12:54:21', '2019-09-13 12:54:21', 'CC', 'INTRODUCTION AU LANGAGE C', 0, '-1224425374', 'ACTIVE', 17, 1, 2414, 1, 1039);
INSERT INTO `note` VALUES (4279, '2019-09-13 12:54:21', '2019-09-13 12:54:21', 'SN', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '-54811637', 'ACTIVE', 15, 1, 2428, 1, 1038);
INSERT INTO `note` VALUES (4278, '2019-09-13 12:54:21', '2019-09-13 12:54:21', 'CC', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '-1686003833', 'ACTIVE', 17, 1, 2413, 1, 1038);
INSERT INTO `note` VALUES (4276, '2019-09-13 12:54:21', '2019-09-13 12:54:21', 'CC', 'ELÉMENTS DE PROBABILITÉS', 0, '-1844154010', 'ACTIVE', 19, 1, 2412, 1, 1037);
INSERT INTO `note` VALUES (4277, '2019-09-13 12:54:21', '2019-09-13 12:54:21', 'SN', 'ELÉMENTS DE PROBABILITÉS', 0, '-1248755260', 'ACTIVE', 12, 1, 2427, 1, 1037);
INSERT INTO `note` VALUES (4275, '2019-09-13 12:54:20', '2019-09-13 12:54:20', 'SN', 'ANALYSE AVANCÉE', 0, '643721712', 'ACTIVE', 17, 1, 2426, 1, 1036);
INSERT INTO `note` VALUES (4274, '2019-09-13 12:54:20', '2019-09-13 12:54:20', 'CC', 'ANALYSE AVANCÉE', 0, '-1620110986', 'ACTIVE', 15, 1, 2411, 1, 1036);
INSERT INTO `note` VALUES (4273, '2019-09-13 12:54:20', '2019-09-13 12:54:20', 'SN', 'ARDUINO / RASPBERRY', 0, '2110037270', 'ACTIVE', 19, 1, 2442, 1, 1026);
INSERT INTO `note` VALUES (4271, '2019-09-13 12:54:20', '2019-09-13 12:54:20', 'CC', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '258792611', 'ACTIVE', 7, 1, 2425, 1, 1034);
INSERT INTO `note` VALUES (4272, '2019-09-13 12:54:20', '2019-09-13 12:54:20', 'SN', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '-1639292151', 'ACTIVE', 17, 1, 2441, 1, 1034);
INSERT INTO `note` VALUES (4270, '2019-09-13 12:54:19', '2019-09-13 12:54:19', 'SN', 'L\'ENTREPRISE ET LA GESTION', 0, '389141495', 'ACTIVE', 14, 1, 2440, 1, 1033);
INSERT INTO `note` VALUES (4269, '2019-09-13 12:54:19', '2019-09-13 12:54:19', 'CC', 'L\'ENTREPRISE ET LA GESTION', 0, '-2101226812', 'ACTIVE', 13, 1, 2424, 1, 1033);
INSERT INTO `note` VALUES (4268, '2019-09-13 12:54:19', '2019-09-13 12:54:19', 'SN', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '69748218', 'ACTIVE', 15, 1, 2439, 1, 1032);
INSERT INTO `note` VALUES (4266, '2019-09-13 12:54:18', '2019-09-13 12:54:18', 'SN', 'ADMINISTRATION DES SYSTÈMES', 0, '950612507', 'ACTIVE', 14, 1, 2438, 1, 1031);
INSERT INTO `note` VALUES (4267, '2019-09-13 12:54:19', '2019-09-13 12:54:19', 'CC', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '2113449040', 'ACTIVE', 2, 1, 2423, 1, 1032);
INSERT INTO `note` VALUES (4265, '2019-09-13 12:54:18', '2019-09-13 12:54:18', 'CC', 'ADMINISTRATION DES SYSTÈMES', 0, '78317711', 'ACTIVE', 4, 1, 2422, 1, 1031);
INSERT INTO `note` VALUES (4264, '2019-09-13 12:54:18', '2019-09-13 12:54:18', 'SN', 'ARCHITECTURES PROGRAMMABLES', 0, '-1801150383', 'ACTIVE', 17, 1, 2446, 1, 1030);
INSERT INTO `note` VALUES (4263, '2019-09-13 12:54:17', '2019-09-13 12:54:17', 'CC', 'ARCHITECTURES PROGRAMMABLES', 0, '-1518101285', 'ACTIVE', 16, 1, 2445, 1, 1030);
INSERT INTO `note` VALUES (4262, '2019-09-13 12:54:17', '2019-09-13 12:54:17', 'SN', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '-1476253064', 'ACTIVE', 7, 1, 2437, 1, 1029);
INSERT INTO `note` VALUES (4261, '2019-09-13 12:54:17', '2019-09-13 12:54:17', 'CC', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '-1514492022', 'ACTIVE', 17, 1, 2421, 1, 1029);
INSERT INTO `note` VALUES (4260, '2019-09-13 12:54:17', '2019-09-13 12:54:17', 'SN', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '631135020', 'ACTIVE', 4, 1, 2436, 1, 1028);
INSERT INTO `note` VALUES (4259, '2019-09-13 12:54:17', '2019-09-13 12:54:17', 'CC', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '-2052307590', 'ACTIVE', 9, 1, 2420, 1, 1028);
INSERT INTO `note` VALUES (4258, '2019-09-13 12:54:17', '2019-09-13 12:54:17', 'SN', 'ALGÈBRE LINÉAIRE', 0, '1919870476', 'ACTIVE', 9, 1, 2435, 1, 1027);
INSERT INTO `note` VALUES (4257, '2019-09-13 12:54:16', '2019-09-13 12:54:16', 'CC', 'ALGÈBRE LINÉAIRE', 0, '569617088', 'ACTIVE', 5, 1, 2419, 1, 1027);
INSERT INTO `note` VALUES (4256, '2019-09-13 12:54:16', '2019-09-13 12:54:16', 'SN', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '-613939498', 'ACTIVE', 2, 1, 2433, 1, 1025);
INSERT INTO `note` VALUES (4255, '2019-09-13 12:54:16', '2019-09-13 12:54:16', 'CC', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '-651430165', 'ACTIVE', 7, 1, 2418, 1, 1025);
INSERT INTO `note` VALUES (4254, '2019-09-13 12:54:16', '2019-09-13 12:54:16', 'SN', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '-1344627648', 'ACTIVE', 19, 1, 2432, 1, 1024);
INSERT INTO `note` VALUES (4253, '2019-09-13 12:54:16', '2019-09-13 12:54:16', 'CC', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '-989983637', 'ACTIVE', 4, 1, 2417, 1, 1024);
INSERT INTO `note` VALUES (4251, '2019-09-13 12:54:16', '2019-09-13 12:54:16', 'CC', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '776120623', 'ACTIVE', 18, 1, 2416, 1, 1023);
INSERT INTO `note` VALUES (4252, '2019-09-13 12:54:16', '2019-09-13 12:54:16', 'SN', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '-1317984950', 'ACTIVE', 11, 1, 2431, 1, 1023);
INSERT INTO `note` VALUES (4250, '2019-09-13 12:54:16', '2019-09-13 12:54:16', 'SN', 'RÉSEAUX D\'ENTREPRISE', 0, '-378040223', 'ACTIVE', 14, 1, 2430, 1, 1022);
INSERT INTO `note` VALUES (4247, '2019-09-13 12:54:15', '2019-09-13 12:54:15', 'SN', 'ARDUINO / RASPBERRY', 0, '-361494397', 'ACTIVE', 16, 1, 2434, 1, 1026);
INSERT INTO `note` VALUES (4248, '2019-09-13 12:54:15', '2019-09-13 12:54:15', 'CC', 'RÉSEAUX D\'ENTREPRISE', 0, '-1684157723', 'ACTIVE', 18, 1, 2415, 1, 1022);
INSERT INTO `note` VALUES (4249, '2019-09-13 12:54:15', '2019-09-13 12:54:15', 'TP', 'RÉSEAUX D\'ENTREPRISE', 0, '60449374', 'ACTIVE', 10, 1, 2444, 1, 1022);
INSERT INTO `note` VALUES (4246, '2019-09-13 12:54:15', '2019-09-13 12:54:15', 'SN', 'INTRODUCTION AU LANGAGE C', 0, '-46353645', 'ACTIVE', 4, 1, 2429, 1, 1021);
INSERT INTO `note` VALUES (4244, '2019-09-13 12:54:15', '2019-09-13 12:54:15', 'CC', 'INTRODUCTION AU LANGAGE C', 0, '2113001417', 'ACTIVE', 11, 1, 2414, 1, 1021);
INSERT INTO `note` VALUES (4245, '2019-09-13 12:54:15', '2019-09-13 12:54:15', 'TP', 'INTRODUCTION AU LANGAGE C', 0, '-750953377', 'ACTIVE', 20, 1, 2443, 1, 1021);
INSERT INTO `note` VALUES (4243, '2019-09-13 12:54:15', '2019-09-13 12:54:15', 'SN', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '1785428092', 'ACTIVE', 5, 1, 2428, 1, 1020);
INSERT INTO `note` VALUES (4242, '2019-09-13 12:54:14', '2019-09-13 12:54:14', 'CC', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '-835173404', 'ACTIVE', 5, 1, 2413, 1, 1020);
INSERT INTO `note` VALUES (4241, '2019-09-13 12:54:14', '2019-09-13 12:54:14', 'SN', 'ELÉMENTS DE PROBABILITÉS', 0, '-495208149', 'ACTIVE', 11, 1, 2427, 1, 1019);
INSERT INTO `note` VALUES (4239, '2019-09-13 12:54:14', '2019-09-13 12:54:14', 'SN', 'ANALYSE AVANCÉE', 0, '1005097751', 'ACTIVE', 16, 1, 2426, 1, 1018);
INSERT INTO `note` VALUES (4240, '2019-09-13 12:54:14', '2019-09-13 12:54:14', 'CC', 'ELÉMENTS DE PROBABILITÉS', 0, '-2017980330', 'ACTIVE', 14, 1, 2412, 1, 1019);
INSERT INTO `note` VALUES (4238, '2019-09-13 12:54:14', '2019-09-13 12:54:14', 'CC', 'ANALYSE AVANCÉE', 0, '-1682216360', 'ACTIVE', 8, 1, 2411, 1, 1018);
INSERT INTO `note` VALUES (4237, '2019-09-13 12:54:14', '2019-09-13 12:54:14', 'SN', 'ARDUINO / RASPBERRY', 0, '-1748033802', 'ACTIVE', 16, 1, 2442, 1, 1008);
INSERT INTO `note` VALUES (4236, '2019-09-13 12:54:14', '2019-09-13 12:54:14', 'SN', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '-499702255', 'ACTIVE', 4, 1, 2441, 1, 1016);
INSERT INTO `note` VALUES (4235, '2019-09-13 12:54:14', '2019-09-13 12:54:14', 'CC', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '903152185', 'ACTIVE', 7, 1, 2425, 1, 1016);
INSERT INTO `note` VALUES (4234, '2019-09-13 12:54:13', '2019-09-13 12:54:13', 'SN', 'L\'ENTREPRISE ET LA GESTION', 0, '-653390385', 'ACTIVE', 4, 1, 2440, 1, 1015);
INSERT INTO `note` VALUES (4233, '2019-09-13 12:54:13', '2019-09-13 12:54:13', 'CC', 'L\'ENTREPRISE ET LA GESTION', 0, '-1217621587', 'ACTIVE', 6, 1, 2424, 1, 1015);
INSERT INTO `note` VALUES (4232, '2019-09-13 12:54:13', '2019-09-13 12:54:13', 'SN', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '-669739044', 'ACTIVE', 16, 1, 2439, 1, 1014);
INSERT INTO `note` VALUES (4231, '2019-09-13 12:54:13', '2019-09-13 12:54:13', 'CC', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '1915802393', 'ACTIVE', 18, 1, 2423, 1, 1014);
INSERT INTO `note` VALUES (4230, '2019-09-13 12:54:13', '2019-09-13 12:54:13', 'SN', 'ADMINISTRATION DES SYSTÈMES', 0, '1258251893', 'ACTIVE', 2, 1, 2438, 1, 1013);
INSERT INTO `note` VALUES (4229, '2019-09-13 12:54:13', '2019-09-13 12:54:13', 'CC', 'ADMINISTRATION DES SYSTÈMES', 0, '-186626364', 'ACTIVE', 5, 1, 2422, 1, 1013);
INSERT INTO `note` VALUES (4228, '2019-09-13 12:54:12', '2019-09-13 12:54:12', 'SN', 'ARCHITECTURES PROGRAMMABLES', 0, '1137480727', 'ACTIVE', 11, 1, 2446, 1, 1012);
INSERT INTO `note` VALUES (4227, '2019-09-13 12:54:12', '2019-09-13 12:54:12', 'CC', 'ARCHITECTURES PROGRAMMABLES', 0, '-1236872428', 'ACTIVE', 6, 1, 2445, 1, 1012);
INSERT INTO `note` VALUES (4226, '2019-09-13 12:54:12', '2019-09-13 12:54:12', 'SN', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '980674012', 'ACTIVE', 17, 1, 2437, 1, 1011);
INSERT INTO `note` VALUES (4225, '2019-09-13 12:54:12', '2019-09-13 12:54:12', 'CC', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '-1081877484', 'ACTIVE', 14, 1, 2421, 1, 1011);
INSERT INTO `note` VALUES (4224, '2019-09-13 12:54:12', '2019-09-13 12:54:12', 'SN', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '998998012', 'ACTIVE', 10, 1, 2436, 1, 1010);
INSERT INTO `note` VALUES (4222, '2019-09-13 12:54:11', '2019-09-13 12:54:11', 'SN', 'ALGÈBRE LINÉAIRE', 0, '-1165677261', 'ACTIVE', 12, 1, 2435, 1, 1009);
INSERT INTO `note` VALUES (4223, '2019-09-13 12:54:11', '2019-09-13 12:54:11', 'CC', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '90205713', 'ACTIVE', 2, 1, 2420, 1, 1010);
INSERT INTO `note` VALUES (4220, '2019-09-13 12:54:11', '2019-09-13 12:54:11', 'SN', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '939415982', 'ACTIVE', 2, 1, 2433, 1, 1007);
INSERT INTO `note` VALUES (4221, '2019-09-13 12:54:11', '2019-09-13 12:54:11', 'CC', 'ALGÈBRE LINÉAIRE', 0, '-1018599328', 'ACTIVE', 18, 1, 2419, 1, 1009);
INSERT INTO `note` VALUES (4219, '2019-09-13 12:54:11', '2019-09-13 12:54:11', 'CC', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '657165981', 'ACTIVE', 13, 1, 2418, 1, 1007);
INSERT INTO `note` VALUES (4218, '2019-09-13 12:54:10', '2019-09-13 12:54:10', 'SN', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '975008853', 'ACTIVE', 2, 1, 2432, 1, 1006);
INSERT INTO `note` VALUES (4217, '2019-09-13 12:54:10', '2019-09-13 12:54:10', 'CC', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '-232644851', 'ACTIVE', 11, 1, 2417, 1, 1006);
INSERT INTO `note` VALUES (4215, '2019-09-13 12:54:09', '2019-09-13 12:54:09', 'CC', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '910732707', 'ACTIVE', 2, 1, 2416, 1, 1005);
INSERT INTO `note` VALUES (4216, '2019-09-13 12:54:10', '2019-09-13 12:54:10', 'SN', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '144923880', 'ACTIVE', 14, 1, 2431, 1, 1005);
INSERT INTO `note` VALUES (4214, '2019-09-13 12:54:09', '2019-09-13 12:54:09', 'SN', 'RÉSEAUX D\'ENTREPRISE', 0, '-2008130604', 'ACTIVE', 12, 1, 2430, 1, 1004);
INSERT INTO `note` VALUES (4213, '2019-09-13 12:54:09', '2019-09-13 12:54:09', 'TP', 'RÉSEAUX D\'ENTREPRISE', 0, '1601988834', 'ACTIVE', 9, 1, 2444, 1, 1004);
INSERT INTO `note` VALUES (4211, '2019-09-13 12:54:09', '2019-09-13 12:54:09', 'SN', 'ARDUINO / RASPBERRY', 0, '530948189', 'ACTIVE', 3, 1, 2434, 1, 1008);
INSERT INTO `note` VALUES (4212, '2019-09-13 12:54:09', '2019-09-13 12:54:09', 'CC', 'RÉSEAUX D\'ENTREPRISE', 0, '1758369368', 'ACTIVE', 5, 1, 2415, 1, 1004);
INSERT INTO `note` VALUES (4210, '2019-09-13 12:54:09', '2019-09-13 12:54:09', 'SN', 'INTRODUCTION AU LANGAGE C', 0, '-962861377', 'ACTIVE', 7, 1, 2429, 1, 1003);
INSERT INTO `note` VALUES (4209, '2019-09-13 12:54:08', '2019-09-13 12:54:08', 'TP', 'INTRODUCTION AU LANGAGE C', 0, '280793099', 'ACTIVE', 8, 1, 2443, 1, 1003);
INSERT INTO `note` VALUES (4208, '2019-09-13 12:54:08', '2019-09-13 12:54:08', 'CC', 'INTRODUCTION AU LANGAGE C', 0, '-779176461', 'ACTIVE', 16, 1, 2414, 1, 1003);
INSERT INTO `note` VALUES (4207, '2019-09-13 12:54:08', '2019-09-13 12:54:08', 'SN', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '-1405467665', 'ACTIVE', 6, 1, 2428, 1, 1002);
INSERT INTO `note` VALUES (4206, '2019-09-13 12:54:08', '2019-09-13 12:54:08', 'CC', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '383120351', 'ACTIVE', 17, 1, 2413, 1, 1002);
INSERT INTO `note` VALUES (4205, '2019-09-13 12:54:08', '2019-09-13 12:54:08', 'SN', 'ELÉMENTS DE PROBABILITÉS', 0, '114919218', 'ACTIVE', 13, 1, 2427, 1, 1001);
INSERT INTO `note` VALUES (4204, '2019-09-13 12:54:08', '2019-09-13 12:54:08', 'CC', 'ELÉMENTS DE PROBABILITÉS', 0, '533358388', 'ACTIVE', 8, 1, 2412, 1, 1001);
INSERT INTO `note` VALUES (4203, '2019-09-13 12:54:08', '2019-09-13 12:54:08', 'SN', 'ANALYSE AVANCÉE', 0, '-2146952890', 'ACTIVE', 17, 1, 2426, 1, 1000);
INSERT INTO `note` VALUES (4202, '2019-09-13 12:54:08', '2019-09-13 12:54:08', 'CC', 'ANALYSE AVANCÉE', 0, '1750792873', 'ACTIVE', 18, 1, 2411, 1, 1000);
INSERT INTO `note` VALUES (4201, '2019-09-13 12:54:07', '2019-09-13 12:54:07', 'SN', 'ARDUINO / RASPBERRY', 0, '2138019349', 'ACTIVE', 8, 1, 2442, 1, 990);
INSERT INTO `note` VALUES (4200, '2019-09-13 12:54:07', '2019-09-13 12:54:07', 'SN', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '1496071148', 'ACTIVE', 5, 1, 2441, 1, 998);
INSERT INTO `note` VALUES (4199, '2019-09-13 12:54:07', '2019-09-13 12:54:07', 'CC', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '1370024025', 'ACTIVE', 14, 1, 2425, 1, 998);
INSERT INTO `note` VALUES (4198, '2019-09-13 12:54:07', '2019-09-13 12:54:07', 'SN', 'L\'ENTREPRISE ET LA GESTION', 0, '-810982958', 'ACTIVE', 3, 1, 2440, 1, 997);
INSERT INTO `note` VALUES (4197, '2019-09-13 12:54:07', '2019-09-13 12:54:07', 'CC', 'L\'ENTREPRISE ET LA GESTION', 0, '181300871', 'ACTIVE', 15, 1, 2424, 1, 997);
INSERT INTO `note` VALUES (4196, '2019-09-13 12:54:07', '2019-09-13 12:54:07', 'SN', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '47307048', 'ACTIVE', 18, 1, 2439, 1, 996);
INSERT INTO `note` VALUES (4195, '2019-09-13 12:54:06', '2019-09-13 12:54:06', 'CC', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '-1542518512', 'ACTIVE', 8, 1, 2423, 1, 996);
INSERT INTO `note` VALUES (4194, '2019-09-13 12:54:06', '2019-09-13 12:54:06', 'SN', 'ADMINISTRATION DES SYSTÈMES', 0, '-868966042', 'ACTIVE', 13, 1, 2438, 1, 995);
INSERT INTO `note` VALUES (4193, '2019-09-13 12:54:06', '2019-09-13 12:54:06', 'CC', 'ADMINISTRATION DES SYSTÈMES', 0, '1505401525', 'ACTIVE', 12, 1, 2422, 1, 995);
INSERT INTO `note` VALUES (4192, '2019-09-13 12:54:06', '2019-09-13 12:54:06', 'SN', 'ARCHITECTURES PROGRAMMABLES', 0, '841545794', 'ACTIVE', 14, 1, 2446, 1, 994);
INSERT INTO `note` VALUES (4191, '2019-09-13 12:54:06', '2019-09-13 12:54:06', 'CC', 'ARCHITECTURES PROGRAMMABLES', 0, '-110752027', 'ACTIVE', 9, 1, 2445, 1, 994);
INSERT INTO `note` VALUES (4190, '2019-09-13 12:54:06', '2019-09-13 12:54:06', 'SN', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '-518244248', 'ACTIVE', 17, 1, 2437, 1, 993);
INSERT INTO `note` VALUES (4189, '2019-09-13 12:54:05', '2019-09-13 12:54:05', 'CC', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '136969386', 'ACTIVE', 17, 1, 2421, 1, 993);
INSERT INTO `note` VALUES (4188, '2019-09-13 12:54:05', '2019-09-13 12:54:05', 'SN', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '739564098', 'ACTIVE', 11, 1, 2436, 1, 992);
INSERT INTO `note` VALUES (4187, '2019-09-13 12:54:05', '2019-09-13 12:54:05', 'CC', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '1080735092', 'ACTIVE', 14, 1, 2420, 1, 992);
INSERT INTO `note` VALUES (4186, '2019-09-13 12:54:05', '2019-09-13 12:54:05', 'SN', 'ALGÈBRE LINÉAIRE', 0, '-208868505', 'ACTIVE', 16, 1, 2435, 1, 991);
INSERT INTO `note` VALUES (4185, '2019-09-13 12:54:05', '2019-09-13 12:54:05', 'CC', 'ALGÈBRE LINÉAIRE', 0, '-308016709', 'ACTIVE', 9, 1, 2419, 1, 991);
INSERT INTO `note` VALUES (4184, '2019-09-13 12:54:05', '2019-09-13 12:54:05', 'SN', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '933481905', 'ACTIVE', 5, 1, 2433, 1, 989);
INSERT INTO `note` VALUES (4183, '2019-09-13 12:54:04', '2019-09-13 12:54:04', 'CC', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '922381368', 'ACTIVE', 16, 1, 2418, 1, 989);
INSERT INTO `note` VALUES (4182, '2019-09-13 12:54:04', '2019-09-13 12:54:04', 'SN', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '-51123889', 'ACTIVE', 4, 1, 2432, 1, 988);
INSERT INTO `note` VALUES (4180, '2019-09-13 12:54:04', '2019-09-13 12:54:04', 'SN', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '1845828754', 'ACTIVE', 2, 1, 2431, 1, 987);
INSERT INTO `note` VALUES (4181, '2019-09-13 12:54:04', '2019-09-13 12:54:04', 'CC', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '-1787720320', 'ACTIVE', 7, 1, 2417, 1, 988);
INSERT INTO `note` VALUES (4179, '2019-09-13 12:54:04', '2019-09-13 12:54:04', 'CC', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '-379560795', 'ACTIVE', 17, 1, 2416, 1, 987);
INSERT INTO `note` VALUES (4178, '2019-09-13 12:54:04', '2019-09-13 12:54:04', 'SN', 'RÉSEAUX D\'ENTREPRISE', 0, '-1902111277', 'ACTIVE', 16, 1, 2430, 1, 986);
INSERT INTO `note` VALUES (4177, '2019-09-13 12:54:03', '2019-09-13 12:54:03', 'TP', 'RÉSEAUX D\'ENTREPRISE', 0, '-1429307144', 'ACTIVE', 17, 1, 2444, 1, 986);
INSERT INTO `note` VALUES (4176, '2019-09-13 12:54:03', '2019-09-13 12:54:03', 'CC', 'RÉSEAUX D\'ENTREPRISE', 0, '-869287177', 'ACTIVE', 15, 1, 2415, 1, 986);
INSERT INTO `note` VALUES (4175, '2019-09-13 12:54:03', '2019-09-13 12:54:03', 'SN', 'ARDUINO / RASPBERRY', 0, '1786087541', 'ACTIVE', 2, 1, 2434, 1, 990);
INSERT INTO `note` VALUES (4174, '2019-09-13 12:54:03', '2019-09-13 12:54:03', 'SN', 'INTRODUCTION AU LANGAGE C', 0, '-1949103970', 'ACTIVE', 4, 1, 2429, 1, 985);
INSERT INTO `note` VALUES (4173, '2019-09-13 12:54:03', '2019-09-13 12:54:03', 'TP', 'INTRODUCTION AU LANGAGE C', 0, '-1252821110', 'ACTIVE', 16, 1, 2443, 1, 985);
INSERT INTO `note` VALUES (4172, '2019-09-13 12:54:03', '2019-09-13 12:54:03', 'CC', 'INTRODUCTION AU LANGAGE C', 0, '-1646465939', 'ACTIVE', 14, 1, 2414, 1, 985);
INSERT INTO `note` VALUES (4171, '2019-09-13 12:54:03', '2019-09-13 12:54:03', 'SN', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '842791507', 'ACTIVE', 8, 1, 2428, 1, 984);
INSERT INTO `note` VALUES (4170, '2019-09-13 12:54:02', '2019-09-13 12:54:02', 'CC', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '1262895451', 'ACTIVE', 19, 1, 2413, 1, 984);
INSERT INTO `note` VALUES (4168, '2019-09-13 12:54:02', '2019-09-13 12:54:02', 'CC', 'ELÉMENTS DE PROBABILITÉS', 0, '570460566', 'ACTIVE', 6, 1, 2412, 1, 983);
INSERT INTO `note` VALUES (4169, '2019-09-13 12:54:02', '2019-09-13 12:54:02', 'SN', 'ELÉMENTS DE PROBABILITÉS', 0, '376390331', 'ACTIVE', 18, 1, 2427, 1, 983);
INSERT INTO `note` VALUES (4166, '2019-09-13 12:54:02', '2019-09-13 12:54:02', 'CC', 'ANALYSE AVANCÉE', 0, '-1598207243', 'ACTIVE', 11, 1, 2411, 1, 982);
INSERT INTO `note` VALUES (4167, '2019-09-13 12:54:02', '2019-09-13 12:54:02', 'SN', 'ANALYSE AVANCÉE', 0, '497184793', 'ACTIVE', 15, 1, 2426, 1, 982);
INSERT INTO `note` VALUES (4165, '2019-09-13 12:54:01', '2019-09-13 12:54:01', 'SN', 'ARDUINO / RASPBERRY', 0, '-1900540863', 'ACTIVE', 2, 1, 2442, 1, 972);
INSERT INTO `note` VALUES (4164, '2019-09-13 12:54:01', '2019-09-13 12:54:01', 'SN', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '-466968145', 'ACTIVE', 4, 1, 2441, 1, 980);
INSERT INTO `note` VALUES (4163, '2019-09-13 12:54:01', '2019-09-13 12:54:01', 'CC', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '-275975924', 'ACTIVE', 7, 1, 2425, 1, 980);
INSERT INTO `note` VALUES (4161, '2019-09-13 12:54:01', '2019-09-13 12:54:01', 'CC', 'L\'ENTREPRISE ET LA GESTION', 0, '1302644146', 'ACTIVE', 17, 1, 2424, 1, 979);
INSERT INTO `note` VALUES (4162, '2019-09-13 12:54:01', '2019-09-13 12:54:01', 'SN', 'L\'ENTREPRISE ET LA GESTION', 0, '365254123', 'ACTIVE', 11, 1, 2440, 1, 979);
INSERT INTO `note` VALUES (4160, '2019-09-13 12:54:01', '2019-09-13 12:54:01', 'SN', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '-2067182645', 'ACTIVE', 14, 1, 2439, 1, 978);
INSERT INTO `note` VALUES (4159, '2019-09-13 12:54:00', '2019-09-13 12:54:00', 'CC', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '-1352785301', 'ACTIVE', 18, 1, 2423, 1, 978);
INSERT INTO `note` VALUES (4158, '2019-09-13 12:54:00', '2019-09-13 12:54:00', 'SN', 'ADMINISTRATION DES SYSTÈMES', 0, '-2123786240', 'ACTIVE', 8, 1, 2438, 1, 977);
INSERT INTO `note` VALUES (4157, '2019-09-13 12:54:00', '2019-09-13 12:54:00', 'CC', 'ADMINISTRATION DES SYSTÈMES', 0, '1677565531', 'ACTIVE', 3, 1, 2422, 1, 977);
INSERT INTO `note` VALUES (4156, '2019-09-13 12:54:00', '2019-09-13 12:54:00', 'SN', 'ARCHITECTURES PROGRAMMABLES', 0, '1758203767', 'ACTIVE', 2, 1, 2446, 1, 976);
INSERT INTO `note` VALUES (4155, '2019-09-13 12:54:00', '2019-09-13 12:54:00', 'CC', 'ARCHITECTURES PROGRAMMABLES', 0, '-1132454128', 'ACTIVE', 8, 1, 2445, 1, 976);
INSERT INTO `note` VALUES (4153, '2019-09-13 12:53:59', '2019-09-13 12:53:59', 'CC', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '-1373793511', 'ACTIVE', 4, 1, 2421, 1, 975);
INSERT INTO `note` VALUES (4154, '2019-09-13 12:53:59', '2019-09-13 12:53:59', 'SN', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '-1820252216', 'ACTIVE', 18, 1, 2437, 1, 975);
INSERT INTO `note` VALUES (4152, '2019-09-13 12:53:59', '2019-09-13 12:53:59', 'SN', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '-2091588457', 'ACTIVE', 11, 1, 2436, 1, 974);
INSERT INTO `note` VALUES (4151, '2019-09-13 12:53:58', '2019-09-13 12:53:58', 'CC', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '217723778', 'ACTIVE', 10, 1, 2420, 1, 974);
INSERT INTO `note` VALUES (4150, '2019-09-13 12:53:58', '2019-09-13 12:53:58', 'SN', 'ALGÈBRE LINÉAIRE', 0, '1044476343', 'ACTIVE', 15, 1, 2435, 1, 973);
INSERT INTO `note` VALUES (4149, '2019-09-13 12:53:58', '2019-09-13 12:53:58', 'CC', 'ALGÈBRE LINÉAIRE', 0, '-1014888696', 'ACTIVE', 17, 1, 2419, 1, 973);
INSERT INTO `note` VALUES (4148, '2019-09-13 12:53:58', '2019-09-13 12:53:58', 'SN', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '-1250096639', 'ACTIVE', 9, 1, 2433, 1, 971);
INSERT INTO `note` VALUES (4147, '2019-09-13 12:53:57', '2019-09-13 12:53:57', 'CC', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '350381897', 'ACTIVE', 3, 1, 2418, 1, 971);
INSERT INTO `note` VALUES (4146, '2019-09-13 12:53:57', '2019-09-13 12:53:57', 'SN', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '420650552', 'ACTIVE', 4, 1, 2432, 1, 970);
INSERT INTO `note` VALUES (4145, '2019-09-13 12:53:57', '2019-09-13 12:53:57', 'CC', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '-15307654', 'ACTIVE', 5, 1, 2417, 1, 970);
INSERT INTO `note` VALUES (4144, '2019-09-13 12:53:57', '2019-09-13 12:53:57', 'SN', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '-647404929', 'ACTIVE', 14, 1, 2431, 1, 969);
INSERT INTO `note` VALUES (4143, '2019-09-13 12:53:57', '2019-09-13 12:53:57', 'CC', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '-1845204415', 'ACTIVE', 2, 1, 2416, 1, 969);
INSERT INTO `note` VALUES (4141, '2019-09-13 12:53:57', '2019-09-13 12:53:57', 'TP', 'RÉSEAUX D\'ENTREPRISE', 0, '2071252815', 'ACTIVE', 9, 1, 2444, 1, 968);
INSERT INTO `note` VALUES (4142, '2019-09-13 12:53:57', '2019-09-13 12:53:57', 'SN', 'RÉSEAUX D\'ENTREPRISE', 0, '1451477939', 'ACTIVE', 6, 1, 2430, 1, 968);
INSERT INTO `note` VALUES (4140, '2019-09-13 12:53:56', '2019-09-13 12:53:56', 'CC', 'RÉSEAUX D\'ENTREPRISE', 0, '-1567488809', 'ACTIVE', 15, 1, 2415, 1, 968);
INSERT INTO `note` VALUES (4139, '2019-09-13 12:53:56', '2019-09-13 12:53:56', 'SN', 'ARDUINO / RASPBERRY', 0, '2049466452', 'ACTIVE', 18, 1, 2434, 1, 972);
INSERT INTO `note` VALUES (4138, '2019-09-13 12:53:56', '2019-09-13 12:53:56', 'SN', 'INTRODUCTION AU LANGAGE C', 0, '1575876391', 'ACTIVE', 2, 1, 2429, 1, 967);
INSERT INTO `note` VALUES (4137, '2019-09-13 12:53:56', '2019-09-13 12:53:56', 'TP', 'INTRODUCTION AU LANGAGE C', 0, '1317756724', 'ACTIVE', 8, 1, 2443, 1, 967);
INSERT INTO `note` VALUES (4135, '2019-09-13 12:53:56', '2019-09-13 12:53:56', 'SN', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '-835176533', 'ACTIVE', 17, 1, 2428, 1, 966);
INSERT INTO `note` VALUES (4136, '2019-09-13 12:53:56', '2019-09-13 12:53:56', 'CC', 'INTRODUCTION AU LANGAGE C', 0, '1492252534', 'ACTIVE', 8, 1, 2414, 1, 967);
INSERT INTO `note` VALUES (4134, '2019-09-13 12:53:56', '2019-09-13 12:53:56', 'CC', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '656428967', 'ACTIVE', 4, 1, 2413, 1, 966);
INSERT INTO `note` VALUES (4133, '2019-09-13 12:53:56', '2019-09-13 12:53:56', 'SN', 'ELÉMENTS DE PROBABILITÉS', 0, '-1151293854', 'ACTIVE', 8, 1, 2427, 1, 965);
INSERT INTO `note` VALUES (4132, '2019-09-13 12:53:55', '2019-09-13 12:53:55', 'CC', 'ELÉMENTS DE PROBABILITÉS', 0, '-629849146', 'ACTIVE', 3, 1, 2412, 1, 965);
INSERT INTO `note` VALUES (4131, '2019-09-13 12:53:55', '2019-09-13 12:53:55', 'SN', 'ANALYSE AVANCÉE', 0, '-825477730', 'ACTIVE', 7, 1, 2426, 1, 964);
INSERT INTO `note` VALUES (4130, '2019-09-13 12:53:55', '2019-09-13 12:53:55', 'CC', 'ANALYSE AVANCÉE', 0, '468580860', 'ACTIVE', 12, 1, 2411, 1, 964);
INSERT INTO `note` VALUES (4129, '2019-09-13 12:53:55', '2019-09-13 12:53:55', 'SN', 'ARDUINO / RASPBERRY', 0, '-100959897', 'ACTIVE', 6, 1, 2442, 1, 954);
INSERT INTO `note` VALUES (4128, '2019-09-13 12:53:55', '2019-09-13 12:53:55', 'SN', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '-1623169044', 'ACTIVE', 8, 1, 2441, 1, 962);
INSERT INTO `note` VALUES (4127, '2019-09-13 12:53:55', '2019-09-13 12:53:55', 'CC', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '1059455833', 'ACTIVE', 2, 1, 2425, 1, 962);
INSERT INTO `note` VALUES (4126, '2019-09-13 12:53:54', '2019-09-13 12:53:54', 'SN', 'L\'ENTREPRISE ET LA GESTION', 0, '470106254', 'ACTIVE', 15, 1, 2440, 1, 961);
INSERT INTO `note` VALUES (4125, '2019-09-13 12:53:54', '2019-09-13 12:53:54', 'CC', 'L\'ENTREPRISE ET LA GESTION', 0, '-1048131533', 'ACTIVE', 10, 1, 2424, 1, 961);
INSERT INTO `note` VALUES (4123, '2019-09-13 12:53:54', '2019-09-13 12:53:54', 'CC', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '-1548314208', 'ACTIVE', 3, 1, 2423, 1, 960);
INSERT INTO `note` VALUES (4124, '2019-09-13 12:53:54', '2019-09-13 12:53:54', 'SN', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '729837103', 'ACTIVE', 12, 1, 2439, 1, 960);
INSERT INTO `note` VALUES (4121, '2019-09-13 12:53:54', '2019-09-13 12:53:54', 'CC', 'ADMINISTRATION DES SYSTÈMES', 0, '-1377892773', 'ACTIVE', 15, 1, 2422, 1, 959);
INSERT INTO `note` VALUES (4122, '2019-09-13 12:53:54', '2019-09-13 12:53:54', 'SN', 'ADMINISTRATION DES SYSTÈMES', 0, '-966937440', 'ACTIVE', 8, 1, 2438, 1, 959);
INSERT INTO `note` VALUES (4120, '2019-09-13 12:53:53', '2019-09-13 12:53:53', 'SN', 'ARCHITECTURES PROGRAMMABLES', 0, '306139788', 'ACTIVE', 13, 1, 2446, 1, 958);
INSERT INTO `note` VALUES (4119, '2019-09-13 12:53:53', '2019-09-13 12:53:53', 'CC', 'ARCHITECTURES PROGRAMMABLES', 0, '1083133499', 'ACTIVE', 6, 1, 2445, 1, 958);
INSERT INTO `note` VALUES (4118, '2019-09-13 12:53:53', '2019-09-13 12:53:53', 'SN', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '-1467974823', 'ACTIVE', 7, 1, 2437, 1, 957);
INSERT INTO `note` VALUES (4117, '2019-09-13 12:53:53', '2019-09-13 12:53:53', 'CC', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '225146244', 'ACTIVE', 15, 1, 2421, 1, 957);
INSERT INTO `note` VALUES (4116, '2019-09-13 12:53:53', '2019-09-13 12:53:53', 'SN', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '1220847730', 'ACTIVE', 6, 1, 2436, 1, 956);
INSERT INTO `note` VALUES (4114, '2019-09-13 12:53:52', '2019-09-13 12:53:52', 'SN', 'ALGÈBRE LINÉAIRE', 0, '668228919', 'ACTIVE', 12, 1, 2435, 1, 955);
INSERT INTO `note` VALUES (4115, '2019-09-13 12:53:53', '2019-09-13 12:53:53', 'CC', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '-411582488', 'ACTIVE', 4, 1, 2420, 1, 956);
INSERT INTO `note` VALUES (4113, '2019-09-13 12:53:52', '2019-09-13 12:53:52', 'CC', 'ALGÈBRE LINÉAIRE', 0, '2138062180', 'ACTIVE', 2, 1, 2419, 1, 955);
INSERT INTO `note` VALUES (4112, '2019-09-13 12:53:52', '2019-09-13 12:53:52', 'SN', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '1068694056', 'ACTIVE', 5, 1, 2433, 1, 953);
INSERT INTO `note` VALUES (4110, '2019-09-13 12:53:52', '2019-09-13 12:53:52', 'SN', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '669922407', 'ACTIVE', 3, 1, 2432, 1, 952);
INSERT INTO `note` VALUES (4111, '2019-09-13 12:53:52', '2019-09-13 12:53:52', 'CC', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '-985382714', 'ACTIVE', 12, 1, 2418, 1, 953);
INSERT INTO `note` VALUES (4108, '2019-09-13 12:53:51', '2019-09-13 12:53:51', 'SN', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '405864086', 'ACTIVE', 15, 1, 2431, 1, 951);
INSERT INTO `note` VALUES (4109, '2019-09-13 12:53:51', '2019-09-13 12:53:51', 'CC', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '1367681838', 'ACTIVE', 15, 1, 2417, 1, 952);
INSERT INTO `note` VALUES (4106, '2019-09-13 12:53:51', '2019-09-13 12:53:51', 'SN', 'RÉSEAUX D\'ENTREPRISE', 0, '-1106221330', 'ACTIVE', 4, 1, 2430, 1, 950);
INSERT INTO `note` VALUES (4107, '2019-09-13 12:53:51', '2019-09-13 12:53:51', 'CC', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '-467816805', 'ACTIVE', 10, 1, 2416, 1, 951);
INSERT INTO `note` VALUES (4105, '2019-09-13 12:53:50', '2019-09-13 12:53:50', 'TP', 'RÉSEAUX D\'ENTREPRISE', 0, '1958891721', 'ACTIVE', 11, 1, 2444, 1, 950);
INSERT INTO `note` VALUES (4104, '2019-09-13 12:53:50', '2019-09-13 12:53:50', 'CC', 'RÉSEAUX D\'ENTREPRISE', 0, '1558060217', 'ACTIVE', 6, 1, 2415, 1, 950);
INSERT INTO `note` VALUES (4103, '2019-09-13 12:53:50', '2019-09-13 12:53:50', 'SN', 'ARDUINO / RASPBERRY', 0, '2001001183', 'ACTIVE', 16, 1, 2434, 1, 954);
INSERT INTO `note` VALUES (4102, '2019-09-13 12:53:49', '2019-09-13 12:53:49', 'SN', 'INTRODUCTION AU LANGAGE C', 0, '1878261636', 'ACTIVE', 17, 1, 2429, 1, 949);
INSERT INTO `note` VALUES (4101, '2019-09-13 12:53:49', '2019-09-13 12:53:49', 'TP', 'INTRODUCTION AU LANGAGE C', 0, '1157867245', 'ACTIVE', 8, 1, 2443, 1, 949);
INSERT INTO `note` VALUES (4099, '2019-09-13 12:53:49', '2019-09-13 12:53:49', 'SN', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '-2077631769', 'ACTIVE', 16, 1, 2428, 1, 948);
INSERT INTO `note` VALUES (4100, '2019-09-13 12:53:49', '2019-09-13 12:53:49', 'CC', 'INTRODUCTION AU LANGAGE C', 0, '1226065245', 'ACTIVE', 4, 1, 2414, 1, 949);
INSERT INTO `note` VALUES (4098, '2019-09-13 12:53:49', '2019-09-13 12:53:49', 'CC', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '1273146538', 'ACTIVE', 10, 1, 2413, 1, 948);
INSERT INTO `note` VALUES (4097, '2019-09-13 12:53:49', '2019-09-13 12:53:49', 'SN', 'ELÉMENTS DE PROBABILITÉS', 0, '-1932861921', 'ACTIVE', 8, 1, 2427, 1, 947);
INSERT INTO `note` VALUES (4095, '2019-09-13 12:53:48', '2019-09-13 12:53:48', 'SN', 'ANALYSE AVANCÉE', 0, '-551995184', 'ACTIVE', 3, 1, 2426, 1, 946);
INSERT INTO `note` VALUES (4096, '2019-09-13 12:53:48', '2019-09-13 12:53:48', 'CC', 'ELÉMENTS DE PROBABILITÉS', 0, '-1509502540', 'ACTIVE', 10, 1, 2412, 1, 947);
INSERT INTO `note` VALUES (4094, '2019-09-13 12:53:48', '2019-09-13 12:53:48', 'CC', 'ANALYSE AVANCÉE', 0, '597503386', 'ACTIVE', 4, 1, 2411, 1, 946);
INSERT INTO `note` VALUES (4093, '2019-09-13 12:53:48', '2019-09-13 12:53:48', 'SN', 'ARDUINO / RASPBERRY', 0, '-308237988', 'ACTIVE', 11, 1, 2442, 1, 936);
INSERT INTO `note` VALUES (4091, '2019-09-13 12:53:48', '2019-09-13 12:53:48', 'CC', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '-1868675086', 'ACTIVE', 10, 1, 2425, 1, 944);
INSERT INTO `note` VALUES (4092, '2019-09-13 12:53:48', '2019-09-13 12:53:48', 'SN', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '482227021', 'ACTIVE', 7, 1, 2441, 1, 944);
INSERT INTO `note` VALUES (4089, '2019-09-13 12:53:48', '2019-09-13 12:53:48', 'CC', 'L\'ENTREPRISE ET LA GESTION', 0, '-215895384', 'ACTIVE', 4, 1, 2424, 1, 943);
INSERT INTO `note` VALUES (4090, '2019-09-13 12:53:48', '2019-09-13 12:53:48', 'SN', 'L\'ENTREPRISE ET LA GESTION', 0, '37988442', 'ACTIVE', 14, 1, 2440, 1, 943);
INSERT INTO `note` VALUES (4088, '2019-09-13 12:53:47', '2019-09-13 12:53:47', 'SN', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '230609560', 'ACTIVE', 11, 1, 2439, 1, 942);
INSERT INTO `note` VALUES (4087, '2019-09-13 12:53:47', '2019-09-13 12:53:47', 'CC', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '-2044006455', 'ACTIVE', 17, 1, 2423, 1, 942);
INSERT INTO `note` VALUES (4086, '2019-09-13 12:53:47', '2019-09-13 12:53:47', 'SN', 'ADMINISTRATION DES SYSTÈMES', 0, '-1893884936', 'ACTIVE', 4, 1, 2438, 1, 941);
INSERT INTO `note` VALUES (4085, '2019-09-13 12:53:47', '2019-09-13 12:53:47', 'CC', 'ADMINISTRATION DES SYSTÈMES', 0, '-815136618', 'ACTIVE', 12, 1, 2422, 1, 941);
INSERT INTO `note` VALUES (4084, '2019-09-13 12:53:47', '2019-09-13 12:53:47', 'SN', 'ARCHITECTURES PROGRAMMABLES', 0, '-750059117', 'ACTIVE', 17, 1, 2446, 1, 940);
INSERT INTO `note` VALUES (4083, '2019-09-13 12:53:47', '2019-09-13 12:53:47', 'CC', 'ARCHITECTURES PROGRAMMABLES', 0, '-98080623', 'ACTIVE', 19, 1, 2445, 1, 940);
INSERT INTO `note` VALUES (4082, '2019-09-13 12:53:46', '2019-09-13 12:53:46', 'SN', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '-2001420044', 'ACTIVE', 2, 1, 2437, 1, 939);
INSERT INTO `note` VALUES (4081, '2019-09-13 12:53:46', '2019-09-13 12:53:46', 'CC', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '-877033088', 'ACTIVE', 6, 1, 2421, 1, 939);
INSERT INTO `note` VALUES (4080, '2019-09-13 12:53:46', '2019-09-13 12:53:46', 'SN', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '-10339987', 'ACTIVE', 11, 1, 2436, 1, 938);
INSERT INTO `note` VALUES (4079, '2019-09-13 12:53:46', '2019-09-13 12:53:46', 'CC', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '-1184228307', 'ACTIVE', 7, 1, 2420, 1, 938);
INSERT INTO `note` VALUES (4078, '2019-09-13 12:53:46', '2019-09-13 12:53:46', 'SN', 'ALGÈBRE LINÉAIRE', 0, '-635671144', 'ACTIVE', 3, 1, 2435, 1, 937);
INSERT INTO `note` VALUES (4077, '2019-09-13 12:53:46', '2019-09-13 12:53:46', 'CC', 'ALGÈBRE LINÉAIRE', 0, '1169299419', 'ACTIVE', 18, 1, 2419, 1, 937);
INSERT INTO `note` VALUES (4075, '2019-09-13 12:53:45', '2019-09-13 12:53:45', 'CC', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '582650337', 'ACTIVE', 18, 1, 2418, 1, 935);
INSERT INTO `note` VALUES (4076, '2019-09-13 12:53:45', '2019-09-13 12:53:45', 'SN', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '1692021184', 'ACTIVE', 8, 1, 2433, 1, 935);
INSERT INTO `note` VALUES (4074, '2019-09-13 12:53:45', '2019-09-13 12:53:45', 'SN', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '73750987', 'ACTIVE', 15, 1, 2432, 1, 934);
INSERT INTO `note` VALUES (4073, '2019-09-13 12:53:45', '2019-09-13 12:53:45', 'CC', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '-587709386', 'ACTIVE', 10, 1, 2417, 1, 934);
INSERT INTO `note` VALUES (4072, '2019-09-13 12:53:45', '2019-09-13 12:53:45', 'SN', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '-1830471971', 'ACTIVE', 14, 1, 2431, 1, 933);
INSERT INTO `note` VALUES (4070, '2019-09-13 12:53:44', '2019-09-13 12:53:44', 'SN', 'RÉSEAUX D\'ENTREPRISE', 0, '-1577872240', 'ACTIVE', 16, 1, 2430, 1, 932);
INSERT INTO `note` VALUES (4071, '2019-09-13 12:53:45', '2019-09-13 12:53:45', 'CC', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '600317396', 'ACTIVE', 11, 1, 2416, 1, 933);
INSERT INTO `note` VALUES (4069, '2019-09-13 12:53:44', '2019-09-13 12:53:44', 'TP', 'RÉSEAUX D\'ENTREPRISE', 0, '-1108513297', 'ACTIVE', 18, 1, 2444, 1, 932);
INSERT INTO `note` VALUES (4068, '2019-09-13 12:53:44', '2019-09-13 12:53:44', 'CC', 'RÉSEAUX D\'ENTREPRISE', 0, '926000475', 'ACTIVE', 9, 1, 2415, 1, 932);
INSERT INTO `note` VALUES (4067, '2019-09-13 12:53:44', '2019-09-13 12:53:44', 'SN', 'ARDUINO / RASPBERRY', 0, '641053242', 'ACTIVE', 7, 1, 2434, 1, 936);
INSERT INTO `note` VALUES (4066, '2019-09-13 12:53:44', '2019-09-13 12:53:44', 'SN', 'INTRODUCTION AU LANGAGE C', 0, '1401348726', 'ACTIVE', 18, 1, 2429, 1, 931);
INSERT INTO `note` VALUES (4064, '2019-09-13 12:53:43', '2019-09-13 12:53:43', 'CC', 'INTRODUCTION AU LANGAGE C', 0, '930833115', 'ACTIVE', 9, 1, 2414, 1, 931);
INSERT INTO `note` VALUES (4065, '2019-09-13 12:53:43', '2019-09-13 12:53:43', 'TP', 'INTRODUCTION AU LANGAGE C', 0, '697594149', 'ACTIVE', 17, 1, 2443, 1, 931);
INSERT INTO `note` VALUES (4062, '2019-09-13 12:53:43', '2019-09-13 12:53:43', 'CC', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '1492339526', 'ACTIVE', 19, 1, 2413, 1, 930);
INSERT INTO `note` VALUES (4063, '2019-09-13 12:53:43', '2019-09-13 12:53:43', 'SN', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '983999336', 'ACTIVE', 16, 1, 2428, 1, 930);
INSERT INTO `note` VALUES (4061, '2019-09-13 12:53:42', '2019-09-13 12:53:42', 'SN', 'ELÉMENTS DE PROBABILITÉS', 0, '53588073', 'ACTIVE', 8, 1, 2427, 1, 929);
INSERT INTO `note` VALUES (4060, '2019-09-13 12:53:42', '2019-09-13 12:53:42', 'CC', 'ELÉMENTS DE PROBABILITÉS', 0, '-1287602093', 'ACTIVE', 19, 1, 2412, 1, 929);
INSERT INTO `note` VALUES (4058, '2019-09-13 12:53:41', '2019-09-13 12:53:41', 'CC', 'ANALYSE AVANCÉE', 0, '-2024740589', 'ACTIVE', 11, 1, 2411, 1, 928);
INSERT INTO `note` VALUES (4059, '2019-09-13 12:53:42', '2019-09-13 12:53:42', 'SN', 'ANALYSE AVANCÉE', 0, '-1256323196', 'ACTIVE', 10, 1, 2426, 1, 928);
INSERT INTO `note` VALUES (4057, '2019-09-13 12:53:41', '2019-09-13 12:53:41', 'SN', 'ARDUINO / RASPBERRY', 0, '-1931314129', 'ACTIVE', 6, 1, 2442, 1, 918);
INSERT INTO `note` VALUES (4056, '2019-09-13 12:53:41', '2019-09-13 12:53:41', 'SN', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '-1688187423', 'ACTIVE', 14, 1, 2441, 1, 926);
INSERT INTO `note` VALUES (4055, '2019-09-13 12:53:41', '2019-09-13 12:53:41', 'CC', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '-388914675', 'ACTIVE', 2, 1, 2425, 1, 926);
INSERT INTO `note` VALUES (4054, '2019-09-13 12:53:41', '2019-09-13 12:53:41', 'SN', 'L\'ENTREPRISE ET LA GESTION', 0, '-1041037413', 'ACTIVE', 8, 1, 2440, 1, 925);
INSERT INTO `note` VALUES (4052, '2019-09-13 12:53:41', '2019-09-13 12:53:41', 'SN', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '820908302', 'ACTIVE', 3, 1, 2439, 1, 924);
INSERT INTO `note` VALUES (4053, '2019-09-13 12:53:41', '2019-09-13 12:53:41', 'CC', 'L\'ENTREPRISE ET LA GESTION', 0, '1204482905', 'ACTIVE', 2, 1, 2424, 1, 925);
INSERT INTO `note` VALUES (4050, '2019-09-13 12:53:40', '2019-09-13 12:53:40', 'SN', 'ADMINISTRATION DES SYSTÈMES', 0, '344304878', 'ACTIVE', 14, 1, 2438, 1, 923);
INSERT INTO `note` VALUES (4051, '2019-09-13 12:53:41', '2019-09-13 12:53:41', 'CC', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '-223829424', 'ACTIVE', 15, 1, 2423, 1, 924);
INSERT INTO `note` VALUES (4049, '2019-09-13 12:53:40', '2019-09-13 12:53:40', 'CC', 'ADMINISTRATION DES SYSTÈMES', 0, '34780856', 'ACTIVE', 13, 1, 2422, 1, 923);
INSERT INTO `note` VALUES (4048, '2019-09-13 12:53:40', '2019-09-13 12:53:40', 'SN', 'ARCHITECTURES PROGRAMMABLES', 0, '-1740164707', 'ACTIVE', 11, 1, 2446, 1, 922);
INSERT INTO `note` VALUES (4047, '2019-09-13 12:53:40', '2019-09-13 12:53:40', 'CC', 'ARCHITECTURES PROGRAMMABLES', 0, '1705798383', 'ACTIVE', 17, 1, 2445, 1, 922);
INSERT INTO `note` VALUES (4046, '2019-09-13 12:53:40', '2019-09-13 12:53:40', 'SN', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '-1717978876', 'ACTIVE', 14, 1, 2437, 1, 921);
INSERT INTO `note` VALUES (4045, '2019-09-13 12:53:40', '2019-09-13 12:53:40', 'CC', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '-656463844', 'ACTIVE', 18, 1, 2421, 1, 921);
INSERT INTO `note` VALUES (4044, '2019-09-13 12:53:40', '2019-09-13 12:53:40', 'SN', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '-1141606342', 'ACTIVE', 9, 1, 2436, 1, 920);
INSERT INTO `note` VALUES (4043, '2019-09-13 12:53:40', '2019-09-13 12:53:40', 'CC', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '-722245713', 'ACTIVE', 7, 1, 2420, 1, 920);
INSERT INTO `note` VALUES (4041, '2019-09-13 12:53:40', '2019-09-13 12:53:40', 'CC', 'ALGÈBRE LINÉAIRE', 0, '501956567', 'ACTIVE', 13, 1, 2419, 1, 919);
INSERT INTO `note` VALUES (4042, '2019-09-13 12:53:40', '2019-09-13 12:53:40', 'SN', 'ALGÈBRE LINÉAIRE', 0, '-927689368', 'ACTIVE', 8, 1, 2435, 1, 919);
INSERT INTO `note` VALUES (4039, '2019-09-13 12:53:40', '2019-09-13 12:53:40', 'CC', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '-479746270', 'ACTIVE', 10, 1, 2418, 1, 917);
INSERT INTO `note` VALUES (4040, '2019-09-13 12:53:40', '2019-09-13 12:53:40', 'SN', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '-1567175944', 'ACTIVE', 16, 1, 2433, 1, 917);
INSERT INTO `note` VALUES (4038, '2019-09-13 12:53:40', '2019-09-13 12:53:40', 'SN', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '1216421096', 'ACTIVE', 7, 1, 2432, 1, 916);
INSERT INTO `note` VALUES (4037, '2019-09-13 12:53:40', '2019-09-13 12:53:40', 'CC', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '596956200', 'ACTIVE', 12, 1, 2417, 1, 916);
INSERT INTO `note` VALUES (4036, '2019-09-13 12:53:39', '2019-09-13 12:53:39', 'SN', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '728047552', 'ACTIVE', 8, 1, 2431, 1, 915);
INSERT INTO `note` VALUES (4035, '2019-09-13 12:53:39', '2019-09-13 12:53:39', 'CC', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '-2038238692', 'ACTIVE', 2, 1, 2416, 1, 915);
INSERT INTO `note` VALUES (4033, '2019-09-13 12:53:39', '2019-09-13 12:53:39', 'TP', 'RÉSEAUX D\'ENTREPRISE', 0, '-1045458462', 'ACTIVE', 14, 1, 2444, 1, 914);
INSERT INTO `note` VALUES (4034, '2019-09-13 12:53:39', '2019-09-13 12:53:39', 'SN', 'RÉSEAUX D\'ENTREPRISE', 0, '-1171441643', 'ACTIVE', 16, 1, 2430, 1, 914);
INSERT INTO `note` VALUES (4032, '2019-09-13 12:53:39', '2019-09-13 12:53:39', 'CC', 'RÉSEAUX D\'ENTREPRISE', 0, '-1056628382', 'ACTIVE', 5, 1, 2415, 1, 914);
INSERT INTO `note` VALUES (4031, '2019-09-13 12:53:39', '2019-09-13 12:53:39', 'SN', 'ARDUINO / RASPBERRY', 0, '-1069369378', 'ACTIVE', 8, 1, 2434, 1, 918);
INSERT INTO `note` VALUES (4030, '2019-09-13 12:53:39', '2019-09-13 12:53:39', 'SN', 'INTRODUCTION AU LANGAGE C', 0, '-510673113', 'ACTIVE', 8, 1, 2429, 1, 913);
INSERT INTO `note` VALUES (4029, '2019-09-13 12:53:39', '2019-09-13 12:53:39', 'TP', 'INTRODUCTION AU LANGAGE C', 0, '1477487070', 'ACTIVE', 14, 1, 2443, 1, 913);
INSERT INTO `note` VALUES (4028, '2019-09-13 12:53:39', '2019-09-13 12:53:39', 'CC', 'INTRODUCTION AU LANGAGE C', 0, '-1711572323', 'ACTIVE', 11, 1, 2414, 1, 913);
INSERT INTO `note` VALUES (4027, '2019-09-13 12:53:39', '2019-09-13 12:53:39', 'SN', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '-958352089', 'ACTIVE', 7, 1, 2428, 1, 912);
INSERT INTO `note` VALUES (4026, '2019-09-13 12:53:39', '2019-09-13 12:53:39', 'CC', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '-479945984', 'ACTIVE', 7, 1, 2413, 1, 912);
INSERT INTO `note` VALUES (4025, '2019-09-13 12:53:39', '2019-09-13 12:53:39', 'SN', 'ELÉMENTS DE PROBABILITÉS', 0, '1825354288', 'ACTIVE', 9, 1, 2427, 1, 911);
INSERT INTO `note` VALUES (4024, '2019-09-13 12:53:38', '2019-09-13 12:53:38', 'CC', 'ELÉMENTS DE PROBABILITÉS', 0, '1489430452', 'ACTIVE', 19, 1, 2412, 1, 911);
INSERT INTO `note` VALUES (4023, '2019-09-13 12:53:38', '2019-09-13 12:53:38', 'SN', 'ANALYSE AVANCÉE', 0, '-412095070', 'ACTIVE', 14, 1, 2426, 1, 910);
INSERT INTO `note` VALUES (4021, '2019-09-13 12:53:38', '2019-09-13 12:53:38', 'SN', 'ARDUINO / RASPBERRY', 0, '-1196040349', 'ACTIVE', 16, 1, 2442, 1, 900);
INSERT INTO `note` VALUES (4022, '2019-09-13 12:53:38', '2019-09-13 12:53:38', 'CC', 'ANALYSE AVANCÉE', 0, '1282013945', 'ACTIVE', 13, 1, 2411, 1, 910);
INSERT INTO `note` VALUES (4019, '2019-09-13 12:53:38', '2019-09-13 12:53:38', 'CC', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '-693631791', 'ACTIVE', 16, 1, 2425, 1, 908);
INSERT INTO `note` VALUES (4020, '2019-09-13 12:53:38', '2019-09-13 12:53:38', 'SN', 'ETHIQUE ET DÉVELOPPEMENT 2', 0, '-1989594949', 'ACTIVE', 13, 1, 2441, 1, 908);
INSERT INTO `note` VALUES (4018, '2019-09-13 12:53:38', '2019-09-13 12:53:38', 'SN', 'L\'ENTREPRISE ET LA GESTION', 0, '675121919', 'ACTIVE', 18, 1, 2440, 1, 907);
INSERT INTO `note` VALUES (4017, '2019-09-13 12:53:38', '2019-09-13 12:53:38', 'CC', 'L\'ENTREPRISE ET LA GESTION', 0, '156690491', 'ACTIVE', 4, 1, 2424, 1, 907);
INSERT INTO `note` VALUES (4015, '2019-09-13 12:53:38', '2019-09-13 12:53:38', 'CC', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '-1551553336', 'ACTIVE', 7, 1, 2423, 1, 906);
INSERT INTO `note` VALUES (4016, '2019-09-13 12:53:38', '2019-09-13 12:53:38', 'SN', 'ANGLAIS NIVEAU PRATIQUE B2', 0, '1254073899', 'ACTIVE', 16, 1, 2439, 1, 906);
INSERT INTO `note` VALUES (4014, '2019-09-13 12:53:37', '2019-09-13 12:53:37', 'SN', 'ADMINISTRATION DES SYSTÈMES', 0, '522288254', 'ACTIVE', 14, 1, 2438, 1, 905);
INSERT INTO `note` VALUES (4012, '2019-09-13 12:53:37', '2019-09-13 12:53:37', 'SN', 'ARCHITECTURES PROGRAMMABLES', 0, '-1063946814', 'ACTIVE', 2, 1, 2446, 1, 904);
INSERT INTO `note` VALUES (4013, '2019-09-13 12:53:37', '2019-09-13 12:53:37', 'CC', 'ADMINISTRATION DES SYSTÈMES', 0, '1027337197', 'ACTIVE', 11, 1, 2422, 1, 905);
INSERT INTO `note` VALUES (4011, '2019-09-13 12:53:37', '2019-09-13 12:53:37', 'CC', 'ARCHITECTURES PROGRAMMABLES', 0, '-438367109', 'ACTIVE', 13, 1, 2445, 1, 904);
INSERT INTO `note` VALUES (4010, '2019-09-13 12:53:37', '2019-09-13 12:53:37', 'SN', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '679939273', 'ACTIVE', 15, 1, 2437, 1, 903);
INSERT INTO `note` VALUES (4009, '2019-09-13 12:53:37', '2019-09-13 12:53:37', 'CC', 'ANALYSE ET TRAITEMENT DU SIGNAL', 0, '1062384163', 'ACTIVE', 10, 1, 2421, 1, 903);
INSERT INTO `note` VALUES (4008, '2019-09-13 12:53:37', '2019-09-13 12:53:37', 'SN', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '1664628427', 'ACTIVE', 16, 1, 2436, 1, 902);
INSERT INTO `note` VALUES (4007, '2019-09-13 12:53:37', '2019-09-13 12:53:37', 'CC', 'CHAMPS, ONDES, VIBRATIONS, PROPAGATION', 0, '-1480594641', 'ACTIVE', 5, 1, 2420, 1, 902);
INSERT INTO `note` VALUES (4006, '2019-09-13 12:53:36', '2019-09-13 12:53:36', 'SN', 'ALGÈBRE LINÉAIRE', 0, '-1740070952', 'ACTIVE', 13, 1, 2435, 1, 901);
INSERT INTO `note` VALUES (4004, '2019-09-13 12:53:36', '2019-09-13 12:53:36', 'SN', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '590405294', 'ACTIVE', 8, 1, 2433, 1, 899);
INSERT INTO `note` VALUES (4005, '2019-09-13 12:53:36', '2019-09-13 12:53:36', 'CC', 'ALGÈBRE LINÉAIRE', 0, '1333543917', 'ACTIVE', 7, 1, 2419, 1, 901);
INSERT INTO `note` VALUES (4002, '2019-09-13 12:53:36', '2019-09-13 12:53:36', 'SN', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '-1627515761', 'ACTIVE', 4, 1, 2432, 1, 898);
INSERT INTO `note` VALUES (4003, '2019-09-13 12:53:36', '2019-09-13 12:53:36', 'CC', 'ETHIQUE ET DÉVELOPPEMENT1', 0, '-1871448336', 'ACTIVE', 16, 1, 2418, 1, 899);
INSERT INTO `note` VALUES (4000, '2019-09-13 12:53:36', '2019-09-13 12:53:36', 'SN', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '-1984182120', 'ACTIVE', 6, 1, 2431, 1, 897);
INSERT INTO `note` VALUES (4001, '2019-09-13 12:53:36', '2019-09-13 12:53:36', 'CC', 'ÉCONOMIE GÉNÉRALE POUR L’INGÉNIEUR', 0, '-1151417806', 'ACTIVE', 11, 1, 2417, 1, 898);
INSERT INTO `note` VALUES (3999, '2019-09-13 12:53:36', '2019-09-13 12:53:36', 'CC', 'ANGLAIS NIVEAU PRATIQUE B1/B2', 0, '-25030951', 'ACTIVE', 6, 1, 2416, 1, 897);
INSERT INTO `note` VALUES (3998, '2019-09-13 12:53:35', '2019-09-13 12:53:35', 'SN', 'RÉSEAUX D\'ENTREPRISE', 0, '-206467805', 'ACTIVE', 2, 1, 2430, 1, 896);
INSERT INTO `note` VALUES (3997, '2019-09-13 12:53:35', '2019-09-13 12:53:35', 'TP', 'RÉSEAUX D\'ENTREPRISE', 0, '-1709198218', 'ACTIVE', 16, 1, 2444, 1, 896);
INSERT INTO `note` VALUES (3996, '2019-09-13 12:53:35', '2019-09-13 12:53:35', 'CC', 'RÉSEAUX D\'ENTREPRISE', 0, '1368691617', 'ACTIVE', 8, 1, 2415, 1, 896);
INSERT INTO `note` VALUES (3994, '2019-09-13 12:53:35', '2019-09-13 12:53:35', 'SN', 'INTRODUCTION AU LANGAGE C', 0, '1607079906', 'ACTIVE', 12, 1, 2429, 1, 895);
INSERT INTO `note` VALUES (3995, '2019-09-13 12:53:35', '2019-09-13 12:53:35', 'SN', 'ARDUINO / RASPBERRY', 0, '-1687072647', 'ACTIVE', 19, 1, 2434, 1, 900);
INSERT INTO `note` VALUES (3992, '2019-09-13 12:53:34', '2019-09-13 12:53:34', 'CC', 'INTRODUCTION AU LANGAGE C', 0, '-1994157807', 'ACTIVE', 19, 1, 2414, 1, 895);
INSERT INTO `note` VALUES (3993, '2019-09-13 12:53:35', '2019-09-13 12:53:35', 'TP', 'INTRODUCTION AU LANGAGE C', 0, '1378705012', 'ACTIVE', 14, 1, 2443, 1, 895);
INSERT INTO `note` VALUES (3991, '2019-09-13 12:53:34', '2019-09-13 12:53:34', 'SN', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '-1546356079', 'ACTIVE', 19, 1, 2428, 1, 894);
INSERT INTO `note` VALUES (3989, '2019-09-13 12:53:34', '2019-09-13 12:53:34', 'SN', 'ELÉMENTS DE PROBABILITÉS', 0, '-595531144', 'ACTIVE', 8, 1, 2427, 1, 893);
INSERT INTO `note` VALUES (3990, '2019-09-13 12:53:34', '2019-09-13 12:53:34', 'CC', 'ELÉMENTS DE BASE EN ÉLECTRONIQUE', 0, '577988688', 'ACTIVE', 7, 1, 2413, 1, 894);
INSERT INTO `note` VALUES (3988, '2019-09-13 12:53:34', '2019-09-13 12:53:34', 'CC', 'ELÉMENTS DE PROBABILITÉS', 0, '-367839051', 'ACTIVE', 11, 1, 2412, 1, 893);
INSERT INTO `note` VALUES (3986, '2019-09-13 12:53:33', '2019-09-13 12:53:33', 'CC', 'ANALYSE AVANCÉE', 0, '-723294081', 'ACTIVE', 6, 1, 2411, 1, 892);
INSERT INTO `note` VALUES (3987, '2019-09-13 12:53:33', '2019-09-13 12:53:33', 'SN', 'ANALYSE AVANCÉE', 0, '1659940945', 'ACTIVE', 4, 1, 2426, 1, 892);
INSERT INTO `note` VALUES (3984, '2019-09-13 12:52:10', '2019-09-13 12:52:10', 'CC', 'RÉFLEXION HUMAINE1', 0, '1313636127', 'ACTIVE', 10, 1, 2394, 1, 883);
INSERT INTO `note` VALUES (3985, '2019-09-13 12:52:10', '2019-09-13 12:52:10', 'SN', 'RÉFLEXION HUMAINE1', 0, '1532388320', 'ACTIVE', 12, 1, 2410, 1, 883);
INSERT INTO `note` VALUES (3983, '2019-09-13 12:52:10', '2019-09-13 12:52:10', 'SN', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '-301822515', 'ACTIVE', 10, 1, 2409, 1, 890);
INSERT INTO `note` VALUES (3981, '2019-09-13 12:52:09', '2019-09-13 12:52:09', 'SN', 'ANGLAIS REMISE À NIVEAU A2', 0, '-161005858', 'ACTIVE', 16, 1, 2408, 1, 889);
INSERT INTO `note` VALUES (3982, '2019-09-13 12:52:09', '2019-09-13 12:52:09', 'CC', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '-307970429', 'ACTIVE', 6, 1, 2393, 1, 890);
INSERT INTO `note` VALUES (3980, '2019-09-13 12:52:09', '2019-09-13 12:52:09', 'CC', 'ANGLAIS REMISE À NIVEAU A2', 0, '1819255222', 'ACTIVE', 7, 1, 2392, 1, 889);
INSERT INTO `note` VALUES (3979, '2019-09-13 12:52:09', '2019-09-13 12:52:09', 'SN', 'ARDUINO / RASPBERRY', 0, '-277914133', 'ACTIVE', 14, 1, 2407, 1, 884);
INSERT INTO `note` VALUES (3978, '2019-09-13 12:52:09', '2019-09-13 12:52:09', 'SN', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '-124224949', 'ACTIVE', 6, 1, 2406, 1, 887);
INSERT INTO `note` VALUES (3976, '2019-09-13 12:52:09', '2019-09-13 12:52:09', 'SN', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '80620657', 'ACTIVE', 4, 1, 2405, 1, 886);
INSERT INTO `note` VALUES (3977, '2019-09-13 12:52:09', '2019-09-13 12:52:09', 'CC', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '-137640693', 'ACTIVE', 6, 1, 2391, 1, 887);
INSERT INTO `note` VALUES (3974, '2019-09-13 12:52:08', '2019-09-13 12:52:08', 'SN', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '1801625384', 'ACTIVE', 5, 1, 2404, 1, 885);
INSERT INTO `note` VALUES (3975, '2019-09-13 12:52:09', '2019-09-13 12:52:09', 'CC', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '-1505974300', 'ACTIVE', 8, 1, 2390, 1, 886);
INSERT INTO `note` VALUES (3973, '2019-09-13 12:52:08', '2019-09-13 12:52:08', 'CC', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-227654000', 'ACTIVE', 4, 1, 2389, 1, 885);
INSERT INTO `note` VALUES (3971, '2019-09-13 12:52:08', '2019-09-13 12:52:08', 'SN', 'RÉFLEXION HUMAINE1', 0, '-1178464050', 'ACTIVE', 19, 1, 2402, 1, 883);
INSERT INTO `note` VALUES (3972, '2019-09-13 12:52:08', '2019-09-13 12:52:08', 'SN', 'ARDUINO / RASPBERRY', 0, '1724601945', 'ACTIVE', 13, 1, 2403, 1, 884);
INSERT INTO `note` VALUES (3970, '2019-09-13 12:52:08', '2019-09-13 12:52:08', 'CC', 'RÉFLEXION HUMAINE1', 0, '39290533', 'ACTIVE', 2, 1, 2388, 1, 883);
INSERT INTO `note` VALUES (3969, '2019-09-13 12:52:08', '2019-09-13 12:52:08', 'SN', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '-659423012', 'ACTIVE', 2, 1, 2401, 1, 882);
INSERT INTO `note` VALUES (3968, '2019-09-13 12:52:08', '2019-09-13 12:52:08', 'CC', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '-380536198', 'ACTIVE', 20, 1, 2387, 1, 882);
INSERT INTO `note` VALUES (3967, '2019-09-13 12:52:07', '2019-09-13 12:52:07', 'SN', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '705532837', 'ACTIVE', 8, 1, 2400, 1, 881);
INSERT INTO `note` VALUES (3965, '2019-09-13 12:52:07', '2019-09-13 12:52:07', 'SN', 'STAGE TECHNIQUE', 0, '-769229179', 'ACTIVE', 8, 1, 2399, 1, 880);
INSERT INTO `note` VALUES (3966, '2019-09-13 12:52:07', '2019-09-13 12:52:07', 'CC', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '1492017201', 'ACTIVE', 3, 1, 2386, 1, 881);
INSERT INTO `note` VALUES (3964, '2019-09-13 12:52:07', '2019-09-13 12:52:07', 'SN', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '-842577768', 'ACTIVE', 2, 1, 2398, 1, 879);
INSERT INTO `note` VALUES (3963, '2019-09-13 12:52:07', '2019-09-13 12:52:07', 'CC', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '-438055996', 'ACTIVE', 3, 1, 2385, 1, 879);
INSERT INTO `note` VALUES (3962, '2019-09-13 12:52:07', '2019-09-13 12:52:07', 'SN', 'ALGORITHMIQUE', 0, '-137607053', 'ACTIVE', 5, 1, 2397, 1, 878);
INSERT INTO `note` VALUES (3961, '2019-09-13 12:52:06', '2019-09-13 12:52:06', 'CC', 'ALGORITHMIQUE', 0, '-300002141', 'ACTIVE', 17, 1, 2384, 1, 878);
INSERT INTO `note` VALUES (3960, '2019-09-13 12:52:06', '2019-09-13 12:52:06', 'SN', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '1555355778', 'ACTIVE', 12, 1, 2396, 1, 877);
INSERT INTO `note` VALUES (3959, '2019-09-13 12:52:06', '2019-09-13 12:52:06', 'CC', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '681150239', 'ACTIVE', 15, 1, 2383, 1, 877);
INSERT INTO `note` VALUES (3958, '2019-09-13 12:52:06', '2019-09-13 12:52:06', 'SN', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '-1852308538', 'ACTIVE', 3, 1, 2395, 1, 876);
INSERT INTO `note` VALUES (3956, '2019-09-13 12:52:06', '2019-09-13 12:52:06', 'SN', 'RÉFLEXION HUMAINE1', 0, '1801617581', 'ACTIVE', 18, 1, 2410, 1, 867);
INSERT INTO `note` VALUES (3957, '2019-09-13 12:52:06', '2019-09-13 12:52:06', 'CC', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '-1415495670', 'ACTIVE', 13, 1, 2382, 1, 876);
INSERT INTO `note` VALUES (3955, '2019-09-13 12:52:05', '2019-09-13 12:52:05', 'CC', 'RÉFLEXION HUMAINE1', 0, '1426935772', 'ACTIVE', 9, 1, 2394, 1, 867);
INSERT INTO `note` VALUES (3954, '2019-09-13 12:52:05', '2019-09-13 12:52:05', 'SN', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '-745854072', 'ACTIVE', 18, 1, 2409, 1, 874);
INSERT INTO `note` VALUES (3953, '2019-09-13 12:52:05', '2019-09-13 12:52:05', 'CC', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '1847205530', 'ACTIVE', 9, 1, 2393, 1, 874);
INSERT INTO `note` VALUES (3952, '2019-09-13 12:52:05', '2019-09-13 12:52:05', 'SN', 'ANGLAIS REMISE À NIVEAU A2', 0, '1083688167', 'ACTIVE', 13, 1, 2408, 1, 873);
INSERT INTO `note` VALUES (3951, '2019-09-13 12:52:04', '2019-09-13 12:52:04', 'CC', 'ANGLAIS REMISE À NIVEAU A2', 0, '1128943816', 'ACTIVE', 10, 1, 2392, 1, 873);
INSERT INTO `note` VALUES (3950, '2019-09-13 12:52:04', '2019-09-13 12:52:04', 'SN', 'ARDUINO / RASPBERRY', 0, '606776056', 'ACTIVE', 10, 1, 2407, 1, 868);
INSERT INTO `note` VALUES (3949, '2019-09-13 12:52:04', '2019-09-13 12:52:04', 'SN', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '1454844434', 'ACTIVE', 13, 1, 2406, 1, 871);
INSERT INTO `note` VALUES (3948, '2019-09-13 12:52:03', '2019-09-13 12:52:03', 'CC', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '-857775238', 'ACTIVE', 10, 1, 2391, 1, 871);
INSERT INTO `note` VALUES (3946, '2019-09-13 12:52:03', '2019-09-13 12:52:03', 'CC', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '-1621630230', 'ACTIVE', 12, 1, 2390, 1, 870);
INSERT INTO `note` VALUES (3947, '2019-09-13 12:52:03', '2019-09-13 12:52:03', 'SN', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '828621079', 'ACTIVE', 16, 1, 2405, 1, 870);
INSERT INTO `note` VALUES (3945, '2019-09-13 12:52:03', '2019-09-13 12:52:03', 'SN', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '476726495', 'ACTIVE', 13, 1, 2404, 1, 869);
INSERT INTO `note` VALUES (3944, '2019-09-13 12:52:03', '2019-09-13 12:52:03', 'CC', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '685649637', 'ACTIVE', 12, 1, 2389, 1, 869);
INSERT INTO `note` VALUES (3942, '2019-09-13 12:52:02', '2019-09-13 12:52:02', 'SN', 'RÉFLEXION HUMAINE1', 0, '657183476', 'ACTIVE', 14, 1, 2402, 1, 867);
INSERT INTO `note` VALUES (3943, '2019-09-13 12:52:02', '2019-09-13 12:52:02', 'SN', 'ARDUINO / RASPBERRY', 0, '-844667014', 'ACTIVE', 20, 1, 2403, 1, 868);
INSERT INTO `note` VALUES (3941, '2019-09-13 12:52:02', '2019-09-13 12:52:02', 'CC', 'RÉFLEXION HUMAINE1', 0, '-569625991', 'ACTIVE', 13, 1, 2388, 1, 867);
INSERT INTO `note` VALUES (3940, '2019-09-13 12:52:02', '2019-09-13 12:52:02', 'SN', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '1810924850', 'ACTIVE', 14, 1, 2401, 1, 866);
INSERT INTO `note` VALUES (3939, '2019-09-13 12:52:02', '2019-09-13 12:52:02', 'CC', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '-1823562272', 'ACTIVE', 19, 1, 2387, 1, 866);
INSERT INTO `note` VALUES (3938, '2019-09-13 12:52:02', '2019-09-13 12:52:02', 'SN', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '1477710637', 'ACTIVE', 18, 1, 2400, 1, 865);
INSERT INTO `note` VALUES (3937, '2019-09-13 12:52:02', '2019-09-13 12:52:02', 'CC', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '-1878881341', 'ACTIVE', 17, 1, 2386, 1, 865);
INSERT INTO `note` VALUES (3936, '2019-09-13 12:52:02', '2019-09-13 12:52:02', 'SN', 'STAGE TECHNIQUE', 0, '1067333209', 'ACTIVE', 20, 1, 2399, 1, 864);
INSERT INTO `note` VALUES (3935, '2019-09-13 12:52:02', '2019-09-13 12:52:02', 'SN', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '1015149144', 'ACTIVE', 19, 1, 2398, 1, 863);
INSERT INTO `note` VALUES (3934, '2019-09-13 12:52:02', '2019-09-13 12:52:02', 'CC', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '1487669681', 'ACTIVE', 13, 1, 2385, 1, 863);
INSERT INTO `note` VALUES (3933, '2019-09-13 12:52:02', '2019-09-13 12:52:02', 'SN', 'ALGORITHMIQUE', 0, '-195871429', 'ACTIVE', 14, 1, 2397, 1, 862);
INSERT INTO `note` VALUES (3932, '2019-09-13 12:52:01', '2019-09-13 12:52:01', 'CC', 'ALGORITHMIQUE', 0, '1812881605', 'ACTIVE', 13, 1, 2384, 1, 862);
INSERT INTO `note` VALUES (3931, '2019-09-13 12:52:01', '2019-09-13 12:52:01', 'SN', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-1965653302', 'ACTIVE', 7, 1, 2396, 1, 861);
INSERT INTO `note` VALUES (3930, '2019-09-13 12:52:01', '2019-09-13 12:52:01', 'CC', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '1361511003', 'ACTIVE', 8, 1, 2383, 1, 861);
INSERT INTO `note` VALUES (3929, '2019-09-13 12:52:01', '2019-09-13 12:52:01', 'SN', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '878116369', 'ACTIVE', 3, 1, 2395, 1, 860);
INSERT INTO `note` VALUES (3928, '2019-09-13 12:52:01', '2019-09-13 12:52:01', 'CC', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '-1614801206', 'ACTIVE', 12, 1, 2382, 1, 860);
INSERT INTO `note` VALUES (3926, '2019-09-13 12:52:01', '2019-09-13 12:52:01', 'CC', 'RÉFLEXION HUMAINE1', 0, '865601786', 'ACTIVE', 3, 1, 2394, 1, 851);
INSERT INTO `note` VALUES (3927, '2019-09-13 12:52:01', '2019-09-13 12:52:01', 'SN', 'RÉFLEXION HUMAINE1', 0, '-534115033', 'ACTIVE', 19, 1, 2410, 1, 851);
INSERT INTO `note` VALUES (3925, '2019-09-13 12:52:01', '2019-09-13 12:52:01', 'SN', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '303846118', 'ACTIVE', 3, 1, 2409, 1, 858);
INSERT INTO `note` VALUES (3923, '2019-09-13 12:52:00', '2019-09-13 12:52:00', 'SN', 'ANGLAIS REMISE À NIVEAU A2', 0, '1117032290', 'ACTIVE', 20, 1, 2408, 1, 857);
INSERT INTO `note` VALUES (3924, '2019-09-13 12:52:01', '2019-09-13 12:52:01', 'CC', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '-1138352297', 'ACTIVE', 19, 1, 2393, 1, 858);
INSERT INTO `note` VALUES (3921, '2019-09-13 12:52:00', '2019-09-13 12:52:00', 'SN', 'ARDUINO / RASPBERRY', 0, '160113499', 'ACTIVE', 4, 1, 2407, 1, 852);
INSERT INTO `note` VALUES (3922, '2019-09-13 12:52:00', '2019-09-13 12:52:00', 'CC', 'ANGLAIS REMISE À NIVEAU A2', 0, '1339255138', 'ACTIVE', 2, 1, 2392, 1, 857);
INSERT INTO `note` VALUES (3920, '2019-09-13 12:52:00', '2019-09-13 12:52:00', 'SN', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '-2082514035', 'ACTIVE', 4, 1, 2406, 1, 855);
INSERT INTO `note` VALUES (3919, '2019-09-13 12:52:00', '2019-09-13 12:52:00', 'CC', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '-1713904524', 'ACTIVE', 8, 1, 2391, 1, 855);
INSERT INTO `note` VALUES (3918, '2019-09-13 12:52:00', '2019-09-13 12:52:00', 'SN', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '-1293868731', 'ACTIVE', 4, 1, 2405, 1, 854);
INSERT INTO `note` VALUES (3917, '2019-09-13 12:52:00', '2019-09-13 12:52:00', 'CC', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '1662996209', 'ACTIVE', 20, 1, 2390, 1, 854);
INSERT INTO `note` VALUES (3915, '2019-09-13 12:51:59', '2019-09-13 12:51:59', 'CC', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '1264768402', 'ACTIVE', 10, 1, 2389, 1, 853);
INSERT INTO `note` VALUES (3916, '2019-09-13 12:52:00', '2019-09-13 12:52:00', 'SN', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '1628465115', 'ACTIVE', 20, 1, 2404, 1, 853);
INSERT INTO `note` VALUES (3914, '2019-09-13 12:51:59', '2019-09-13 12:51:59', 'SN', 'ARDUINO / RASPBERRY', 0, '1661246606', 'ACTIVE', 16, 1, 2403, 1, 852);
INSERT INTO `note` VALUES (3913, '2019-09-13 12:51:59', '2019-09-13 12:51:59', 'SN', 'RÉFLEXION HUMAINE1', 0, '50795665', 'ACTIVE', 10, 1, 2402, 1, 851);
INSERT INTO `note` VALUES (3912, '2019-09-13 12:51:59', '2019-09-13 12:51:59', 'CC', 'RÉFLEXION HUMAINE1', 0, '550714089', 'ACTIVE', 20, 1, 2388, 1, 851);
INSERT INTO `note` VALUES (3911, '2019-09-13 12:51:59', '2019-09-13 12:51:59', 'SN', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '-1963449641', 'ACTIVE', 6, 1, 2401, 1, 850);
INSERT INTO `note` VALUES (3910, '2019-09-13 12:51:59', '2019-09-13 12:51:59', 'CC', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '-1454123131', 'ACTIVE', 6, 1, 2387, 1, 850);
INSERT INTO `note` VALUES (3909, '2019-09-13 12:51:59', '2019-09-13 12:51:59', 'SN', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '1941682491', 'ACTIVE', 8, 1, 2400, 1, 849);
INSERT INTO `note` VALUES (3908, '2019-09-13 12:51:58', '2019-09-13 12:51:58', 'CC', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '-740174302', 'ACTIVE', 15, 1, 2386, 1, 849);
INSERT INTO `note` VALUES (3907, '2019-09-13 12:51:58', '2019-09-13 12:51:58', 'SN', 'STAGE TECHNIQUE', 0, '1040410139', 'ACTIVE', 19, 1, 2399, 1, 848);
INSERT INTO `note` VALUES (3906, '2019-09-13 12:51:58', '2019-09-13 12:51:58', 'SN', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '1796745596', 'ACTIVE', 9, 1, 2398, 1, 847);
INSERT INTO `note` VALUES (3905, '2019-09-13 12:51:58', '2019-09-13 12:51:58', 'CC', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '427660183', 'ACTIVE', 18, 1, 2385, 1, 847);
INSERT INTO `note` VALUES (3904, '2019-09-13 12:51:58', '2019-09-13 12:51:58', 'SN', 'ALGORITHMIQUE', 0, '283478451', 'ACTIVE', 14, 1, 2397, 1, 846);
INSERT INTO `note` VALUES (3903, '2019-09-13 12:51:58', '2019-09-13 12:51:58', 'CC', 'ALGORITHMIQUE', 0, '368208367', 'ACTIVE', 13, 1, 2384, 1, 846);
INSERT INTO `note` VALUES (3902, '2019-09-13 12:51:57', '2019-09-13 12:51:57', 'SN', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '488806565', 'ACTIVE', 13, 1, 2396, 1, 845);
INSERT INTO `note` VALUES (3901, '2019-09-13 12:51:57', '2019-09-13 12:51:57', 'CC', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-1637979620', 'ACTIVE', 18, 1, 2383, 1, 845);
INSERT INTO `note` VALUES (3900, '2019-09-13 12:51:57', '2019-09-13 12:51:57', 'SN', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '1990140064', 'ACTIVE', 4, 1, 2395, 1, 844);
INSERT INTO `note` VALUES (3899, '2019-09-13 12:51:57', '2019-09-13 12:51:57', 'CC', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '-2101395884', 'ACTIVE', 17, 1, 2382, 1, 844);
INSERT INTO `note` VALUES (3897, '2019-09-13 12:51:57', '2019-09-13 12:51:57', 'CC', 'RÉFLEXION HUMAINE1', 0, '-319613415', 'ACTIVE', 12, 1, 2394, 1, 835);
INSERT INTO `note` VALUES (3898, '2019-09-13 12:51:57', '2019-09-13 12:51:57', 'SN', 'RÉFLEXION HUMAINE1', 0, '1841879303', 'ACTIVE', 3, 1, 2410, 1, 835);
INSERT INTO `note` VALUES (3895, '2019-09-13 12:51:56', '2019-09-13 12:51:56', 'CC', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '-1247742725', 'ACTIVE', 17, 1, 2393, 1, 842);
INSERT INTO `note` VALUES (3896, '2019-09-13 12:51:56', '2019-09-13 12:51:56', 'SN', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '2046729899', 'ACTIVE', 20, 1, 2409, 1, 842);
INSERT INTO `note` VALUES (3894, '2019-09-13 12:51:56', '2019-09-13 12:51:56', 'SN', 'ANGLAIS REMISE À NIVEAU A2', 0, '-612095982', 'ACTIVE', 13, 1, 2408, 1, 841);
INSERT INTO `note` VALUES (3893, '2019-09-13 12:51:56', '2019-09-13 12:51:56', 'CC', 'ANGLAIS REMISE À NIVEAU A2', 0, '-2134886096', 'ACTIVE', 20, 1, 2392, 1, 841);
INSERT INTO `note` VALUES (3891, '2019-09-13 12:51:56', '2019-09-13 12:51:56', 'SN', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '1062572534', 'ACTIVE', 14, 1, 2406, 1, 839);
INSERT INTO `note` VALUES (3892, '2019-09-13 12:51:56', '2019-09-13 12:51:56', 'SN', 'ARDUINO / RASPBERRY', 0, '1694245873', 'ACTIVE', 8, 1, 2407, 1, 836);
INSERT INTO `note` VALUES (3890, '2019-09-13 12:51:55', '2019-09-13 12:51:55', 'CC', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '1808044506', 'ACTIVE', 8, 1, 2391, 1, 839);
INSERT INTO `note` VALUES (3888, '2019-09-13 12:51:55', '2019-09-13 12:51:55', 'CC', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '-1003418853', 'ACTIVE', 17, 1, 2390, 1, 838);
INSERT INTO `note` VALUES (3889, '2019-09-13 12:51:55', '2019-09-13 12:51:55', 'SN', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '120010731', 'ACTIVE', 4, 1, 2405, 1, 838);
INSERT INTO `note` VALUES (3887, '2019-09-13 12:51:55', '2019-09-13 12:51:55', 'SN', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-699833837', 'ACTIVE', 7, 1, 2404, 1, 837);
INSERT INTO `note` VALUES (3886, '2019-09-13 12:51:55', '2019-09-13 12:51:55', 'CC', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '695442943', 'ACTIVE', 19, 1, 2389, 1, 837);
INSERT INTO `note` VALUES (3885, '2019-09-13 12:51:54', '2019-09-13 12:51:54', 'SN', 'ARDUINO / RASPBERRY', 0, '1890360745', 'ACTIVE', 17, 1, 2403, 1, 836);
INSERT INTO `note` VALUES (3884, '2019-09-13 12:51:54', '2019-09-13 12:51:54', 'SN', 'RÉFLEXION HUMAINE1', 0, '-1394928476', 'ACTIVE', 19, 1, 2402, 1, 835);
INSERT INTO `note` VALUES (3883, '2019-09-13 12:51:54', '2019-09-13 12:51:54', 'CC', 'RÉFLEXION HUMAINE1', 0, '-1294412852', 'ACTIVE', 10, 1, 2388, 1, 835);
INSERT INTO `note` VALUES (3882, '2019-09-13 12:51:54', '2019-09-13 12:51:54', 'SN', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '546600232', 'ACTIVE', 16, 1, 2401, 1, 834);
INSERT INTO `note` VALUES (3881, '2019-09-13 12:51:53', '2019-09-13 12:51:53', 'CC', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '1660108621', 'ACTIVE', 17, 1, 2387, 1, 834);
INSERT INTO `note` VALUES (3880, '2019-09-13 12:51:53', '2019-09-13 12:51:53', 'SN', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '1839725725', 'ACTIVE', 13, 1, 2400, 1, 833);
INSERT INTO `note` VALUES (3879, '2019-09-13 12:51:53', '2019-09-13 12:51:53', 'CC', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '1628723906', 'ACTIVE', 5, 1, 2386, 1, 833);
INSERT INTO `note` VALUES (3878, '2019-09-13 12:51:52', '2019-09-13 12:51:52', 'SN', 'STAGE TECHNIQUE', 0, '-1835691591', 'ACTIVE', 18, 1, 2399, 1, 832);
INSERT INTO `note` VALUES (3877, '2019-09-13 12:51:52', '2019-09-13 12:51:52', 'SN', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '-2124504395', 'ACTIVE', 12, 1, 2398, 1, 831);
INSERT INTO `note` VALUES (3876, '2019-09-13 12:51:52', '2019-09-13 12:51:52', 'CC', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '1567505591', 'ACTIVE', 10, 1, 2385, 1, 831);
INSERT INTO `note` VALUES (3875, '2019-09-13 12:51:52', '2019-09-13 12:51:52', 'SN', 'ALGORITHMIQUE', 0, '-89546624', 'ACTIVE', 13, 1, 2397, 1, 830);
INSERT INTO `note` VALUES (3874, '2019-09-13 12:51:52', '2019-09-13 12:51:52', 'CC', 'ALGORITHMIQUE', 0, '-142676101', 'ACTIVE', 5, 1, 2384, 1, 830);
INSERT INTO `note` VALUES (3872, '2019-09-13 12:51:52', '2019-09-13 12:51:52', 'CC', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-436455835', 'ACTIVE', 3, 1, 2383, 1, 829);
INSERT INTO `note` VALUES (3873, '2019-09-13 12:51:52', '2019-09-13 12:51:52', 'SN', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '1085204551', 'ACTIVE', 8, 1, 2396, 1, 829);
INSERT INTO `note` VALUES (3871, '2019-09-13 12:51:52', '2019-09-13 12:51:52', 'SN', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '576590203', 'ACTIVE', 12, 1, 2395, 1, 828);
INSERT INTO `note` VALUES (3870, '2019-09-13 12:51:52', '2019-09-13 12:51:52', 'CC', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '-174714106', 'ACTIVE', 4, 1, 2382, 1, 828);
INSERT INTO `note` VALUES (3869, '2019-09-13 12:51:51', '2019-09-13 12:51:52', 'SN', 'RÉFLEXION HUMAINE1', 0, '744721602', 'ACTIVE', 16, 1, 2410, 1, 819);
INSERT INTO `note` VALUES (3867, '2019-09-13 12:51:51', '2019-09-13 12:51:51', 'SN', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '-801654461', 'ACTIVE', 19, 1, 2409, 1, 826);
INSERT INTO `note` VALUES (3868, '2019-09-13 12:51:51', '2019-09-13 12:51:51', 'CC', 'RÉFLEXION HUMAINE1', 0, '-894359221', 'ACTIVE', 7, 1, 2394, 1, 819);
INSERT INTO `note` VALUES (3865, '2019-09-13 12:51:51', '2019-09-13 12:51:51', 'SN', 'ANGLAIS REMISE À NIVEAU A2', 0, '246747359', 'ACTIVE', 16, 1, 2408, 1, 825);
INSERT INTO `note` VALUES (3866, '2019-09-13 12:51:51', '2019-09-13 12:51:51', 'CC', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '-1942563138', 'ACTIVE', 19, 1, 2393, 1, 826);
INSERT INTO `note` VALUES (3863, '2019-09-13 12:51:51', '2019-09-13 12:51:51', 'SN', 'ARDUINO / RASPBERRY', 0, '1632099275', 'ACTIVE', 13, 1, 2407, 1, 820);
INSERT INTO `note` VALUES (3864, '2019-09-13 12:51:51', '2019-09-13 12:51:51', 'CC', 'ANGLAIS REMISE À NIVEAU A2', 0, '1951721548', 'ACTIVE', 17, 1, 2392, 1, 825);
INSERT INTO `note` VALUES (3862, '2019-09-13 12:51:51', '2019-09-13 12:51:51', 'SN', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '-831542992', 'ACTIVE', 20, 1, 2406, 1, 823);
INSERT INTO `note` VALUES (3861, '2019-09-13 12:51:51', '2019-09-13 12:51:51', 'CC', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '-46819396', 'ACTIVE', 2, 1, 2391, 1, 823);
INSERT INTO `note` VALUES (3859, '2019-09-13 12:51:50', '2019-09-13 12:51:50', 'CC', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '-1851100409', 'ACTIVE', 9, 1, 2390, 1, 822);
INSERT INTO `note` VALUES (3860, '2019-09-13 12:51:51', '2019-09-13 12:51:51', 'SN', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '-851948311', 'ACTIVE', 5, 1, 2405, 1, 822);
INSERT INTO `note` VALUES (3858, '2019-09-13 12:51:50', '2019-09-13 12:51:50', 'SN', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '748224120', 'ACTIVE', 13, 1, 2404, 1, 821);
INSERT INTO `note` VALUES (3857, '2019-09-13 12:51:50', '2019-09-13 12:51:50', 'CC', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '57152934', 'ACTIVE', 6, 1, 2389, 1, 821);
INSERT INTO `note` VALUES (3856, '2019-09-13 12:51:50', '2019-09-13 12:51:50', 'SN', 'ARDUINO / RASPBERRY', 0, '-497614276', 'ACTIVE', 2, 1, 2403, 1, 820);
INSERT INTO `note` VALUES (3855, '2019-09-13 12:51:50', '2019-09-13 12:51:50', 'SN', 'RÉFLEXION HUMAINE1', 0, '1787877462', 'ACTIVE', 10, 1, 2402, 1, 819);
INSERT INTO `note` VALUES (3854, '2019-09-13 12:51:50', '2019-09-13 12:51:50', 'CC', 'RÉFLEXION HUMAINE1', 0, '1365198407', 'ACTIVE', 20, 1, 2388, 1, 819);
INSERT INTO `note` VALUES (3853, '2019-09-13 12:51:50', '2019-09-13 12:51:50', 'SN', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '2144621387', 'ACTIVE', 15, 1, 2401, 1, 818);
INSERT INTO `note` VALUES (3852, '2019-09-13 12:51:50', '2019-09-13 12:51:50', 'CC', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '518795962', 'ACTIVE', 20, 1, 2387, 1, 818);
INSERT INTO `note` VALUES (3851, '2019-09-13 12:51:50', '2019-09-13 12:51:50', 'SN', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '692732377', 'ACTIVE', 16, 1, 2400, 1, 817);
INSERT INTO `note` VALUES (3850, '2019-09-13 12:51:49', '2019-09-13 12:51:49', 'CC', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '-337870042', 'ACTIVE', 20, 1, 2386, 1, 817);
INSERT INTO `note` VALUES (3849, '2019-09-13 12:51:49', '2019-09-13 12:51:49', 'SN', 'STAGE TECHNIQUE', 0, '854830986', 'ACTIVE', 11, 1, 2399, 1, 816);
INSERT INTO `note` VALUES (3848, '2019-09-13 12:51:49', '2019-09-13 12:51:49', 'SN', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '1146859179', 'ACTIVE', 15, 1, 2398, 1, 815);
INSERT INTO `note` VALUES (3846, '2019-09-13 12:51:49', '2019-09-13 12:51:49', 'SN', 'ALGORITHMIQUE', 0, '2074641920', 'ACTIVE', 2, 1, 2397, 1, 814);
INSERT INTO `note` VALUES (3847, '2019-09-13 12:51:49', '2019-09-13 12:51:49', 'CC', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '-1603851659', 'ACTIVE', 11, 1, 2385, 1, 815);
INSERT INTO `note` VALUES (3845, '2019-09-13 12:51:49', '2019-09-13 12:51:49', 'CC', 'ALGORITHMIQUE', 0, '-235308725', 'ACTIVE', 4, 1, 2384, 1, 814);
INSERT INTO `note` VALUES (3844, '2019-09-13 12:51:49', '2019-09-13 12:51:49', 'SN', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-1741103945', 'ACTIVE', 15, 1, 2396, 1, 813);
INSERT INTO `note` VALUES (3843, '2019-09-13 12:51:49', '2019-09-13 12:51:49', 'CC', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-315305895', 'ACTIVE', 4, 1, 2383, 1, 813);
INSERT INTO `note` VALUES (3842, '2019-09-13 12:51:49', '2019-09-13 12:51:49', 'SN', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '1914576285', 'ACTIVE', 14, 1, 2395, 1, 812);
INSERT INTO `note` VALUES (3841, '2019-09-13 12:51:49', '2019-09-13 12:51:49', 'CC', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '-866517851', 'ACTIVE', 20, 1, 2382, 1, 812);
INSERT INTO `note` VALUES (3840, '2019-09-13 12:51:48', '2019-09-13 12:51:48', 'SN', 'RÉFLEXION HUMAINE1', 0, '1229041883', 'ACTIVE', 11, 1, 2410, 1, 803);
INSERT INTO `note` VALUES (3839, '2019-09-13 12:51:48', '2019-09-13 12:51:48', 'CC', 'RÉFLEXION HUMAINE1', 0, '-1979119170', 'ACTIVE', 12, 1, 2394, 1, 803);
INSERT INTO `note` VALUES (3838, '2019-09-13 12:51:48', '2019-09-13 12:51:48', 'SN', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '1961323350', 'ACTIVE', 16, 1, 2409, 1, 810);
INSERT INTO `note` VALUES (3836, '2019-09-13 12:51:48', '2019-09-13 12:51:48', 'SN', 'ANGLAIS REMISE À NIVEAU A2', 0, '-178841221', 'ACTIVE', 8, 1, 2408, 1, 809);
INSERT INTO `note` VALUES (3837, '2019-09-13 12:51:48', '2019-09-13 12:51:48', 'CC', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '547061116', 'ACTIVE', 3, 1, 2393, 1, 810);
INSERT INTO `note` VALUES (3835, '2019-09-13 12:51:48', '2019-09-13 12:51:48', 'CC', 'ANGLAIS REMISE À NIVEAU A2', 0, '-1568197446', 'ACTIVE', 9, 1, 2392, 1, 809);
INSERT INTO `note` VALUES (3834, '2019-09-13 12:51:48', '2019-09-13 12:51:48', 'SN', 'ARDUINO / RASPBERRY', 0, '735839164', 'ACTIVE', 5, 1, 2407, 1, 804);
INSERT INTO `note` VALUES (3833, '2019-09-13 12:51:48', '2019-09-13 12:51:48', 'SN', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '-561050328', 'ACTIVE', 3, 1, 2406, 1, 807);
INSERT INTO `note` VALUES (3831, '2019-09-13 12:51:47', '2019-09-13 12:51:47', 'SN', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '923647162', 'ACTIVE', 12, 1, 2405, 1, 806);
INSERT INTO `note` VALUES (3832, '2019-09-13 12:51:48', '2019-09-13 12:51:48', 'CC', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '-1749360449', 'ACTIVE', 20, 1, 2391, 1, 807);
INSERT INTO `note` VALUES (3830, '2019-09-13 12:51:47', '2019-09-13 12:51:47', 'CC', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '-1672198634', 'ACTIVE', 9, 1, 2390, 1, 806);
INSERT INTO `note` VALUES (3829, '2019-09-13 12:51:47', '2019-09-13 12:51:47', 'SN', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '1055056667', 'ACTIVE', 16, 1, 2404, 1, 805);
INSERT INTO `note` VALUES (3828, '2019-09-13 12:51:47', '2019-09-13 12:51:47', 'CC', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '835821209', 'ACTIVE', 8, 1, 2389, 1, 805);
INSERT INTO `note` VALUES (3827, '2019-09-13 12:51:47', '2019-09-13 12:51:47', 'SN', 'ARDUINO / RASPBERRY', 0, '-1249232479', 'ACTIVE', 17, 1, 2403, 1, 804);
INSERT INTO `note` VALUES (3825, '2019-09-13 12:51:47', '2019-09-13 12:51:47', 'CC', 'RÉFLEXION HUMAINE1', 0, '-226692120', 'ACTIVE', 6, 1, 2388, 1, 803);
INSERT INTO `note` VALUES (3826, '2019-09-13 12:51:47', '2019-09-13 12:51:47', 'SN', 'RÉFLEXION HUMAINE1', 0, '1798140604', 'ACTIVE', 18, 1, 2402, 1, 803);
INSERT INTO `note` VALUES (3824, '2019-09-13 12:51:46', '2019-09-13 12:51:46', 'SN', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '-585232069', 'ACTIVE', 14, 1, 2401, 1, 802);
INSERT INTO `note` VALUES (3823, '2019-09-13 12:51:46', '2019-09-13 12:51:46', 'CC', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '765057536', 'ACTIVE', 12, 1, 2387, 1, 802);
INSERT INTO `note` VALUES (3822, '2019-09-13 12:51:46', '2019-09-13 12:51:46', 'SN', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '-459895725', 'ACTIVE', 3, 1, 2400, 1, 801);
INSERT INTO `note` VALUES (3821, '2019-09-13 12:51:46', '2019-09-13 12:51:46', 'CC', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '-932746346', 'ACTIVE', 5, 1, 2386, 1, 801);
INSERT INTO `note` VALUES (3820, '2019-09-13 12:51:46', '2019-09-13 12:51:46', 'SN', 'STAGE TECHNIQUE', 0, '978753837', 'ACTIVE', 16, 1, 2399, 1, 800);
INSERT INTO `note` VALUES (3819, '2019-09-13 12:51:46', '2019-09-13 12:51:46', 'SN', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '-1688915370', 'ACTIVE', 8, 1, 2398, 1, 799);
INSERT INTO `note` VALUES (3818, '2019-09-13 12:51:46', '2019-09-13 12:51:46', 'CC', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '-156234697', 'ACTIVE', 16, 1, 2385, 1, 799);
INSERT INTO `note` VALUES (3817, '2019-09-13 12:51:45', '2019-09-13 12:51:45', 'SN', 'ALGORITHMIQUE', 0, '-2126279376', 'ACTIVE', 8, 1, 2397, 1, 798);
INSERT INTO `note` VALUES (3815, '2019-09-13 12:51:45', '2019-09-13 12:51:45', 'SN', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-529377991', 'ACTIVE', 15, 1, 2396, 1, 797);
INSERT INTO `note` VALUES (3816, '2019-09-13 12:51:45', '2019-09-13 12:51:45', 'CC', 'ALGORITHMIQUE', 0, '-888034896', 'ACTIVE', 14, 1, 2384, 1, 798);
INSERT INTO `note` VALUES (3814, '2019-09-13 12:51:45', '2019-09-13 12:51:45', 'CC', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '1941955162', 'ACTIVE', 16, 1, 2383, 1, 797);
INSERT INTO `note` VALUES (3813, '2019-09-13 12:51:45', '2019-09-13 12:51:45', 'SN', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '-1239713070', 'ACTIVE', 14, 1, 2395, 1, 796);
INSERT INTO `note` VALUES (3812, '2019-09-13 12:51:45', '2019-09-13 12:51:45', 'CC', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '-732877997', 'ACTIVE', 14, 1, 2382, 1, 796);
INSERT INTO `note` VALUES (3811, '2019-09-13 12:51:44', '2019-09-13 12:51:44', 'SN', 'RÉFLEXION HUMAINE1', 0, '1940870684', 'ACTIVE', 9, 1, 2410, 1, 787);
INSERT INTO `note` VALUES (3810, '2019-09-13 12:51:44', '2019-09-13 12:51:44', 'CC', 'RÉFLEXION HUMAINE1', 0, '-1140449683', 'ACTIVE', 3, 1, 2394, 1, 787);
INSERT INTO `note` VALUES (3808, '2019-09-13 12:51:44', '2019-09-13 12:51:44', 'CC', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '-1550754179', 'ACTIVE', 3, 1, 2393, 1, 794);
INSERT INTO `note` VALUES (3809, '2019-09-13 12:51:44', '2019-09-13 12:51:44', 'SN', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '-228020463', 'ACTIVE', 9, 1, 2409, 1, 794);
INSERT INTO `note` VALUES (3807, '2019-09-13 12:51:44', '2019-09-13 12:51:44', 'SN', 'ANGLAIS REMISE À NIVEAU A2', 0, '999113269', 'ACTIVE', 5, 1, 2408, 1, 793);
INSERT INTO `note` VALUES (3806, '2019-09-13 12:51:44', '2019-09-13 12:51:44', 'CC', 'ANGLAIS REMISE À NIVEAU A2', 0, '-654502481', 'ACTIVE', 19, 1, 2392, 1, 793);
INSERT INTO `note` VALUES (3805, '2019-09-13 12:51:43', '2019-09-13 12:51:43', 'SN', 'ARDUINO / RASPBERRY', 0, '555380847', 'ACTIVE', 12, 1, 2407, 1, 788);
INSERT INTO `note` VALUES (3803, '2019-09-13 12:51:43', '2019-09-13 12:51:43', 'CC', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '-391706647', 'ACTIVE', 10, 1, 2391, 1, 791);
INSERT INTO `note` VALUES (3804, '2019-09-13 12:51:43', '2019-09-13 12:51:43', 'SN', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '-597199867', 'ACTIVE', 13, 1, 2406, 1, 791);
INSERT INTO `note` VALUES (3802, '2019-09-13 12:51:43', '2019-09-13 12:51:43', 'SN', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '-1803769512', 'ACTIVE', 4, 1, 2405, 1, 790);
INSERT INTO `note` VALUES (3801, '2019-09-13 12:51:42', '2019-09-13 12:51:42', 'CC', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '-433011899', 'ACTIVE', 10, 1, 2390, 1, 790);
INSERT INTO `note` VALUES (3799, '2019-09-13 12:51:42', '2019-09-13 12:51:42', 'CC', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-1495835385', 'ACTIVE', 8, 1, 2389, 1, 789);
INSERT INTO `note` VALUES (3800, '2019-09-13 12:51:42', '2019-09-13 12:51:42', 'SN', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '49987433', 'ACTIVE', 10, 1, 2404, 1, 789);
INSERT INTO `note` VALUES (3798, '2019-09-13 12:51:42', '2019-09-13 12:51:42', 'SN', 'ARDUINO / RASPBERRY', 0, '-282175522', 'ACTIVE', 10, 1, 2403, 1, 788);
INSERT INTO `note` VALUES (3797, '2019-09-13 12:51:41', '2019-09-13 12:51:41', 'SN', 'RÉFLEXION HUMAINE1', 0, '1398207735', 'ACTIVE', 6, 1, 2402, 1, 787);
INSERT INTO `note` VALUES (3796, '2019-09-13 12:51:41', '2019-09-13 12:51:41', 'CC', 'RÉFLEXION HUMAINE1', 0, '-1961001155', 'ACTIVE', 18, 1, 2388, 1, 787);
INSERT INTO `note` VALUES (3795, '2019-09-13 12:51:41', '2019-09-13 12:51:41', 'SN', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '-603424238', 'ACTIVE', 13, 1, 2401, 1, 786);
INSERT INTO `note` VALUES (3794, '2019-09-13 12:51:40', '2019-09-13 12:51:40', 'CC', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '-1007880593', 'ACTIVE', 10, 1, 2387, 1, 786);
INSERT INTO `note` VALUES (3793, '2019-09-13 12:51:40', '2019-09-13 12:51:40', 'SN', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '-906749860', 'ACTIVE', 15, 1, 2400, 1, 785);
INSERT INTO `note` VALUES (3792, '2019-09-13 12:51:40', '2019-09-13 12:51:40', 'CC', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '2068206459', 'ACTIVE', 6, 1, 2386, 1, 785);
INSERT INTO `note` VALUES (3791, '2019-09-13 12:51:40', '2019-09-13 12:51:40', 'SN', 'STAGE TECHNIQUE', 0, '1066913190', 'ACTIVE', 14, 1, 2399, 1, 784);
INSERT INTO `note` VALUES (3790, '2019-09-13 12:51:40', '2019-09-13 12:51:40', 'SN', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '-1451242473', 'ACTIVE', 16, 1, 2398, 1, 783);
INSERT INTO `note` VALUES (3788, '2019-09-13 12:51:40', '2019-09-13 12:51:40', 'SN', 'ALGORITHMIQUE', 0, '-1729375932', 'ACTIVE', 18, 1, 2397, 1, 782);
INSERT INTO `note` VALUES (3789, '2019-09-13 12:51:40', '2019-09-13 12:51:40', 'CC', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '-1554840693', 'ACTIVE', 14, 1, 2385, 1, 783);
INSERT INTO `note` VALUES (3787, '2019-09-13 12:51:40', '2019-09-13 12:51:40', 'CC', 'ALGORITHMIQUE', 0, '694844003', 'ACTIVE', 3, 1, 2384, 1, 782);
INSERT INTO `note` VALUES (3785, '2019-09-13 12:51:39', '2019-09-13 12:51:39', 'CC', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-1049755524', 'ACTIVE', 17, 1, 2383, 1, 781);
INSERT INTO `note` VALUES (3786, '2019-09-13 12:51:39', '2019-09-13 12:51:39', 'SN', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-896867287', 'ACTIVE', 8, 1, 2396, 1, 781);
INSERT INTO `note` VALUES (3784, '2019-09-13 12:51:39', '2019-09-13 12:51:39', 'SN', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '1155616148', 'ACTIVE', 9, 1, 2395, 1, 780);
INSERT INTO `note` VALUES (3783, '2019-09-13 12:51:39', '2019-09-13 12:51:39', 'CC', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '-588397951', 'ACTIVE', 2, 1, 2382, 1, 780);
INSERT INTO `note` VALUES (3782, '2019-09-13 12:51:39', '2019-09-13 12:51:39', 'SN', 'RÉFLEXION HUMAINE1', 0, '-1951681182', 'ACTIVE', 20, 1, 2410, 1, 771);
INSERT INTO `note` VALUES (3781, '2019-09-13 12:51:39', '2019-09-13 12:51:39', 'CC', 'RÉFLEXION HUMAINE1', 0, '-592538531', 'ACTIVE', 5, 1, 2394, 1, 771);
INSERT INTO `note` VALUES (3780, '2019-09-13 12:51:39', '2019-09-13 12:51:39', 'SN', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '1616185298', 'ACTIVE', 12, 1, 2409, 1, 778);
INSERT INTO `note` VALUES (3779, '2019-09-13 12:51:38', '2019-09-13 12:51:38', 'CC', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '-950520639', 'ACTIVE', 13, 1, 2393, 1, 778);
INSERT INTO `note` VALUES (3778, '2019-09-13 12:51:38', '2019-09-13 12:51:38', 'SN', 'ANGLAIS REMISE À NIVEAU A2', 0, '-366376665', 'ACTIVE', 13, 1, 2408, 1, 777);
INSERT INTO `note` VALUES (3777, '2019-09-13 12:51:38', '2019-09-13 12:51:38', 'CC', 'ANGLAIS REMISE À NIVEAU A2', 0, '-993795926', 'ACTIVE', 17, 1, 2392, 1, 777);
INSERT INTO `note` VALUES (3776, '2019-09-13 12:51:38', '2019-09-13 12:51:38', 'SN', 'ARDUINO / RASPBERRY', 0, '-1363019040', 'ACTIVE', 14, 1, 2407, 1, 772);
INSERT INTO `note` VALUES (3775, '2019-09-13 12:51:38', '2019-09-13 12:51:38', 'SN', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '-202376446', 'ACTIVE', 20, 1, 2406, 1, 775);
INSERT INTO `note` VALUES (3774, '2019-09-13 12:51:38', '2019-09-13 12:51:38', 'CC', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '-109881663', 'ACTIVE', 15, 1, 2391, 1, 775);
INSERT INTO `note` VALUES (3772, '2019-09-13 12:51:37', '2019-09-13 12:51:37', 'CC', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '-215180331', 'ACTIVE', 18, 1, 2390, 1, 774);
INSERT INTO `note` VALUES (3773, '2019-09-13 12:51:38', '2019-09-13 12:51:38', 'SN', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '2071414927', 'ACTIVE', 7, 1, 2405, 1, 774);
INSERT INTO `note` VALUES (3771, '2019-09-13 12:51:37', '2019-09-13 12:51:37', 'SN', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-1821389342', 'ACTIVE', 12, 1, 2404, 1, 773);
INSERT INTO `note` VALUES (3769, '2019-09-13 12:51:37', '2019-09-13 12:51:37', 'SN', 'ARDUINO / RASPBERRY', 0, '-145286101', 'ACTIVE', 12, 1, 2403, 1, 772);
INSERT INTO `note` VALUES (3770, '2019-09-13 12:51:37', '2019-09-13 12:51:37', 'CC', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-3800775', 'ACTIVE', 4, 1, 2389, 1, 773);
INSERT INTO `note` VALUES (3768, '2019-09-13 12:51:37', '2019-09-13 12:51:37', 'SN', 'RÉFLEXION HUMAINE1', 0, '1852035387', 'ACTIVE', 3, 1, 2402, 1, 771);
INSERT INTO `note` VALUES (3767, '2019-09-13 12:51:37', '2019-09-13 12:51:37', 'CC', 'RÉFLEXION HUMAINE1', 0, '1162587319', 'ACTIVE', 14, 1, 2388, 1, 771);
INSERT INTO `note` VALUES (3766, '2019-09-13 12:51:36', '2019-09-13 12:51:36', 'SN', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '-1044592337', 'ACTIVE', 16, 1, 2401, 1, 770);
INSERT INTO `note` VALUES (3764, '2019-09-13 12:51:36', '2019-09-13 12:51:36', 'SN', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '1735583060', 'ACTIVE', 9, 1, 2400, 1, 769);
INSERT INTO `note` VALUES (3765, '2019-09-13 12:51:36', '2019-09-13 12:51:36', 'CC', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '-1651848943', 'ACTIVE', 4, 1, 2387, 1, 770);
INSERT INTO `note` VALUES (3762, '2019-09-13 12:51:36', '2019-09-13 12:51:36', 'SN', 'STAGE TECHNIQUE', 0, '2071977803', 'ACTIVE', 12, 1, 2399, 1, 768);
INSERT INTO `note` VALUES (3763, '2019-09-13 12:51:36', '2019-09-13 12:51:36', 'CC', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '-118398279', 'ACTIVE', 3, 1, 2386, 1, 769);
INSERT INTO `note` VALUES (3761, '2019-09-13 12:51:36', '2019-09-13 12:51:36', 'SN', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '-1103831795', 'ACTIVE', 8, 1, 2398, 1, 767);
INSERT INTO `note` VALUES (3760, '2019-09-13 12:51:35', '2019-09-13 12:51:35', 'CC', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '-1537025899', 'ACTIVE', 20, 1, 2385, 1, 767);
INSERT INTO `note` VALUES (3759, '2019-09-13 12:51:35', '2019-09-13 12:51:35', 'SN', 'ALGORITHMIQUE', 0, '1819058471', 'ACTIVE', 16, 1, 2397, 1, 766);
INSERT INTO `note` VALUES (3758, '2019-09-13 12:51:35', '2019-09-13 12:51:35', 'CC', 'ALGORITHMIQUE', 0, '-1055335940', 'ACTIVE', 8, 1, 2384, 1, 766);
INSERT INTO `note` VALUES (3757, '2019-09-13 12:51:35', '2019-09-13 12:51:35', 'SN', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '1482042604', 'ACTIVE', 20, 1, 2396, 1, 765);
INSERT INTO `note` VALUES (3756, '2019-09-13 12:51:35', '2019-09-13 12:51:35', 'CC', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-413817837', 'ACTIVE', 9, 1, 2383, 1, 765);
INSERT INTO `note` VALUES (3755, '2019-09-13 12:51:34', '2019-09-13 12:51:34', 'SN', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '-2062851239', 'ACTIVE', 20, 1, 2395, 1, 764);
INSERT INTO `note` VALUES (3754, '2019-09-13 12:51:34', '2019-09-13 12:51:34', 'CC', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '1801584359', 'ACTIVE', 18, 1, 2382, 1, 764);
INSERT INTO `note` VALUES (3752, '2019-09-13 12:51:34', '2019-09-13 12:51:34', 'CC', 'RÉFLEXION HUMAINE1', 0, '-1892625799', 'ACTIVE', 6, 1, 2394, 1, 763);
INSERT INTO `note` VALUES (3753, '2019-09-13 12:51:34', '2019-09-13 12:51:34', 'SN', 'RÉFLEXION HUMAINE1', 0, '-571655181', 'ACTIVE', 2, 1, 2410, 1, 763);
INSERT INTO `note` VALUES (3751, '2019-09-13 12:51:33', '2019-09-13 12:51:33', 'SN', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '-1871767512', 'ACTIVE', 3, 1, 2409, 1, 762);
INSERT INTO `note` VALUES (3750, '2019-09-13 12:51:33', '2019-09-13 12:51:33', 'CC', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '-260300228', 'ACTIVE', 9, 1, 2393, 1, 762);
INSERT INTO `note` VALUES (3749, '2019-09-13 12:51:33', '2019-09-13 12:51:33', 'SN', 'ANGLAIS REMISE À NIVEAU A2', 0, '-1325836401', 'ACTIVE', 15, 1, 2408, 1, 761);
INSERT INTO `note` VALUES (3747, '2019-09-13 12:51:32', '2019-09-13 12:51:32', 'SN', 'ARDUINO / RASPBERRY', 0, '1640790859', 'ACTIVE', 10, 1, 2407, 1, 760);
INSERT INTO `note` VALUES (3748, '2019-09-13 12:51:33', '2019-09-13 12:51:33', 'CC', 'ANGLAIS REMISE À NIVEAU A2', 0, '-210266140', 'ACTIVE', 3, 1, 2392, 1, 761);
INSERT INTO `note` VALUES (3746, '2019-09-13 12:51:32', '2019-09-13 12:51:32', 'SN', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '557462010', 'ACTIVE', 19, 1, 2406, 1, 759);
INSERT INTO `note` VALUES (3745, '2019-09-13 12:51:32', '2019-09-13 12:51:32', 'CC', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '-1716355251', 'ACTIVE', 6, 1, 2391, 1, 759);
INSERT INTO `note` VALUES (3744, '2019-09-13 12:51:32', '2019-09-13 12:51:32', 'SN', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '1284314910', 'ACTIVE', 17, 1, 2405, 1, 758);
INSERT INTO `note` VALUES (3743, '2019-09-13 12:51:32', '2019-09-13 12:51:32', 'CC', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '-857126415', 'ACTIVE', 16, 1, 2390, 1, 758);
INSERT INTO `note` VALUES (3741, '2019-09-13 12:51:32', '2019-09-13 12:51:32', 'CC', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-1131767066', 'ACTIVE', 12, 1, 2389, 1, 757);
INSERT INTO `note` VALUES (3742, '2019-09-13 12:51:32', '2019-09-13 12:51:32', 'SN', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-854381924', 'ACTIVE', 19, 1, 2404, 1, 757);
INSERT INTO `note` VALUES (3740, '2019-09-13 12:51:32', '2019-09-13 12:51:32', 'SN', 'ARDUINO / RASPBERRY', 0, '1601508989', 'ACTIVE', 15, 1, 2403, 1, 760);
INSERT INTO `note` VALUES (3739, '2019-09-13 12:51:31', '2019-09-13 12:51:31', 'SN', 'RÉFLEXION HUMAINE1', 0, '390343684', 'ACTIVE', 18, 1, 2402, 1, 763);
INSERT INTO `note` VALUES (3738, '2019-09-13 12:51:31', '2019-09-13 12:51:31', 'CC', 'RÉFLEXION HUMAINE1', 0, '-85259449', 'ACTIVE', 12, 1, 2388, 1, 763);
INSERT INTO `note` VALUES (3737, '2019-09-13 12:51:31', '2019-09-13 12:51:31', 'SN', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '714845115', 'ACTIVE', 4, 1, 2401, 1, 754);
INSERT INTO `note` VALUES (3736, '2019-09-13 12:51:31', '2019-09-13 12:51:31', 'CC', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '-820045264', 'ACTIVE', 15, 1, 2387, 1, 754);
INSERT INTO `note` VALUES (3735, '2019-09-13 12:51:31', '2019-09-13 12:51:31', 'SN', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '907128439', 'ACTIVE', 17, 1, 2400, 1, 753);
INSERT INTO `note` VALUES (3734, '2019-09-13 12:51:31', '2019-09-13 12:51:31', 'CC', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '-968079795', 'ACTIVE', 18, 1, 2386, 1, 753);
INSERT INTO `note` VALUES (3733, '2019-09-13 12:51:31', '2019-09-13 12:51:31', 'SN', 'STAGE TECHNIQUE', 0, '-1636970956', 'ACTIVE', 18, 1, 2399, 1, 752);
INSERT INTO `note` VALUES (3732, '2019-09-13 12:51:31', '2019-09-13 12:51:31', 'SN', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '-1661874683', 'ACTIVE', 9, 1, 2398, 1, 751);
INSERT INTO `note` VALUES (3731, '2019-09-13 12:51:30', '2019-09-13 12:51:30', 'CC', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '1936385374', 'ACTIVE', 13, 1, 2385, 1, 751);
INSERT INTO `note` VALUES (3730, '2019-09-13 12:51:30', '2019-09-13 12:51:30', 'SN', 'ALGORITHMIQUE', 0, '-1623166328', 'ACTIVE', 4, 1, 2397, 1, 750);
INSERT INTO `note` VALUES (3729, '2019-09-13 12:51:30', '2019-09-13 12:51:30', 'CC', 'ALGORITHMIQUE', 0, '563571054', 'ACTIVE', 13, 1, 2384, 1, 750);
INSERT INTO `note` VALUES (3727, '2019-09-13 12:51:30', '2019-09-13 12:51:30', 'CC', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '1455308462', 'ACTIVE', 20, 1, 2383, 1, 749);
INSERT INTO `note` VALUES (3728, '2019-09-13 12:51:30', '2019-09-13 12:51:30', 'SN', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-806515154', 'ACTIVE', 5, 1, 2396, 1, 749);
INSERT INTO `note` VALUES (3725, '2019-09-13 12:51:30', '2019-09-13 12:51:30', 'CC', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '-1632331099', 'ACTIVE', 3, 1, 2382, 1, 748);
INSERT INTO `note` VALUES (3726, '2019-09-13 12:51:30', '2019-09-13 12:51:30', 'SN', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '-1259067536', 'ACTIVE', 12, 1, 2395, 1, 748);
INSERT INTO `note` VALUES (3724, '2019-09-13 12:51:30', '2019-09-13 12:51:30', 'SN', 'RÉFLEXION HUMAINE1', 0, '-649030117', 'ACTIVE', 7, 1, 2410, 1, 747);
INSERT INTO `note` VALUES (3723, '2019-09-13 12:51:30', '2019-09-13 12:51:30', 'CC', 'RÉFLEXION HUMAINE1', 0, '977952408', 'ACTIVE', 8, 1, 2394, 1, 747);
INSERT INTO `note` VALUES (3722, '2019-09-13 12:51:29', '2019-09-13 12:51:29', 'SN', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '1476106394', 'ACTIVE', 12, 1, 2409, 1, 746);
INSERT INTO `note` VALUES (3721, '2019-09-13 12:51:29', '2019-09-13 12:51:29', 'CC', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '1206544110', 'ACTIVE', 5, 1, 2393, 1, 746);
INSERT INTO `note` VALUES (3720, '2019-09-13 12:51:29', '2019-09-13 12:51:29', 'SN', 'ANGLAIS REMISE À NIVEAU A2', 0, '-1276667387', 'ACTIVE', 19, 1, 2408, 1, 745);
INSERT INTO `note` VALUES (3719, '2019-09-13 12:51:29', '2019-09-13 12:51:29', 'CC', 'ANGLAIS REMISE À NIVEAU A2', 0, '-465634083', 'ACTIVE', 16, 1, 2392, 1, 745);
INSERT INTO `note` VALUES (3717, '2019-09-13 12:51:29', '2019-09-13 12:51:29', 'SN', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '1892895899', 'ACTIVE', 7, 1, 2406, 1, 743);
INSERT INTO `note` VALUES (3718, '2019-09-13 12:51:29', '2019-09-13 12:51:29', 'SN', 'ARDUINO / RASPBERRY', 0, '971547560', 'ACTIVE', 11, 1, 2407, 1, 744);
INSERT INTO `note` VALUES (3715, '2019-09-13 12:51:28', '2019-09-13 12:51:28', 'SN', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '546442980', 'ACTIVE', 4, 1, 2405, 1, 742);
INSERT INTO `note` VALUES (3716, '2019-09-13 12:51:29', '2019-09-13 12:51:29', 'CC', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '-497418701', 'ACTIVE', 5, 1, 2391, 1, 743);
INSERT INTO `note` VALUES (3714, '2019-09-13 12:51:28', '2019-09-13 12:51:28', 'CC', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '1672935966', 'ACTIVE', 10, 1, 2390, 1, 742);
INSERT INTO `note` VALUES (3712, '2019-09-13 12:51:28', '2019-09-13 12:51:28', 'CC', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-2105241927', 'ACTIVE', 8, 1, 2389, 1, 741);
INSERT INTO `note` VALUES (3713, '2019-09-13 12:51:28', '2019-09-13 12:51:28', 'SN', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-2086350944', 'ACTIVE', 17, 1, 2404, 1, 741);
INSERT INTO `note` VALUES (3710, '2019-09-13 12:51:28', '2019-09-13 12:51:28', 'SN', 'RÉFLEXION HUMAINE1', 0, '-779877985', 'ACTIVE', 7, 1, 2402, 1, 747);
INSERT INTO `note` VALUES (3711, '2019-09-13 12:51:28', '2019-09-13 12:51:28', 'SN', 'ARDUINO / RASPBERRY', 0, '-522727924', 'ACTIVE', 15, 1, 2403, 1, 744);
INSERT INTO `note` VALUES (3709, '2019-09-13 12:51:28', '2019-09-13 12:51:28', 'CC', 'RÉFLEXION HUMAINE1', 0, '-1338149969', 'ACTIVE', 5, 1, 2388, 1, 747);
INSERT INTO `note` VALUES (3708, '2019-09-13 12:51:28', '2019-09-13 12:51:28', 'SN', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '-1728500076', 'ACTIVE', 12, 1, 2401, 1, 738);
INSERT INTO `note` VALUES (3707, '2019-09-13 12:51:27', '2019-09-13 12:51:27', 'CC', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '1803721993', 'ACTIVE', 2, 1, 2387, 1, 738);
INSERT INTO `note` VALUES (3706, '2019-09-13 12:51:27', '2019-09-13 12:51:27', 'SN', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '1351439407', 'ACTIVE', 15, 1, 2400, 1, 737);
INSERT INTO `note` VALUES (3704, '2019-09-13 12:51:27', '2019-09-13 12:51:27', 'SN', 'STAGE TECHNIQUE', 0, '-653958727', 'ACTIVE', 9, 1, 2399, 1, 736);
INSERT INTO `note` VALUES (3705, '2019-09-13 12:51:27', '2019-09-13 12:51:27', 'CC', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '-327804803', 'ACTIVE', 12, 1, 2386, 1, 737);
INSERT INTO `note` VALUES (3703, '2019-09-13 12:51:27', '2019-09-13 12:51:27', 'SN', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '879128039', 'ACTIVE', 15, 1, 2398, 1, 735);
INSERT INTO `note` VALUES (3701, '2019-09-13 12:51:27', '2019-09-13 12:51:27', 'SN', 'ALGORITHMIQUE', 0, '763624823', 'ACTIVE', 14, 1, 2397, 1, 734);
INSERT INTO `note` VALUES (3702, '2019-09-13 12:51:27', '2019-09-13 12:51:27', 'CC', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '1429145533', 'ACTIVE', 16, 1, 2385, 1, 735);
INSERT INTO `note` VALUES (3700, '2019-09-13 12:51:26', '2019-09-13 12:51:26', 'CC', 'ALGORITHMIQUE', 0, '1239104502', 'ACTIVE', 3, 1, 2384, 1, 734);
INSERT INTO `note` VALUES (3699, '2019-09-13 12:51:26', '2019-09-13 12:51:26', 'SN', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-108791374', 'ACTIVE', 19, 1, 2396, 1, 733);
INSERT INTO `note` VALUES (3697, '2019-09-13 12:51:26', '2019-09-13 12:51:26', 'SN', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '709973081', 'ACTIVE', 7, 1, 2395, 1, 732);
INSERT INTO `note` VALUES (3698, '2019-09-13 12:51:26', '2019-09-13 12:51:26', 'CC', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '665253266', 'ACTIVE', 20, 1, 2383, 1, 733);
INSERT INTO `note` VALUES (3696, '2019-09-13 12:51:26', '2019-09-13 12:51:26', 'CC', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '2036400095', 'ACTIVE', 13, 1, 2382, 1, 732);
INSERT INTO `note` VALUES (3694, '2019-09-13 12:51:26', '2019-09-13 12:51:26', 'CC', 'RÉFLEXION HUMAINE1', 0, '1391602567', 'ACTIVE', 7, 1, 2394, 1, 731);
INSERT INTO `note` VALUES (3695, '2019-09-13 12:51:26', '2019-09-13 12:51:26', 'SN', 'RÉFLEXION HUMAINE1', 0, '1298388104', 'ACTIVE', 14, 1, 2410, 1, 731);
INSERT INTO `note` VALUES (3693, '2019-09-13 12:51:26', '2019-09-13 12:51:26', 'SN', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '-1790640464', 'ACTIVE', 18, 1, 2409, 1, 730);
INSERT INTO `note` VALUES (3691, '2019-09-13 12:51:25', '2019-09-13 12:51:25', 'SN', 'ANGLAIS REMISE À NIVEAU A2', 0, '1336875246', 'ACTIVE', 20, 1, 2408, 1, 729);
INSERT INTO `note` VALUES (3692, '2019-09-13 12:51:26', '2019-09-13 12:51:26', 'CC', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '-960106969', 'ACTIVE', 8, 1, 2393, 1, 730);
INSERT INTO `note` VALUES (3690, '2019-09-13 12:51:25', '2019-09-13 12:51:25', 'CC', 'ANGLAIS REMISE À NIVEAU A2', 0, '409856557', 'ACTIVE', 7, 1, 2392, 1, 729);
INSERT INTO `note` VALUES (3689, '2019-09-13 12:51:25', '2019-09-13 12:51:25', 'SN', 'ARDUINO / RASPBERRY', 0, '1925911413', 'ACTIVE', 12, 1, 2407, 1, 728);
INSERT INTO `note` VALUES (3687, '2019-09-13 12:51:25', '2019-09-13 12:51:25', 'CC', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '1891008607', 'ACTIVE', 15, 1, 2391, 1, 727);
INSERT INTO `note` VALUES (3688, '2019-09-13 12:51:25', '2019-09-13 12:51:25', 'SN', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '283454510', 'ACTIVE', 10, 1, 2406, 1, 727);
INSERT INTO `note` VALUES (3686, '2019-09-13 12:51:25', '2019-09-13 12:51:25', 'SN', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '1616566441', 'ACTIVE', 2, 1, 2405, 1, 726);
INSERT INTO `note` VALUES (3685, '2019-09-13 12:51:25', '2019-09-13 12:51:25', 'CC', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '-2081551492', 'ACTIVE', 12, 1, 2390, 1, 726);
INSERT INTO `note` VALUES (3684, '2019-09-13 12:51:25', '2019-09-13 12:51:25', 'SN', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-1934094063', 'ACTIVE', 4, 1, 2404, 1, 725);
INSERT INTO `note` VALUES (3683, '2019-09-13 12:51:24', '2019-09-13 12:51:24', 'CC', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '1625189217', 'ACTIVE', 5, 1, 2389, 1, 725);
INSERT INTO `note` VALUES (3682, '2019-09-13 12:51:24', '2019-09-13 12:51:24', 'SN', 'ARDUINO / RASPBERRY', 0, '-1178846306', 'ACTIVE', 11, 1, 2403, 1, 728);
INSERT INTO `note` VALUES (3680, '2019-09-13 12:51:24', '2019-09-13 12:51:24', 'CC', 'RÉFLEXION HUMAINE1', 0, '2099664140', 'ACTIVE', 12, 1, 2388, 1, 731);
INSERT INTO `note` VALUES (3681, '2019-09-13 12:51:24', '2019-09-13 12:51:24', 'SN', 'RÉFLEXION HUMAINE1', 0, '-2037765175', 'ACTIVE', 7, 1, 2402, 1, 731);
INSERT INTO `note` VALUES (3679, '2019-09-13 12:51:24', '2019-09-13 12:51:24', 'SN', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '1093628573', 'ACTIVE', 6, 1, 2401, 1, 722);
INSERT INTO `note` VALUES (3678, '2019-09-13 12:51:24', '2019-09-13 12:51:24', 'CC', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '373805866', 'ACTIVE', 10, 1, 2387, 1, 722);
INSERT INTO `note` VALUES (3676, '2019-09-13 12:51:23', '2019-09-13 12:51:23', 'CC', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '-128487975', 'ACTIVE', 20, 1, 2386, 1, 721);
INSERT INTO `note` VALUES (3677, '2019-09-13 12:51:23', '2019-09-13 12:51:23', 'SN', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '311568625', 'ACTIVE', 19, 1, 2400, 1, 721);
INSERT INTO `note` VALUES (3675, '2019-09-13 12:51:23', '2019-09-13 12:51:23', 'SN', 'STAGE TECHNIQUE', 0, '2126792571', 'ACTIVE', 7, 1, 2399, 1, 720);
INSERT INTO `note` VALUES (3674, '2019-09-13 12:51:23', '2019-09-13 12:51:23', 'SN', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '811738225', 'ACTIVE', 5, 1, 2398, 1, 719);
INSERT INTO `note` VALUES (3673, '2019-09-13 12:51:23', '2019-09-13 12:51:23', 'CC', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '1780065238', 'ACTIVE', 16, 1, 2385, 1, 719);
INSERT INTO `note` VALUES (3672, '2019-09-13 12:51:23', '2019-09-13 12:51:23', 'SN', 'ALGORITHMIQUE', 0, '1005288017', 'ACTIVE', 11, 1, 2397, 1, 718);
INSERT INTO `note` VALUES (3671, '2019-09-13 12:51:22', '2019-09-13 12:51:22', 'CC', 'ALGORITHMIQUE', 0, '244620675', 'ACTIVE', 20, 1, 2384, 1, 718);
INSERT INTO `note` VALUES (3670, '2019-09-13 12:51:22', '2019-09-13 12:51:22', 'SN', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-401881326', 'ACTIVE', 5, 1, 2396, 1, 717);
INSERT INTO `note` VALUES (3669, '2019-09-13 12:51:22', '2019-09-13 12:51:22', 'CC', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-1957279653', 'ACTIVE', 12, 1, 2383, 1, 717);
INSERT INTO `note` VALUES (3668, '2019-09-13 12:51:22', '2019-09-13 12:51:22', 'SN', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '-908392253', 'ACTIVE', 5, 1, 2395, 1, 716);
INSERT INTO `note` VALUES (3667, '2019-09-13 12:51:22', '2019-09-13 12:51:22', 'CC', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '-1807512460', 'ACTIVE', 6, 1, 2382, 1, 716);
INSERT INTO `note` VALUES (3666, '2019-09-13 12:51:21', '2019-09-13 12:51:21', 'SN', 'RÉFLEXION HUMAINE1', 0, '-1499766696', 'ACTIVE', 3, 1, 2410, 1, 707);
INSERT INTO `note` VALUES (3665, '2019-09-13 12:51:21', '2019-09-13 12:51:21', 'CC', 'RÉFLEXION HUMAINE1', 0, '1182546301', 'ACTIVE', 18, 1, 2394, 1, 707);
INSERT INTO `note` VALUES (3664, '2019-09-13 12:51:21', '2019-09-13 12:51:21', 'SN', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '-509802912', 'ACTIVE', 19, 1, 2409, 1, 714);
INSERT INTO `note` VALUES (3663, '2019-09-13 12:51:21', '2019-09-13 12:51:21', 'CC', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '-436969748', 'ACTIVE', 3, 1, 2393, 1, 714);
INSERT INTO `note` VALUES (3662, '2019-09-13 12:51:20', '2019-09-13 12:51:20', 'SN', 'ANGLAIS REMISE À NIVEAU A2', 0, '-513735587', 'ACTIVE', 7, 1, 2408, 1, 713);
INSERT INTO `note` VALUES (3661, '2019-09-13 12:51:20', '2019-09-13 12:51:20', 'CC', 'ANGLAIS REMISE À NIVEAU A2', 0, '-1220477715', 'ACTIVE', 17, 1, 2392, 1, 713);
INSERT INTO `note` VALUES (3660, '2019-09-13 12:51:20', '2019-09-13 12:51:20', 'SN', 'ARDUINO / RASPBERRY', 0, '970858368', 'ACTIVE', 8, 1, 2407, 1, 708);
INSERT INTO `note` VALUES (3659, '2019-09-13 12:51:19', '2019-09-13 12:51:19', 'SN', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '-1202880193', 'ACTIVE', 2, 1, 2406, 1, 711);
INSERT INTO `note` VALUES (3658, '2019-09-13 12:51:19', '2019-09-13 12:51:19', 'CC', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '-192716801', 'ACTIVE', 5, 1, 2391, 1, 711);
INSERT INTO `note` VALUES (3657, '2019-09-13 12:51:19', '2019-09-13 12:51:19', 'SN', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '1301411924', 'ACTIVE', 7, 1, 2405, 1, 710);
INSERT INTO `note` VALUES (3656, '2019-09-13 12:51:19', '2019-09-13 12:51:19', 'CC', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '1786944501', 'ACTIVE', 9, 1, 2390, 1, 710);
INSERT INTO `note` VALUES (3655, '2019-09-13 12:51:19', '2019-09-13 12:51:19', 'SN', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '355922273', 'ACTIVE', 3, 1, 2404, 1, 709);
INSERT INTO `note` VALUES (3654, '2019-09-13 12:51:19', '2019-09-13 12:51:19', 'CC', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '1366808128', 'ACTIVE', 8, 1, 2389, 1, 709);
INSERT INTO `note` VALUES (3653, '2019-09-13 12:51:19', '2019-09-13 12:51:19', 'SN', 'ARDUINO / RASPBERRY', 0, '1350974196', 'ACTIVE', 14, 1, 2403, 1, 708);
INSERT INTO `note` VALUES (3652, '2019-09-13 12:51:19', '2019-09-13 12:51:19', 'SN', 'RÉFLEXION HUMAINE1', 0, '-2121266464', 'ACTIVE', 11, 1, 2402, 1, 707);
INSERT INTO `note` VALUES (3651, '2019-09-13 12:51:18', '2019-09-13 12:51:18', 'CC', 'RÉFLEXION HUMAINE1', 0, '-175753853', 'ACTIVE', 8, 1, 2388, 1, 707);
INSERT INTO `note` VALUES (3650, '2019-09-13 12:51:18', '2019-09-13 12:51:18', 'SN', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '468220016', 'ACTIVE', 7, 1, 2401, 1, 706);
INSERT INTO `note` VALUES (3649, '2019-09-13 12:51:18', '2019-09-13 12:51:18', 'CC', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '1681828513', 'ACTIVE', 6, 1, 2387, 1, 706);
INSERT INTO `note` VALUES (3648, '2019-09-13 12:51:18', '2019-09-13 12:51:18', 'SN', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '-1303743498', 'ACTIVE', 17, 1, 2400, 1, 705);
INSERT INTO `note` VALUES (3647, '2019-09-13 12:51:18', '2019-09-13 12:51:18', 'CC', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '-719177836', 'ACTIVE', 6, 1, 2386, 1, 705);
INSERT INTO `note` VALUES (3646, '2019-09-13 12:51:18', '2019-09-13 12:51:18', 'SN', 'STAGE TECHNIQUE', 0, '1548749356', 'ACTIVE', 8, 1, 2399, 1, 704);
INSERT INTO `note` VALUES (3645, '2019-09-13 12:51:17', '2019-09-13 12:51:17', 'SN', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '443636883', 'ACTIVE', 11, 1, 2398, 1, 703);
INSERT INTO `note` VALUES (3644, '2019-09-13 12:51:17', '2019-09-13 12:51:17', 'CC', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '-920915602', 'ACTIVE', 15, 1, 2385, 1, 703);
INSERT INTO `note` VALUES (3643, '2019-09-13 12:51:17', '2019-09-13 12:51:17', 'SN', 'ALGORITHMIQUE', 0, '-1076148621', 'ACTIVE', 15, 1, 2397, 1, 702);
INSERT INTO `note` VALUES (3642, '2019-09-13 12:51:17', '2019-09-13 12:51:17', 'CC', 'ALGORITHMIQUE', 0, '-1948276567', 'ACTIVE', 2, 1, 2384, 1, 702);
INSERT INTO `note` VALUES (3641, '2019-09-13 12:51:17', '2019-09-13 12:51:17', 'SN', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-769928956', 'ACTIVE', 5, 1, 2396, 1, 701);
INSERT INTO `note` VALUES (3640, '2019-09-13 12:51:17', '2019-09-13 12:51:17', 'CC', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '779301425', 'ACTIVE', 3, 1, 2383, 1, 701);
INSERT INTO `note` VALUES (3639, '2019-09-13 12:51:16', '2019-09-13 12:51:16', 'SN', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '-2118084649', 'ACTIVE', 16, 1, 2395, 1, 700);
INSERT INTO `note` VALUES (3638, '2019-09-13 12:51:16', '2019-09-13 12:51:16', 'CC', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '1491211433', 'ACTIVE', 6, 1, 2382, 1, 700);
INSERT INTO `note` VALUES (3637, '2019-09-13 12:51:16', '2019-09-13 12:51:16', 'SN', 'RÉFLEXION HUMAINE1', 0, '1751977964', 'ACTIVE', 7, 1, 2410, 1, 691);
INSERT INTO `note` VALUES (3636, '2019-09-13 12:51:16', '2019-09-13 12:51:16', 'CC', 'RÉFLEXION HUMAINE1', 0, '-2146676539', 'ACTIVE', 6, 1, 2394, 1, 691);
INSERT INTO `note` VALUES (3635, '2019-09-13 12:51:16', '2019-09-13 12:51:16', 'SN', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '1228907048', 'ACTIVE', 12, 1, 2409, 1, 698);
INSERT INTO `note` VALUES (3634, '2019-09-13 12:51:16', '2019-09-13 12:51:16', 'CC', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '-1514163957', 'ACTIVE', 11, 1, 2393, 1, 698);
INSERT INTO `note` VALUES (3633, '2019-09-13 12:51:15', '2019-09-13 12:51:16', 'SN', 'ANGLAIS REMISE À NIVEAU A2', 0, '-1460886944', 'ACTIVE', 4, 1, 2408, 1, 697);
INSERT INTO `note` VALUES (3632, '2019-09-13 12:51:15', '2019-09-13 12:51:15', 'CC', 'ANGLAIS REMISE À NIVEAU A2', 0, '481894269', 'ACTIVE', 15, 1, 2392, 1, 697);
INSERT INTO `note` VALUES (3631, '2019-09-13 12:51:15', '2019-09-13 12:51:15', 'SN', 'ARDUINO / RASPBERRY', 0, '-656848426', 'ACTIVE', 14, 1, 2407, 1, 692);
INSERT INTO `note` VALUES (3630, '2019-09-13 12:51:15', '2019-09-13 12:51:15', 'SN', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '-1993421878', 'ACTIVE', 7, 1, 2406, 1, 695);
INSERT INTO `note` VALUES (3629, '2019-09-13 12:51:15', '2019-09-13 12:51:15', 'CC', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '1254206750', 'ACTIVE', 9, 1, 2391, 1, 695);
INSERT INTO `note` VALUES (3628, '2019-09-13 12:51:15', '2019-09-13 12:51:15', 'SN', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '-1751653483', 'ACTIVE', 13, 1, 2405, 1, 694);
INSERT INTO `note` VALUES (3627, '2019-09-13 12:51:15', '2019-09-13 12:51:15', 'CC', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '-1170644273', 'ACTIVE', 6, 1, 2390, 1, 694);
INSERT INTO `note` VALUES (3626, '2019-09-13 12:51:15', '2019-09-13 12:51:15', 'SN', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '2006338312', 'ACTIVE', 13, 1, 2404, 1, 693);
INSERT INTO `note` VALUES (3625, '2019-09-13 12:51:14', '2019-09-13 12:51:14', 'CC', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-1231852808', 'ACTIVE', 19, 1, 2389, 1, 693);
INSERT INTO `note` VALUES (3624, '2019-09-13 12:51:14', '2019-09-13 12:51:14', 'SN', 'ARDUINO / RASPBERRY', 0, '-2000798083', 'ACTIVE', 4, 1, 2403, 1, 692);
INSERT INTO `note` VALUES (3623, '2019-09-13 12:51:14', '2019-09-13 12:51:14', 'SN', 'RÉFLEXION HUMAINE1', 0, '1326396726', 'ACTIVE', 15, 1, 2402, 1, 691);
INSERT INTO `note` VALUES (3622, '2019-09-13 12:51:14', '2019-09-13 12:51:14', 'CC', 'RÉFLEXION HUMAINE1', 0, '-430587465', 'ACTIVE', 4, 1, 2388, 1, 691);
INSERT INTO `note` VALUES (3621, '2019-09-13 12:51:14', '2019-09-13 12:51:14', 'SN', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '8752025', 'ACTIVE', 9, 1, 2401, 1, 690);
INSERT INTO `note` VALUES (3620, '2019-09-13 12:51:14', '2019-09-13 12:51:14', 'CC', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '383610179', 'ACTIVE', 16, 1, 2387, 1, 690);
INSERT INTO `note` VALUES (3619, '2019-09-13 12:51:14', '2019-09-13 12:51:14', 'SN', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '-469265673', 'ACTIVE', 12, 1, 2400, 1, 689);
INSERT INTO `note` VALUES (3618, '2019-09-13 12:51:13', '2019-09-13 12:51:13', 'CC', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '-1761168475', 'ACTIVE', 15, 1, 2386, 1, 689);
INSERT INTO `note` VALUES (3617, '2019-09-13 12:51:13', '2019-09-13 12:51:13', 'SN', 'STAGE TECHNIQUE', 0, '1296083443', 'ACTIVE', 3, 1, 2399, 1, 688);
INSERT INTO `note` VALUES (3616, '2019-09-13 12:51:13', '2019-09-13 12:51:13', 'SN', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '-589926425', 'ACTIVE', 8, 1, 2398, 1, 687);
INSERT INTO `note` VALUES (3615, '2019-09-13 12:51:13', '2019-09-13 12:51:13', 'CC', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '-1034786420', 'ACTIVE', 8, 1, 2385, 1, 687);
INSERT INTO `note` VALUES (3614, '2019-09-13 12:51:13', '2019-09-13 12:51:13', 'SN', 'ALGORITHMIQUE', 0, '-1784109213', 'ACTIVE', 8, 1, 2397, 1, 686);
INSERT INTO `note` VALUES (3613, '2019-09-13 12:51:13', '2019-09-13 12:51:13', 'CC', 'ALGORITHMIQUE', 0, '-711193776', 'ACTIVE', 3, 1, 2384, 1, 686);
INSERT INTO `note` VALUES (3612, '2019-09-13 12:51:12', '2019-09-13 12:51:12', 'SN', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-2010591078', 'ACTIVE', 17, 1, 2396, 1, 685);
INSERT INTO `note` VALUES (3611, '2019-09-13 12:51:12', '2019-09-13 12:51:12', 'CC', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '1543415256', 'ACTIVE', 4, 1, 2383, 1, 685);
INSERT INTO `note` VALUES (3610, '2019-09-13 12:51:12', '2019-09-13 12:51:12', 'SN', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '-1459135396', 'ACTIVE', 11, 1, 2395, 1, 684);
INSERT INTO `note` VALUES (3609, '2019-09-13 12:51:12', '2019-09-13 12:51:12', 'CC', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '454734477', 'ACTIVE', 18, 1, 2382, 1, 684);
INSERT INTO `note` VALUES (3608, '2019-09-13 12:51:12', '2019-09-13 12:51:12', 'SN', 'RÉFLEXION HUMAINE1', 0, '306118956', 'ACTIVE', 18, 1, 2410, 1, 675);
INSERT INTO `note` VALUES (3607, '2019-09-13 12:51:11', '2019-09-13 12:51:11', 'CC', 'RÉFLEXION HUMAINE1', 0, '2003312998', 'ACTIVE', 19, 1, 2394, 1, 675);
INSERT INTO `note` VALUES (3606, '2019-09-13 12:51:11', '2019-09-13 12:51:11', 'SN', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '292771317', 'ACTIVE', 4, 1, 2409, 1, 682);
INSERT INTO `note` VALUES (3605, '2019-09-13 12:51:11', '2019-09-13 12:51:11', 'CC', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '-466309635', 'ACTIVE', 6, 1, 2393, 1, 682);
INSERT INTO `note` VALUES (3604, '2019-09-13 12:51:11', '2019-09-13 12:51:11', 'SN', 'ANGLAIS REMISE À NIVEAU A2', 0, '-1031839534', 'ACTIVE', 3, 1, 2408, 1, 681);
INSERT INTO `note` VALUES (3603, '2019-09-13 12:51:10', '2019-09-13 12:51:10', 'CC', 'ANGLAIS REMISE À NIVEAU A2', 0, '1102076039', 'ACTIVE', 14, 1, 2392, 1, 681);
INSERT INTO `note` VALUES (3602, '2019-09-13 12:51:10', '2019-09-13 12:51:10', 'SN', 'ARDUINO / RASPBERRY', 0, '258738552', 'ACTIVE', 11, 1, 2407, 1, 676);
INSERT INTO `note` VALUES (3601, '2019-09-13 12:51:10', '2019-09-13 12:51:10', 'SN', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '1310729847', 'ACTIVE', 18, 1, 2406, 1, 679);
INSERT INTO `note` VALUES (3600, '2019-09-13 12:51:09', '2019-09-13 12:51:09', 'CC', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '1698497760', 'ACTIVE', 9, 1, 2391, 1, 679);
INSERT INTO `note` VALUES (3599, '2019-09-13 12:51:09', '2019-09-13 12:51:09', 'SN', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '-1029071387', 'ACTIVE', 4, 1, 2405, 1, 678);
INSERT INTO `note` VALUES (3598, '2019-09-13 12:51:09', '2019-09-13 12:51:09', 'CC', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '864134515', 'ACTIVE', 15, 1, 2390, 1, 678);
INSERT INTO `note` VALUES (3597, '2019-09-13 12:51:09', '2019-09-13 12:51:09', 'SN', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '1110748132', 'ACTIVE', 18, 1, 2404, 1, 677);
INSERT INTO `note` VALUES (3596, '2019-09-13 12:51:09', '2019-09-13 12:51:09', 'CC', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '62017940', 'ACTIVE', 18, 1, 2389, 1, 677);
INSERT INTO `note` VALUES (3595, '2019-09-13 12:51:09', '2019-09-13 12:51:09', 'SN', 'ARDUINO / RASPBERRY', 0, '1276378699', 'ACTIVE', 3, 1, 2403, 1, 676);
INSERT INTO `note` VALUES (3594, '2019-09-13 12:51:09', '2019-09-13 12:51:09', 'SN', 'RÉFLEXION HUMAINE1', 0, '-567759157', 'ACTIVE', 12, 1, 2402, 1, 675);
INSERT INTO `note` VALUES (3593, '2019-09-13 12:51:08', '2019-09-13 12:51:08', 'CC', 'RÉFLEXION HUMAINE1', 0, '-198459739', 'ACTIVE', 7, 1, 2388, 1, 675);
INSERT INTO `note` VALUES (3592, '2019-09-13 12:51:08', '2019-09-13 12:51:08', 'SN', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '-705940159', 'ACTIVE', 11, 1, 2401, 1, 674);
INSERT INTO `note` VALUES (3591, '2019-09-13 12:51:08', '2019-09-13 12:51:08', 'CC', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '964590956', 'ACTIVE', 3, 1, 2387, 1, 674);
INSERT INTO `note` VALUES (3590, '2019-09-13 12:51:08', '2019-09-13 12:51:08', 'SN', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '2132969735', 'ACTIVE', 17, 1, 2400, 1, 673);
INSERT INTO `note` VALUES (3589, '2019-09-13 12:51:08', '2019-09-13 12:51:08', 'CC', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '-1922489312', 'ACTIVE', 20, 1, 2386, 1, 673);
INSERT INTO `note` VALUES (3588, '2019-09-13 12:51:08', '2019-09-13 12:51:08', 'SN', 'STAGE TECHNIQUE', 0, '-883703119', 'ACTIVE', 17, 1, 2399, 1, 672);
INSERT INTO `note` VALUES (3587, '2019-09-13 12:51:08', '2019-09-13 12:51:08', 'SN', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '-2117518582', 'ACTIVE', 15, 1, 2398, 1, 671);
INSERT INTO `note` VALUES (3586, '2019-09-13 12:51:08', '2019-09-13 12:51:08', 'CC', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '-213336654', 'ACTIVE', 4, 1, 2385, 1, 671);
INSERT INTO `note` VALUES (3585, '2019-09-13 12:51:08', '2019-09-13 12:51:08', 'SN', 'ALGORITHMIQUE', 0, '-1440602330', 'ACTIVE', 5, 1, 2397, 1, 670);
INSERT INTO `note` VALUES (3584, '2019-09-13 12:51:08', '2019-09-13 12:51:08', 'CC', 'ALGORITHMIQUE', 0, '-1158577187', 'ACTIVE', 2, 1, 2384, 1, 670);
INSERT INTO `note` VALUES (3583, '2019-09-13 12:51:08', '2019-09-13 12:51:08', 'SN', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '1188119732', 'ACTIVE', 11, 1, 2396, 1, 669);
INSERT INTO `note` VALUES (3582, '2019-09-13 12:51:08', '2019-09-13 12:51:08', 'CC', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '312141995', 'ACTIVE', 19, 1, 2383, 1, 669);
INSERT INTO `note` VALUES (3581, '2019-09-13 12:51:08', '2019-09-13 12:51:08', 'SN', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '-724768245', 'ACTIVE', 4, 1, 2395, 1, 668);
INSERT INTO `note` VALUES (3580, '2019-09-13 12:51:07', '2019-09-13 12:51:07', 'CC', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '1089397021', 'ACTIVE', 8, 1, 2382, 1, 668);
INSERT INTO `note` VALUES (3579, '2019-09-13 12:51:07', '2019-09-13 12:51:07', 'SN', 'RÉFLEXION HUMAINE1', 0, '377436038', 'ACTIVE', 16, 1, 2410, 1, 659);
INSERT INTO `note` VALUES (3578, '2019-09-13 12:51:07', '2019-09-13 12:51:07', 'CC', 'RÉFLEXION HUMAINE1', 0, '-1962877524', 'ACTIVE', 17, 1, 2394, 1, 659);
INSERT INTO `note` VALUES (3577, '2019-09-13 12:51:07', '2019-09-13 12:51:07', 'SN', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '-1176298402', 'ACTIVE', 12, 1, 2409, 1, 666);
INSERT INTO `note` VALUES (3576, '2019-09-13 12:51:07', '2019-09-13 12:51:07', 'CC', 'FORMATION À LA COMMUNICATION ÉCRITE ET ORALE', 0, '-1648129836', 'ACTIVE', 13, 1, 2393, 1, 666);
INSERT INTO `note` VALUES (3575, '2019-09-13 12:51:07', '2019-09-13 12:51:07', 'SN', 'ANGLAIS REMISE À NIVEAU A2', 0, '1317445922', 'ACTIVE', 13, 1, 2408, 1, 665);
INSERT INTO `note` VALUES (3574, '2019-09-13 12:51:07', '2019-09-13 12:51:07', 'CC', 'ANGLAIS REMISE À NIVEAU A2', 0, '-1692241619', 'ACTIVE', 15, 1, 2392, 1, 665);
INSERT INTO `note` VALUES (3573, '2019-09-13 12:51:07', '2019-09-13 12:51:07', 'SN', 'ARDUINO / RASPBERRY', 0, '1326713539', 'ACTIVE', 3, 1, 2407, 1, 660);
INSERT INTO `note` VALUES (3572, '2019-09-13 12:51:07', '2019-09-13 12:51:07', 'SN', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '-1301511089', 'ACTIVE', 19, 1, 2406, 1, 663);
INSERT INTO `note` VALUES (3571, '2019-09-13 12:51:07', '2019-09-13 12:51:07', 'CC', 'MESURE PHYSIQUE ET INSTRUMENTATION', 0, '259469109', 'ACTIVE', 13, 1, 2391, 1, 663);
INSERT INTO `note` VALUES (3570, '2019-09-13 12:51:07', '2019-09-13 12:51:07', 'SN', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '-1074260303', 'ACTIVE', 10, 1, 2405, 1, 662);
INSERT INTO `note` VALUES (3569, '2019-09-13 12:51:07', '2019-09-13 12:51:07', 'CC', 'BASES DE PHYSIQUE POUR L’INGÉNIEUR', 0, '-168637791', 'ACTIVE', 11, 1, 2390, 1, 662);
INSERT INTO `note` VALUES (3568, '2019-09-13 12:51:06', '2019-09-13 12:51:06', 'SN', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-707940545', 'ACTIVE', 13, 1, 2404, 1, 661);
INSERT INTO `note` VALUES (3567, '2019-09-13 12:51:06', '2019-09-13 12:51:06', 'CC', 'BASES MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '1444307935', 'ACTIVE', 9, 1, 2389, 1, 661);
INSERT INTO `note` VALUES (3566, '2019-09-13 12:51:06', '2019-09-13 12:51:06', 'SN', 'ARDUINO / RASPBERRY', 0, '-1050034469', 'ACTIVE', 6, 1, 2403, 1, 660);
INSERT INTO `note` VALUES (3565, '2019-09-13 12:51:06', '2019-09-13 12:51:06', 'SN', 'RÉFLEXION HUMAINE1', 0, '1910596614', 'ACTIVE', 9, 1, 2402, 1, 659);
INSERT INTO `note` VALUES (3564, '2019-09-13 12:51:06', '2019-09-13 12:51:06', 'CC', 'RÉFLEXION HUMAINE1', 0, '-95482309', 'ACTIVE', 9, 1, 2388, 1, 659);
INSERT INTO `note` VALUES (3563, '2019-09-13 12:51:06', '2019-09-13 12:51:06', 'SN', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '-1231663775', 'ACTIVE', 12, 1, 2401, 1, 658);
INSERT INTO `note` VALUES (3562, '2019-09-13 12:51:06', '2019-09-13 12:51:06', 'CC', 'ATELIER D\'ÉCRITURE / IMAGE, IMAGINAIRE ET NOUVELLES TECHNOLOGIES', 0, '238226129', 'ACTIVE', 4, 1, 2387, 1, 658);
INSERT INTO `note` VALUES (3561, '2019-09-13 12:51:06', '2019-09-13 12:51:06', 'SN', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '1069534272', 'ACTIVE', 10, 1, 2400, 1, 657);
INSERT INTO `note` VALUES (3560, '2019-09-13 12:51:06', '2019-09-13 12:51:06', 'CC', 'ANGLAIS - NIVEAU PRATIQUE B1', 0, '363553814', 'ACTIVE', 5, 1, 2386, 1, 657);
INSERT INTO `note` VALUES (3559, '2019-09-13 12:51:06', '2019-09-13 12:51:06', 'SN', 'STAGE TECHNIQUE', 0, '1916270418', 'ACTIVE', 7, 1, 2399, 1, 656);
INSERT INTO `note` VALUES (3558, '2019-09-13 12:51:05', '2019-09-13 12:51:05', 'SN', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '-1621632349', 'ACTIVE', 18, 1, 2398, 1, 655);
INSERT INTO `note` VALUES (3557, '2019-09-13 12:51:05', '2019-09-13 12:51:05', 'CC', 'INITIATION À LA DÉFINITION ET À LA FABRICATION D’UN OBJET TECHNIQUE', 0, '591701352', 'ACTIVE', 14, 1, 2385, 1, 655);
INSERT INTO `note` VALUES (3556, '2019-09-13 12:51:05', '2019-09-13 12:51:05', 'SN', 'ALGORITHMIQUE', 0, '-1526051801', 'ACTIVE', 5, 1, 2397, 1, 654);
INSERT INTO `note` VALUES (3555, '2019-09-13 12:51:05', '2019-09-13 12:51:05', 'CC', 'ALGORITHMIQUE', 0, '1240941765', 'ACTIVE', 9, 1, 2384, 1, 654);
INSERT INTO `note` VALUES (3554, '2019-09-13 12:51:05', '2019-09-13 12:51:05', 'SN', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-1332332785', 'ACTIVE', 12, 1, 2396, 1, 653);
INSERT INTO `note` VALUES (3553, '2019-09-13 12:51:05', '2019-09-13 12:51:05', 'CC', 'OUTILS MATHÉMATIQUES POUR L’INGÉNIEUR', 0, '-2012643234', 'ACTIVE', 19, 1, 2383, 1, 653);
INSERT INTO `note` VALUES (3552, '2019-09-13 12:51:04', '2019-09-13 12:51:04', 'SN', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '-1886144776', 'ACTIVE', 12, 1, 2395, 1, 652);
INSERT INTO `note` VALUES (3551, '2019-09-13 12:51:04', '2019-09-13 12:51:04', 'CC', 'STRUCTURE ET TRANSFORMATION DE LA MATIÈRE', 0, '2026150871', 'ACTIVE', 6, 1, 2382, 1, 652);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_creation` datetime(0) NOT NULL,
  `date_modification` datetime(0) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut_vie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `createur` bigint(20) NOT NULL,
  `modificateur` bigint(20) NOT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_role_modificateur`(`modificateur`) USING BTREE,
  INDEX `FK_role_createur`(`createur`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 552 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for semestre
-- ----------------------------
DROP TABLE IF EXISTS `semestre`;
CREATE TABLE `semestre`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_cloture` datetime(0) NULL DEFAULT NULL,
  `date_creation` datetime(0) NOT NULL,
  `date_debut` datetime(0) NULL DEFAULT NULL,
  `date_modification` datetime(0) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut_vie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `annee_academique` bigint(20) NULL DEFAULT NULL,
  `createur` bigint(20) NOT NULL,
  `modificateur` bigint(20) NOT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_semestre_modificateur`(`modificateur`) USING BTREE,
  INDEX `FK_semestre_createur`(`createur`) USING BTREE,
  INDEX `FK_semestre_annee_academique`(`annee_academique`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 159 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of semestre
-- ----------------------------
INSERT INTO `semestre` VALUES (151, '2017-01-29 23:00:00', '2019-08-27 22:40:47', '2016-08-30 22:00:00', '2019-08-27 22:40:47', 'Semestre 1 Année Académique 2016/2017', 'Semestre 1', '1676357303', 'ACTIVE', 70, 1, 1);
INSERT INTO `semestre` VALUES (152, '2017-08-29 22:00:00', '2019-08-27 22:43:45', '2017-01-30 23:00:00', '2019-08-27 22:43:45', 'Semestre 2 Année Académique 2016/2017', 'Semestre 2', '-1870973562', 'ACTIVE', 70, 1, 1);
INSERT INTO `semestre` VALUES (153, '2018-01-29 23:00:00', '2019-08-27 22:45:53', '2017-08-30 22:00:00', '2019-08-27 22:45:53', 'Semestre 1 Année Académique 2017/2018', 'Semestre 1', '-487263606', 'ACTIVE', 71, 1, 1);
INSERT INTO `semestre` VALUES (154, '2018-08-29 22:00:00', '2019-08-27 22:48:31', '2018-01-30 23:00:00', '2019-08-27 22:48:31', 'Semestre 2 Année Académique 2017/2018', 'Semestre 2', '-437219959', 'ACTIVE', 71, 1, 1);
INSERT INTO `semestre` VALUES (155, '2019-01-29 23:00:00', '2019-08-27 22:53:41', '2018-08-30 22:00:00', '2019-08-27 22:53:41', 'Semestre 1 Année Académique 2018/2019', 'Semestre 1', '-1179217583', 'ACTIVE', 72, 1, 1);
INSERT INTO `semestre` VALUES (156, '2019-08-29 22:00:00', '2019-08-27 22:55:51', '2019-01-30 23:00:00', '2019-08-27 23:02:11', 'Semestre 2 Année Académique 2018/2019', 'Semestre 2', '-2136823759', 'ACTIVE', 72, 1, 1);
INSERT INTO `semestre` VALUES (157, '2020-01-29 23:00:00', '2019-08-27 22:58:22', '2019-08-30 22:00:00', '2019-08-27 22:58:22', 'Semestre 1 Année Académique 2019/2020', 'Semestre 1', '32233625', 'ACTIVE', 73, 1, 1);
INSERT INTO `semestre` VALUES (158, '2020-08-29 22:00:00', '2019-08-27 22:59:56', '2020-01-30 23:00:00', '2019-08-27 22:59:56', 'Semestre 2 Année Académique 2019/2020', 'Semestre 2', '-2107397411', 'ACTIVE', 73, 1, 1);

-- ----------------------------
-- Table structure for sequence
-- ----------------------------
DROP TABLE IF EXISTS `sequence`;
CREATE TABLE `sequence`  (
  `SEQ_NAME` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `SEQ_COUNT` decimal(38, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sequence
-- ----------------------------
INSERT INTO `sequence` VALUES ('SEQ_GEN', 7450);

-- ----------------------------
-- Table structure for session
-- ----------------------------
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_connection` datetime(0) NULL DEFAULT NULL,
  `date_creation` datetime(0) NOT NULL,
  `date_deconnection` datetime(0) NULL DEFAULT NULL,
  `date_modification` datetime(0) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `machine_cliente` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `statut_vie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `createur` bigint(20) NOT NULL,
  `modificateur` bigint(20) NOT NULL,
  `utilisateur` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_Session_modificateur`(`modificateur`) USING BTREE,
  INDEX `FK_Session_utilisateur`(`utilisateur`) USING BTREE,
  INDEX `FK_Session_createur`(`createur`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12102 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of session
-- ----------------------------
INSERT INTO `session` VALUES (1, '2019-09-07 12:09:24', '2019-09-07 12:09:24', NULL, '2019-09-07 12:09:24', NULL, NULL, 'DESKTOP-7OQ9KG8', '10363895', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (51, '2019-09-07 14:12:14', '2019-09-07 14:12:14', NULL, '2019-09-07 14:12:14', NULL, NULL, 'DESKTOP-7OQ9KG8', '1222510796', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (101, '2019-09-07 14:24:39', '2019-09-07 14:24:39', NULL, '2019-09-07 14:24:39', NULL, NULL, 'DESKTOP-7OQ9KG8', '954977490', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (151, '2019-09-12 17:50:38', '2019-09-12 17:50:38', NULL, '2019-09-12 17:50:38', NULL, NULL, 'DESKTOP-7OQ9KG8', '2117808892', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (651, '2019-09-12 18:16:14', '2019-09-12 18:16:14', NULL, '2019-09-12 18:16:14', NULL, NULL, 'DESKTOP-7OQ9KG8', '-1252265500', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (1201, '2019-09-13 08:40:24', '2019-09-13 08:40:24', NULL, '2019-09-13 08:40:24', NULL, NULL, 'DESKTOP-7OQ9KG8', '-1927770378', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (3501, '2019-09-13 12:48:21', '2019-09-13 12:48:21', NULL, '2019-09-13 12:48:21', NULL, NULL, 'DESKTOP-7OQ9KG8', '-413741005', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (4651, '2019-09-17 14:52:01', '2019-09-17 14:52:01', NULL, '2019-09-17 14:52:01', NULL, NULL, 'CRUNCH10', '-720365036', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (4701, '2019-09-17 15:08:58', '2019-09-17 15:08:58', NULL, '2019-09-17 15:08:58', NULL, NULL, 'CRUNCH10', '402124193', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (4751, '2019-09-18 09:47:49', '2019-09-18 09:47:49', NULL, '2019-09-18 09:47:49', NULL, NULL, 'CRUNCH10', '1846478392', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (4801, '2019-09-18 12:21:30', '2019-09-18 12:21:30', NULL, '2019-09-18 12:21:30', NULL, NULL, 'CRUNCH10', '-1608287384', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (4851, '2019-09-18 12:54:19', '2019-09-18 12:54:19', NULL, '2019-09-18 12:54:19', NULL, NULL, 'CRUNCH10', '-390388782', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (4901, '2019-09-18 13:30:41', '2019-09-18 13:30:41', NULL, '2019-09-18 13:30:41', NULL, NULL, 'CRUNCH10', '20907490', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (4951, '2019-09-18 15:22:33', '2019-09-18 15:22:33', NULL, '2019-09-18 15:22:33', NULL, NULL, 'CRUNCH10', '-817114411', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (5001, '2019-09-19 12:27:21', '2019-09-19 12:27:21', NULL, '2019-09-19 12:27:21', NULL, NULL, 'CRUNCH10', '-2133114841', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (5051, '2019-09-19 12:39:10', '2019-09-19 12:39:10', NULL, '2019-09-19 12:39:10', NULL, NULL, 'CRUNCH10', '191169217', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (5101, '2019-09-19 12:47:02', '2019-09-19 12:47:02', NULL, '2019-09-19 12:47:02', NULL, NULL, 'CRUNCH10', '-1824090193', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (5151, '2019-09-20 22:30:20', '2019-09-20 22:30:20', NULL, '2019-09-20 22:30:20', NULL, NULL, 'CRUNCH10', '-1118590261', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (5201, '2019-09-21 06:58:15', '2019-09-21 06:58:15', NULL, '2019-09-21 06:58:15', NULL, NULL, 'CRUNCH10', '1460106191', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (5251, '2019-09-21 07:06:51', '2019-09-21 07:06:51', NULL, '2019-09-21 07:06:51', NULL, NULL, 'CRUNCH10', '-1390513349', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (5301, '2019-09-21 08:32:55', '2019-09-21 08:32:55', NULL, '2019-09-21 08:32:55', NULL, NULL, 'CRUNCH10', '-373433211', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (5351, '2019-09-21 08:47:28', '2019-09-21 08:47:28', NULL, '2019-09-21 08:47:28', NULL, NULL, 'CRUNCH10', '1615305744', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (5401, '2019-09-21 09:03:29', '2019-09-21 09:03:29', NULL, '2019-09-21 09:03:29', NULL, NULL, 'CRUNCH10', '-210388468', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (5451, '2019-09-21 09:26:19', '2019-09-21 09:26:19', NULL, '2019-09-21 09:26:19', NULL, NULL, 'CRUNCH10', '-545858694', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (5501, '2019-09-21 09:36:07', '2019-09-21 09:36:07', NULL, '2019-09-21 09:36:07', NULL, NULL, 'CRUNCH10', '452878515', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (5551, '2019-09-21 09:47:20', '2019-09-21 09:47:20', NULL, '2019-09-21 09:47:20', NULL, NULL, 'CRUNCH10', '1436147238', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (5601, '2019-09-21 10:02:18', '2019-09-21 10:02:18', NULL, '2019-09-21 10:02:18', NULL, NULL, 'CRUNCH10', '-351423110', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (5651, '2019-09-21 11:11:39', '2019-09-21 11:11:39', NULL, '2019-09-21 11:11:39', NULL, NULL, 'CRUNCH10', '-115962030', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (5701, '2019-09-27 02:05:30', '2019-09-27 02:05:30', NULL, '2019-09-27 02:05:30', NULL, NULL, 'CRUNCH10', '1682024682', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (5751, '2019-09-27 08:41:29', '2019-09-27 08:41:29', NULL, '2019-09-27 08:41:29', NULL, NULL, 'CRUNCH10', '-1617943190', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (5801, '2019-09-27 12:02:27', '2019-09-27 12:02:27', NULL, '2019-09-27 12:02:27', NULL, NULL, 'CRUNCH10', '-1269963222', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (5851, '2019-10-07 09:25:01', '2019-10-07 09:25:01', NULL, '2019-10-07 09:25:01', NULL, NULL, 'DESKTOP-OGAHMPH', '753637797', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (5901, '2019-10-07 09:28:42', '2019-10-07 09:28:42', NULL, '2019-10-07 09:28:42', NULL, NULL, 'DESKTOP-OGAHMPH', '-995005397', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (5951, '2019-10-07 09:37:50', '2019-10-07 09:37:50', NULL, '2019-10-07 09:37:50', NULL, NULL, 'DESKTOP-OGAHMPH', '-924528148', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (6001, '2019-10-07 10:22:21', '2019-10-07 10:22:21', NULL, '2019-10-07 10:22:21', NULL, NULL, 'DESKTOP-OGAHMPH', '1377261130', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (6051, '2019-10-07 10:47:30', '2019-10-07 10:47:30', NULL, '2019-10-07 10:47:30', NULL, NULL, 'DESKTOP-OGAHMPH', '1659819704', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (6101, '2019-10-07 10:54:32', '2019-10-07 10:54:32', NULL, '2019-10-07 10:54:32', NULL, NULL, 'DESKTOP-OGAHMPH', '1273283538', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (6151, '2019-10-07 11:07:57', '2019-10-07 11:07:57', NULL, '2019-10-07 11:07:57', NULL, NULL, 'DESKTOP-OGAHMPH', '-1737828444', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (6201, '2019-10-07 11:16:25', '2019-10-07 11:16:25', NULL, '2019-10-07 11:16:25', NULL, NULL, 'DESKTOP-OGAHMPH', '33890580', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (6251, '2019-10-07 11:21:36', '2019-10-07 11:21:36', NULL, '2019-10-07 11:21:36', NULL, NULL, 'DESKTOP-OGAHMPH', '-2061719667', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (6301, '2019-10-07 11:31:01', '2019-10-07 11:31:01', NULL, '2019-10-07 11:31:01', NULL, NULL, 'DESKTOP-OGAHMPH', '878642071', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (6351, '2019-10-07 11:41:21', '2019-10-07 11:41:21', NULL, '2019-10-07 11:41:22', NULL, NULL, 'DESKTOP-OGAHMPH', '90301017', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (6401, '2019-10-07 11:51:20', '2019-10-07 11:51:20', NULL, '2019-10-07 11:51:20', NULL, NULL, 'DESKTOP-OGAHMPH', '-40872132', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (6451, '2019-10-07 12:09:24', '2019-10-07 12:09:24', NULL, '2019-10-07 12:09:25', NULL, NULL, 'DESKTOP-OGAHMPH', '-1762952467', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (6501, '2019-10-07 12:13:28', '2019-10-07 12:13:28', NULL, '2019-10-07 12:13:28', NULL, NULL, 'DESKTOP-OGAHMPH', '1056934177', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (6551, '2019-10-07 12:23:44', '2019-10-07 12:23:44', NULL, '2019-10-07 12:23:44', NULL, NULL, 'DESKTOP-OGAHMPH', '-169127769', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (6601, '2019-10-07 12:26:16', '2019-10-07 12:26:16', NULL, '2019-10-07 12:26:16', NULL, NULL, 'DESKTOP-OGAHMPH', '158533134', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (6651, '2019-10-07 12:28:37', '2019-10-07 12:28:37', NULL, '2019-10-07 12:28:37', NULL, NULL, 'DESKTOP-OGAHMPH', '-2109833798', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (6701, '2019-10-07 12:30:06', '2019-10-07 12:30:06', NULL, '2019-10-07 12:30:06', NULL, NULL, 'DESKTOP-OGAHMPH', '2117665402', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (6751, '2019-10-07 12:43:29', '2019-10-07 12:43:29', NULL, '2019-10-07 12:43:29', NULL, NULL, 'DESKTOP-OGAHMPH', '-2059008883', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (6801, '2019-10-07 13:02:38', '2019-10-07 13:02:38', NULL, '2019-10-07 13:02:39', NULL, NULL, 'DESKTOP-OGAHMPH', '281626834', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (6851, '2019-10-07 16:06:22', '2019-10-07 16:06:22', NULL, '2019-10-07 16:06:23', NULL, NULL, 'DESKTOP-OGAHMPH', '1452577994', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (6901, '2019-10-07 16:10:25', '2019-10-07 16:10:25', NULL, '2019-10-07 16:10:25', NULL, NULL, 'DESKTOP-OGAHMPH', '957573261', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (6951, '2019-10-07 16:11:32', '2019-10-07 16:11:32', NULL, '2019-10-07 16:11:33', NULL, NULL, 'DESKTOP-OGAHMPH', '1429894393', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (7001, '2019-10-07 17:10:56', '2019-10-07 17:10:56', NULL, '2019-10-07 17:10:57', NULL, NULL, 'DESKTOP-OGAHMPH', '-754531395', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (7051, '2019-10-07 17:16:02', '2019-10-07 17:16:02', NULL, '2019-10-07 17:16:02', NULL, NULL, 'DESKTOP-OGAHMPH', '-742137447', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (7101, '2019-10-07 17:37:12', '2019-10-07 17:37:12', NULL, '2019-10-07 17:37:12', NULL, NULL, 'DESKTOP-OGAHMPH', '1784498402', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (7151, '2019-10-07 17:44:01', '2019-10-07 17:44:01', NULL, '2019-10-07 17:44:01', NULL, NULL, 'DESKTOP-OGAHMPH', '-409028585', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (7201, '2019-10-07 17:49:46', '2019-10-07 17:49:46', NULL, '2019-10-07 17:49:46', NULL, NULL, 'DESKTOP-OGAHMPH', '-258698622', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (7251, '2019-10-07 17:58:44', '2019-10-07 17:58:44', NULL, '2019-10-07 17:58:45', NULL, NULL, 'DESKTOP-OGAHMPH', '791082104', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (7301, '2019-10-07 18:06:54', '2019-10-07 18:06:54', NULL, '2019-10-07 18:06:54', NULL, NULL, 'DESKTOP-OGAHMPH', '-326679101', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (7351, '2019-10-07 18:25:17', '2019-10-07 18:25:17', NULL, '2019-10-07 18:25:18', NULL, NULL, 'DESKTOP-OGAHMPH', '1949826583', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (7401, '2019-10-08 13:47:18', '2019-10-08 13:47:18', NULL, '2019-10-08 13:47:19', NULL, NULL, 'DESKTOP-OGAHMPH', '1392273753', 'ACTIF', 'ACTIVE', 1, 1, NULL);

-- ----------------------------
-- Table structure for sms
-- ----------------------------
DROP TABLE IF EXISTS `sms`;
CREATE TABLE `sms`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`code`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for specialite
-- ----------------------------
DROP TABLE IF EXISTS `specialite`;
CREATE TABLE `specialite`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_creation` datetime(0) NOT NULL,
  `date_modification` datetime(0) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut_vie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `createur` bigint(20) NOT NULL,
  `filiere` bigint(20) NULL DEFAULT NULL,
  `modificateur` bigint(20) NOT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_specialite_filiere`(`filiere`) USING BTREE,
  INDEX `FK_specialite_modificateur`(`modificateur`) USING BTREE,
  INDEX `FK_specialite_createur`(`createur`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 57 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of specialite
-- ----------------------------
INSERT INTO `specialite` VALUES (53, '2019-08-27 19:15:37', '2019-08-27 19:15:37', '', 'Génie Logiciel', '1524782926', 'ACTIVE', 1, 52, 1);
INSERT INTO `specialite` VALUES (54, '2019-08-27 19:17:01', '2019-08-27 19:17:01', '', 'Informatique et système d\'information', '1619430251', 'ACTIVE', 1, 51, 1);
INSERT INTO `specialite` VALUES (55, '2019-08-27 19:18:03', '2019-08-27 19:18:03', '', 'Système réseau et télécommunication', '1690883794', 'ACTIVE', 1, 51, 1);
INSERT INTO `specialite` VALUES (56, '2019-08-27 19:18:38', '2019-08-27 19:18:38', '', 'Tronc Commun', '1730403710', 'ACTIVE', 1, 51, 1);

-- ----------------------------
-- Table structure for tmp_ue
-- ----------------------------
DROP TABLE IF EXISTS `tmp_ue`;
CREATE TABLE `tmp_ue`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codeue` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 492 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for type_evaluation
-- ----------------------------
DROP TABLE IF EXISTS `type_evaluation`;
CREATE TABLE `type_evaluation`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_creation` datetime(0) NOT NULL,
  `date_modification` datetime(0) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pourcentage` float NULL DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut_vie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `createur` bigint(20) NOT NULL,
  `enseignement` bigint(20) NULL DEFAULT NULL,
  `modificateur` bigint(20) NOT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_type_evaluation_enseignement`(`enseignement`) USING BTREE,
  INDEX `FK_type_evaluation_createur`(`createur`) USING BTREE,
  INDEX `FK_type_evaluation_modificateur`(`modificateur`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8218 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type_evaluation
-- ----------------------------
INSERT INTO `type_evaluation` VALUES (311, '2019-09-12 17:54:48', '2019-09-12 17:54:48', 'Controle continu', 'CC', 30, '314874847', 'ACTIVE', 1, 247, 1);
INSERT INTO `type_evaluation` VALUES (312, '2019-09-12 17:54:48', '2019-09-12 17:54:48', 'Rattrapes', 'RA', 70, '622171957', 'ACTIVE', 1, 247, 1);
INSERT INTO `type_evaluation` VALUES (313, '2019-09-12 17:54:49', '2019-09-12 17:54:49', 'Session normale', 'SN', 70, '650974088', 'ACTIVE', 1, 247, 1);
INSERT INTO `type_evaluation` VALUES (314, '2019-09-12 17:54:49', '2019-09-12 17:54:49', 'Controle continu', 'CC', 30, '-513753010', 'ACTIVE', 1, 248, 1);
INSERT INTO `type_evaluation` VALUES (315, '2019-09-12 17:54:49', '2019-09-12 17:54:49', 'Rattrapes', 'RA', 70, '-194437634', 'ACTIVE', 1, 248, 1);
INSERT INTO `type_evaluation` VALUES (316, '2019-09-12 17:54:49', '2019-09-12 17:54:49', 'Session normale', 'SN', 70, '-164675464', 'ACTIVE', 1, 248, 1);
INSERT INTO `type_evaluation` VALUES (317, '2019-09-12 17:54:49', '2019-09-12 17:54:49', 'Controle continu', 'CC', 30, '-258586245', 'ACTIVE', 1, 249, 1);
INSERT INTO `type_evaluation` VALUES (318, '2019-09-12 17:54:49', '2019-09-12 17:54:49', 'Rattrapes', 'RA', 70, '63644805', 'ACTIVE', 1, 249, 1);
INSERT INTO `type_evaluation` VALUES (319, '2019-09-12 17:54:50', '2019-09-12 17:54:50', 'Session normale', 'SN', 70, '84624396', 'ACTIVE', 1, 249, 1);
INSERT INTO `type_evaluation` VALUES (320, '2019-09-12 17:54:50', '2019-09-12 17:54:50', 'Controle continu', 'CC', 30, '-154649099', 'ACTIVE', 1, 250, 1);
INSERT INTO `type_evaluation` VALUES (321, '2019-09-12 17:54:50', '2019-09-12 17:54:50', 'Rattrapes', 'RA', 70, '148630070', 'ACTIVE', 1, 250, 1);
INSERT INTO `type_evaluation` VALUES (322, '2019-09-12 17:54:50', '2019-09-12 17:54:50', 'Session normale', 'SN', 70, '152720086', 'ACTIVE', 1, 250, 1);
INSERT INTO `type_evaluation` VALUES (323, '2019-09-12 17:54:50', '2019-09-12 17:54:50', 'Session normale', 'SN', 100, '-1283311796', 'ACTIVE', 1, 251, 1);
INSERT INTO `type_evaluation` VALUES (324, '2019-09-12 17:54:50', '2019-09-12 17:54:50', 'Controle continu', 'CC', 30, '-1456303731', 'ACTIVE', 1, 252, 1);
INSERT INTO `type_evaluation` VALUES (325, '2019-09-12 17:54:50', '2019-09-12 17:54:50', 'Rattrapes', 'RA', 70, '-1152206751', 'ACTIVE', 1, 252, 1);
INSERT INTO `type_evaluation` VALUES (326, '2019-09-12 17:54:50', '2019-09-12 17:54:50', 'Session normale', 'SN', 70, '-1147227810', 'ACTIVE', 1, 252, 1);
INSERT INTO `type_evaluation` VALUES (327, '2019-09-12 17:54:51', '2019-09-12 17:54:51', 'Controle continu', 'CC', 30, '-687810653', 'ACTIVE', 1, 253, 1);
INSERT INTO `type_evaluation` VALUES (328, '2019-09-12 17:54:51', '2019-09-12 17:54:51', 'Rattrapes', 'RA', 70, '-366610756', 'ACTIVE', 1, 253, 1);
INSERT INTO `type_evaluation` VALUES (329, '2019-09-12 17:54:51', '2019-09-12 17:54:51', 'Session normale', 'SN', 70, '-380441468', 'ACTIVE', 1, 253, 1);
INSERT INTO `type_evaluation` VALUES (330, '2019-09-12 17:54:51', '2019-09-12 17:54:51', 'Controle continu', 'CC', 30, '-358255091', 'ACTIVE', 1, 254, 1);
INSERT INTO `type_evaluation` VALUES (331, '2019-09-12 17:54:51', '2019-09-12 17:54:51', 'Rattrapes', 'RA', 70, '-17321059', 'ACTIVE', 1, 254, 1);
INSERT INTO `type_evaluation` VALUES (332, '2019-09-12 17:54:51', '2019-09-12 17:54:51', 'Session normale', 'SN', 70, '-20378000', 'ACTIVE', 1, 254, 1);
INSERT INTO `type_evaluation` VALUES (333, '2019-09-12 17:54:51', '2019-09-12 17:54:51', 'Session normale', 'SN', 100, '-2041268397', 'ACTIVE', 1, 255, 1);
INSERT INTO `type_evaluation` VALUES (334, '2019-09-12 17:54:52', '2019-09-12 17:54:52', 'Controle continu', 'CC', 30, '-440944797', 'ACTIVE', 1, 256, 1);
INSERT INTO `type_evaluation` VALUES (335, '2019-09-12 17:54:52', '2019-09-12 17:54:52', 'Rattrapes', 'RA', 70, '-134003257', 'ACTIVE', 1, 256, 1);
INSERT INTO `type_evaluation` VALUES (336, '2019-09-12 17:54:52', '2019-09-12 17:54:52', 'Session normale', 'SN', 70, '-108294585', 'ACTIVE', 1, 256, 1);
INSERT INTO `type_evaluation` VALUES (337, '2019-09-12 17:54:53', '2019-09-12 17:54:53', 'Controle continu', 'CC', 30, '-566136097', 'ACTIVE', 1, 257, 1);
INSERT INTO `type_evaluation` VALUES (338, '2019-09-12 17:54:53', '2019-09-12 17:54:53', 'Rattrapes', 'RA', 70, '-257985619', 'ACTIVE', 1, 257, 1);
INSERT INTO `type_evaluation` VALUES (339, '2019-09-12 17:54:53', '2019-09-12 17:54:53', 'Session normale', 'SN', 70, '-231281351', 'ACTIVE', 1, 257, 1);
INSERT INTO `type_evaluation` VALUES (340, '2019-09-12 17:54:53', '2019-09-12 17:54:53', 'Controle continu', 'CC', 30, '-1529358581', 'ACTIVE', 1, 258, 1);
INSERT INTO `type_evaluation` VALUES (341, '2019-09-12 17:54:53', '2019-09-12 17:54:53', 'Rattrapes', 'RA', 70, '-1220639191', 'ACTIVE', 1, 258, 1);
INSERT INTO `type_evaluation` VALUES (342, '2019-09-12 17:54:54', '2019-09-12 17:54:54', 'Session normale', 'SN', 70, '-1200264069', 'ACTIVE', 1, 258, 1);
INSERT INTO `type_evaluation` VALUES (343, '2019-09-12 17:54:54', '2019-09-12 17:54:54', 'Session normale', 'SN', 100, '474634948', 'ACTIVE', 1, 259, 1);
INSERT INTO `type_evaluation` VALUES (344, '2019-09-12 17:54:54', '2019-09-12 17:54:54', 'Controle continu', 'CC', 30, '476807804', 'ACTIVE', 1, 260, 1);
INSERT INTO `type_evaluation` VALUES (345, '2019-09-12 17:54:54', '2019-09-12 17:54:54', 'Rattrapes', 'RA', 70, '815395074', 'ACTIVE', 1, 260, 1);
INSERT INTO `type_evaluation` VALUES (346, '2019-09-12 17:54:54', '2019-09-12 17:54:54', 'Session normale', 'SN', 70, '808106850', 'ACTIVE', 1, 260, 1);
INSERT INTO `type_evaluation` VALUES (347, '2019-09-12 17:54:54', '2019-09-12 17:54:54', 'Controle continu', 'CC', 30, '1309717221', 'ACTIVE', 1, 261, 1);
INSERT INTO `type_evaluation` VALUES (348, '2019-09-12 17:54:55', '2019-09-12 17:54:55', 'Rattrapes', 'RA', 70, '1646739983', 'ACTIVE', 1, 261, 1);
INSERT INTO `type_evaluation` VALUES (349, '2019-09-12 17:54:55', '2019-09-12 17:54:55', 'Session normale', 'SN', 70, '1651434468', 'ACTIVE', 1, 261, 1);
INSERT INTO `type_evaluation` VALUES (350, '2019-09-12 17:54:55', '2019-09-12 17:54:55', 'Controle continu', 'CC', 30, '309715216', 'ACTIVE', 1, 262, 1);
INSERT INTO `type_evaluation` VALUES (351, '2019-09-12 17:54:55', '2019-09-12 17:54:55', 'Rattrapes', 'RA', 70, '657476192', 'ACTIVE', 1, 262, 1);
INSERT INTO `type_evaluation` VALUES (352, '2019-09-12 17:54:55', '2019-09-12 17:54:55', 'Session normale', 'SN', 70, '660179485', 'ACTIVE', 1, 262, 1);
INSERT INTO `type_evaluation` VALUES (353, '2019-09-12 17:54:55', '2019-09-12 17:54:55', 'Controle continu', 'CC', 30, '571260540', 'ACTIVE', 1, 263, 1);
INSERT INTO `type_evaluation` VALUES (354, '2019-09-12 17:54:56', '2019-09-12 17:54:56', 'Rattrapes', 'RA', 70, '892709336', 'ACTIVE', 1, 263, 1);
INSERT INTO `type_evaluation` VALUES (355, '2019-09-12 17:54:56', '2019-09-12 17:54:56', 'Session normale', 'SN', 70, '915893461', 'ACTIVE', 1, 263, 1);
INSERT INTO `type_evaluation` VALUES (356, '2019-09-12 17:54:56', '2019-09-12 17:54:56', 'Controle continu', 'CC', 30, '-648216342', 'ACTIVE', 1, 264, 1);
INSERT INTO `type_evaluation` VALUES (357, '2019-09-12 17:54:56', '2019-09-12 17:54:56', 'Rattrapes', 'RA', 70, '-345612756', 'ACTIVE', 1, 264, 1);
INSERT INTO `type_evaluation` VALUES (358, '2019-09-12 17:54:56', '2019-09-12 17:54:56', 'Session normale', 'SN', 70, '-317557322', 'ACTIVE', 1, 264, 1);
INSERT INTO `type_evaluation` VALUES (359, '2019-09-12 17:54:56', '2019-09-12 17:54:56', 'Controle continu', 'CC', 30, '-771151317', 'ACTIVE', 1, 265, 1);
INSERT INTO `type_evaluation` VALUES (360, '2019-09-12 17:54:57', '2019-09-12 17:54:57', 'Rattrapes', 'RA', 70, '-427799409', 'ACTIVE', 1, 265, 1);
INSERT INTO `type_evaluation` VALUES (361, '2019-09-12 17:54:57', '2019-09-12 17:54:57', 'Session normale', 'SN', 70, '-436154343', 'ACTIVE', 1, 265, 1);
INSERT INTO `type_evaluation` VALUES (362, '2019-09-12 17:54:57', '2019-09-12 17:54:57', 'Controle continu', 'CC', 20, '1687441637', 'ACTIVE', 1, 266, 1);
INSERT INTO `type_evaluation` VALUES (363, '2019-09-12 17:54:58', '2019-09-12 17:54:58', 'Rattrapes', 'RA', 50, '2027580705', 'ACTIVE', 1, 266, 1);
INSERT INTO `type_evaluation` VALUES (364, '2019-09-12 17:54:58', '2019-09-12 17:54:58', 'Session normale', 'SN', 50, '2053111592', 'ACTIVE', 1, 266, 1);
INSERT INTO `type_evaluation` VALUES (365, '2019-09-12 17:54:58', '2019-09-12 17:54:58', 'Travaux pratiques', 'TP', 30, '1867325616', 'ACTIVE', 1, 266, 1);
INSERT INTO `type_evaluation` VALUES (366, '2019-09-12 17:54:58', '2019-09-12 17:54:58', 'Controle continu', 'CC', 20, '-1517343612', 'ACTIVE', 1, 267, 1);
INSERT INTO `type_evaluation` VALUES (367, '2019-09-12 17:54:58', '2019-09-12 17:54:58', 'Rattrapes', 'RA', 50, '-1182929221', 'ACTIVE', 1, 267, 1);
INSERT INTO `type_evaluation` VALUES (368, '2019-09-12 17:54:59', '2019-09-12 17:54:59', 'Session normale', 'SN', 50, '-1180368156', 'ACTIVE', 1, 267, 1);
INSERT INTO `type_evaluation` VALUES (369, '2019-09-12 17:54:59', '2019-09-12 17:54:59', 'Travaux pratiques', 'TP', 30, '-1329530422', 'ACTIVE', 1, 267, 1);
INSERT INTO `type_evaluation` VALUES (370, '2019-09-12 17:54:59', '2019-09-12 17:54:59', 'Controle continu', 'CC', 30, '1243598700', 'ACTIVE', 1, 268, 1);
INSERT INTO `type_evaluation` VALUES (371, '2019-09-12 17:54:59', '2019-09-12 17:54:59', 'Rattrapes', 'RA', 70, '1590399637', 'ACTIVE', 1, 268, 1);
INSERT INTO `type_evaluation` VALUES (372, '2019-09-12 17:54:59', '2019-09-12 17:54:59', 'Session normale', 'SN', 70, '1594276311', 'ACTIVE', 1, 268, 1);
INSERT INTO `type_evaluation` VALUES (373, '2019-09-12 17:55:00', '2019-09-12 17:55:00', 'Controle continu', 'CC', 30, '151215809', 'ACTIVE', 1, 269, 1);
INSERT INTO `type_evaluation` VALUES (374, '2019-09-12 17:55:00', '2019-09-12 17:55:00', 'Rattrapes', 'RA', 70, '498550101', 'ACTIVE', 1, 269, 1);
INSERT INTO `type_evaluation` VALUES (375, '2019-09-12 17:55:00', '2019-09-12 17:55:00', 'Session normale', 'SN', 70, '500968938', 'ACTIVE', 1, 269, 1);
INSERT INTO `type_evaluation` VALUES (376, '2019-09-12 17:55:00', '2019-09-12 17:55:00', 'Controle continu', 'CC', 30, '1608796427', 'ACTIVE', 1, 270, 1);
INSERT INTO `type_evaluation` VALUES (377, '2019-09-12 17:55:00', '2019-09-12 17:55:00', 'Rattrapes', 'RA', 70, '1948983762', 'ACTIVE', 1, 270, 1);
INSERT INTO `type_evaluation` VALUES (378, '2019-09-12 17:55:00', '2019-09-12 17:55:00', 'Session normale', 'SN', 70, '1951900397', 'ACTIVE', 1, 270, 1);
INSERT INTO `type_evaluation` VALUES (379, '2019-09-12 17:55:01', '2019-09-12 17:55:01', 'Session normale', 'SN', 100, '910576187', 'ACTIVE', 1, 271, 1);
INSERT INTO `type_evaluation` VALUES (380, '2019-09-12 17:55:01', '2019-09-12 17:55:01', 'Controle continu', 'CC', 30, '-1702266262', 'ACTIVE', 1, 272, 1);
INSERT INTO `type_evaluation` VALUES (381, '2019-09-12 17:55:01', '2019-09-12 17:55:01', 'Rattrapes', 'RA', 70, '-1361901142', 'ACTIVE', 1, 272, 1);
INSERT INTO `type_evaluation` VALUES (382, '2019-09-12 17:55:01', '2019-09-12 17:55:01', 'Session normale', 'SN', 70, '-1357775569', 'ACTIVE', 1, 272, 1);
INSERT INTO `type_evaluation` VALUES (383, '2019-09-12 17:55:01', '2019-09-12 17:55:01', 'Controle continu', 'CC', 30, '-2034966896', 'ACTIVE', 1, 273, 1);
INSERT INTO `type_evaluation` VALUES (384, '2019-09-12 17:55:01', '2019-09-12 17:55:01', 'Rattrapes', 'RA', 70, '-1713340315', 'ACTIVE', 1, 273, 1);
INSERT INTO `type_evaluation` VALUES (385, '2019-09-12 17:55:01', '2019-09-12 17:55:01', 'Session normale', 'SN', 70, '-1690369532', 'ACTIVE', 1, 273, 1);
INSERT INTO `type_evaluation` VALUES (386, '2019-09-12 17:55:01', '2019-09-12 17:55:01', 'Controle continu', 'CC', 30, '426893546', 'ACTIVE', 1, 274, 1);
INSERT INTO `type_evaluation` VALUES (387, '2019-09-12 17:55:01', '2019-09-12 17:55:01', 'Rattrapes', 'RA', 70, '748200114', 'ACTIVE', 1, 274, 1);
INSERT INTO `type_evaluation` VALUES (388, '2019-09-12 17:55:02', '2019-09-12 17:55:02', 'Session normale', 'SN', 70, '734440516', 'ACTIVE', 1, 274, 1);
INSERT INTO `type_evaluation` VALUES (389, '2019-09-12 17:55:02', '2019-09-12 17:55:02', 'Controle continu', 'CC', 30, '-455321921', 'ACTIVE', 1, 275, 1);
INSERT INTO `type_evaluation` VALUES (390, '2019-09-12 17:55:02', '2019-09-12 17:55:02', 'Rattrapes', 'RA', 70, '-115845726', 'ACTIVE', 1, 275, 1);
INSERT INTO `type_evaluation` VALUES (391, '2019-09-12 17:55:02', '2019-09-12 17:55:02', 'Session normale', 'SN', 70, '-121711670', 'ACTIVE', 1, 275, 1);
INSERT INTO `type_evaluation` VALUES (392, '2019-09-12 17:55:02', '2019-09-12 17:55:02', 'Controle continu', 'CC', 20, '-1332837728', 'ACTIVE', 1, 276, 1);
INSERT INTO `type_evaluation` VALUES (393, '2019-09-12 17:55:02', '2019-09-12 17:55:02', 'Rattrapes', 'RA', 50, '-967879874', 'ACTIVE', 1, 276, 1);
INSERT INTO `type_evaluation` VALUES (394, '2019-09-12 17:55:02', '2019-09-12 17:55:02', 'Session normale', 'SN', 50, '-964074314', 'ACTIVE', 1, 276, 1);
INSERT INTO `type_evaluation` VALUES (395, '2019-09-12 17:55:03', '2019-09-12 17:55:03', 'Travaux pratiques', 'TP', 30, '-1155976094', 'ACTIVE', 1, 276, 1);
INSERT INTO `type_evaluation` VALUES (396, '2019-09-12 17:55:03', '2019-09-12 17:55:03', 'Controle continu', 'CC', 30, '-733028541', 'ACTIVE', 1, 277, 1);
INSERT INTO `type_evaluation` VALUES (397, '2019-09-12 17:55:03', '2019-09-12 17:55:03', 'Rattrapes', 'RA', 70, '-426549242', 'ACTIVE', 1, 277, 1);
INSERT INTO `type_evaluation` VALUES (398, '2019-09-12 17:55:03', '2019-09-12 17:55:03', 'Session normale', 'SN', 70, '-392271333', 'ACTIVE', 1, 277, 1);
INSERT INTO `type_evaluation` VALUES (399, '2019-09-12 17:55:04', '2019-09-12 17:55:04', 'Controle continu', 'CC', 30, '-325262384', 'ACTIVE', 1, 278, 1);
INSERT INTO `type_evaluation` VALUES (400, '2019-09-12 17:55:04', '2019-09-12 17:55:04', 'Rattrapes', 'RA', 70, '10942567', 'ACTIVE', 1, 278, 1);
INSERT INTO `type_evaluation` VALUES (401, '2019-09-12 17:55:04', '2019-09-12 17:55:04', 'Session normale', 'SN', 70, '2445405', 'ACTIVE', 1, 278, 1);
INSERT INTO `type_evaluation` VALUES (402, '2019-09-12 17:55:04', '2019-09-12 17:55:04', 'Controle continu', 'CC', 30, '783486210', 'ACTIVE', 1, 279, 1);
INSERT INTO `type_evaluation` VALUES (451, '2019-09-12 17:55:06', '2019-09-12 17:55:06', 'Rattrapes', 'RA', 70, '1041031082', 'ACTIVE', 1, 279, 1);
INSERT INTO `type_evaluation` VALUES (452, '2019-09-12 17:55:06', '2019-09-12 17:55:06', 'Session normale', 'SN', 70, '1062224015', 'ACTIVE', 1, 279, 1);
INSERT INTO `type_evaluation` VALUES (453, '2019-09-12 17:55:06', '2019-09-12 17:55:06', 'Session normale', 'SN', 100, '717299245', 'ACTIVE', 1, 280, 1);

-- ----------------------------
-- Table structure for ue
-- ----------------------------
DROP TABLE IF EXISTS `ue`;
CREATE TABLE `ue`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `code_ue` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `credits` int(11) NULL DEFAULT NULL,
  `date_creation` datetime(0) NOT NULL,
  `date_modification` datetime(0) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `statut_vie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `createur` bigint(20) NOT NULL,
  `modificateur` bigint(20) NOT NULL,
  `module` bigint(20) NULL DEFAULT NULL,
  `niveau` bigint(20) NULL DEFAULT NULL,
  `specialite` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_UE_niveau`(`niveau`) USING BTREE,
  INDEX `FK_UE_modificateur`(`modificateur`) USING BTREE,
  INDEX `FK_UE_specialite`(`specialite`) USING BTREE,
  INDEX `FK_UE_module`(`module`) USING BTREE,
  INDEX `FK_UE_createur`(`createur`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7570 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ue
-- ----------------------------
INSERT INTO `ue` VALUES (213, 'CHM1012', 6, '2019-09-12 17:51:56', '2019-09-12 17:51:56', '', 'Structure et transformation de la matière', '-412817933', 'ACTIVE', 'ACTIVE', 1, 1, 201, 57, 56);
INSERT INTO `ue` VALUES (214, 'MAT1022', 6, '2019-09-12 17:51:56', '2019-09-12 17:51:56', '', 'Outils mathématiques pour l’ingénieur', '-1245994203', 'ACTIVE', 'ACTIVE', 1, 1, 201, 57, 56);
INSERT INTO `ue` VALUES (215, 'INF1012', 5, '2019-09-12 17:51:56', '2019-09-12 17:51:56', '', 'Algorithmique', '-1007536345', 'ACTIVE', 'ACTIVE', 1, 1, 202, 57, 56);
INSERT INTO `ue` VALUES (216, 'ING1022', 4, '2019-09-12 17:51:57', '2019-09-12 17:51:57', '', 'Initiation à la définition et à la fabrication d’un objet technique', '-935219943', 'ACTIVE', 'ACTIVE', 1, 1, 203, 57, 56);
INSERT INTO `ue` VALUES (217, 'STG1012', 4, '2019-09-12 17:51:57', '2019-09-12 17:51:57', '', 'Stage technique', '1771151079', 'ACTIVE', 'ACTIVE', 1, 1, 203, 57, 56);
INSERT INTO `ue` VALUES (218, 'LAC1022', 4, '2019-09-12 17:51:57', '2019-09-12 17:51:57', '', 'Anglais - niveau pratique B1', '884668476', 'ACTIVE', 'ACTIVE', 1, 1, 204, 57, 56);
INSERT INTO `ue` VALUES (219, 'COM1022', 1, '2019-09-12 17:51:57', '2019-09-12 17:51:57', '', 'Atelier d\'écriture / Image, imaginaire et nouvelles technologies', '1638437112', 'ACTIVE', 'ACTIVE', 1, 1, 204, 57, 56);
INSERT INTO `ue` VALUES (220, 'HUM1022', 4, '2019-09-12 17:51:57', '2019-09-12 17:51:57', '', 'Réflexion humaine1', '1972106715', 'ACTIVE', 'ACTIVE', 1, 1, 204, 57, 56);
INSERT INTO `ue` VALUES (221, 'ARD1098', 1, '2019-09-12 17:51:57', '2019-09-12 17:51:57', '', 'Arduino / Raspberry', '-168086903', 'ACTIVE', 'ACTIVE', 1, 1, 205, 57, 56);
INSERT INTO `ue` VALUES (222, 'MAT1011', 5, '2019-09-12 17:51:57', '2019-09-12 17:51:57', '', 'Bases mathématiques pour l’ingénieur', '1843191948', 'ACTIVE', 'ACTIVE', 1, 1, 205, 57, 56);
INSERT INTO `ue` VALUES (223, 'PHY1011', 4, '2019-09-12 17:51:58', '2019-09-12 17:51:58', '', 'Bases de physique pour l’ingénieur', '1685213250', 'ACTIVE', 'ACTIVE', 1, 1, 205, 57, 56);
INSERT INTO `ue` VALUES (224, 'PHY1021', 4, '2019-09-12 17:51:58', '2019-09-12 17:51:58', '', 'Mesure physique et instrumentation', '700368266', 'ACTIVE', 'ACTIVE', 1, 1, 205, 57, 56);
INSERT INTO `ue` VALUES (225, 'ADR1090', 4, '2019-09-12 17:51:58', '2019-09-12 17:51:58', '', 'Arduino / Raspberry', '1069469256', 'ACTIVE', 'ACTIVE', 1, 1, 206, 57, 56);
INSERT INTO `ue` VALUES (226, 'LAC1011', 3, '2019-09-12 17:51:58', '2019-09-12 17:51:58', '', 'Anglais Remise à niveau A2', '1506884716', 'ACTIVE', 'ACTIVE', 1, 1, 206, 57, 56);
INSERT INTO `ue` VALUES (227, 'COM1011', 1, '2019-09-12 17:51:58', '2019-09-12 17:51:58', '', 'Formation à la communication écrite et orale', '-1974811198', 'ACTIVE', 'ACTIVE', 1, 1, 206, 57, 56);
INSERT INTO `ue` VALUES (228, 'HUM1011', 0, '2019-09-12 17:51:58', '2019-09-12 17:51:58', '', 'Réflexion humaine1', '1310023231', 'ACTIVE', 'ACTIVE', 1, 1, 206, 57, 56);
INSERT INTO `ue` VALUES (229, 'MAT2054', 5, '2019-09-12 17:51:58', '2019-09-12 17:51:58', '', 'Analyse avancée', '1551801746', 'ACTIVE', 'ACTIVE', 1, 1, 207, 58, 56);
INSERT INTO `ue` VALUES (230, 'MAT2043', 5, '2019-09-12 17:51:58', '2019-09-12 17:51:58', '', 'Eléments de probabilités', '298435199', 'ACTIVE', 'ACTIVE', 1, 1, 207, 58, 56);
INSERT INTO `ue` VALUES (231, 'PHY2033', 4, '2019-09-12 17:51:58', '2019-09-12 17:51:58', '', 'Eléments de base en électronique', '172903602', 'ACTIVE', 'ACTIVE', 1, 1, 207, 58, 56);
INSERT INTO `ue` VALUES (232, 'INF2023', 5, '2019-09-12 17:51:59', '2019-09-12 17:51:59', '', 'Introduction au langage C', '-1545040789', 'ACTIVE', 'ACTIVE', 1, 1, 208, 58, 56);
INSERT INTO `ue` VALUES (233, 'INF2033', 4, '2019-09-12 17:51:59', '2019-09-12 17:51:59', '', 'Réseaux d\'entreprise', '-491160517', 'ACTIVE', 'ACTIVE', 1, 1, 208, 58, 56);
INSERT INTO `ue` VALUES (234, 'LAC2033', 4, '2019-09-12 17:51:59', '2019-09-12 17:51:59', '', 'Anglais Niveau pratique B1/B2', '2098649643', 'ACTIVE', 'ACTIVE', 1, 1, 209, 58, 56);
INSERT INTO `ue` VALUES (235, 'ECO2013', 2, '2019-09-12 17:51:59', '2019-09-12 17:51:59', '', 'Économie générale pour l’ingénieur', '-450073971', 'ACTIVE', 'ACTIVE', 1, 1, 209, 58, 56);
INSERT INTO `ue` VALUES (236, 'HUM2033', 1, '2019-09-12 17:51:59', '2019-09-12 17:51:59', '', 'Ethique et développement1', '981837376', 'ACTIVE', 'ACTIVE', 1, 1, 209, 58, 56);
INSERT INTO `ue` VALUES (237, 'ARD2076', 0, '2019-09-12 17:51:59', '2019-09-12 17:51:59', '', 'Arduino / Raspberry', '-168222899', 'ACTIVE', 'ACTIVE', 1, 1, 208, 58, 56);
INSERT INTO `ue` VALUES (238, 'MAT2033', 5, '2019-09-12 17:51:59', '2019-09-12 17:51:59', '', 'Algèbre linéaire', '1947964444', 'ACTIVE', 'ACTIVE', 1, 1, 210, 58, 56);
INSERT INTO `ue` VALUES (239, 'PHY2054', 5, '2019-09-12 17:52:00', '2019-09-12 17:52:00', '', 'Champs, ondes, vibrations, propagation', '1601357179', 'ACTIVE', 'ACTIVE', 1, 1, 210, 58, 56);
INSERT INTO `ue` VALUES (240, 'PHY2051', 5, '2019-09-12 17:52:00', '2019-09-12 17:52:00', '', 'Analyse et traitement du signal', '-256536748', 'ACTIVE', 'ACTIVE', 1, 1, 210, 58, 56);
INSERT INTO `ue` VALUES (241, 'INF2054', 4, '2019-09-12 17:52:00', '2019-09-12 17:52:00', '', 'Architectures programmables', '-1134213412', 'ACTIVE', 'ACTIVE', 1, 1, 211, 58, 56);
INSERT INTO `ue` VALUES (242, 'INF2053', 4, '2019-09-12 17:52:00', '2019-09-12 17:52:00', '', 'Administration des systèmes', '-1869926787', 'ACTIVE', 'ACTIVE', 1, 1, 211, 58, 56);
INSERT INTO `ue` VALUES (243, 'LAC2054', 4, '2019-09-12 17:52:01', '2019-09-12 17:52:01', '', 'Anglais Niveau pratique B2', '-1471864329', 'ACTIVE', 'ACTIVE', 1, 1, 212, 58, 56);
INSERT INTO `ue` VALUES (244, 'ECO2024', 2, '2019-09-12 17:52:01', '2019-09-12 17:52:01', '', 'L\'entreprise et la gestion', '2094676902', 'ACTIVE', 'ACTIVE', 1, 1, 212, 58, 56);
INSERT INTO `ue` VALUES (245, 'HUM2054', 1, '2019-09-12 17:52:01', '2019-09-12 17:52:01', '', 'Ethique et développement 2', '-1105612762', 'ACTIVE', 'ACTIVE', 1, 1, 212, 58, 56);
INSERT INTO `ue` VALUES (246, 'ARD2067', 0, '2019-09-12 17:52:01', '2019-09-12 17:52:01', '', 'Arduino / Raspberry', '814483203', 'ACTIVE', 'ACTIVE', 1, 1, 208, 58, 56);

-- ----------------------------
-- Table structure for utilisateur
-- ----------------------------
DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE `utilisateur`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_creation` datetime(0) NOT NULL,
  `date_modification` datetime(0) NOT NULL,
  `date_naissance` datetime(0) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `login` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mot_de_passe` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nom` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `prenom` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sexe` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `signature` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statut` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `statut_vie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telephone` int(11) NOT NULL,
  `createur` bigint(20) NOT NULL,
  `modificateur` bigint(20) NOT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  UNIQUE INDEX `login`(`login`) USING BTREE,
  UNIQUE INDEX `telephone`(`telephone`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_utilisateur_createur`(`createur`) USING BTREE,
  INDEX `FK_utilisateur_modificateur`(`modificateur`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of utilisateur
-- ----------------------------
INSERT INTO `utilisateur` VALUES (1, '2019-04-08 12:52:09', '2019-05-19 11:51:08', '1990-04-09 00:00:00', NULL, 'channeldonkeng@gmail.com', NULL, 'channel', 'BA-32-53-87-6A-ED-6B-C2-2D-4A-6F-F5-3D-84-6-C6-AD-86-41-95-ED-14-4A-B5-C8-76-21-B6-C2-33-B5-48-BA-EA-E6-95-6D-F3-46-EC-8C-17-F5-EA-10-F3-5E-E3-CB-C5-14-79-7E-D7-DD-D3-14-54-64-E2-A0-BA-B4-13', 'Donkeng', 'Channel', 'FEMININ', '853839448', 'ACTIVE', 'ACTIVE', 656307859, 1, 1);

-- ----------------------------
-- Table structure for utilisateur_role
-- ----------------------------
DROP TABLE IF EXISTS `utilisateur_role`;
CREATE TABLE `utilisateur_role`  (
  `code_utilisateur` bigint(20) NOT NULL,
  `code_role` bigint(20) NOT NULL,
  PRIMARY KEY (`code_utilisateur`, `code_role`) USING BTREE,
  INDEX `FK_utilisateur_role_code_role`(`code_role`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Procedure structure for abs
-- ----------------------------
DROP PROCEDURE IF EXISTS `abs`;
delimiter ;;
CREATE PROCEDURE `abs`(IN `niv` INT, IN `fil` VARCHAR(255), IN `ans` INT, IN `sem` VARCHAR(255))
BEGIN
SELECT distinct matricule,CONCAT(nom," ",prenom) as pers,MONTHNAME(date_retard) as mois,nb_heures_absences,heure_justifie,(nb_heures_absences-heure_justifie) as HNJ
from etudiant, filiere, note, type_evaluation, module, est_inscrit, candidat, evaluation, enseignement, ue, niveau, classe, specialite, annee_academique, semestre,discipline
where note.est_inscrit=est_inscrit.code
and discipline.etudiant=etudiant.`code`
and discipline.semestre=semestre.`code`
and est_inscrit.enseignement=enseignement.code
and enseignement.ue=ue.`code`
and enseignement.semestre=semestre.`code`
and semestre.annee_academique=annee_academique.`code`
and extract(year from annee_academique.date_debut)=ans
and est_inscrit.candidat_inscrit=candidat.`code`
and evaluation.type_evaluation=type_evaluation.`code`
and ue.module=module.`code`
and note.evaluation=evaluation.`code`
and candidat.code=etudiant.code
and candidat.classe=classe.`code`
and classe.specialite=specialite.`code`
and specialite.filiere=filiere.`code`
and type_evaluation.enseignement=enseignement.`code`
and ue.module=module.`code`
#and classe.niveau=niveau.`code`
and semestre.libelle=sem
and filiere.libelle=fil;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_tmp
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_tmp`;
delimiter ;;
CREATE PROCEDURE `add_tmp`(IN `ue` VARCHAR(255))
BEGIN
	#Routine body goes here...
INSERT INTO tmp_ue(tmp_ue.codeue) values(ue);
END
;;
delimiter ;

-- ----------------------------
-- Function structure for add_tmp2
-- ----------------------------
DROP FUNCTION IF EXISTS `add_tmp2`;
delimiter ;;
CREATE FUNCTION `add_tmp2`(`codeue` VARCHAR(255), `credits` INT(11))
 RETURNS int(11)
BEGIN
	#Routine body goes here...
	DECLARE resultat int(11);
	
if (not EXISTS (select tmp_ue.codeue from tmp_ue
where codeue=tmp_ue.codeue)) then
SET resultat=credits;
	INSERT INTO tmp_ue(tmp_ue.codeue) values(codeue);
else	
SET resultat=0;
end if;

return resultat;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for AFFICHER_NOTE
-- ----------------------------
DROP PROCEDURE IF EXISTS `AFFICHER_NOTE`;
delimiter ;;
CREATE PROCEDURE `AFFICHER_NOTE`(IN `eval` VARCHAR(255), IN `code_ue` VARCHAR(255), IN `code_authentification` VARCHAR(255))
BEGIN
	select DISTINCT valeur_note, ue.code_ue as code_ue, type_evaluation.libelle as examen
from etudiant, filiere, note, type_evaluation, module, est_inscrit, candidat, evaluation, enseignement, ue, niveau, classe, specialite
where note.est_inscrit=est_inscrit.code
and est_inscrit.enseignement=enseignement.code
and enseignement.ue=ue.`code`
and est_inscrit.candidat_inscrit=candidat.`code`
and evaluation.type_evaluation=type_evaluation.`code`
and ue.module=module.`code`
and note.evaluation=evaluation.`code`
and candidat.code=etudiant.code
and ue.code_ue=code_ue
and type_evaluation.libelle=eval
and etudiant.code_authentification=code_authentification
and candidat.classe=classe.`code`
and classe.specialite=specialite.`code`
and specialite.filiere=filiere.`code`
and type_evaluation.enseignement=enseignement.`code`
and niveau.`code`=ue.niveau
and ue.module=module.`code`;

END
;;
delimiter ;

-- ----------------------------
-- Function structure for cred_an
-- ----------------------------
DROP FUNCTION IF EXISTS `cred_an`;
delimiter ;;
CREATE FUNCTION `cred_an`(`an` INT, `mat` VARCHAR(255), `class` VARCHAR(255))
 RETURNS int(11)
BEGIN
DECLARE resultat int;
	#Routine body goes here...
select DISTINCT
SUM((case when type_evaluation.libelle="SN" then add_tmp2(ue.code_ue,credits) else 0 END)) into resultat
from etudiant, filiere, note, type_evaluation, module, est_inscrit, candidat, evaluation, enseignement, ue, niveau, classe, specialite, annee_academique, semestre
where note.est_inscrit=est_inscrit.code
and est_inscrit.enseignement=enseignement.code
and enseignement.ue=ue.`code`
and enseignement.semestre=semestre.`code`
and semestre.annee_academique=annee_academique.`code`
and extract(year from annee_academique.date_debut)=an
and est_inscrit.candidat_inscrit=candidat.`code`
and evaluation.type_evaluation=type_evaluation.`code`
and ue.module=module.`code`
and note.evaluation=evaluation.`code`
and candidat.code=etudiant.code
and candidat.classe=classe.`code`
and classe.specialite=specialite.`code`
and specialite.filiere=filiere.`code`
and type_evaluation.enseignement=enseignement.`code`
and ue.module=module.`code`
and classe.libelle=class
and matricule=mat
group by matricule;
delete FROM tmp_ue;
	RETURN resultat;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for cred_sem
-- ----------------------------
DROP FUNCTION IF EXISTS `cred_sem`;
delimiter ;;
CREATE FUNCTION `cred_sem`(`an` INT, `mat` VARCHAR(255), `niv` VARCHAR(255), `sem` VARCHAR(255))
 RETURNS int(11)
BEGIN
DECLARE resultat int;
	#Routine body goes here...
	select DISTINCT
SUM((case when type_evaluation.libelle="SN" then add_tmp2(ue.code_ue,credits) else 0 END)) into resultat
from etudiant, filiere, note, type_evaluation, module, est_inscrit, candidat, evaluation, enseignement, ue, niveau, classe, specialite, annee_academique, semestre
where note.est_inscrit=est_inscrit.code
and est_inscrit.enseignement=enseignement.code
and enseignement.ue=ue.`code`
and enseignement.semestre=semestre.`code`
and semestre.annee_academique=annee_academique.`code`
and extract(year from annee_academique.date_debut)=an
and est_inscrit.candidat_inscrit=candidat.`code`
and evaluation.type_evaluation=type_evaluation.`code`
and ue.module=module.`code`
and note.evaluation=evaluation.`code`
and candidat.code=etudiant.code
and candidat.classe=classe.`code`
and classe.specialite=specialite.`code`
and specialite.filiere=filiere.`code`
and type_evaluation.enseignement=enseignement.`code`
and ue.module=module.`code`
and niveau.numero=niv
and matricule=mat
and semestre.libelle=sem
group by matricule;
delete FROM tmp_ue;
	RETURN resultat;
	

	RETURN 0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for cursus
-- ----------------------------
DROP PROCEDURE IF EXISTS `cursus`;
delimiter ;;
CREATE PROCEDURE `cursus`(IN `mat` VARCHAR(255))
BEGIN
	#Routine body goes here...
	select matricule, CONCAT(filiere.libelle," ",niveau.numero) as niveau,ue.code_ue as codeue,
module.libelle as module, ue.libelle as ue, extract(year from annee_academique.date_debut) as annee, nom, moyenne_ue_etudiant(mat,enseignement.`code`) as moyenne, (case when (moyenne_ue_etudiant(mat,enseignement.`code`) >=10) 
 THEN
      "CA" 
	WHEN (moyenne_ue_etudiant(mat,enseignement.`code`,extract(year from annee_academique.date_debut))>=9) THEN
      "CANT" 
	WHEN (moyenne_ue_etudiant(mat,enseignement.`code`,annee) <9) THEN
      "NC" 
 END)
 as decision,(case when (moyenne_ue_etudiant(mat,enseignement.`code`,annee) >=16 and moyenne_ue_etudiant(mat,enseignement.`code`)<=20) 
 THEN
      "A" 
	when (moyenne_ue_etudiant(mat,enseignement.`code`,extract(year from annee_academique.date_debut)) >=15 and moyenne_ue_etudiant(mat,enseignement.`code`,annee)<16) THEN
      "A-" 
	when (moyenne_ue_etudiant(mat,enseignement.`code`,extract(year from annee_academique.date_debut)) >=14 and moyenne_ue_etudiant(mat,enseignement.`code`,extract(year from annee_academique.date_debut))<15) THEN
      "B+" 
	when (moyenne_ue_etudiant(mat,enseignement.`code`,extract(year from annee_academique.date_debut)) >=13 and moyenne_ue_etudiant(mat,enseignement.`code`,extract(year from annee_academique.date_debut))<14) THEN
      "B" 
	when (moyenne_ue_etudiant(mat,enseignement.`code`,extract(year from annee_academique.date_debut)) >=12 and moyenne_ue_etudiant(mat,enseignement.`code`,extract(year from annee_academique.date_debut))<13) THEN
      "B-" 
	when (moyenne_ue_etudiant(mat,enseignement.`code`,extract(year from annee_academique.date_debut)) >=11 and moyenne_ue_etudiant(mat,enseignement.`code`,extract(year from annee_academique.date_debut))<12) THEN
      "C+" 
	when (moyenne_ue_etudiant(mat,enseignement.`code`,extract(year from annee_academique.date_debut)) >=10 and moyenne_ue_etudiant(mat,enseignement.`code`,extract(year from annee_academique.date_debut))<11) THEN
      "C" 
	when (moyenne_ue_etudiant(mat,enseignement.`code`,extract(year from annee_academique.date_debut)) >=9 and moyenne_ue_etudiant(mat,enseignement.`code`,extract(year from annee_academique.date_debut))<10) THEN
      "C-" 
	when (moyenne_ue_etudiant(mat,enseignement.`code`,extract(year from annee_academique.date_debut)) >=8 and moyenne_ue_etudiant(mat,enseignement.`code`,extract(year from annee_academique.date_debut))<9) THEN
      "D+" 
	when (moyenne_ue_etudiant(mat,enseignement.`code`,extract(year from annee_academique.date_debut)) >=7 and moyenne_ue_etudiant(mat,enseignement.`code`,extract(year from annee_academique.date_debut))<8) THEN
      "D" 
	when (moyenne_ue_etudiant(mat,enseignement.`code`,extract(year from annee_academique.date_debut)) >=6 and moyenne_ue_etudiant(mat,enseignement.`code`,extract(year from annee_academique.date_debut))<7) THEN
      "E" 
	when (moyenne_ue_etudiant(mat,enseignement.`code`,extract(year from annee_academique.date_debut)) >=0 and moyenne_ue_etudiant(mat,enseignement.`code`,extract(year from annee_academique.date_debut))<6) THEN
      "F" 
 END) as grade,(case when (moyenne_ue_etudiant(mat,enseignement.`code`,extract(year from annee_academique.date_debut)) >=9) 
 THEN
     CONCAT(credits,"/",credits)
	when (moyenne_ue_etudiant(mat,enseignement.`code`,extract(year from annee_academique.date_debut))<9) THEN
      CONCAT("0/",credits)
 END) as credits,(case when COUNT(case when type_evaluation.libelle='rattrapage' then 1 else NULL end )=1 then CONCAT('Rattrapge',' ',extract(year from annee_academique.date_debut)) when COUNT(case when type_evaluation.libelle='Rattrapage' then 1 else NULL end )=0 then CONCAT('Normale',' ',extract(year from annee_academique.date_debut))end) as Session,semestre.libelle as Semestre,(case when (((TRUNCATE(discipline.nb_heures_absences/5,0))*0.1) + (TRUNCATE(discipline.nb_retards/15,0)*0.1))=0 then 0
	else CONCAT("-",((TRUNCATE(discipline.nb_heures_absences/5,0))*0.1) + (TRUNCATE(discipline.nb_retards/15,0)*0.1)) end) as penalites
from etudiant, filiere, note, type_evaluation, module, est_inscrit, candidat, evaluation, enseignement, ue, niveau, classe, specialite, annee_academique, semestre,discipline
where note.est_inscrit=est_inscrit.code
and discipline.etudiant=etudiant.`code`
and discipline.semestre=semestre.`code`
and est_inscrit.enseignement=enseignement.code
and enseignement.ue=ue.`code`
and enseignement.semestre=semestre.`code`
and semestre.annee_academique=annee_academique.`code`
and est_inscrit.candidat_inscrit=candidat.`code`
and evaluation.type_evaluation=type_evaluation.`code`
and ue.module=module.`code`
and note.evaluation=evaluation.`code`
and candidat.code=etudiant.code
and candidat.classe=classe.`code`
and classe.specialite=specialite.`code`
and specialite.filiere=filiere.`code`
and type_evaluation.enseignement=enseignement.`code`
and ue.module=module.`code`
and etudiant.matricule=`mat`
#and classe.niveau=niveau.`code`
group by ue.libelle
order by extract(year from annee_academique.date_debut),semestre;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for decision
-- ----------------------------
DROP FUNCTION IF EXISTS `decision`;
delimiter ;;
CREATE FUNCTION `decision`(`val` FLOAT)
 RETURNS varchar(255) CHARSET latin1
BEGIN
	#Routine body goes here...
	declare resultat varchar(255);
	select case when val >=10
 THEN
      "CA" 
	WHEN val>=9 and val <10 THEN
      "CANT" 
	WHEN val>=7 and val <9 THEN
      "NC" 
	WHEN val <7 THEN
      "EL" 
 END into resultat;

	RETURN resultat;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for descisions
-- ----------------------------
DROP FUNCTION IF EXISTS `descisions`;
delimiter ;;
CREATE FUNCTION `descisions`(`codmod` INT, `an` INT, `sem` VARCHAR(255), `mat` VARCHAR(255))
 RETURNS varchar(255) CHARSET latin1
BEGIN
	#Routine body goes here...
declare resultat VARCHAR(255);
SELECT
case when COUNT(case when moy<9.99 then 1 else null end)=0 then "CA"
		when moy_mod(mat,codmod,2018,sem)>=10 and COUNT(case when moy>=8.99 and moy<10 then 1 else null end)>=1 and COUNT(case when moy<8.99 then 1 else null end)=0 then "CPC" 
	 when COUNT(case when moy<8.99 and moy>7 then 1 else null end)>=1 and COUNT(case when moy<7 then 1 else null end)=0  then "NC"
					else "EL" end into resultat
from (SELECT distinct ue.code_ue,ue.libelle,module.`code` as codmod,enseignement.`code`,ue.credits as cred,moyenne_ue_etudiant(mat, enseignement.`code`,an)-penalites(mat,an,sem) as moy
from ue,module,enseignement,etudiant,candidat,semestre,annee_academique
where ue.module=module.`code`
and enseignement.ue=ue.`code`
and module.`code`=codmod
and candidat.`code`=etudiant.`code`
and enseignement.semestre=semestre.`code`
and semestre.annee_academique=annee_academique.`code`
and EXTRACT(year from annee_academique.date_debut)=an
and semestre.libelle=sem) as t;
	RETURN resultat;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for disci
-- ----------------------------
DROP PROCEDURE IF EXISTS `disci`;
delimiter ;;
CREATE PROCEDURE `disci`(IN `an` INT, IN `clib` VARCHAR(255), IN `sem` VARCHAR(255))
  NO SQL 
BEGIN
	#Routine body goes here...
	SELECT matricule,CONCAT(nom," ",prenom) as nom_prenom,MONTHNAME(date_retard) as retard, SUM(nb_heures_absences) as absc,SUM(discipline.heure_justifie) as heure_j
	FROM candidat,etudiant,discipline,semestre,annee_academique,classe
	WHERE candidat.code=etudiant.code
    and candidat.classe=classe.code
	and etudiant.`code`=discipline.etudiant
	and discipline.semestre=semestre.`code`
	and semestre.annee_academique=annee_academique.`code`
	and EXTRACT(year from annee_academique.date_debut)=an
	and candidat.classe=classe.`code`
	and classe.libelle=clib
	and semestre.libelle=sem
    GROUP BY matricule,MONTHNAME(date_retard),CONCAT(nom," ",prenom)
	order by CONCAT(nom," ",prenom),semestre.libelle asc;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for enseignement_Etudiant
-- ----------------------------
DROP PROCEDURE IF EXISTS `enseignement_Etudiant`;
delimiter ;;
CREATE PROCEDURE `enseignement_Etudiant`(IN `mat` VARCHAR(255), IN `an` INT)
  NO SQL 
select est_inscrit.code as code_est_inscrit, enseignement.`code`as code_enseignement,enseignement.libelle as ens_lib
FROM candidat,est_inscrit,semestre,annee_academique,enseignement,etudiant
where est_inscrit.candidat_inscrit=candidat.`code`
and etudiant.`code`=candidat.`code`
and est_inscrit.enseignement=enseignement.`code`
and enseignement.semestre=semestre.`code`
and semestre.annee_academique=annee_academique.`code`
and EXTRACT(year from annee_academique.date_debut)=an
and matricule=mat
;;
delimiter ;

-- ----------------------------
-- Function structure for ens_exist
-- ----------------------------
DROP FUNCTION IF EXISTS `ens_exist`;
delimiter ;;
CREATE FUNCTION `ens_exist`(`libens` VARCHAR(255), `an` INT(11), `niv` INT(11))
 RETURNS int(11)
BEGIN
	#Routine body goes here..
	declare resultat int(11);
	set resultat:=-1;
select enseignement.code into resultat
from enseignement,semestre,annee_academique,ue,niveau
where enseignement.ue=ue.`code`
and ue.niveau=niveau.`code`
and enseignement.libelle=libens
and enseignement.semestre=semestre.`code`
and semestre.annee_academique=annee_academique.`code`
and EXTRACT(year from annee_academique.date_debut)=an
and niveau.numero=niv;
return resultat;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for etudi_class
-- ----------------------------
DROP FUNCTION IF EXISTS `etudi_class`;
delimiter ;;
CREATE FUNCTION `etudi_class`(`fil` VARCHAR(255), `class` VARCHAR(255), `ans` INT(11))
 RETURNS int(11)
BEGIN
	#Routine body goes here...
	declare resultat int;
		select DISTINCT count(distinct matricule) into resultat
from etudiant, filiere,candidat,niveau, classe, specialite, annee_academique, semestre
where extract(year from annee_academique.date_debut)=ans
and candidat.code=etudiant.code
and candidat.classe=classe.`code`
and classe.specialite=specialite.`code`
and specialite.filiere=filiere.`code`
and filiere.libelle=fil
and classe.libelle=class;

	RETURN resultat;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for etud_class
-- ----------------------------
DROP PROCEDURE IF EXISTS `etud_class`;
delimiter ;;
CREATE PROCEDURE `etud_class`(IN `class` VARCHAR(255), IN `fil` VARCHAR(255), IN `ans` INT)
BEGIN
	#Routine body goes here...
		select DISTINCT matricule, CONCAT(nom, " ", prenom)
from etudiant, filiere,candidat,niveau, classe, specialite, annee_academique, semestre
where extract(year from annee_academique.date_debut)=ans
and candidat.code=etudiant.code
and candidat.classe=classe.`code`
and classe.specialite=specialite.`code`
and specialite.filiere=filiere.`code`
and filiere.libelle=fil
and classe.libelle=class;

END
;;
delimiter ;

-- ----------------------------
-- Function structure for grade
-- ----------------------------
DROP FUNCTION IF EXISTS `grade`;
delimiter ;;
CREATE FUNCTION `grade`(`val` FLOAT)
 RETURNS varchar(255) CHARSET latin1
BEGIN
	#Routine body goes here...
	declare resultat VARCHAR(255);
 select 
 case when val >=18 and val<=20 
 THEN
      "A+" 
	when val >=16 and val<18 THEN
      "A" 
	when val >=14 and val<16 THEN
      "B+" 
	when val >=13 and val<14 THEN
      "B" 
	when val >=12 and val<13 THEN
      "B-" 
	when val >=11 and val<12 THEN
      "C+" 
	when val >=10 and val<11 THEN
      "C" 
	when val >=9 and val<10 THEN
      "C-" 
	when val >=8 and val<9 THEN
      "D" 
	when val >=6 and val<8 THEN
      "E" 
	when val >=0 and val<6 THEN
      "F" 
 END as grade into resultat;
 
	RETURN resultat;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for inf_etud
-- ----------------------------
DROP PROCEDURE IF EXISTS `inf_etud`;
delimiter ;;
CREATE PROCEDURE `inf_etud`(IN `mat` VARCHAR(255))
SELECT nom,prenom,date_naissance,sexe,matricule,filiere.libelle as filiere,niveau.numero as niveau
from candidat,filiere,classe,niveau,specialite,etudiant
where candidat.code=etudiant.code
AND candidat.classe=classe.code
AND classe.specialite=specialite.code
AND specialite.filiere=filiere.code
AND classe.niveau=niveau.code
AND etudiant.matricule=mat
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ins_EnsUe
-- ----------------------------
DROP PROCEDURE IF EXISTS `ins_EnsUe`;
delimiter ;;
CREATE PROCEDURE `ins_EnsUe`(IN `codeue` VARCHAR(255))
BEGIN
	#Routine body goes here...
	INSERT INTO EnsUe(ue) values (codeue);

END
;;
delimiter ;

-- ----------------------------
-- Function structure for mat_par
-- ----------------------------
DROP FUNCTION IF EXISTS `mat_par`;
delimiter ;;
CREATE FUNCTION `mat_par`(`fil` VARCHAR(255), `niv` INT, `an` INT, `sem` VARCHAR(255))
 RETURNS int(11)
BEGIN
	#Routine body goes here...
	DECLARE resultat int;
	SELECT COUNT(distinct enseignement.libelle) into resultat
	FROM enseignement,semestre,annee_academique,niveau,ue,specialite,classe,filiere
	where enseignement.ue=ue.`code`
	and ue.niveau=niveau.`code`
	AND enseignement.semestre=semestre.`code`
	and semestre.annee_academique=annee_academique.`code`
	and specialite.filiere=filiere.code
	and classe.niveau=niveau.`code`
	and classe.specialite=specialite.`code`
	and filiere.libelle=fil
	and niveau.numero=niv
	and EXTRACT(year from annee_academique.date_debut)=an
	and semestre.libelle=sem;
	

	RETURN resultat;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for mgp
-- ----------------------------
DROP FUNCTION IF EXISTS `mgp`;
delimiter ;;
CREATE FUNCTION `mgp`(`val` FLOAT)
 RETURNS decimal(10,1)
BEGIN
	#Routine body goes here...
 declare resultat DECIMAL(10,1);
 select 
 (case when val >=18.0 and val<=20.0
 THEN 4.0 
 when val >=16.0 and val<18.0 THEN 3.7
      
	when val >=14.0 and val<16.0 THEN 3.3
	
	when val >=13.0 and val<14.0 THEN 3
	
	when val >=12.0 and val<13.0 THEN 2.7
	
	when val >=11.0 and val<12.0 THEN 2.3
      
	when val >=10.0 and val<11.0 THEN 2.0
   
	when val >=9.0 and val<10.0 THEN 1.7
      
	when val >=8.0 and val<9.0 THEN 1.3
       
	when val >=6.0 and val<8.0 THEN 1.0
      
	when val >=0.0 and val<6.0 THEN 0
      
 END ) into resultat;
 
	RETURN resultat ;

END
;;
delimiter ;

-- ----------------------------
-- Function structure for mgp_sem
-- ----------------------------
DROP FUNCTION IF EXISTS `mgp_sem`;
delimiter ;;
CREATE FUNCTION `mgp_sem`(`mat` VARCHAR(255), `niv` BIGINT(20), `ans` BIGINT(20), `sem` VARCHAR(255))
 RETURNS float
BEGIN
	#Routine body goes here...
	declare resultat float;
select sum(mg)/SUM(cred) into resultat
from (select distinct mgp((moyenne_ue_etudiant(mat,enseignement.`code`,ans))-penalites(mat,ans,sem))*credits as mg,credits as cred
from etudiant, filiere, note, type_evaluation, module, est_inscrit, candidat, evaluation, enseignement, ue, niveau, classe, specialite, annee_academique, semestre,discipline
where note.est_inscrit=est_inscrit.code
and discipline.etudiant=etudiant.`code`
and discipline.semestre=semestre.`code`
and est_inscrit.enseignement=enseignement.code
and enseignement.ue=ue.`code`
and enseignement.semestre=semestre.`code`
and semestre.annee_academique=annee_academique.`code`
and extract(year from annee_academique.date_debut)=ans
and est_inscrit.candidat_inscrit=candidat.`code`
and evaluation.type_evaluation=type_evaluation.`code`
and ue.module=module.`code`
and note.evaluation=evaluation.`code`
and candidat.code=etudiant.code
#and candidat.classe=classe.`code`
and classe.specialite=specialite.`code`
and specialite.filiere=filiere.`code`
and type_evaluation.enseignement=enseignement.`code`
and ue.module=module.`code`
and etudiant.matricule=mat
and niveau.numero=niv
and classe.niveau=niveau.`code`
and semestre.libelle=sem) as t;
return resultat;

END
;;
delimiter ;

-- ----------------------------
-- Function structure for moyenne_ue_etudiant
-- ----------------------------
DROP FUNCTION IF EXISTS `moyenne_ue_etudiant`;
delimiter ;;
CREATE FUNCTION `moyenne_ue_etudiant`(`matricule_etudiant` VARCHAR(255), `codeenseignement` BIGINT(20), `an` INT)
 RETURNS float
BEGIN

DECLARE resultat float;

select (case when COUNT(case when type_evaluation.libelle='rattrapage' then 1 else NULL end )=1 then ROUND(SUM(case when type_evaluation.libelle='Session normale' then 0 ELSE (valeur_note*pourcentage)/100 END),2) when COUNT(case when type_evaluation.libelle='rattrapage' then 1 else NULL end )=0 then ROUND(SUM((valeur_note*pourcentage)/100 ),2)end) into resultat
from etudiant, filiere, note, type_evaluation, module, est_inscrit, candidat, evaluation, enseignement, ue, niveau, classe, specialite,annee_academique,semestre
where note.est_inscrit=est_inscrit.code
and est_inscrit.enseignement=enseignement.code
and enseignement.ue=ue.`code`
and enseignement.semestre=semestre.`code`
and semestre.annee_academique=annee_academique.`code`
and est_inscrit.candidat_inscrit=candidat.`code`
and evaluation.type_evaluation=type_evaluation.`code`	
and ue.module=module.`code`
and note.evaluation=evaluation.`code`
and candidat.code=etudiant.code
and candidat.classe=classe.`code`
and classe.specialite=specialite.`code`
and specialite.filiere=filiere.`code`
and type_evaluation.enseignement=enseignement.`code`
and ue.module=module.`code`
and etudiant.matricule=matricule_etudiant
and enseignement.`code`=codeenseignement
and classe.niveau=niveau.`code`
and EXTRACT(year from annee_academique.date_debut)=an;

	RETURN resultat;
	
END
;;
delimiter ;

-- ----------------------------
-- Function structure for moy_mod
-- ----------------------------
DROP FUNCTION IF EXISTS `moy_mod`;
delimiter ;;
CREATE FUNCTION `moy_mod`(`mat` VARCHAR(255), `codmod` INT, `an` INT, `sem` VARCHAR(255))
 RETURNS float
BEGIN
	#Routine body goes here...
	DECLARE resultat float;
SELECT sum(moy*cred)/sum(cred) into resultat from
(SELECT distinct ue.code_ue,ue.libelle,module.`code` as codmod,enseignement.`code`,ue.credits as cred,moyenne_ue_etudiant(mat, enseignement.`code`,an)-penalites(mat,an,sem) as moy
from ue,module,enseignement,etudiant,candidat,semestre,annee_academique
where ue.module=module.`code`
and enseignement.ue=ue.`code`
and module.`code`=codmod
and candidat.`code`=etudiant.`code`
and enseignement.semestre=semestre.`code`
and semestre.annee_academique=annee_academique.`code`
and semestre.libelle=sem
and EXTRACT(year from annee_academique.date_debut)=an) as t;
	RETURN resultat;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for moy_sem
-- ----------------------------
DROP FUNCTION IF EXISTS `moy_sem`;
delimiter ;;
CREATE FUNCTION `moy_sem`(`mat` VARCHAR(255), `niv` BIGINT(20), `ans` BIGINT(20), `sem` VARCHAR(255))
 RETURNS float
BEGIN
	#Routine body goes here...
		declare resultat float;
	select ((SUM(moyenne_ue_etudiant(matricule,enseignement.`code`,ans)*credits)/SUM(credits))- penalites(mat,ans,sem))into resultat
from etudiant, filiere, note, type_evaluation, module, est_inscrit, candidat, evaluation, enseignement, ue, niveau, classe, specialite, annee_academique, semestre,discipline
where note.est_inscrit=est_inscrit.code
and discipline.etudiant=etudiant.`code`
and discipline.semestre=semestre.`code`
and est_inscrit.enseignement=enseignement.code
and enseignement.ue=ue.`code`
and enseignement.semestre=semestre.`code`
and semestre.annee_academique=annee_academique.`code`
and extract(year from annee_academique.date_debut)=ans
and est_inscrit.candidat_inscrit=candidat.`code`
and evaluation.type_evaluation=type_evaluation.`code`
and ue.module=module.`code`
and note.evaluation=evaluation.`code`
and candidat.code=etudiant.code
#and candidat.classe=classe.`code`
and classe.specialite=specialite.`code`
and specialite.filiere=filiere.`code`
and type_evaluation.enseignement=enseignement.`code`
and ue.module=module.`code`
and etudiant.matricule=mat
and niveau.numero= niv
and classe.niveau=niveau.`code`
and semestre.libelle=sem;
return resultat;

END
;;
delimiter ;

-- ----------------------------
-- Function structure for moy_ue_etud_typ_ev
-- ----------------------------
DROP FUNCTION IF EXISTS `moy_ue_etud_typ_ev`;
delimiter ;;
CREATE FUNCTION `moy_ue_etud_typ_ev`(`matricule_etudiant` VARCHAR(255), `codeenseignement` BIGINT(20))
 RETURNS float
BEGIN

DECLARE resultat float;

select ROUND(AVG(valeur_note),2) into resultat
from etudiant, filiere, note, type_evaluation, module, est_inscrit, candidat, evaluation, enseignement, ue, niveau, classe, specialite,annee_academique, semestre
where note.est_inscrit=est_inscrit.code
and est_inscrit.enseignement=enseignement.code
and enseignement.ue=ue.`code`
and enseignement.semestre=semestre.`code`
and semestre.annee_academique=annee_academique.`code`
and est_inscrit.candidat_inscrit=candidat.`code`
and evaluation.type_evaluation=type_evaluation.`code`	
and ue.module=module.`code`
and note.evaluation=evaluation.`code`
and candidat.code=etudiant.code
and candidat.classe=classe.`code`
and classe.specialite=specialite.`code`
and specialite.filiere=filiere.`code`
and type_evaluation.enseignement=enseignement.`code`
and ue.module=module.`code`
and type_evaluation.libelle="Controle continu"
and etudiant.matricule=matricule_etudiant
and enseignement.`code`=codeenseignement
and classe.niveau=niveau.`code`;

	RETURN resultat;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for moy_ue_mod
-- ----------------------------
DROP PROCEDURE IF EXISTS `moy_ue_mod`;
delimiter ;;
CREATE PROCEDURE `moy_ue_mod`(`codmod` INT, `an` INT, `mat` VARCHAR(255))
BEGIN
	#Routine body goes here...
SELECT distinct ue.code_ue,ue.libelle,module.`code` as codmod,enseignement.`code`,ue.credits as cred,moyenne_ue_etudiant(an, enseignement.`code`) as moy
from ue,module,enseignement,etudiant,candidat,semestre,annee_academique
where ue.module=module.`code`
and enseignement.ue=ue.`code`
and module.`code`=codmod
and candidat.`code`=etudiant.`code`
and enseignement.semestre=semestre.`code`
and semestre.annee_academique=annee_academique.`code`
and EXTRACT(year from annee_academique.date_debut)=an;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for moy_ue_sans_rat
-- ----------------------------
DROP FUNCTION IF EXISTS `moy_ue_sans_rat`;
delimiter ;;
CREATE FUNCTION `moy_ue_sans_rat`(`matricule_etudiant` VARCHAR(255), `codeenseignement` BIGINT(20), `an` INT)
 RETURNS float
BEGIN

DECLARE resultat float;

select (case when type_evaluation.libelle!='RA' then ROUND(SUM((valeur_note*pourcentage)/100 ),2)end) into resultat
from etudiant, filiere, note, type_evaluation, module, est_inscrit, candidat, evaluation, enseignement, ue, niveau, classe, specialite,annee_academique, semestre
where note.est_inscrit=est_inscrit.code
and est_inscrit.enseignement=enseignement.code
and enseignement.ue=ue.`code`
and enseignement.semestre=semestre.`code`
and semestre.annee_academique=annee_academique.`code`
and est_inscrit.candidat_inscrit=candidat.`code`
and evaluation.type_evaluation=type_evaluation.`code`	
and ue.module=module.`code`
and note.evaluation=evaluation.`code`
and candidat.code=etudiant.code
and candidat.classe=classe.`code`
and classe.specialite=specialite.`code`
and specialite.filiere=filiere.`code`
and type_evaluation.enseignement=enseignement.`code`
and ue.module=module.`code`
and etudiant.matricule=matricule_etudiant
and enseignement.`code`=codeenseignement
and classe.niveau=niveau.`code`
and EXTRACT(year from annee_academique.date_debut)=an;

	RETURN resultat;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for penalites
-- ----------------------------
DROP PROCEDURE IF EXISTS `penalites`;
delimiter ;;
CREATE PROCEDURE `penalites`(IN `mat` VARCHAR(255), IN `ans` INTEGER)
BEGIN
	select ((TRUNCATE(discipline.nb_heures_absences/5,0))*0.1) + (TRUNCATE(discipline.nb_retards/15,0)*0.1) as penalitĂ©s,semestre.libelle as semestre
from discipline,semestre,etudiant,candidat,annee_academique
where discipline.etudiant=etudiant.`code`
and etudiant.`code`=candidat.`code`
and discipline.semestre=semestre.`code`
and semestre.annee_academique=annee_academique.`code`
and matricule=mat
and extract(year from annee_academique.date_debut)=ans;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for penalites
-- ----------------------------
DROP FUNCTION IF EXISTS `penalites`;
delimiter ;;
CREATE FUNCTION `penalites`(`mat` VARCHAR(255), `an` INT, `sem` VARCHAR(255))
 RETURNS float
BEGIN
	#Routine body goes here..
	DECLARE resultat float;
	SELECT ((((SUM(nbha)-SUM(hj)) div 5)*0.1)+((SUM(nbrt) div 15)*0.1)) into resultat from
(SELECT description,MONTHNAME(date_retard) as mois,nb_heures_absences as nbha,heure_justifie as hj,nb_retards as nbrt,etudiant,semestre as seme
from discipline) as disc,etudiant,semestre,annee_academique
WHERE etudiant=etudiant.`code`
and annee_academique.`code`=semestre.annee_academique
and semestre.`code`=seme
and matricule=mat
and semestre.libelle=sem
and EXTRACT(YEAR from annee_academique.date_debut)=an;
RETURN resultat;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pv
-- ----------------------------
DROP PROCEDURE IF EXISTS `pv`;
delimiter ;;
CREATE PROCEDURE `pv`(IN `fil` VARCHAR(255), IN `niv` INT, IN `an` INT, IN `sem` VARCHAR(255))
BEGIN
select DISTINCT matricule,CONCAT(UPPER(nom)," ",UPPER(prenom)) as nom_prenom,module.libelle as module,module.code_module as codemo, ue.libelle as ue,( case when type_evaluation.libelle="Controle continu" then moy_ue_etud_typ_ev(matricule,enseignement.`code`)
else valeur_note END) as moyenne,type_evaluation.libelle as intitule,CONCAT(type_evaluation.pourcentage,"%") as pourcentage,
(case when type_evaluation.libelle="SN" then add_tmp2(ue.code_ue,credits) else 0 END)  as credit,(case when moyenne_ue_etudiant(matricule, enseignement.code,an)-penalites(matricule,an,sem)>=9 then credits else 0 END) as cred,penalites(matricule,an,sem) as penalites,descisions(module.`code`,an,sem,etudiant.matricule) as decision,(CASE when type_evaluation.libelle="SN" then credits else 0 END ) as cred3, credits as credi, (case when moyenne_ue_etudiant(matricule, enseignement.code,an)>=9 and type_evaluation.libelle="SN" then credits else 0 END) as cred2, decision(moyenne_ue_etudiant(matricule,enseignement.code,an)-penalites(matricule,an,sem)) as deci,mgp_sem(matricule,niv,an,sem) as mgp_annuel
from etudiant, filiere, note, type_evaluation, module, est_inscrit, candidat, evaluation, enseignement, ue, niveau, classe, specialite, annee_academique, semestre
where note.est_inscrit=est_inscrit.code
and est_inscrit.enseignement=enseignement.code
and enseignement.ue=ue.`code`
and enseignement.semestre=semestre.`code`
and semestre.annee_academique=annee_academique.`code`
and extract(year from annee_academique.date_debut)=an
and est_inscrit.candidat_inscrit=candidat.`code`
and evaluation.type_evaluation=type_evaluation.`code`
and ue.module=module.`code`
and note.evaluation=evaluation.`code`
and candidat.code=etudiant.code
and candidat.classe=classe.`code`
and classe.specialite=specialite.`code`
and specialite.filiere=filiere.`code`
and classe.niveau=niveau.`code`
and type_evaluation.enseignement=enseignement.`code`
and ue.module=module.`code`
and niveau.numero=niv
and filiere.libelle=fil
and semestre.libelle=sem
and note.statut_vie="ACTIVE"
group by matricule,ue.libelle,type_evaluation.libelle
order by nom_prenom,codemo,ue;
delete FROM tmp_ue;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for rang_an
-- ----------------------------
DROP FUNCTION IF EXISTS `rang_an`;
delimiter ;;
CREATE FUNCTION `rang_an`(`fil` VARCHAR(255), `mat` VARCHAR(255), `class` VARCHAR(255), `ans` BIGINT(20))
 RETURNS varchar(255) CHARSET latin1
BEGIN
	#Routine body goes here...
DECLARE resultat VARCHAR(255);
SET @rank := 0;
SELECT CONCAT(arank,"/",etudi_class(fil,class,ans)) into resultat from(
select (@rank := @rank + 1) as arank,matr as matri,mg from(
SELECT distinct matricule as matr,(mgp_sem(matricule,niveau.numero,ans,"Semestre 1")+mgp_sem(matricule,niveau.numero,ans,"Semestre 2"))/2 as mg
from etudiant, filiere,candidat,niveau,classe,specialite, annee_academique,semestre
where semestre.annee_academique=annee_academique.`code`
and candidat.code=etudiant.code
and candidat.classe=classe.`code`
and classe.specialite=specialite.`code`
and specialite.filiere=filiere.`code`
and classe.niveau=niveau.`code`
and filiere.libelle=fil
and classe.libelle=class
and EXTRACT(year from annee_academique.date_debut)=ans
order by mg desc) as t)as g
where matri=mat
LIMIT 1;
RETURN resultat;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for rang_etud
-- ----------------------------
DROP FUNCTION IF EXISTS `rang_etud`;
delimiter ;;
CREATE FUNCTION `rang_etud`(`fil` VARCHAR(255), `mat` VARCHAR(255), `class` VARCHAR(255), `ans` BIGINT(20), `sem` VARCHAR(255))
 RETURNS varchar(255) CHARSET latin1
BEGIN
	#Routine body goes here...
DECLARE resultat VARCHAR(255);
SET @rank := 0;
SELECT concat(arank,"/",etudi_class(fil,class,ans)) into resultat from(
select (@rank := @rank + 1) as arank,matr as matri,mg from(
SELECT distinct matricule as matr,mgp_sem(matricule,niveau.numero,ans,sem) as mg
from etudiant, filiere,candidat,niveau,classe,specialite, annee_academique,semestre
where semestre.annee_academique=annee_academique.`code`
and candidat.code=etudiant.code
and candidat.classe=classe.`code`
and classe.specialite=specialite.`code`
and specialite.filiere=filiere.`code`
and classe.niveau=niveau.`code`
and filiere.libelle=fil
and classe.libelle=class
and semestre.libelle=sem
and EXTRACT(year from annee_academique.date_debut)=ans
order by mg desc) as t)as g
where matri=mat
LIMIT 1;
RETURN resultat;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for releve_note
-- ----------------------------
DROP PROCEDURE IF EXISTS `releve_note`;
delimiter ;;
CREATE PROCEDURE `releve_note`(IN `mat` VARCHAR(255), IN `class` VARCHAR(255), IN `an` INT)
BEGIN
	select DISTINCT matricule, niveau.description as niv,ue.code_ue as codeue,module.code_module,
module.libelle as module, ue.libelle as ue, extract(year from annee_academique.date_debut) as annee, nom, moyenne_ue_etudiant(mat,enseignement.`code`,an) as moyenne,decision((moyenne_ue_etudiant(mat,enseignement.`code`,an))) as decision,descisions(module.code,an,semestre.libelle,mat) as decisions,grade(moyenne_ue_etudiant(mat,enseignement.`code`,an))as grade,(case when (moyenne_ue_etudiant(mat,enseignement.`code`,an) >=9) 
 THEN
     CONCAT(credits,"/",credits)
	when (moyenne_ue_etudiant(mat,enseignement.`code`,an)<9) THEN
      CONCAT("0/",credits)
 END) as credits,(case when COUNT(case when type_evaluation.libelle='rattrapage' then 1 else NULL end )=1 then CONCAT('Rattrapge',' ',extract(year from annee_academique.date_debut)) when COUNT(case when type_evaluation.libelle='Rattrapage' then 1 else NULL end )=0 then CONCAT('Normale',' ',extract(year from annee_academique.date_debut))end) as Sessio,semestre.libelle as Semestre,penalites(mat,an,semestre.libelle) as penalites,mgp(moyenne_ue_etudiant(mat,enseignement.`code`,an))*credits as mgp, rang_etud(filiere.libelle,mat,class,an,semestre.libelle) as rang,rang_an(filiere.libelle,mat,class,an) as rang_an
from etudiant, filiere, note, type_evaluation, module, est_inscrit, candidat, evaluation, enseignement, ue, niveau, classe, specialite, annee_academique, semestre,discipline
where note.est_inscrit=est_inscrit.code
and discipline.etudiant=etudiant.`code`
and discipline.semestre=semestre.`code`
and est_inscrit.enseignement=enseignement.code
and enseignement.ue=ue.`code`
and enseignement.semestre=semestre.`code`
and semestre.annee_academique=annee_academique.`code`
and extract(year from annee_academique.date_debut)=an
and est_inscrit.candidat_inscrit=candidat.`code`
and evaluation.type_evaluation=type_evaluation.`code`
and ue.module=module.`code`
and note.evaluation=evaluation.`code`
and candidat.code=etudiant.code
and candidat.classe=classe.`code`
and classe.libelle=class
and classe.specialite=specialite.`code`
and specialite.filiere=filiere.`code`
and type_evaluation.enseignement=enseignement.`code`
and ue.module=module.`code`
and etudiant.matricule=`mat`
and classe.niveau=niveau.`code`
group by module.libelle,ue.libelle,semestre,classe.libelle
order by semestre,module.code_module asc;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for stats
-- ----------------------------
DROP PROCEDURE IF EXISTS `stats`;
delimiter ;;
CREATE PROCEDURE `stats`(`an` INT, `sem` VARCHAR(255), `class` VARCHAR(255))
BEGIN
	#Routine body goes here...
	SELECT codue as cod,typ_ev,count(val) as effectif,
COUNT(case when val>=10 then 1 else null end) as nb_moyenne,ROUND(AVG(val),1) as moyenne,CONCAT(ROUND((COUNT(case when val>=10 then 1 else null end)/count(val))*100,0),"%") as pourcentage_reuss
from (select ue.code_ue as codue,type_evaluation.libelle as typ_ev,valeur_note as val
from type_evaluation,evaluation,note,enseignement,ue,semestre,annee_academique,module,candidat,etudiant,est_inscrit,classe,niveau
where type_evaluation.enseignement=enseignement.`code`
and evaluation.type_evaluation=type_evaluation.`code`
and note.evaluation=evaluation.`code`
and note.est_inscrit=est_inscrit.`code`
and enseignement.semestre=semestre.`code`
and semestre.annee_academique=annee_academique.`code`
and EXTRACT(year from annee_academique.date_debut)=an
and semestre.libelle=sem
and enseignement.ue=ue.`code`
and est_inscrit.candidat_inscrit=candidat.`code`
and est_inscrit.enseignement=enseignement.`code`
and ue.module=module.`code`
and etudiant.`code`=candidat.`code`
and ue.niveau=niveau.`code`
and classe.niveau=niveau.`code`
and classe.libelle=class
order by typ_ev) as t
GROUP BY cod,typ_ev
ORDER BY codue,typ_ev;

END
;;
delimiter ;

-- ----------------------------
-- Function structure for ue_modu
-- ----------------------------
DROP FUNCTION IF EXISTS `ue_modu`;
delimiter ;;
CREATE FUNCTION `ue_modu`(`codemod` INT, `an` INT)
 RETURNS int(11)
BEGIN
declare resultat int;
SELECT COUNT(DISTINCT ue.`code`) into resultat
from ue,module,enseignement,semestre,annee_academique
where ue.module=module.`code`
and enseignement.ue=ue.`code`
and module.code=codemod
and enseignement.semestre=semestre.`code`
and semestre.annee_academique=annee_academique.`code`
and EXTRACT(year from annee_academique.date_debut)=an;

	RETURN resultat;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
