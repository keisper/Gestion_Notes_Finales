/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 50617
 Source Host           : localhost:3306
 Source Schema         : isj2

 Target Server Type    : MySQL
 Target Server Version : 50617
 File Encoding         : 65001

 Date: 29/01/2020 13:27:39
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
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
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
  `telephone` int(11) NULL DEFAULT NULL,
  `telephone_de_la_mere` int(11) NULL DEFAULT NULL,
  `telephone_du_pere` int(11) NULL DEFAULT NULL,
  `classe` bigint(20) NULL DEFAULT NULL,
  `createur` bigint(20) NOT NULL,
  `modificateur` bigint(20) NOT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_candidat_classe`(`classe`) USING BTREE,
  INDEX `FK_candidat_modificateur`(`modificateur`) USING BTREE,
  INDEX `FK_candidat_createur`(`createur`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10526 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of candidat
-- ----------------------------
INSERT INTO `candidat` VALUES (8461, 'Etudiant', '2020-01-06 12:35:39', '2020-01-06 12:35:39', '2000-05-04 23:00:00', NULL, 'Collège Saint Michel', 'raoufelabdoul@gmail.com', NULL, 'ABDOUL RAOUF', 'Aichatou Ibrahim', 'ABOUBAKAR Mayake', 'ABOUBAKAR Mayake', '', '', 'Adamaoua', 'MASCULIN', '798026138', 'ACTIVE', 'ACTIVE', 657931402, 239980200, 699798096, 64, 1, 1);
INSERT INTO `candidat` VALUES (8463, 'Etudiant', '2020-01-06 12:35:39', '2020-01-06 12:35:39', '2001-03-12 23:00:00', NULL, 'Collège F. X. Vogt', 'freddyadjh@gmail.com', NULL, 'ADJEWA', 'ASNE Pauline', 'HANKONE Justin', 'Frédéric', '', '', 'Extrême Nord', 'MASCULIN', '798056024', 'ACTIVE', 'ACTIVE', 697036836, 675416614, 697361893, 64, 1, 1);
INSERT INTO `candidat` VALUES (8464, 'Etudiant', '2020-01-06 12:35:39', '2020-01-06 12:35:39', '1998-09-25 23:00:00', NULL, 'COLLEGE SAINT BENOIT', 'wamougou@gmail.com', NULL, 'AMOUGOU', 'MBOUH Blandine', 'AMOUGOU MBEDJA', 'DANIEL WILLIAM  ARSENE', '', '', 'CENTRE', 'MASCULIN', '798029057', 'ACTIVE', 'ACTIVE', 697707620, 699536615, 675339304, 64, 1, 1);
INSERT INTO `candidat` VALUES (8465, 'Etudiant', '2020-01-06 12:35:39', '2020-01-06 12:35:39', '1999-07-26 23:00:00', NULL, 'LYCEE DE JAPOMA DOUALA', '', NULL, 'ASSANGA WISSE', '', '', 'DYLAN KEVIN', '', '', 'CENTRE', 'MASCULIN', '797944452', 'ACTIVE', 'ACTIVE', 656217312, 0, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8466, 'Etudiant', '2020-01-06 12:35:39', '2020-01-06 12:35:39', '2003-02-23 23:00:00', NULL, 'Collège F. X. Vogt', 'leaaudige@gmail.com', NULL, 'AUDIGE', 'KENGNE Anne-marie', 'AUDIGE Léodor', 'Léonide', '', '', 'Ouest', 'FEMININ', '797908986', 'ACTIVE', 'ACTIVE', 680066262, 679555544, 677300180, 64, 1, 1);
INSERT INTO `candidat` VALUES (8467, 'Etudiant', '2020-01-06 12:35:39', '2020-01-06 12:35:39', '2002-06-21 23:00:00', NULL, 'Collège Fleming', 'ewenbenana@gmail.com', NULL, 'BENANA SANDE', 'NGUENOU Bibiane', 'BENANA André Bruno', 'Bruno Ewen', '', '', 'CENTRE', 'MASCULIN', '797911936', 'ACTIVE', 'ACTIVE', 690525281, 243000103, 699935212, 64, 1, 1);
INSERT INTO `candidat` VALUES (8468, 'Etudiant', '2020-01-06 12:35:39', '2020-01-06 12:35:39', '2001-03-15 23:00:00', NULL, 'LYCEE GENERAL LECLERC', 'latricite75@gmail.com', NULL, 'BENGONO III', 'NGUELE Yvette', 'BENGONO Sylvain', 'WILLIAM HENRY', '', '', 'SUD', 'MASCULIN', '797946410', 'ACTIVE', 'ACTIVE', 697503074, 699182538, 690174766, 64, 1, 1);
INSERT INTO `candidat` VALUES (8469, 'Etudiant', '2020-01-06 12:35:39', '2020-01-06 12:35:39', '2000-05-07 23:00:00', NULL, 'Collège FX VOGT', '', NULL, 'BIKO', '', '', 'DAVID  FRANKLIN', '', '', 'LITTORAL', 'MASCULIN', '-1574616625', 'ACTIVE', 'ACTIVE', 699691607, 0, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8470, 'Etudiant', '2020-01-06 12:35:40', '2020-01-06 12:35:40', '2001-10-06 23:00:00', NULL, 'Collège F. X. Vogt', 'bidzanaerwin@yahoo.fr', NULL, 'BIDZANA DEUNGOUE', 'BIDZANA Marcelle', 'BIDZANA Arsène', 'Erwin Chrystal', '', '', 'Centre', 'MASCULIN', '797862678', 'ACTIVE', 'ACTIVE', 655205289, 699933065, 677780101, 64, 1, 1);
INSERT INTO `candidat` VALUES (8471, 'Etudiant', '2020-01-06 12:35:40', '2020-01-06 12:35:40', '2003-05-27 23:00:00', NULL, 'Collège de la Retraite', 'detiostella@yahoo.com', NULL, 'DETIO', 'MAGNE EDITHE', '-', 'Stella Chanelle', '', '', 'Ouest', 'FEMININ', '798072482', 'ACTIVE', 'ACTIVE', 0, 0, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8472, 'Etudiant', '2020-01-06 12:35:40', '2020-01-06 12:35:40', '2002-06-12 23:00:00', NULL, 'COLLEGE FX VOGT', '', NULL, 'DJOMO  NJONGER', '', '', 'LOÏC', '', '', 'OUEST', 'MASCULIN', '-1574693566', 'ACTIVE', 'ACTIVE', 673284437, 0, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8473, 'Etudiant', '2020-01-06 12:35:40', '2020-01-06 12:35:40', '1999-03-05 23:00:00', NULL, 'Institut Zang-Mebenga', 'rickkhaki@gmail.com', NULL, 'DJOMOU KENFACK', 'KENFACK VOGMO Edwige', 'N/A', 'Rick Jorel', '', '', 'Ouest', 'MASCULIN', '798010983', 'ACTIVE', 'ACTIVE', 698756907, 0, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8474, 'Etudiant', '2020-01-06 12:35:40', '2020-01-06 12:35:40', '2001-11-04 23:00:00', NULL, 'Complexe scolaire THECLA', 'yvandjopa01@gmail.com', NULL, 'DJOPA NJAMPOU', 'WOCKAP NANA Sorel', 'DJOPA TCHATAT Jean Blaise', '', '', '', 'Ouest', 'MASCULIN', '797865963', 'ACTIVE', 'ACTIVE', 677338495, 663511264, 677338495, 64, 1, 1);
INSERT INTO `candidat` VALUES (8475, 'Etudiant', '2020-01-06 12:35:40', '2020-01-06 12:35:40', '2002-06-05 23:00:00', NULL, 'COLLEGE HERPHIL', '', NULL, 'DOLLAH MOMO', 'MAMBE FENGANG Viviane', 'DOLLAH Jean Claude', 'DANIEL KEVIN', '', '', 'OUEST', 'MASCULIN', '798097530', 'ACTIVE', 'ACTIVE', 696107166, 699567108, 699734585, 64, 1, 1);
INSERT INTO `candidat` VALUES (8476, 'Etudiant', '2020-01-06 12:35:40', '2020-01-06 12:35:40', '2003-05-31 23:00:00', NULL, 'COLLEGE FLEMENIG', 'perrierdurand@gmail.com', NULL, 'DONGMO', 'KAZE Marceline', 'DONFACK Janvier', 'PERRIER DURAND', '', '', 'CENTRE', 'MASCULIN', '798102242', 'ACTIVE', 'ACTIVE', 694269432, 699057494, 697051255, 64, 1, 1);
INSERT INTO `candidat` VALUES (8477, 'Etudiant', '2020-01-06 12:35:40', '2020-01-06 12:35:40', '1999-08-10 23:00:00', NULL, 'Collège Père Monti', 'essombadaniel1999@gmail.com', NULL, 'ESSOMBA ESSOMBA', 'Elise Mireille NKOT', 'ESSOMBA BENGONO Nehru Dieudonné', 'Daniel Bertrand', '', '', 'Centre', 'MASCULIN', '797927218', 'ACTIVE', 'ACTIVE', 696322622, 0, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8478, 'Etudiant', '2020-01-06 12:35:40', '2020-01-06 12:35:40', '1997-05-14 23:00:00', NULL, 'COLLEGE ADVENTISTE DE YAOUNDE', '', NULL, 'ETOA NKOA', '', '', 'PHILIPE EDWIN', '', '', 'CENTRE', 'MASCULIN', '-1574667456', 'ACTIVE', 'ACTIVE', 656584003, 0, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8479, 'Etudiant', '2020-01-06 12:35:40', '2020-01-06 12:35:40', '2002-03-07 23:00:00', NULL, 'Mario Academic Complex', 'nguepishavez@gmail.com', NULL, 'FOGOU NGUEPI', 'YEMELI TAFOPI Mirabelle', 'FOGOU DONGMO Robert', 'Windell Shavez', '', '', 'Ouest', 'MASCULIN', '798012868', 'ACTIVE', 'ACTIVE', 697856819, 699919524, 699320729, 64, 1, 1);
INSERT INTO `candidat` VALUES (8480, 'Etudiant', '2020-01-06 12:35:40', '2020-01-06 12:35:40', '2002-01-17 23:00:00', NULL, 'Lycee Bil. Bertoua', 'foningemilie@gmail.com', NULL, 'FONING KETCHIEGMEN', 'PETNGA NJABO Marcelle Edmonde', 'FONING Michel', 'Emilie Audrey', '', '', 'Ouest', 'FEMININ', '798016682', 'ACTIVE', 'ACTIVE', 691605292, 0, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8481, 'Etudiant', '2020-01-06 12:35:40', '2020-01-06 12:35:40', '2002-04-13 23:00:00', NULL, 'Collège F. X. Vogt', 'fotso1claude@gmail.com', NULL, 'FOTSO KAMDEM', 'FONDJO GAKAM NOUBISSI Sophie Alida', 'KAMDEM Marcel Pascal Florien', 'Claude', '', '', 'Ouest', 'MASCULIN', '798014984', 'ACTIVE', 'ACTIVE', 696685090, 699417101, 677841520, 64, 1, 1);
INSERT INTO `candidat` VALUES (8482, 'Etudiant', '2020-01-06 12:35:41', '2020-01-06 12:35:41', '2000-08-28 23:00:00', NULL, 'Collège Adventiste', '', NULL, 'KAMDEM CHE', '', '', 'Gaüs', '', '', '', 'MASCULIN', '-1574599418', 'ACTIVE', 'ACTIVE', 0, 0, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8483, 'Etudiant', '2020-01-06 12:35:41', '2020-01-06 12:35:41', '2002-06-21 23:00:00', NULL, 'COLLEGE DE LA RETRAITE', 'latilafrank@gmail.com', NULL, 'LATILA DONGMO', 'LATILA Florence', 'DONGMO Sylvain', 'FRANCKLIN', '', '', 'OUEST', 'MASCULIN', '797932115', 'ACTIVE', 'ACTIVE', 696782137, 677922398, 679767532, 64, 1, 1);
INSERT INTO `candidat` VALUES (8484, 'Etudiant', '2020-01-06 12:35:41', '2020-01-06 12:35:41', '2001-10-03 23:00:00', NULL, 'Collège F. X. Vogt', 'ivanlongue35@gmail.com', NULL, 'LONGUE BILLE', 'TETE Marie Reine', 'Emmanuel LONGUE', 'Ivan Wilfried', '', '', 'Littoral', 'MASCULIN', '798078220', 'ACTIVE', 'ACTIVE', 657454579, 696276738, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8485, 'Etudiant', '2020-01-06 12:35:41', '2020-01-06 12:35:41', '2001-09-11 23:00:00', NULL, 'Collège F. X. Vogt', 'richellemayap@gmail.com', NULL, 'MAYAP KAMSU', 'MAMGA Elise', 'KAMSU TCHUENTE Duclos', 'Richelle Martiale', '', '', 'Ouest', 'FEMININ', '797967491', 'ACTIVE', 'ACTIVE', 693476487, 699955588, 699225449, 64, 1, 1);
INSERT INTO `candidat` VALUES (8486, 'Etudiant', '2020-01-06 12:35:41', '2020-01-06 12:35:41', '2000-10-18 23:00:00', NULL, 'COLLEGE F,X VOGT', 'mdg.m.emmanuel@gmail.com', NULL, 'MINDONGO MBIA', 'NGO POUTH IV Christine', 'MINDONGO ENGUENE Théodore', 'EMMANUEL', '', '', 'CENTRE', 'MASCULIN', '797904278', 'ACTIVE', 'ACTIVE', 696059299, 677525280, 677553332, 64, 1, 1);
INSERT INTO `candidat` VALUES (8487, 'Etudiant', '2020-01-06 12:35:41', '2020-01-06 12:35:41', '1999-05-02 23:00:00', NULL, 'ALL NATIONS SCHOOL', 'calebminka13@gmail.com', NULL, 'MINKA', 'MBENTY Jaqueline', 'MINKA Menye Roger', 'Caleb', '', '', 'CENTRE', 'MASCULIN', '-1574566619', 'ACTIVE', 'ACTIVE', 659149094, 0, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8488, 'Etudiant', '2020-01-06 12:35:41', '2020-01-06 12:35:41', '2002-10-09 23:00:00', NULL, 'COLLEGE ET LYCEE RAPONDA WALKER', 'momokyemarie@gmail.com', NULL, 'MOMOKYE KAMGUE', 'MOMOKYE Marie', 'MOMOKYE Simo Roger', 'MARIE ANGELINA', '', '', 'OUEST', 'FEMININ', '797999234', 'ACTIVE', 'ACTIVE', 682288826, 0, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8489, 'Etudiant', '2020-01-06 12:35:41', '2020-01-06 12:35:41', '2001-01-21 23:00:00', NULL, 'Institut Bil. Michelann', 'nanfackludovic@gmail.com', NULL, 'NANFACK', 'KEUWOUN Josiane', 'NGOUATEU René', 'Ludovic Pernel', '', '', 'Ouest', 'MASCULIN', '797943646', 'ACTIVE', 'ACTIVE', 655244043, 699333943, 694321495, 64, 1, 1);
INSERT INTO `candidat` VALUES (8490, 'Etudiant', '2020-01-06 12:35:41', '2020-01-06 12:35:41', '1999-06-03 23:00:00', NULL, 'COLLEGE SAINTE THERESE', 'dikoyves@gmail.com', NULL, 'NDJANZOUA SAMAKI', 'LEUYO Phylovirgie', 'SAMAKI', 'Jean Yves', '', '', 'ADAMAOUA', 'MASCULIN', '797974310', 'ACTIVE', 'ACTIVE', 696140422, 0, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8491, 'Etudiant', '2020-01-06 12:35:41', '2020-01-06 12:35:41', '2001-02-18 23:00:00', NULL, 'Collège F. X. Vogt', 'ndjongayanis@gmail.com', NULL, 'NDJONGA', 'BATOUM Solange', 'NDJONGA Pierre Paul', 'Yanis René Charles', '', '', 'Centre', 'MASCULIN', '797937879', 'ACTIVE', 'ACTIVE', 650282274, 242020119, 242020449, 64, 1, 1);
INSERT INTO `candidat` VALUES (8492, 'Etudiant', '2020-01-06 12:35:41', '2020-01-06 12:35:41', '2001-05-14 23:00:00', NULL, 'COLLEGE JESUS MARIE', 'ndzanangasteveromaric@gmail.com', NULL, 'NDZANA NGA', 'ONANA NGA Hélène Béatrice', 'NGA Gervais', 'Steve Romaric', '', '', 'CENTRE', 'MASCULIN', '798057821', 'ACTIVE', 'ACTIVE', 654799774, 0, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8493, 'Etudiant', '2020-01-06 12:35:41', '2020-01-06 12:35:41', '1995-12-14 23:00:00', NULL, 'Lycée scientifique Bertoua', 'fabricengaha@gmail.com', NULL, 'NGAHA', 'KONDERAK Krysia', '', 'Fabrice', '', '', 'Ouest', 'MASCULIN', '798059991', 'ACTIVE', 'ACTIVE', 678201111, 0, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8494, 'Etudiant', '2020-01-06 12:35:41', '2020-01-06 12:35:41', '2001-04-29 23:00:00', NULL, 'LYCEE CLASSIQUE ET MODERNE D\'EBOLOWA', 'vinnyngaleu2@gmail.com', NULL, 'NGALEU YAGOUE', 'LATTA Pauline Sylvie', 'YAGOUE Joseph', 'Vinny Fleuronne', '', '', 'EBOLOWA', 'FEMININ', '798034759', 'ACTIVE', 'ACTIVE', 693205651, 677770294, 677797085, 64, 1, 1);
INSERT INTO `candidat` VALUES (8495, 'Etudiant', '2020-01-06 12:35:41', '2020-01-06 12:35:41', '2001-12-03 23:00:00', NULL, 'Collège FX VOGT', 'andychou734@gmail.com', NULL, 'NGOUMFO DJIATSA', 'DOUNTSOP NGOUMFO Fernande', 'DJIATSA TCHIOGOUO Bruno', 'ANDEYLA DURELLE', '', '', 'OUEST', 'FEMININ', '-1574623505', 'ACTIVE', 'ACTIVE', 655308330, 697142683, 699608233, 64, 1, 1);
INSERT INTO `candidat` VALUES (8496, 'Etudiant', '2020-01-06 12:35:42', '2020-01-06 12:35:42', '2002-10-17 23:00:00', NULL, 'COLLEGE COSBIE', 'marieange3nguessong@gmail.com', NULL, 'NGUESSONG DONFACK', 'DONFACK Carine', 'KETCHOUANG Valentin', 'MARIE-ANGE', '', '', 'OUEST', 'FEMININ', '798003352', 'ACTIVE', 'ACTIVE', 696182256, 696248454, 696073966, 64, 1, 1);
INSERT INTO `candidat` VALUES (8497, 'Etudiant', '2020-01-06 12:35:42', '2020-01-06 12:35:42', '2001-03-08 23:00:00', NULL, 'Collège F. X. Vogt', 'nguimoutyvan@yahoo.com', NULL, 'NGUIMOUT', 'NGUIMOUT Charlotte', 'NGUIMOUT Bernard', 'Bernard Yvan', '', '', 'Littoral', 'MASCULIN', '798128285', 'ACTIVE', 'ACTIVE', 694537248, 699823023, 699906639, 64, 1, 1);
INSERT INTO `candidat` VALUES (8498, 'Etudiant', '2020-01-06 12:35:42', '2020-01-06 12:35:42', '2002-07-21 23:00:00', NULL, 'Collège de la Retraite', 'njikapivan@gmail.com', NULL, 'NJIKAP DJOUKAM', 'OUABO Adélaïde Magaiguen', 'NJIKAP Ebenezer', 'Ivan Loïc', '', '', 'Ouest', 'MASCULIN', '798102274', 'ACTIVE', 'ACTIVE', 695312018, 0, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8499, 'Etudiant', '2020-01-06 12:35:42', '2020-01-06 12:35:42', '1999-05-29 23:00:00', NULL, 'NESCAS COLLEGE', 'ngahadufred90@gmail.com', NULL, 'NJIKE NGAHA', 'KOUMTOUNDJI TCHAHO Irène', 'NGAHA TCHAMBA Richard', 'Dufred Divane', '', '', 'OUEST', 'MASCULIN', '798074128', 'ACTIVE', 'ACTIVE', 650595398, 0, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8500, 'Etudiant', '2020-01-06 12:35:42', '2020-01-06 12:35:42', '2001-02-19 23:00:00', NULL, 'Collège Jésus Marie', 'njofangsephora@gmail.com', NULL, 'NJOFANG NANA', 'TCHAMAKO Cathy', 'NJOFANG Clément', 'Sephora Thérèse', '', '', 'Ouest', 'FEMININ', '797891632', 'ACTIVE', 'ACTIVE', 699539844, 677641750, 696267550, 64, 1, 1);
INSERT INTO `candidat` VALUES (8501, 'Etudiant', '2020-01-06 12:35:42', '2020-01-06 12:35:42', '2000-12-12 23:00:00', NULL, 'COLLEGE FADIMATOU HADJA', 'njohlobefreddy@gmail.com', NULL, 'NJOH LOBE', 'BAYIHOMOG LOBE Andrianne', 'LOBE Mpoh Constant', 'FREDDY KARLTON', '', '', 'LITTORAL', 'MASCULIN', '797979977', 'ACTIVE', 'ACTIVE', 698334219, 677731081, 698677493, 64, 1, 1);
INSERT INTO `candidat` VALUES (8502, 'Etudiant', '2020-01-06 12:35:42', '2020-01-06 12:35:42', '1999-04-14 23:00:00', NULL, 'INSTITUT POLYVALENT WAGUE', 'maxato000@gmail.com', NULL, 'NKENG ATO', 'MANGOM Dangana Nadine Noël', 'ATO Silas Ferge Bernard', 'MAXIME MELAINE', '', '', 'EST', 'MASCULIN', '797892591', 'ACTIVE', 'ACTIVE', 679108455, 0, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8503, 'Etudiant', '2020-01-06 12:35:42', '2020-01-06 12:35:42', '2002-05-14 23:00:00', NULL, 'COLLEGE LA RETRAITE', 'nouetagninicoletta@gmail.com', NULL, 'NOUETAGNI NOUAYOU', 'NOUETAGNI MAMDEM Nicole', 'NOUETAGNI Samuel', 'NICOLLETTA GERTRUDE', '', '', 'OUEST', 'FEMININ', '797899284', 'ACTIVE', 'ACTIVE', 650467095, 695604089, 677746420, 64, 1, 1);
INSERT INTO `candidat` VALUES (8504, 'Etudiant', '2020-01-06 12:35:42', '2020-01-06 12:35:42', '2000-08-08 23:00:00', NULL, 'Collège F. X. Vogt', 'anitakellypami58@gmail.com', NULL, 'NZOUATHEU PAMI', 'YONDJI Brigitte', 'PAMI Farran Claude', 'Anita Kelly', '', '', 'Ouest', 'FEMININ', '797960143', 'ACTIVE', 'ACTIVE', 656274486, 677030605, 699025466, 64, 1, 1);
INSERT INTO `candidat` VALUES (8505, 'Etudiant', '2020-01-06 12:35:42', '2020-01-06 12:35:42', '1997-05-17 23:00:00', NULL, 'Collège F. X. Vogt', 'jeanyveolama@gmail.com', NULL, 'OLAMA ABENA', 'NEME Thérèse épse ABENA', 'ABENA René Xavier', 'Jean Yves', '', '', 'CENTRE', 'MASCULIN', '797901394', 'ACTIVE', 'ACTIVE', 698707896, 674893645, 651323379, 64, 1, 1);
INSERT INTO `candidat` VALUES (8506, 'Etudiant', '2020-01-06 12:35:42', '2020-01-06 12:35:42', '2002-03-03 23:00:00', NULL, 'Collège F. X. Vogt', 'mimisam432@gmail.com', NULL, 'ONANA', 'EBASSA Mevo Lydie', 'ONANA Betsi', 'Samanta Astride', '', '', 'CENTRE', 'FEMININ', '798079957', 'ACTIVE', 'ACTIVE', 697653482, 697292012, 699312019, 64, 1, 1);
INSERT INTO `candidat` VALUES (8507, 'Etudiant', '2020-01-06 12:35:42', '2020-01-06 12:35:42', '2002-05-13 23:00:00', NULL, 'Collège Saint Benoit', 'djonkousandra00@gmail.com', NULL, 'OUAKPI DJONKOU', 'YAMDJEU MOUNGA Judith Emerentienne', 'DJONKOU Aurélien', 'Maurelle Sandra', '', '', 'Ouest', 'FEMININ', '798137587', 'ACTIVE', 'ACTIVE', 691043206, 0, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8508, 'Etudiant', '2020-01-06 12:35:43', '2020-01-06 12:35:43', '2001-09-07 23:00:00', NULL, 'COLLEGE SAINT BENOIT', 'francineforkou@gmail.com', NULL, 'PENE FORKOU', 'KRELA MARIE MADELEINE', 'FORKOU JEAN', 'ANGE FRANCINE', '', '', 'OUEST', 'FEMININ', '797929043', 'ACTIVE', 'ACTIVE', 680516889, 0, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8509, 'Etudiant', '2020-01-06 12:35:43', '2020-01-06 12:35:43', '2000-03-31 23:00:00', NULL, 'Lycée de bafang rural', 'kamgalionel671256979@gmail.com', NULL, 'POUASSI KAMGA', 'KAMGANG Carnée rose Marie', 'KAMGA NGANJUI René', 'LIONEL', '', '', 'OUEST', 'MASCULIN', '797960825', 'ACTIVE', 'ACTIVE', 671256979, 677745829, 675804120, 64, 1, 1);
INSERT INTO `candidat` VALUES (8510, 'Etudiant', '2020-01-06 12:35:43', '2020-01-06 12:35:43', '2002-09-06 23:00:00', NULL, 'Lycée Bilingue d\'Ekounou', 'ngoungouewesline@gmail.com', NULL, 'SEUTCHIE NGOUNGOUE', 'DJAFFI Calvine Eleonore', 'NGOUNGOUE TCHAMABEU Norbert', 'Ivana Wesline', '', '', 'Ouest', 'FEMININ', '797929264', 'ACTIVE', 'ACTIVE', 677718618, 0, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8511, 'Etudiant', '2020-01-06 12:35:43', '2020-01-06 12:35:43', '2003-05-12 23:00:00', NULL, 'LycéeGénéral leclerc', 'siewe.stephanie@gmail.com', NULL, 'SIEWE NGANGOUM', 'SIEWE TIENTCHEU Nicole', 'SIEWE KAMENI Serge', 'Stéphanie Linda', '', '', 'OUEST', 'FEMININ', '798109935', 'ACTIVE', 'ACTIVE', 696045700, 699978354, 696156393, 64, 1, 1);
INSERT INTO `candidat` VALUES (8512, 'Etudiant', '2020-01-06 12:35:43', '2020-01-06 12:35:43', '2002-08-15 23:00:00', NULL, 'Collège Adventiste', 'murielsipehou@gmail.com', NULL, 'SIPEHOU TEKAM', 'ASSE ONANA Marie Louise', 'SIPEHOU TEKAM Guy Constantin', 'Muriel Jonelle', '', '', 'Ouest', 'FEMININ', '798024493', 'ACTIVE', 'ACTIVE', 697471032, 699851233, 699959573, 64, 1, 1);
INSERT INTO `candidat` VALUES (8513, 'Etudiant', '2020-01-06 12:35:43', '2020-01-06 12:35:43', '2002-01-26 23:00:00', NULL, 'Collège Jésus Marie', 'mboukasocpa2@gmail.com', NULL, 'SOCPA MBOUKA', 'NDAPU Brunhilda', 'SOCPA Antoine', 'Linda', '', '', 'Ouest', 'FEMININ', '797963084', 'ACTIVE', 'ACTIVE', 691132622, 677783852, 677555884, 64, 1, 1);
INSERT INTO `candidat` VALUES (8514, 'Etudiant', '2020-01-06 12:35:43', '2020-01-06 12:35:43', '2003-06-29 23:00:00', NULL, 'COLLEGE FLEMING', 'smithsoh9@gmail.com', NULL, 'SOH DOHO', 'METCHEDA Felicité', 'SOH Alphonse', 'DIDDRICH  SMITH', '', '', 'CENTRE', 'MASCULIN', '797963857', 'ACTIVE', 'ACTIVE', 683076202, 699990859, 673250818, 64, 1, 1);
INSERT INTO `candidat` VALUES (8515, 'Etudiant', '2020-01-06 12:35:43', '2020-01-06 12:35:43', '2001-09-04 23:00:00', NULL, 'Collège F. X. Vogt', 'juniortagne2001@gmail.com', NULL, 'TAGNE WAMBO', 'MALLAH TEIMBOU Sylvie', 'TAGNE Edouard', 'Elohim Junior', '', '', 'Centre', 'MASCULIN', '798117339', 'ACTIVE', 'ACTIVE', 694656790, 0, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8516, 'Etudiant', '2020-01-06 12:35:43', '2020-01-06 12:35:43', '1999-01-12 23:00:00', NULL, 'Collège IPONI', 'jaasieltakenwa@gmail.com', NULL, 'TAKENWA  KENNE', 'NANA Frida', 'TAKENWA Jean Paul', 'Jaasiel', '', '', 'OUEST', 'MASCULIN', '797906049', 'ACTIVE', 'ACTIVE', 695080044, 0, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8517, 'Etudiant', '2020-01-06 12:35:43', '2020-01-06 12:35:43', '2002-08-25 23:00:00', NULL, 'Collège F. X. Vogt', 'tankengwise1@gmail.com', NULL, 'TANKENG NKONTCHEU', 'KENGNE Emilienne Claire', 'TANKENG Alphonse', 'Ryan Wise', '', '', 'Ouest', 'MASCULIN', '798062686', 'ACTIVE', 'ACTIVE', 674201385, 677770108, 677587078, 64, 1, 1);
INSERT INTO `candidat` VALUES (8518, 'Etudiant', '2020-01-06 12:35:43', '2020-01-06 12:35:43', '2004-01-08 23:00:00', NULL, 'Collège Adventiste Bil.', 'bricetchappi@gmail.com', NULL, 'TCHAPPI TIAHA', 'DATCHOUA SINDJUI Hélène', 'TCHAPPI TIAHA Antoine', 'Joseph Brice', '', '', 'Ouest', 'MASCULIN', '797973560', 'ACTIVE', 'ACTIVE', 650137268, 677413956, 653186364, 64, 1, 1);
INSERT INTO `candidat` VALUES (8519, 'Etudiant', '2020-01-06 12:35:43', '2020-01-06 12:35:43', '2000-10-30 23:00:00', NULL, 'Collège F. X. Vogt', 'dickenstchawa@gmail.com', NULL, 'TCHAWA', 'HAMBOU Madeleine', 'TCHAWA Paul', 'Paul II Dickens', '', '', 'Ouest', 'MASCULIN', '797908962', 'ACTIVE', 'ACTIVE', 693039076, 696939011, 699373304, 64, 1, 1);
INSERT INTO `candidat` VALUES (8520, 'Etudiant', '2020-01-06 12:35:43', '2020-01-06 12:35:43', '2001-09-15 23:00:00', NULL, 'Collège F. X. Vogt', 'tchiagouyann@gmail.com', NULL, 'TCHIAGOU KAMWO', 'KAMWO CECILE', 'TCHIAGOU HAPPI CHRISTOPHE', 'Georges Ulrich', '', '', 'Ouest', 'MASCULIN', '797999542', 'ACTIVE', 'ACTIVE', 696856568, 0, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8521, 'Etudiant', '2020-01-06 12:35:43', '2020-01-06 12:35:43', '2001-07-31 23:00:00', NULL, 'COLLEGE F.X VOGT', 'tchokorerene@gmail.com', NULL, 'TCHOKOMI', 'TCHAKOUA MARIE-MADELEINE', 'TCHOKOMI RENE-MARCELLIN', 'RENE-MARCELLIN', '', '', 'OUEST', 'MASCULIN', '797975428', 'ACTIVE', 'ACTIVE', 698769529, 0, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8522, 'Etudiant', '2020-01-06 12:35:43', '2020-01-06 12:35:44', '2002-04-15 23:00:00', NULL, 'Collège Jésus Marie', 'audreytchouamani1@gmail.com', NULL, 'TCHOUAMANI TCHANI', 'NGALEU Lise Clemence', 'TCHOUAMANI Isidore', 'Clarice Audrey', '', '', 'Centre', 'FEMININ', '798124378', 'ACTIVE', 'ACTIVE', 694654229, 699938804, 699808752, 64, 1, 1);
INSERT INTO `candidat` VALUES (8523, 'Etudiant', '2020-01-06 12:35:44', '2020-01-06 12:35:44', '2000-04-28 23:00:00', NULL, 'LYCEE DE NYLON DE BRAZZAVILLE', 'idrisskaka80@gmail.com', NULL, 'TCHOUMBA NAMEN', 'DIPANDA MISPA', 'NAMEN CHRISTOPHE', 'IDRISS  GILDAS', '', '', 'OUEST', 'MASCULIN', '798099050', 'ACTIVE', 'ACTIVE', 694278704, 673628543, 0, 64, 1, 1);
INSERT INTO `candidat` VALUES (8524, 'Etudiant', '2020-01-06 12:35:44', '2020-01-06 12:35:44', '2002-01-09 23:00:00', NULL, 'Collège F. X. Vogt', 'medhxtombx@gmail.com', NULL, 'TOMBI SOULEMANOU', 'TOMBI SOULEMANOU Merama', 'TOMBI A ROKO SIDIKI', 'MEDHI', '', '', 'CENTRE', 'MASCULIN', '798062659', 'ACTIVE', 'ACTIVE', 694762069, 699916459, 699844396, 64, 1, 1);
INSERT INTO `candidat` VALUES (552, 'Etudiant', '2020-01-14 11:52:27', '2020-01-14 11:52:37', '1995-06-15 23:00:00', NULL, 'ICT4D', 'christian.adamou@institutsaintjean.org', NULL, 'ADAMOU PANGAP', 'YANGO Christine', 'PANGAP Etienne', 'CHRISTIAN', '', '', 'CENTRE', 'MASCULIN', '790483377', 'ACTIVE', 'ACTIVE', 691114779, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (553, 'Etudiant', '2020-01-14 11:52:38', '2020-01-14 11:52:39', '2000-06-02 23:00:00', NULL, 'Collège Vogt', 'hamman.ahmadou@institutsaintjean.org', NULL, 'AHMADOU', 'HAOUA AOUDOU', 'AHMADOU BELLO', 'HAMMAN BELLO', '', '', 'Nord', 'MASCULIN', '941131773', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (554, 'Etudiant', '2020-01-14 11:52:39', '2020-01-14 11:52:40', '2000-06-01 23:00:00', NULL, 'LYCEE BILINGUE DE BAFOUSSAM', 'michele.ateutchia@institutsaintjean.org', NULL, 'ATEUTCHIA TONMEZING', 'ATEUTCHIA NGUIMGO Yvette', 'ATEUTCHIA Pascal', 'MICHELE LAURA', '', '', 'Ouest', 'FEMININ', '941248948', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (555, 'Etudiant', '2020-01-14 11:52:41', '2020-01-14 11:52:42', '1996-05-28 23:00:00', NULL, 'UY 1', 'rosane.azafack@institutsaintjean.org', NULL, 'AZAFACK TEMGOUA', 'JONGO Pauline Yolande', 'NDOGMO TEMGOUA Joseph Taddeï', 'ROSANE', '', '', 'Ouest', 'FEMININ', '941305459', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (556, 'Etudiant', '2020-01-14 11:52:42', '2020-01-14 11:52:43', '1999-11-21 23:00:00', NULL, 'COLLEGE DU LEVANT', 'lydie.baliaba@institutsaintjean.org', NULL, 'BALIABA', 'EFATHEL Marie Noëlle', 'BALIABA Valère Francis', 'LYDIE SERENA', '', '', 'Centre', 'FEMININ', '941254002', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (557, 'Etudiant', '2020-01-14 11:52:44', '2020-01-14 11:52:44', '1998-01-19 23:00:00', NULL, 'ISJ', 'didier.banlock@institutsaintjean.org', NULL, 'BANLOCK', 'DANG Cécile Irma', 'BANLOCK Didier Rogat', 'DIDIER ROCH', '', '', 'CENTRE', 'MASCULIN', '790429562', 'ACTIVE', 'ACTIVE', 666339318, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (558, 'Etudiant', '2020-01-14 11:52:45', '2020-01-14 11:52:46', '2000-04-14 23:00:00', NULL, 'PREPAVOGT', 'raissa.batindek@institutsaintjean.org', NULL, 'BATINDEK ELLA MENYE', 'ELLA-MENYE EKOTTO Rébecca Hortense', 'BATINDEK BATOANEN Théophile Adolphe', 'RAISSA PAULE', '', '', 'CENTRE', 'FEMININ', '790376611', 'ACTIVE', 'ACTIVE', 693138138, 699606076, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (559, 'Etudiant', '2020-01-14 11:52:46', '2020-01-14 11:52:47', '1999-12-11 23:00:00', NULL, 'Leclerc', 'gilles.benana@institutsaintjean.org', NULL, 'BENANA BISSAMA', 'BENANA Bibiane', 'BENANA André', 'Gilles Hermann', '', '', 'Centre', 'MASCULIN', '941311506', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (560, 'Etudiant', '2020-01-14 11:52:48', '2020-01-14 11:52:49', '2001-01-19 23:00:00', NULL, 'JEAN-TABI', 'wilfried.bobiongono@institutsaintjean.org', NULL, 'BOBIONGONO MEFOUDE', 'EMETINE Emilienne Basilise', 'BOBIONGONO MEFOUDE Ignace', 'WILFRIED FABIEN', '', '', 'Centre', 'MASCULIN', '941255828', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (561, 'Etudiant', '2020-01-14 11:52:49', '2020-01-14 11:52:50', '2001-01-04 23:00:00', NULL, 'Lycée Bilingue de Dschang', 'ulrich.bogni@institutsaintjean.org', NULL, 'BOGNI MAFFO', 'NONGNI Madeleine', 'MBOGNI Justin Jackson', 'Ulrich Flaubert', '', '', 'Ouest', 'MASCULIN', '941142377', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (562, 'Etudiant', '2020-01-14 11:52:51', '2020-01-14 11:52:52', '1999-03-02 23:00:00', NULL, 'LYCEE BILINGUE DE LONGPOM', 'ramex.dongmo@institutsaintjean.org', NULL, 'DONGMO BOUGOUE', 'NDONGO Colette', 'DONGMO Jean Gabriel', 'Ramex Loic', '', '', 'Ouest', 'MASCULIN', '941171233', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (563, 'Etudiant', '2020-01-14 11:52:52', '2020-01-14 11:52:53', '1997-06-16 23:00:00', NULL, 'ISJ', 'daniel.dzangue@institutsaintjean.org', NULL, 'DZANGUE', 'MALAC SONNA Delphine', 'SONNA KENMAYO Isaac', 'DANIEL LANDRY', '', '', 'OUEST', 'FEMININ', '790442146', 'ACTIVE', 'ACTIVE', 698455816, 675126623, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (564, 'Etudiant', '2020-01-14 11:52:54', '2020-01-14 11:52:54', '1999-07-28 23:00:00', NULL, 'Lycée Bilingue Emana', 'hans.edjenguele@institutsaintjean.org', NULL, 'EDJENGUELE NGOUPA', 'EVA ETONGUE MAYER Jacqueline', 'NJOUME EDJENGUELE Blaise', 'Hans François', '', '', 'Littoral', 'MASCULIN', '941137629', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (565, 'Etudiant', '2020-01-14 11:52:55', '2020-01-14 11:52:56', '1999-11-26 23:00:00', NULL, 'VICTOR HUGO', 'gueye.elhadj@institutsaintjean.org', NULL, 'EL HADJ MOR', 'DIKOBE EBELLE Reine Fabienne', 'Abdoulaye GUEYE', 'GUEYE', '', '', 'Littoral', 'MASCULIN', '941290364', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (566, 'Etudiant', '2020-01-14 11:52:56', '2020-01-14 11:52:57', '1998-02-11 23:00:00', NULL, 'UY 1', 'ali-kadeem.gueye@institutsaintjean.org', NULL, 'GUEYE', 'DIKOBE EBELLE Reine Fabienne', 'Abdoulaye GUEYE', 'Ali-Kadeem', '', '', 'Littoral', 'MASCULIN', '941260580', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (567, 'Etudiant', '2020-01-14 11:52:58', '2020-01-14 11:52:59', '2001-01-14 23:00:00', NULL, 'IUSTE', 'vanel.jiokeng@institutsaintjean.org', NULL, 'JIOKENG TSAFACK', 'MENDONFOUET TSAFACK Adeline', 'TSAFACK NORBERT', 'Vanel Joel', '', '', 'OUEST', 'MASCULIN', '790354479', 'ACTIVE', 'ACTIVE', 698756146, 670302774, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (568, 'Etudiant', '2020-01-14 11:52:59', '2020-01-14 11:53:00', '1998-09-30 23:00:00', NULL, 'SAINT BENEDICT COLLEGE Yaoundé', 'mikael.jotsa@institutsaintjean.org', NULL, 'JOTSA NGUETSOP', 'VOUKENG NGOULA Adèle Veronique', 'JOTSA David', 'MIKAEL', '', '', 'Ouest', 'MASCULIN', '941326633', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (569, 'Etudiant', '2020-01-14 11:53:01', '2020-01-14 11:53:01', '1992-04-12 23:00:00', NULL, 'IUT DE BANDJOUN', 'daniel.kamgang@institutsaintjean.org', NULL, 'KAMGANG FOYANG', 'MOUKOU Thérèse', 'FOYANG SAYANG Abel', 'DANIEL', '', '', 'OUEST', 'MASCULIN', '790296914', 'ACTIVE', 'ACTIVE', 694797185, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (570, 'Etudiant', '2020-01-14 11:53:02', '2020-01-14 11:53:03', '2000-06-05 23:00:00', NULL, 'COLLEGE VOGT', 'cedric.kamgang@institutsaintjean.org', NULL, 'KAMGANG TANKANG', 'TCHEMOGHO TOUKAM Georgette Edwige', 'TAKAM Martin', 'Cedric Ivan', '', '', 'Ouest', 'MASCULIN', '941256603', 'ACTIVE', 'ACTIVE', 656377356, 653049323, 677509525, 68, 202, 202);
INSERT INTO `candidat` VALUES (571, 'Etudiant', '2020-01-14 11:53:04', '2020-01-14 11:53:04', '1997-11-29 23:00:00', NULL, 'Collège Jésus Marie', 'ornelle.kembou@institutsaintjean.org', NULL, 'KEMBOU', 'NGUEMGEU Odile', 'SIEWOUE FANKAM Pascal', 'Ornelle Leslie', '', '', 'Ouest', 'FEMININ', '941291268', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (572, 'Etudiant', '2020-01-14 11:53:05', '2020-01-14 11:53:06', '1999-11-21 23:00:00', NULL, 'Lycée de Biyem-assi', 'harold.kenmegne@institutsaintjean.org', NULL, 'KENMEGNE DJOUONANG', 'NINWO POKA Beatrice', '', 'Harold Junior', '', '', 'Ouest', 'MASCULIN', '941297156', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (573, 'Etudiant', '2020-01-14 11:53:06', '2020-01-14 11:53:07', '1999-01-28 23:00:00', NULL, '3il', 'nana.kouakam@institutsaintjean.org', NULL, 'KOUAKAM NANA', 'NGUENDIA NGOUFACK Annie Martiale', 'NANA KOUAKAM Simplice', '', '', '', 'OUEST', 'MASCULIN', '790533349', 'ACTIVE', 'ACTIVE', 693406324, 697186120, 699651751, 68, 202, 202);
INSERT INTO `candidat` VALUES (574, 'Etudiant', '2020-01-14 11:53:08', '2020-01-14 11:53:08', '1999-07-23 23:00:00', NULL, 'LYCEE BILINGUE DE DEIDO', 'daniela.lanbang@institutsaintjean.org', NULL, 'LANBANG MANFOUO', 'LONTSIE KUEWA Godelive', 'MANFOUO Victor', 'DANIELA', '', '', 'Ouest', 'FEMININ', '941385601', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (575, 'Etudiant', '2020-01-14 11:53:10', '2020-01-14 11:53:11', '2001-11-16 23:00:00', NULL, 'Lycée Bilingue de Mendong', 'anne.madjoutsing@institutsaintjean.org', NULL, 'MADJOUTSING NGAPINSI', 'KENGNE Christiane', 'NGAPINSI Philippe', 'Anne Brenda', '', '', 'Ouest', 'FEMININ', '941181838', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (576, 'Etudiant', '2020-01-14 11:53:11', '2020-01-14 11:53:12', '1998-01-15 23:00:00', NULL, 'ISJ', 'frederique.mbole@institutsaintjean.org', NULL, 'MBOLE NDONGO', 'MBAZOA Nicole Aurele Solange', 'NDONGO MVE Désiré', 'FREDERIQUE ANDREA', '', '', 'SUD', 'FEMININ', '790333675', 'ACTIVE', 'ACTIVE', 699631576, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (577, 'Etudiant', '2020-01-14 11:53:13', '2020-01-14 11:53:13', '1999-08-24 23:00:00', NULL, 'Collège FLEMING', 'anoy.mboning@institutsaintjean.org', NULL, 'MBONING JOKUNG', 'JOKUNG Estelle', 'MBONING Charles', 'ANDY KARL', '', '', 'Ouest', 'MASCULIN', '941182613', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (578, 'Etudiant', '2020-01-14 11:53:14', '2020-01-14 11:53:15', '1998-05-06 23:00:00', NULL, 'IAI', 'alexandre.mduteh@institutsaintjean.org', NULL, 'MDUTEH A NYAM', '', '', 'ALEXANDRE ULRICH', '', '', 'CENTRE', 'MASCULIN', '790483498', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (579, 'Etudiant', '2020-01-14 11:53:15', '2020-01-14 11:53:17', '1999-10-22 23:00:00', NULL, 'Collège St Benoit', 'marie.mengue@institutsaintjean.org', NULL, 'MENGUE MEBADA', 'MBANG Veronique Alice', 'MEBADA EKANI Jean Pierre Alain', 'Marie Audrey', '', '', 'Centre', 'FEMININ', '941156845', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (580, 'Etudiant', '2020-01-14 11:53:17', '2020-01-14 11:53:18', '1999-11-10 23:00:00', NULL, 'COLLEGE VOGT', 'jules.meupehou@institutsaintjean.org', NULL, 'MEUPEHOU MONTHEU', 'NGAGOUE Irène', 'MEUPEHOU Jeremie', 'JULES RODJA', '', '', 'Ouest', 'MASCULIN', '941304969', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (581, 'Etudiant', '2020-01-14 11:53:19', '2020-01-14 11:53:19', '1999-03-21 23:00:00', NULL, 'VOGT', 'peniel.mmen@institutsaintjean.org', NULL, 'MMEN', 'MATIO ESSOUNGOU Marie Noëlle', 'MAPITA EPOH Magloire', 'PENIEL GLORIEL', '', '', 'Littoral', 'MASCULIN', '941399924', 'ACTIVE', 'ACTIVE', 691329723, 699862658, 699536524, 68, 202, 202);
INSERT INTO `candidat` VALUES (582, 'Etudiant', '2020-01-14 11:53:20', '2020-01-14 11:53:21', '1998-05-11 23:00:00', NULL, 'IAI', 'hermann.mouliom@institutsaintjean.org', NULL, 'MOULIOM MATAPIT', '', '', 'HERMANN CEDRIC', '', '', 'OUEST', 'MASCULIN', '790520047', 'ACTIVE', 'ACTIVE', 691982885, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (583, 'Etudiant', '2020-01-14 11:53:22', '2020-01-14 11:53:22', '1985-12-18 23:00:00', NULL, 'UY 1', 'yves.ndam@institutsaintjean.org', NULL, 'NDAM POFOURA', 'VEPOUYOUM Jeannette', 'NDAM JEAN', 'Yves Michael', '', '', 'OUEST', 'MASCULIN', '790454513', 'ACTIVE', 'ACTIVE', 695241901, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (584, 'Etudiant', '2020-01-14 11:53:23', '2020-01-14 11:53:24', '1997-06-22 23:00:00', NULL, 'IAI', 'arthur.ndanga@institutsaintjean.org', NULL, 'NDANGA', 'NDANGA Acline', 'NDANGA Marcel', 'ARTHUR  BRICE', '', '', 'OUEST', 'MASCULIN', '790306608', 'ACTIVE', 'ACTIVE', 655306234, 699558901, 699303400, 68, 202, 202);
INSERT INTO `candidat` VALUES (585, 'Etudiant', '2020-01-14 11:53:25', '2020-01-14 11:53:25', '1997-01-08 23:00:00', NULL, 'Leclerc', 'loic.ndie@institutsaintjean.org', NULL, 'NDIE SIGHA', 'MBOGHENG Jeanne', 'SIGHA Martin', 'Loic', '', '', 'Ouest', 'MASCULIN', '941371152', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (586, 'Etudiant', '2020-01-14 11:53:26', '2020-01-14 11:53:27', '1998-08-08 23:00:00', NULL, 'UY 1', 'carelle.ndomouo@institutsaintjean.org', NULL, 'NDOMOUO NANA', 'MAFFO TOTUOM Viviane', 'NGUESSI NANA Paul', 'Carelle', '', '', 'Ouest', 'FEMININ', '941342171', 'ACTIVE', 'ACTIVE', 696172245, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (587, 'Etudiant', '2020-01-14 11:53:27', '2020-01-14 11:53:28', '1997-08-31 23:00:00', NULL, 'Collège Jésus Marie', 'judicael.ngaliembou@institutsaintjean.org', NULL, 'NGALIEMBOU SINGOUE', 'TCHIEUMAGA Elisabeth Hortense', 'NGALIEMBOU Alphonse', 'JUDICAEL-FORENT', '', '', 'Ouest', 'MASCULIN', '941397128', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (588, 'Etudiant', '2020-01-14 11:53:29', '2020-01-14 11:53:29', '1999-06-28 23:00:00', NULL, 'KAMTCHOUM NDAMI', 'teddy.ngaliembou@institutsaintjean.org', NULL, 'NGALIEMBOU TCHEUMENI', 'TCHIEUMAGA Elisabeth Hortense', 'NGALIEMBOU Alphonse', 'TEDDY CONSTANT', '', '', 'Ouest', 'MASCULIN', '941307604', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (589, 'Etudiant', '2020-01-14 11:53:30', '2020-01-14 11:53:31', '1998-06-06 23:00:00', NULL, '', 'emmanuel.ngono@institutsaintjean.org', NULL, 'NGONO FOE', 'ANEGA NKOA Claudette', 'FOE NGONO Eugène', 'EMMANUEL LOÏC', '', '', 'CENTRE', 'MASCULIN', '790526460', 'ACTIVE', 'ACTIVE', 694260735, 699994793, 699524253, 68, 202, 202);
INSERT INTO `candidat` VALUES (590, 'Etudiant', '2020-01-14 11:53:32', '2020-01-14 11:53:32', '1998-08-07 23:00:00', NULL, 'COLLEGE FLEMING', 'landry.njohou@institutsaintjean.org', NULL, 'NJOHOU NJOHOU', 'KWEGWA NJOHOU Jeannette', 'NJOHOU Jean-Pierre', 'Landry', '', '', 'Ouest', 'MASCULIN', '941379643', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (591, 'Etudiant', '2020-01-14 11:53:33', '2020-01-14 11:53:34', '2001-05-22 23:00:00', NULL, 'JEAN-TABI', 'frantz.nyam@institutsaintjean.org', NULL, 'NYAM KIHENGA', 'ALANG Micheline', 'KIHENGA Théophile', 'FRANTZ CLARY', '', '', 'Centre', 'MASCULIN', '941253013', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (592, 'Etudiant', '2020-01-14 11:53:34', '2020-01-14 11:53:35', '1998-10-23 23:00:00', NULL, 'Collège Fleming', 'lionel.payep@institutsaintjean.org', NULL, 'PAYEP', 'NANA Marceline', 'TCHUIPET FUNKE Arnaud Rodrigue', 'Lionel', '', '', 'Est', 'MASCULIN', '941260574', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (593, 'Etudiant', '2020-01-14 11:53:36', '2020-01-14 11:53:36', '2000-01-17 23:00:00', NULL, 'Collège Vogt', 'lorges.pola@institutsaintjean.org', NULL, 'POLA', 'DEMGNE Béatrice', 'POLA Joseph Celestin', 'Lorges Anthony', '', '', 'Ouest', 'MASCULIN', '941164228', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (594, 'Etudiant', '2020-01-14 11:53:37', '2020-01-14 11:53:38', '1999-09-27 23:00:00', NULL, 'Lycée de SOA', 'landry.sop@institutsaintjean.org', NULL, 'SOP KENGNIE', 'MANYE WAFFO Anne Bertille', 'Zenon Blaise SOP', 'Landry Frank', '', '', 'Ouest', 'MASCULIN', '941196191', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (595, 'Etudiant', '2020-01-14 11:53:39', '2020-01-14 11:53:39', '2000-02-14 23:00:00', NULL, 'Collège Jésus Marie', 'christian.takam@institutsaintjean.org', NULL, 'TAKAM TOBOU', 'LOUDJOP Mireille Landros', 'TAKAM André', 'Christian Jasmin', '', '', 'Ouest', 'MASCULIN', '941322950', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (596, 'Etudiant', '2020-01-14 11:53:40', '2020-01-14 11:53:41', '1999-12-09 23:00:00', NULL, 'PREPAVOGT-INGE', 'karl.tanouo@institutsaintjean.org', NULL, 'TANOUO KAMGA', 'MAGNY Paulette Angèle', 'KAMGA TANOUO Raymond', 'KARL ORLANDO', '', '', 'Ouest', 'MASCULIN', '-1611827440', 'ACTIVE', 'ACTIVE', 697916610, 699898000, 677092208, 68, 202, 202);
INSERT INTO `candidat` VALUES (597, 'Etudiant', '2020-01-14 11:53:41', '2020-01-14 11:53:42', '2001-01-21 23:00:00', NULL, 'COLLEGE VOGT', 'mathurin.tcheuguem@institutsaintjean.org', NULL, 'TCHEUGUEM TIAKO', 'TCHEUGUEN Melanie Magloire', 'TCHEUGUEN MBOUWE Joseph', 'Mathurin Fredy', '', '', 'Ouest', 'MASCULIN', '941373015', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (598, 'Etudiant', '2020-01-14 11:53:43', '2020-01-14 11:53:43', '1999-04-07 23:00:00', NULL, 'UY 1', 'jules.tchouawou@institutsaintjean.org', NULL, 'TCHOUAWOU TOLALE', 'CHETEU Macaire', 'TOLALE TCHOUAWOU Joseph', 'Jules Brice', '', '', 'Ouest', 'MASCULIN', '941318204', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (599, 'Etudiant', '2020-01-14 11:53:44', '2020-01-14 11:53:45', '1999-06-11 23:00:00', NULL, 'LYCEE DE NSAM EFOULAN', 'yves.tebonso@institutsaintjean.org', NULL, 'TEBONSO ZONGOUA', 'NGO SOKKAL Rosalie Pulchérie', 'TEBONSO Hilaire', 'YVES TUDAH', '', '', 'Ouest', 'MASCULIN', '941387243', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (600, 'Etudiant', '2020-01-14 11:53:46', '2020-01-14 11:53:46', '2001-03-21 23:00:00', NULL, 'PREPAVOGT', 'vanelle.temme@institutsaintjean.org', NULL, 'TEMME DEMGNE', 'KENMOE Elise Valery', 'TEMME Michel', 'VANELLE', '', '', 'OUEST', 'FEMININ', '790326672', 'ACTIVE', 'ACTIVE', 691864353, 677315970, 677213782, 68, 202, 202);
INSERT INTO `candidat` VALUES (601, 'Etudiant', '2020-01-14 11:53:47', '2020-01-14 11:53:48', '2000-07-20 23:00:00', NULL, 'Collège Vogt', 'darvon.touoyem@institutsaintjean.org', NULL, 'TOUOYEM KENNE', 'NGOUETSO Jacqueline', 'TOUOYEM Pascal', 'D\'ARVON LINCOLN', '', '', 'Ouest', 'MASCULIN', '941261570', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (602, 'Etudiant', '2020-01-14 11:53:49', '2020-01-14 11:53:50', '2002-03-16 23:00:00', NULL, 'IB TOUMWA', 'guy.wandji@institutsaintjean.org', NULL, 'WANDJI', 'YANZE Clotilde', 'FOTSING Marcel', 'Guy Steve', '', '', 'Ouest', 'MASCULIN', '941258680', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (603, 'Etudiant', '2020-01-14 11:53:51', '2020-01-14 11:53:52', '1999-05-26 23:00:00', NULL, 'COLLEGE VOGT', 'danielle.wontcheu@institutsaintjean.org', NULL, 'WONTCHEU NJANDEU', 'MOUTHIEU Monique-Aimée', 'NJANDEU Emmanuel', 'Danielle', '', '', 'Ouest', 'FEMININ', '941296346', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (604, 'Etudiant', '2020-01-14 11:53:53', '2020-01-14 11:53:53', '1998-01-12 23:00:00', NULL, 'UNIVERSITE SAINT JEAN PAUL II', 'tecly.yitembe@institutsaintjean.org', NULL, 'YITEMBE YITEMBE', 'MACHE NGAHA Angeline', 'YITEMBE Augustin', 'Tecly Sorel', '', '', 'Ouest', 'MASCULIN', '941297183', 'ACTIVE', 'ACTIVE', 0, 0, 0, 68, 202, 202);
INSERT INTO `candidat` VALUES (702, 'Etudiant', '2020-01-14 13:35:47', '2020-01-14 13:35:47', '2000-04-01 23:00:00', NULL, 'COLLEGE PRIVEE LES LILAS', 'lynne.assougouma@institutsaintjean.org', NULL, 'ASSOUGOUMA  YAKANA', 'BOGUISSOGO ABALINTSINA', 'YAKANA A NTANG JEAN CLAUDE', 'LYNNE  CLAUDIA', '', '', 'CENTRE', 'FEMININ', '-1582257536', 'ACTIVE', 'ACTIVE', 0, 0, 0, 65, 202, 202);
INSERT INTO `candidat` VALUES (703, 'Etudiant', '2020-01-14 13:35:48', '2020-01-14 13:35:49', '1999-11-06 23:00:00', NULL, 'LYCEE DE BIYEM ASSI', 'lesage.azalefack@institutsaintjean.org', NULL, 'AZALEFACK  NOUTEZA', 'NEKDEM Marie Noél Epse NOUTEZA', 'NOUTEZA PIERRE', 'LE SAGE', '', '', 'OUEST', 'MASCULIN', '-1582255700', 'ACTIVE', 'ACTIVE', 691354360, 655099274, 677330147, 65, 202, 202);
INSERT INTO `candidat` VALUES (704, 'Etudiant', '2020-01-14 13:35:49', '2020-01-14 13:35:50', '2002-02-13 23:00:00', NULL, 'College FX VOGT', 'cedric.bessimbene@institutsaintjean.org', NULL, 'BESSIMBENE BAYOMO', 'BOBIONDIGONO', 'BAYOMO Mathias', 'CEDRIC', '', '', 'CENTRE', 'MASCULIN', '-1582169123', 'ACTIVE', 'ACTIVE', 694425999, 699219939, 691731842, 65, 202, 202);
INSERT INTO `candidat` VALUES (705, 'Etudiant', '2020-01-14 13:35:51', '2020-01-14 13:35:52', '2000-04-03 23:00:00', NULL, 'College FX VOGT', 'marvin.bidzana@institutsaintjean.org', NULL, 'BIDZANA  BIDZANA', 'DEUNGOUE DJADJO MARCELLE', 'BIDZANA ARSENE', 'MARVIN PERAN', '', '', 'CENTRE', 'MASCULIN', '-1582014647', 'ACTIVE', 'ACTIVE', 695797670, 677780101, 699933065, 65, 202, 202);
INSERT INTO `candidat` VALUES (706, 'Etudiant', '2020-01-14 13:35:52', '2020-01-14 13:35:53', '1998-02-22 23:00:00', NULL, 'COLLEGE SAINT BENOIT', 'ateba.cedric@institutsaintjean.org', NULL, 'CEDRIC ARMEL EBIBIET', 'YANGRELO MARIE LOUISE', 'ATEBA AKOA MAURICE', 'ATEBA AKOA', '', '', 'CENTRE', 'MASCULIN', '-1582097940', 'ACTIVE', 'ACTIVE', 657378676, 242002017, 675214627, 65, 202, 202);
INSERT INTO `candidat` VALUES (707, 'Etudiant', '2020-01-14 13:35:54', '2020-01-14 13:35:54', '2000-12-09 23:00:00', NULL, 'COLLEGE SAINT BENOIT', 'taidi.dinnamou@institutsaintjean.org', NULL, 'DINNAMOU HARA TAÏDI', 'FIRIDA FALAÏNA', 'HARA TAIDI', '', '', '', 'EXTREME-NORD', 'MASCULIN', '-1582190202', 'ACTIVE', 'ACTIVE', 655874051, 695188910, 699524991, 65, 202, 202);
INSERT INTO `candidat` VALUES (708, 'Etudiant', '2020-01-14 13:35:55', '2020-01-14 13:35:56', '2000-12-09 23:00:00', NULL, '', 'bienvenu.ndzana@institutsaintjean.org', NULL, 'NDZANA ®', '', '', 'Bienvenu Evrard Ken', '', '', '', 'MASCULIN', '941368181', 'ACTIVE', 'ACTIVE', 0, 0, 0, 65, 202, 202);
INSERT INTO `candidat` VALUES (709, 'Etudiant', '2020-01-14 13:35:57', '2020-01-14 13:35:57', '2002-09-11 23:00:00', NULL, 'Collège de la retraite', 'cedric.edzoa@institutsaintjean.org', NULL, 'EDZOA BADOUANA', 'OTELE ANDREE', 'ADALA ANTOINE', 'CEDRIC', '', '', 'CENTRE', 'MASCULIN', '-1582046082', 'ACTIVE', 'ACTIVE', 697970435, 697322210, 699971312, 65, 202, 202);
INSERT INTO `candidat` VALUES (710, 'Etudiant', '2020-01-14 13:35:58', '2020-01-14 13:35:59', '2000-09-07 23:00:00', NULL, 'collège de la retraite', 'ernest.engoue@institutsaintjean.org', NULL, 'ENGOUE', 'ENGOUE JOSETTE', 'ENGOUE BENOIT', 'ERNEST  LOÏC', '', '', 'ouest', 'MASCULIN', '-1582014305', 'ACTIVE', 'ACTIVE', 691954821, 677120111, 656758321, 65, 202, 202);
INSERT INTO `candidat` VALUES (711, 'Etudiant', '2020-01-14 13:36:00', '2020-01-14 13:36:01', '2001-09-24 23:00:00', NULL, 'NEW CENTURY INSTITUTE OF LEARNING', 'georges.etetaa@institutsaintjean.org', NULL, 'ETETA\'A NGONGUE', 'MFETMOUTA NDZINO LEA FLORE', 'ETETA\'A NTONGA GASTON MICHEL', 'GEORGES', '', '', 'SUD', 'MASCULIN', '-1582154951', 'ACTIVE', 'ACTIVE', 697230508, 699837152, 696206453, 65, 202, 202);
INSERT INTO `candidat` VALUES (712, 'Etudiant', '2020-01-14 13:36:01', '2020-01-14 13:36:02', '2001-05-04 23:00:00', NULL, 'NOTRE DAME DES BEATITUDES', 'aod.fandio@institutsaintjean.org', NULL, 'FANDIO SENDJA', 'FANDIO BRIDINETTE', 'FANDIO EMMANUEL', 'AOD EMMA', '', '', 'OUEST', 'MASCULIN', '-1582215089', 'ACTIVE', 'ACTIVE', 657671241, 0, 0, 65, 202, 202);
INSERT INTO `candidat` VALUES (713, 'Etudiant', '2020-01-14 13:36:03', '2020-01-14 13:36:04', '1999-07-08 23:00:00', NULL, 'COLLEGE LA RETRAITE', 'yannick.fokam@institutsaintjean.org', NULL, 'FOKAM DJODOM', 'DENNOUE MOTSEBO MIREILLE GEORGETTE', 'TAGNE DJODOM AUGUSTE  ERIC', 'YANNICK', '', '', 'OUEST', 'MASCULIN', '-1582243951', 'ACTIVE', 'ACTIVE', 690681483, 699898378, 677110226, 65, 202, 202);
INSERT INTO `candidat` VALUES (714, 'Etudiant', '2020-01-14 13:36:04', '2020-01-14 13:36:05', '1999-12-08 23:00:00', NULL, 'FRANKY COMPREHENSIVE SECONDARY SCHOOL', 'wilfried.fokana@institutsaintjean.org', NULL, 'FOKANA LEKEFACK', 'NGUETSOP ELEONORE', 'FOKANA SONKENG NICOLAS', 'WILFRIED JORDAN', '', '', 'OUEST', 'MASCULIN', '-1582065491', 'ACTIVE', 'ACTIVE', 655866297, 699807018, 699443179, 65, 202, 202);
INSERT INTO `candidat` VALUES (715, 'Etudiant', '2020-01-14 13:36:06', '2020-01-14 13:36:06', '2001-03-03 23:00:00', NULL, 'LYCEE DE SOA', 'harold.fokoueng@institutsaintjean.org', NULL, 'FOKOUENG  FOTIE', 'MAVAHYIM TIAM VALERIE', 'FOKOUENG FOTIE AUGUSTIN', 'HAROLD GEOFFREY', '', '', 'ouest', 'MASCULIN', '-1582096173', 'ACTIVE', 'ACTIVE', 680586469, 677444380, 699849967, 65, 202, 202);
INSERT INTO `candidat` VALUES (716, 'Etudiant', '2020-01-14 13:36:07', '2020-01-14 13:36:08', '2002-05-17 23:00:00', NULL, 'COLLEGE CATHOLIQUE JESUS MARIE', 'dorian.gaping@institutsaintjean.org', NULL, 'GAPING SIMEN', 'MADZO GERTRUDE LAURE', 'SIMEN GAPING FELIX', 'DORIAN', '', '', 'OUEST', 'MASCULIN', '-1582028817', 'ACTIVE', 'ACTIVE', 698623067, 699878262, 675735035, 65, 202, 202);
INSERT INTO `candidat` VALUES (717, 'Etudiant', '2020-01-14 13:36:08', '2020-01-14 13:36:09', '2000-04-02 23:00:00', NULL, 'COLLEGE JEAN TABI', 'malicka.houmgbo@institutsaintjean.org', NULL, 'HOUMGBO MBAKOP', 'KEMADJOU EDITH', 'HOUMGBO ETIENNE', 'Malicka Maeva', '', '', 'OUEST', 'FEMININ', '941464312', 'ACTIVE', 'ACTIVE', 656361555, 699399601, 677735709, 65, 202, 202);
INSERT INTO `candidat` VALUES (718, 'Etudiant', '2020-01-14 13:36:10', '2020-01-14 13:36:10', '2000-06-12 23:00:00', NULL, 'COLLEGE JEAN TABI', 'patrick.kamdem@institutsaintjean.org', NULL, 'KAMDEM  CHE', 'SINDJOUM DESIRE', 'SINDJOUM GUY BONAVENTURE', 'PATRICK DIMITRI', '', '', 'OUEST', 'MASCULIN', '-1582929334', 'ACTIVE', 'ACTIVE', 690453128, 699706297, 699912895, 65, 202, 202);
INSERT INTO `candidat` VALUES (719, 'Etudiant', '2020-01-14 13:43:54', '2020-01-14 13:43:55', '1999-04-19 23:00:00', NULL, 'LYCEE DE BIYEM ASSI', 'wilfried.kammogne@institutsaintjean.org', NULL, 'KAMDEM SINDJOUM', 'KUISSU JEANNETTE', 'FONING JEAN PIERRE', 'WILFRIED', '', '', 'OUEST', 'MASCULIN', '-1582094041', 'ACTIVE', 'ACTIVE', 656963212, 696604152, 699107034, 65, 202, 202);
INSERT INTO `candidat` VALUES (720, 'Etudiant', '2020-01-14 13:43:56', '2020-01-14 13:43:57', '2000-09-03 23:00:00', NULL, 'INSTITUT VICTOR HUGO', 'mouhamadou.koneh@institutsaintjean.org', NULL, 'KAMMOGNE FONING', 'TALATOU CHATOU', 'KONEH MOHAMED', 'MOUHAMADOU BAKO', '', '', 'CENTRE', 'MASCULIN', '-1582094098', 'ACTIVE', 'ACTIVE', 690251169, 699536870, 680546054, 65, 202, 202);
INSERT INTO `candidat` VALUES (721, 'Etudiant', '2020-01-14 13:43:57', '2020-01-14 13:43:58', '2000-05-18 23:00:00', NULL, 'College FX VOGT', 'emilien.mba@institutsaintjean.org', NULL, 'KONEH', 'NGO NWAHA JULIENNE CLAIRE', 'NYOBE JEAN', 'EMILIEN AIME', '', '', 'LITTORAL', 'MASCULIN', '-1582005070', 'ACTIVE', 'ACTIVE', 655574311, 698214070, 699574278, 65, 202, 202);
INSERT INTO `candidat` VALUES (722, 'Etudiant', '2020-01-14 13:43:59', '2020-01-14 13:44:00', '2001-09-24 23:00:00', NULL, 'COLLEGE JESUS MARIE', 'junior.mbague@institutsaintjean.org', NULL, 'MBA', 'TSOPKENG DJUIKA Clémence', '-', 'JUNIOR', '', '', 'OUEST', 'MASCULIN', '-1582180963', 'ACTIVE', 'ACTIVE', 653049053, 696372143, 0, 65, 202, 202);
INSERT INTO `candidat` VALUES (723, 'Etudiant', '2020-01-14 13:44:01', '2020-01-14 13:44:01', '2000-05-12 23:00:00', NULL, 'College FX VOGT', 'pierre.mbom@institutsaintjean.org', NULL, 'MBAGUE NGUEMTCHOP', 'ANYUTU Marie Rose', 'ETOUA Philippe William', 'Pierre Robert Mike-Yahn', '', '', 'CENTRE', 'MASCULIN', '-1582059656', 'ACTIVE', 'ACTIVE', 694802855, 0, 0, 65, 202, 202);
INSERT INTO `candidat` VALUES (724, 'Etudiant', '2020-01-14 13:44:03', '2020-01-14 13:44:03', '2002-03-29 23:00:00', NULL, 'COLLEGE ADVENTISTE DE YAOUNDE', 'yoan.mboutchouang@institutsaintjean.org', NULL, 'MBOM ETOUA ®', '', '', 'YOAN  DUPONT', '', '', '', 'MASCULIN', '941293062', 'ACTIVE', 'ACTIVE', 695404334, 0, 0, 65, 202, 202);
INSERT INTO `candidat` VALUES (725, 'Etudiant', '2020-01-14 13:44:04', '2020-01-14 13:44:05', '2000-07-24 23:00:00', NULL, 'COLLEGE JESUS MARIE', 'carmella.mfatchoua@institutsaintjean.org', NULL, 'MBOUTCHOUANG KENYOU', 'SA\'GA Sidonie', 'NDAMKOU Christian', 'CARMELLA LINDSEY', '', '', 'OUEST', 'FEMININ', '-1582199963', 'ACTIVE', 'ACTIVE', 690307044, 677512200, 677707050, 65, 202, 202);
INSERT INTO `candidat` VALUES (726, 'Etudiant', '2020-01-14 13:44:05', '2020-01-14 13:44:06', '2001-04-13 23:00:00', NULL, 'COLLEGE BENIGNA D\'ETOUDI', 'jefferson.miguim@institutsaintjean.org', NULL, 'MFATCHOUA  NDAMKOU', 'FANGUEM Helene', 'YOUTA Albert', 'JEFFERSON', '', '', 'OUEST', 'MASCULIN', '-1582169460', 'ACTIVE', 'ACTIVE', 656585158, 677657015, 699290911, 65, 202, 202);
INSERT INTO `candidat` VALUES (727, 'Etudiant', '2020-01-14 13:44:07', '2020-01-14 13:44:08', '1999-01-04 23:00:00', NULL, 'College Benigna', 'houreira.mponn@institutsaintjean.org', NULL, 'MIGUIM DE YOUTA', 'YAAKA Mariama', 'MPON A NTAH', 'Houreira', '', '', 'CENTRE', 'FEMININ', '-1582056772', 'ACTIVE', 'ACTIVE', 676971248, 0, 0, 65, 202, 202);
INSERT INTO `candidat` VALUES (728, 'Etudiant', '2020-01-14 13:44:09', '2020-01-14 13:44:10', '1998-11-06 23:00:00', NULL, 'COLLEGE LES ARMANDINS', 'stevin.ndamdja@institutsaintjean.org', NULL, 'MPONN A BITODENN', 'MEKOUGOUM TAFOUNGUE CALICE', 'KAMWA NJITAP HYPOLITT', 'STEVIN ZIDANE', '', '', 'OUEST', 'MASCULIN', '-1581991644', 'ACTIVE', 'ACTIVE', 698286208, 674677301, 676398069, 65, 202, 202);
INSERT INTO `candidat` VALUES (729, 'Etudiant', '2020-01-14 13:44:11', '2020-01-14 13:44:12', '2001-04-15 23:00:00', NULL, 'CENTRE EDUCATIF D\'EKOUDOU BASTOS', 'hubert.ndom@institutsaintjean.org', NULL, 'NDAMDJA KAMWA', 'ABENG BENGONO Benizzy M.', 'Feu NDOM Hubert', 'HUBERT STEVE', '', '', 'EST', 'MASCULIN', '-1582082665', 'ACTIVE', 'ACTIVE', 0, 0, 0, 65, 202, 202);
INSERT INTO `candidat` VALUES (730, 'Etudiant', '2020-01-14 13:44:13', '2020-01-14 13:44:14', '1998-01-15 23:00:00', NULL, 'LYCEE DE TSINGA', 'xavier.ngongang@institutsaintjean.org', NULL, 'NDOM MEBIA', 'TSAFACK Judith', 'NGONGANG René', 'XAVIER DONALD', '', '', 'OUEST', 'MASCULIN', '-1582115367', 'ACTIVE', 'ACTIVE', 0, 0, 0, 65, 202, 202);
INSERT INTO `candidat` VALUES (731, 'Etudiant', '2020-01-14 13:44:14', '2020-01-14 13:44:15', '2000-05-26 23:00:00', NULL, 'Collège FX VOGT', 'gabin.nguekam@institutsaintjean.org', NULL, 'NGONGANG ACHOUNAN', 'TINGOUNZEU Colette', 'NGUEKAM Michel', 'GABIN', '', '', 'OUEST', 'MASCULIN', '-1582226935', 'ACTIVE', 'ACTIVE', 655766664, 691697821, 694187940, 65, 202, 202);
INSERT INTO `candidat` VALUES (732, 'Etudiant', '2020-01-14 13:44:16', '2020-01-14 13:44:17', '2001-04-08 23:00:00', NULL, 'COLLEGE LA CONQUETE', 'johan.nsoga@institutsaintjean.org', NULL, 'NGUEKAM  YOSSA', 'NGO NSONGAN Marie', 'NSOGA BOGLA Daniel', 'JOHAN DANIEL', '', '', 'LITTORAL', 'MASCULIN', '-1582051043', 'ACTIVE', 'ACTIVE', 695249497, 0, 0, 65, 202, 202);
INSERT INTO `candidat` VALUES (733, 'Etudiant', '2020-01-14 13:44:17', '2020-01-14 13:44:18', '2001-03-23 23:00:00', NULL, 'College FX VOGT', 'hilary.nzamboue@institutsaintjean.org', NULL, 'NSOGA  NSOGA', '', '', 'HILARY', '', '', 'OUEST', 'MASCULIN', '-1582074912', 'ACTIVE', 'ACTIVE', 655758393, 0, 0, 65, 202, 202);
INSERT INTO `candidat` VALUES (734, 'Etudiant', '2020-01-14 13:44:19', '2020-01-14 13:44:19', '2000-07-21 23:00:00', NULL, 'College FX VOGT', 'joseph.owona@institutsaintjean.org', NULL, 'NZAMBOUE  TISSEU', 'EMBOLO Josephine', 'MBARGA KONO Gallus', 'JOSEPH  MICHEL', '', '', 'CENTRE', 'MASCULIN', '-1582044411', 'ACTIVE', 'ACTIVE', 699738782, 699163424, 699663758, 65, 202, 202);
INSERT INTO `candidat` VALUES (735, 'Etudiant', '2020-01-14 13:44:20', '2020-01-14 13:44:21', '2000-06-02 23:00:00', NULL, 'LYCEE CLASSIQUE DE BAGANGTE', 'franck.payong@institutsaintjean.org', NULL, 'OWONA MBARGA  GARIBALDI', '', '', 'FRANCK BOREL', '', '', 'OUEST', 'MASCULIN', '-1582101909', 'ACTIVE', 'ACTIVE', 0, 0, 0, 65, 202, 202);
INSERT INTO `candidat` VALUES (736, 'Etudiant', '2020-01-14 13:44:22', '2020-01-14 13:44:22', '2000-04-30 23:00:00', NULL, 'COLLEGE FX VOGT', 'michel.sonfack@institutsaintjean.org', NULL, 'PRINCE SONFACK TADONFOUET', '', '', 'MICHEL', '', '', 'OUEST', 'MASCULIN', '-1582076991', 'ACTIVE', 'ACTIVE', 0, 0, 0, 65, 202, 202);
INSERT INTO `candidat` VALUES (737, 'Etudiant', '2020-01-14 13:44:23', '2020-01-14 13:44:24', '2001-06-09 23:00:00', NULL, 'College FX VOGT', 'mack.sado@institutsaintjean.org', NULL, 'SADO TAMO', 'MOTOUOM Brigitte', 'DOPNA SADO Jean J.', 'MACK  ANDY', '', '', 'ouest', 'MASCULIN', '-1582163355', 'ACTIVE', 'ACTIVE', 0, 0, 0, 65, 202, 202);
INSERT INTO `candidat` VALUES (738, 'Etudiant', '2020-01-14 13:44:24', '2020-01-14 13:44:25', '1999-05-11 23:00:00', NULL, 'Collège Jean Tabi', 'karl.sop@institutsaintjean.org', NULL, 'SOP DJONKAM', 'MOYA Carole E.', 'SOP Jeremie', 'KARL ALWYN', '', '', 'ouest', 'MASCULIN', '-1582136629', 'ACTIVE', 'ACTIVE', 695125640, 677750757, 677602076, 65, 202, 202);
INSERT INTO `candidat` VALUES (739, 'Etudiant', '2020-01-14 13:44:26', '2020-01-14 13:44:27', '2001-04-12 23:00:00', NULL, 'LYCEE BILINGUE DE GOUACHE', 'meghane.tawatieu@institutsaintjean.org', NULL, 'TAWATIEU KINGNE KASSEH', 'KEMKUINI Rose', 'TAWATIEU Pierre', 'MEGHANE', '', '', 'ouest', 'FEMININ', '-1582132632', 'ACTIVE', 'ACTIVE', 691377272, 699946596, 677589606, 65, 202, 202);
INSERT INTO `candidat` VALUES (740, 'Etudiant', '2020-01-14 13:44:27', '2020-01-14 13:44:28', '2000-05-09 23:00:00', NULL, 'Collège Jean Tabi', 'daniel.tchatchouang@institutsaintjean.org', NULL, 'TCHATCHOUANG OUOKAM', 'NANMEGNE Eveline', 'OUOKAM Richard', 'DANIEL PAUL', '', '', 'ouest', 'MASCULIN', '-1582131831', 'ACTIVE', 'ACTIVE', 663120168, 675241613, 677780281, 65, 202, 202);
INSERT INTO `candidat` VALUES (741, 'Etudiant', '2020-01-14 13:44:29', '2020-01-14 13:44:30', '2000-05-08 23:00:00', NULL, 'LYCEE BILINGUE DE MBANGA', 'franklin.tchokodjeu@institutsaintjean.org', NULL, 'TCHOKODJEU NGALEU', 'KENGNE Epiphanie', 'Feu NGALEU Thomas', 'Franklin Ivan', '', '', 'OUEST', 'MASCULIN', '-1582038578', 'ACTIVE', 'ACTIVE', 676887847, 674776260, 0, 65, 202, 202);
INSERT INTO `candidat` VALUES (742, 'Etudiant', '2020-01-14 13:44:30', '2020-01-14 13:44:31', '2001-05-29 23:00:00', NULL, 'COLLEGE FAPO', 'borel.tchomkap@institutsaintjean.org', NULL, 'TCHOMKAP TCHATCHOUANG', 'WETE Charlotte', 'Feu TCHATCHOUANG Joseph', 'BOREL', '', '', 'OUEST', 'MASCULIN', '-1582012384', 'ACTIVE', 'ACTIVE', 657004208, 677248071, 0, 65, 202, 202);
INSERT INTO `candidat` VALUES (743, 'Etudiant', '2020-01-14 13:44:32', '2020-01-14 13:44:32', '2000-02-01 23:00:00', NULL, 'COLLEGE FAPO', 'florence.tchouagno@institutsaintjean.org', NULL, 'TCHOUAGNO FAPO', 'MBAKOP Charlotte', 'FAPO Moise Pascal', 'FLORENCE SORELLE', '', '', 'OUEST', 'FEMININ', '-1582126676', 'ACTIVE', 'ACTIVE', 650812093, 677779199, 670955424, 65, 202, 202);
INSERT INTO `candidat` VALUES (744, 'Etudiant', '2020-01-14 13:44:33', '2020-01-14 13:44:34', '2002-01-01 23:00:00', NULL, 'Colim-Sangmelima', 'yann.tchouande@institutsaintjean.org', NULL, 'TCHOUANDE WAPI ®', '', '', 'Yann-Landry', '', '', 'Ouest', 'MASCULIN', '941369102', 'ACTIVE', 'ACTIVE', 0, 0, 0, 65, 202, 202);
INSERT INTO `candidat` VALUES (745, 'Etudiant', '2020-01-14 13:44:35', '2020-01-14 13:44:36', '2001-04-30 23:00:00', NULL, 'College FX VOGT', 'harold.teguia@institutsaintjean.org', NULL, 'TEGUIA TAGNE', 'GUIANDJO Charline', 'TAGNE Jean-Claude', 'HAROLD  WILFRID', '', '', 'OUEST', 'MASCULIN', '-1582212273', 'ACTIVE', 'ACTIVE', 696828490, 699063953, 670661223, 65, 202, 202);
INSERT INTO `candidat` VALUES (746, 'Etudiant', '2020-01-14 13:44:38', '2020-01-14 13:44:39', '2000-04-17 23:00:00', NULL, 'COLLEGE FLEMING', 'chalain.tiebou@institutsaintjean.org', NULL, 'TIEBOU TALOUSSOCK', 'MANTHO Marie', 'TIEBOU Joseph', 'CHALAIN', '', '', 'OUEST', 'MASCULIN', '-1582217165', 'ACTIVE', 'ACTIVE', 695075724, 698032570, 677673012, 65, 202, 202);
INSERT INTO `candidat` VALUES (747, 'Etudiant', '2020-01-14 13:44:39', '2020-01-14 13:44:40', '2001-02-18 23:00:00', NULL, 'College FX VOGT', 'vanelle.touko@institutsaintjean.org', NULL, 'TOUKO KOUEDJOU', 'TOUKO Denise', 'TOUKO Adonis', 'VANELLE TATIANA', '', '', 'ouest', 'FEMININ', '-1582101101', 'ACTIVE', 'ACTIVE', 651631485, 699823289, 699996145, 65, 202, 202);
INSERT INTO `candidat` VALUES (748, 'Etudiant', '2020-01-14 13:44:41', '2020-01-14 13:44:42', '2000-02-29 23:00:00', NULL, 'COLLEGE SAINT BENOIT', 'fabrice.touomou@institutsaintjean.org', NULL, 'TOUOMOU MANYONGHA', 'NGAKO HAPI Alvine', 'TOUOMOU MOFFOU', 'FABRICE SEVERIN', '', '', 'OUEST', 'MASCULIN', '-1582119334', 'ACTIVE', 'ACTIVE', 656531462, 677786947, 699955131, 65, 202, 202);
INSERT INTO `candidat` VALUES (749, 'Etudiant', '2020-01-14 13:44:43', '2020-01-14 13:44:43', '2001-07-15 23:00:00', NULL, 'COLLEGE NOTRE DAME DE DSCHANG', 'bolane.tseffo@institutsaintjean.org', NULL, 'TSEFFO KEMTA', 'TANKEU KEMTA Anne', 'KEMTA Fidéle', 'BOLANE NATHANAËL', '', '', 'OUEST', 'MASCULIN', '-1582029926', 'ACTIVE', 'ACTIVE', 682449382, 675981351, 675981116, 65, 202, 202);
INSERT INTO `candidat` VALUES (750, 'Etudiant', '2020-01-14 13:44:44', '2020-01-14 13:44:45', '1999-01-14 23:00:00', NULL, 'COLLEGE ADVENTISTE', 'soney.valere@institutsaintjean.org', NULL, 'Valère Patrick', '', '', 'SONEY TOCKO', '', '', 'LITTORAL', 'MASCULIN', '-1582181798', 'ACTIVE', 'ACTIVE', 0, 0, 0, 65, 202, 202);
INSERT INTO `candidat` VALUES (751, 'Etudiant', '2020-01-14 13:44:46', '2020-01-14 13:44:47', '2002-11-24 23:00:00', NULL, 'COLLEGE FAPO', 'marc.wanko@institutsaintjean.org', NULL, 'WANKO KEMDJEU', '', '', 'Marc Rachid', '', '', 'OUEST', 'MASCULIN', '-1581998159', 'ACTIVE', 'ACTIVE', 0, 0, 0, 65, 202, 202);
INSERT INTO `candidat` VALUES (752, 'Etudiant', '2020-01-14 13:44:48', '2020-01-14 13:44:49', '2000-04-07 23:00:00', NULL, 'College FX VOGT', 'joel.zengang@institutsaintjean.org', NULL, 'ZENGANG NOUKAHOUA', 'NYONDA Marie-Louise', 'ZENGANG leon', 'Joël Junior', '', '', 'OUEST', 'MASCULIN', '-1582029001', 'ACTIVE', 'ACTIVE', 0, 0, 0, 65, 202, 202);
INSERT INTO `candidat` VALUES (753, 'Etudiant', '2020-01-14 13:44:51', '2020-01-14 13:44:52', '2002-03-20 23:00:00', NULL, 'LYCEE DE BAFOUSSAM', 'charles.ayissi@institutsaintjean.org', NULL, 'AYISSI LEBRIS', 'ONDOBO Marie', 'AMBA ABENG Garka Landry', 'CHARLES DANNEL', '', '', 'CENTRE', 'MASCULIN', '763722722', 'ACTIVE', 'ACTIVE', 656630887, 0, 0, 61, 202, 202);
INSERT INTO `candidat` VALUES (754, 'Etudiant', '2020-01-14 13:44:53', '2020-01-14 13:44:54', '2000-03-16 23:00:00', NULL, '', 'wilfried.djoum@institutsaintjean.org', NULL, 'DJOUM NGUEMTCHUE', '', '', 'WILFRIED', '', '', '', 'MASCULIN', '763756102', 'ACTIVE', 'ACTIVE', 0, 0, 0, 61, 202, 202);
INSERT INTO `candidat` VALUES (755, 'Etudiant', '2020-01-14 13:44:55', '2020-01-14 13:44:55', '2000-12-31 23:00:00', NULL, 'LYCEE DE BIYEM ASSI', 'sandrine.djousse@institutsaintjean.org', NULL, 'DJOUSSE TSOYEM', 'PIEBENG Alvine', 'TSOYEM KENNE RENE', 'SANDRINE', '', '', 'OUEST', 'FEMININ', '763754986', 'ACTIVE', 'ACTIVE', 0, 0, 0, 61, 202, 202);
INSERT INTO `candidat` VALUES (756, 'Etudiant', '2020-01-14 13:44:56', '2020-01-14 13:44:57', '2001-06-05 23:00:00', NULL, 'LYCEE BILINGUE DE NKOL-ETON', 'kokou.eklou@institutsaintjean.org', NULL, 'EKLOU', 'MBANG LYDIE', '', 'KOKOU LANDRY', '', '', 'LITTORAL', 'MASCULIN', '763659759', 'ACTIVE', 'ACTIVE', 658994518, 677499380, 0, 61, 202, 202);
INSERT INTO `candidat` VALUES (757, 'Etudiant', '2020-01-14 13:44:58', '2020-01-14 13:44:59', '2001-08-14 23:00:00', NULL, 'COLLEGE SAINT CHARLES  BORROMEE', 'marion.essimi@institutsaintjean.org', NULL, 'ESSIMI', 'NGO BATING Julienne', 'ESSIMI BRUNO Salomon', 'MARION AMANDINE', '', '', 'SUD', 'FEMININ', '763753039', 'ACTIVE', 'ACTIVE', 0, 0, 0, 61, 202, 202);
INSERT INTO `candidat` VALUES (758, 'Etudiant', '2020-01-14 13:44:59', '2020-01-14 13:45:00', '2001-10-10 23:00:00', NULL, 'COLLEGE SAINT BENOIT', 'brand.feudjio@institutsaintjean.org', NULL, 'FEUDJIO METANG', 'DJEUKOUE EDWIGE Aimée', 'FEUDJIO Jean', 'BRAND', '', '', 'OUEST', 'FEMININ', '763751359', 'ACTIVE', 'ACTIVE', 691702951, 677664418, 699706127, 61, 202, 202);
INSERT INTO `candidat` VALUES (759, 'Etudiant', '2020-01-14 13:45:01', '2020-01-14 13:45:02', '1995-06-10 23:00:00', NULL, 'LYCEE DE BAFOUSSAM', 'hassan.fouapon@institutsaintjean.org', NULL, 'FOUAPON', 'NGNANGOUM', 'NGOULOURE MAHOMED', 'HASSAN', '', '', 'OUEST', 'MASCULIN', '763721667', 'ACTIVE', 'ACTIVE', 698227743, 698341863, 696135883, 61, 202, 202);
INSERT INTO `candidat` VALUES (760, 'Etudiant', '2020-01-14 13:45:03', '2020-01-14 13:45:04', '2000-07-17 23:00:00', NULL, '', 'yves.foyet@institutsaintjean.org', NULL, 'FOYET TCHALE', '', '', 'YVES MICHEL', '', '', '', 'MASCULIN', '763699217', 'ACTIVE', 'ACTIVE', 0, 0, 0, 61, 202, 202);
INSERT INTO `candidat` VALUES (761, 'Etudiant', '2020-01-14 13:45:04', '2020-01-14 13:45:05', '1999-12-22 23:00:00', NULL, 'LYCEE LECLERC', 'philippe.kom@institutsaintjean.org', NULL, 'KOM KENGMEGNE', 'NKAM KOM Marcelline', 'KENGMEGNE TCHUENTE Bertrand', 'PHILIPPE FRANCK', '', '', 'OUEST', 'MASCULIN', '763664685', 'ACTIVE', 'ACTIVE', 0, 0, 0, 61, 202, 202);
INSERT INTO `candidat` VALUES (762, 'Etudiant', '2020-01-14 13:45:06', '2020-01-14 13:45:07', '1998-01-13 23:00:00', NULL, 'COLLEGE SAINT BENOIT', 'neil.kuate@institutsaintjean.org', NULL, 'KUATE TAGNE (R)', 'SIMO Philomène', 'KUATE Zacharie', 'NEIL JASON', '', '', 'OUEST', 'MASCULIN', '-1608952408', 'ACTIVE', 'ACTIVE', 695374781, 0, 0, 61, 202, 202);
INSERT INTO `candidat` VALUES (763, 'Etudiant', '2020-01-14 13:45:07', '2020-01-14 13:45:08', '2001-10-20 23:00:00', NULL, 'INSTITUT BEAUDELAIRE BILINGUE', 'lavienne.makam@institutsaintjean.org', NULL, 'MAKAM FONGANG', 'MAFOHK Régine', 'FONGANG', 'LAVIENNE PATRICIA', '', '', 'OUEST', 'FEMININ', '763665772', 'ACTIVE', 'ACTIVE', 658081915, 0, 0, 61, 202, 202);
INSERT INTO `candidat` VALUES (764, 'Etudiant', '2020-01-14 13:45:09', '2020-01-14 13:45:09', '2002-05-10 23:00:00', NULL, 'INSTITUT GUSTAVE FLAUBERT', 'yann.mouchili@institutsaintjean.org', NULL, 'MOUCHILI FIFEN', 'SAMFUYOU MOUANFON NICOLE', 'MOUCHILI EMMANUEL', 'YANN IVAN', '', '', 'OUEST', 'MASCULIN', '763907971', 'ACTIVE', 'ACTIVE', 699075594, 0, 0, 61, 202, 202);
INSERT INTO `candidat` VALUES (765, 'Etudiant', '2020-01-14 13:45:10', '2020-01-14 13:45:11', '1996-06-01 23:00:00', NULL, 'INSTITUT VICTOR HUGO', 'jorel.ngaba@institutsaintjean.org', NULL, 'NGABA UHRWEILLER', 'MAYOUFIN KAMDJE', 'NGABA SIKOMBE', 'JOREL', '', '', 'CENTRE', 'MASCULIN', '763816678', 'ACTIVE', 'ACTIVE', 655277547, 675715493, 696320304, 61, 202, 202);
INSERT INTO `candidat` VALUES (766, 'Etudiant', '2020-01-14 13:45:12', '2020-01-14 13:45:13', '1993-02-10 23:00:00', NULL, 'LYCEE BILINGUE DE MENDONG', 'leonel.ngamo@institutsaintjean.org', NULL, 'NGAMO NGAMO', '', 'PANGOP ANDRE', 'LEONEL HORMIDAS', '', '', 'OUEST', 'MASCULIN', '763916625', 'ACTIVE', 'ACTIVE', 0, 0, 0, 61, 202, 202);
INSERT INTO `candidat` VALUES (767, 'Etudiant', '2020-01-14 13:45:13', '2020-01-14 13:45:14', '1999-01-20 23:00:00', NULL, 'COLLEGE MBACOP', 'maxime.nkwemi@institutsaintjean.org', NULL, 'NKWEMI NJIKI', 'YIDJEU Amélie', '', 'MAXIME LOÏC', '', '', 'OUEST', 'MASCULIN', '763677957', 'ACTIVE', 'ACTIVE', 691301051, 677380063, 0, 61, 202, 202);
INSERT INTO `candidat` VALUES (768, 'Etudiant', '2020-01-14 13:45:15', '2020-01-14 13:45:16', '1997-05-13 23:00:00', NULL, 'COLLEGE SAINT JOSEPH', 'yves.nono@institutsaintjean.org', NULL, 'NONO FOTSO', '', '', 'YVES DONALD', '', '', 'OUEST', 'MASCULIN', '763676156', 'ACTIVE', 'ACTIVE', 656742226, 0, 0, 61, 202, 202);
INSERT INTO `candidat` VALUES (769, 'Etudiant', '2020-01-14 13:45:16', '2020-01-14 13:45:17', '2001-03-19 23:00:00', NULL, 'LYCEE DE BIYEM ASSI', 'daniel.pena@institutsaintjean.org', NULL, 'PENA TSOPTE', 'MAKENVOU FOSSO Germaine', '', 'DANIEL JOSUE', '', '', 'OUEST', 'MASCULIN', '763888447', 'ACTIVE', 'ACTIVE', 693323051, 673016099, 0, 61, 202, 202);
INSERT INTO `candidat` VALUES (770, 'Etudiant', '2020-01-14 13:45:18', '2020-01-14 13:45:19', '1997-08-10 23:00:00', NULL, 'COLLEGE NOTRE DAME DES VICTOIRES', 'yvan.sake@institutsaintjean.org', NULL, 'SAKE DINA', 'EKOBE ETOUNDI Béatrice', 'SAKE MBONGO Jean-pierre', 'YVAN LOIC', '', '', 'LITTORAL', 'MASCULIN', '763913619', 'ACTIVE', 'ACTIVE', 656390961, 677641235, 699661256, 61, 202, 202);
INSERT INTO `candidat` VALUES (771, 'Etudiant', '2020-01-14 13:45:20', '2020-01-14 13:45:20', '2000-05-26 23:00:00', NULL, 'LYCEE BILINGUE DE MBOUDA', 'jonathan.sonkoue@institutsaintjean.org', NULL, 'SONKOUE FOUNDJE', 'MAFOMENE Marthe', '', 'Jonathan Junior', '', '', 'OUEST', 'MASCULIN', '763892470', 'ACTIVE', 'ACTIVE', 658010572, 677975109, 0, 61, 202, 202);
INSERT INTO `candidat` VALUES (772, 'Etudiant', '2020-01-14 13:45:21', '2020-01-14 13:45:22', '2001-05-15 23:00:00', NULL, 'MARIO ACADEMIQUE COMPLEX', 'ulrich.sonna@institutsaintjean.org', NULL, 'SONNA MEPIEP', 'DONFACK MEPIEP Nadège', 'SONNA Joseph', 'ULRICH JOEL', '', '', 'OUEST', 'MASCULIN', '763823154', 'ACTIVE', 'ACTIVE', 658621233, 691551464, 677259827, 61, 202, 202);
INSERT INTO `candidat` VALUES (773, 'Etudiant', '2020-01-14 13:45:22', '2020-01-14 13:45:23', '2000-02-13 23:00:00', NULL, 'ADVENTISTE D\'ODZA', 'gedeon.taku@institutsaintjean.org', NULL, 'TAKU NOUNDJI', 'NENMEGNE TCHUENTE Yvonne', 'NOUNDJI DAVID', 'GEDEON AURELIEN', '', '', 'OUEST', 'MASCULIN', '763858032', 'ACTIVE', 'ACTIVE', 695838566, 0, 0, 61, 202, 202);
INSERT INTO `candidat` VALUES (774, 'Etudiant', '2020-01-14 13:45:24', '2020-01-14 13:45:25', '1998-06-08 23:00:00', NULL, 'LYCEE BILINGUE DE BAFOUSSAM', 'peter.tchana@institutsaintjean.org', NULL, 'TCHANA  SINOU', 'KOUAYEP CAROLINE', 'TCHANA SINOU Jean Pierre', 'PETER KAROL', '', '', 'OUEST', 'MASCULIN', '763827094', 'ACTIVE', 'ACTIVE', 698923602, 696188040, 699548170, 61, 202, 202);
INSERT INTO `candidat` VALUES (775, 'Etudiant', '2020-01-14 13:45:25', '2020-01-14 13:45:26', '2001-08-23 23:00:00', NULL, 'LYCEE DE MBALLA II', 'anne.tchatcim@institutsaintjean.org', NULL, 'TCHATCIM', 'TCHAMABE TOUANI Genéviève', '', 'ANNE ROSE', '', '', 'OUEST', 'FEMININ', '763891666', 'ACTIVE', 'ACTIVE', 657360680, 675784267, 656994768, 61, 202, 202);
INSERT INTO `candidat` VALUES (776, 'Etudiant', '2020-01-14 13:45:27', '2020-01-14 13:45:29', '2002-07-04 23:00:00', NULL, 'COLLEGE JESUS MARIE', 'djenie.tchouangouo@institutsaintjean.org', NULL, 'TCHOUANGOUO TCHIMMOE', 'FUNZA ZENFACK Martine Flore', 'TCHIMMOE Martin', 'DJENIE SYNTIA', '', '', 'OUEST', 'FEMININ', '763923228', 'ACTIVE', 'ACTIVE', 0, 0, 0, 61, 202, 202);
INSERT INTO `candidat` VALUES (777, 'Etudiant', '2020-01-14 13:45:30', '2020-01-14 13:45:31', '1999-07-07 23:00:00', NULL, 'NESCAS', 'glen.tchoumba@institutsaintjean.org', NULL, 'TCHOUMBA KWAME', 'MENTCHA Solange', 'TCHOUMBA Ernest', 'GLEN', '', '', 'OUEST', 'MASCULIN', '763740730', 'ACTIVE', 'ACTIVE', 655122607, 699762205, 242020474, 61, 202, 202);
INSERT INTO `candidat` VALUES (778, 'Etudiant', '2020-01-14 13:45:31', '2020-01-14 13:45:32', '2000-03-29 23:00:00', NULL, 'Lycée de Biyem-assi', 'bontel.toka@institutsaintjean.org', NULL, 'TOKA NYADJOU', 'NYANKAM BEATRICE NANA', 'TOKA GEORGES', 'BONTEL', '', '', 'OUEST', 'MASCULIN', '763806820', 'ACTIVE', 'ACTIVE', 655631732, 699574532, 696118311, 61, 202, 202);
INSERT INTO `candidat` VALUES (779, 'Etudiant', '2020-01-14 13:45:33', '2020-01-14 13:45:34', '1998-10-12 23:00:00', NULL, 'LYCEE TECHNIQUE DE NKOLBISSON', 'marlon.tsango@institutsaintjean.org', NULL, 'TSANGO TEDONZANG', 'NGUEPI TSANGO Jeanne d\'Arc', 'ZEBAZE Maurice', 'MARLON JUNIOR', '', '', 'OUEST', 'MASCULIN', '763749253', 'ACTIVE', 'ACTIVE', 690032439, 678630076, 695221700, 61, 202, 202);
INSERT INTO `candidat` VALUES (780, 'Etudiant', '2020-01-14 13:45:34', '2020-01-14 13:45:35', '2000-02-04 23:00:00', NULL, 'COLLEGE ADVANTISTE YDE1', 'beaurelle.wabo@institutsaintjean.org', NULL, 'WABO FOMAYUM', 'WEGO Jacqueline', 'FOMAYUM Léopold', 'BEAURELLE BLANCHARD', '', '', 'OUEST', 'MASCULIN', '763806294', 'ACTIVE', 'ACTIVE', 657647954, 691224444, 677736789, 61, 202, 202);
INSERT INTO `candidat` VALUES (781, 'Etudiant', '2020-01-14 13:45:36', '2020-01-14 13:45:36', '1997-01-01 23:00:00', NULL, 'LYCEE DE LA CITE VERTE', 'brice.youkoua@institutsaintjean.org', NULL, 'YOUKOUA NGONGANG', 'TCHUISSEU Collette', 'YOUKOUA NGONGANG Brice Vanneck', 'BRICE VANNECK', '', '', 'OUEST', 'MASCULIN', '763684121', 'ACTIVE', 'ACTIVE', 699568704, 699007536, 678228130, 61, 202, 202);
INSERT INTO `candidat` VALUES (782, 'Etudiant', '2020-01-14 13:45:37', '2020-01-14 13:45:38', '1997-05-06 23:00:00', NULL, 'Université de yaoundé 1', 'hans.dongmo@institutsaintjean.org', NULL, 'DONGMO TANKEU', 'NANDJOU Douanla', 'Dongmo Roger', 'HANS VIDAL', '', '', 'OUEST', 'MASCULIN', '-1608898648', 'ACTIVE', 'ACTIVE', 0, 0, 0, 62, 202, 202);
INSERT INTO `candidat` VALUES (783, 'Etudiant', '2020-01-14 13:45:39', '2020-01-14 13:45:40', '2000-03-28 23:00:00', NULL, 'Nescass', 'brinda.douanla@institutsaintjean.org', NULL, 'DOUANLA TIWA', 'Tiabou nogho', 'Tiwa tchiougouo', 'BRINDA', '', '', 'OUEST', 'FEMININ', '-1608899210', 'ACTIVE', 'ACTIVE', 695778476, 677930058, 699529536, 62, 202, 202);
INSERT INTO `candidat` VALUES (784, 'Etudiant', '2020-01-14 13:45:41', '2020-01-14 13:45:41', '1999-10-26 23:00:00', NULL, 'COLLEGE FLEMING', 'ebenezer.dzaly@institutsaintjean.org', NULL, 'DZALY  FESSI', 'NZOUAQEU HEUCHOUA Gisele', 'FESSI FEZE Serge', 'EBENEZER MAXENCE', '', '', 'OUEST', 'MASCULIN', '-1608746689', 'ACTIVE', 'ACTIVE', 690803026, 699540769, 0, 62, 202, 202);
INSERT INTO `candidat` VALUES (785, 'Etudiant', '2020-01-14 13:45:42', '2020-01-14 13:45:43', '2000-03-06 23:00:00', NULL, 'Collège saint cœur de marie', 'eugene.etoundi@institutsaintjean.org', NULL, 'ETOUNDI II', 'Pily Eboué Dorette', 'Etoudi Sébastien philippe', 'EUGENE SEBASTIEN CEDRIC PHILIPPE', '', '', 'centre', 'MASCULIN', '-1608810052', 'ACTIVE', 'ACTIVE', 657643340, 0, 0, 62, 202, 202);
INSERT INTO `candidat` VALUES (786, 'Etudiant', '2020-01-14 13:45:44', '2020-01-14 13:45:44', '1998-03-14 23:00:00', NULL, 'lycee moderne d\'ebolowa', 'audrey.feugang@institutsaintjean.org', NULL, 'FEUGANG', 'alanga salome marcelle', 'feugang gerard', 'AUDREY MYLENE', '', '', 'OUEST', 'FEMININ', '-1608896733', 'ACTIVE', 'ACTIVE', 696479506, 0, 0, 62, 202, 202);
INSERT INTO `candidat` VALUES (787, 'Etudiant', '2020-01-14 13:45:46', '2020-01-14 13:45:46', '1997-10-13 23:00:00', NULL, 'institut goethe', 'lidwine.fokoua@institutsaintjean.org', NULL, 'FOKOUA  MEKUATE', 'BAKAM Hortence', 'FOKOUA Roger', 'LIDWINE', '', '', 'OUEST', 'FEMININ', '-1608927420', 'ACTIVE', 'ACTIVE', 696048477, 697075941, 699767607, 62, 202, 202);
INSERT INTO `candidat` VALUES (788, 'Etudiant', '2020-01-14 13:45:47', '2020-01-14 13:45:48', '2000-03-23 23:00:00', NULL, 'collège orchidée', 'sandrine.hagbe@institutsaintjean.org', NULL, 'HAGBE NGUIMBOUS', 'NGO ELOUGA Dorette', 'Hagbe paul', 'SANDRINE', '', '', 'OUEST', 'FEMININ', '-1608897535', 'ACTIVE', 'ACTIVE', 697619374, 695188988, 695183911, 62, 202, 202);
INSERT INTO `candidat` VALUES (789, 'Etudiant', '2020-01-14 13:45:49', '2020-01-14 13:45:49', '1995-09-22 23:00:00', NULL, 'COLLEGE BILINGUE LA REUNIFICATION', 'maximilien.kengne@institutsaintjean.org', NULL, 'KENGNE KONGNE', 'Waguem Marie Madeleine', 'Kongne Célestin Aimé', 'MAXIMILIEN', '', '', 'OUEST', 'MASCULIN', '-1608955938', 'ACTIVE', 'ACTIVE', 0, 0, 0, 62, 202, 202);
INSERT INTO `candidat` VALUES (790, 'Etudiant', '2020-01-14 13:45:50', '2020-01-14 13:45:51', '1993-04-03 23:00:00', NULL, 'Université de yaoundé 1', 'justin.kenmogne@institutsaintjean.org', NULL, 'KENMOGNE  WABO', 'GOUGO Victoire', 'Tadjudje siméon', 'JUSTIN LAGLOIRE', '', '', 'OUEST', 'MASCULIN', '-1608893852', 'ACTIVE', 'ACTIVE', 690136825, 677486919, 677525916, 62, 202, 202);
INSERT INTO `candidat` VALUES (791, 'Etudiant', '2020-01-14 13:45:52', '2020-01-14 13:45:52', '1996-04-20 23:00:00', NULL, 'Lycée classique de Dschang', 'ronel.kontchou@institutsaintjean.org', NULL, 'KONTCHOU NGNINTEDEM', 'NGASSA Nkontchou Sylvie', 'NGNINTEDEM Pierre Romain', 'RONEL', '', '', 'OUEST', 'MASCULIN', '-1608863998', 'ACTIVE', 'ACTIVE', 655659407, 699480681, 0, 62, 202, 202);
INSERT INTO `candidat` VALUES (792, 'Etudiant', '2020-01-14 13:45:53', '2020-01-14 13:45:54', '2000-09-17 23:00:00', NULL, 'ADVENTISTE ODZA', 'steve.kuetche@institutsaintjean.org', NULL, 'KUETCHE KAMGA', 'Mekue Kamdem Beatrice', 'kuetche Tzonang Jean', 'STEVE ARIEL', '', '', 'OUEST', 'MASCULIN', '-1608802246', 'ACTIVE', 'ACTIVE', 655452297, 677765018, 694502607, 62, 202, 202);
INSERT INTO `candidat` VALUES (793, 'Etudiant', '2020-01-14 13:45:55', '2020-01-14 13:45:56', '1996-01-09 23:00:00', NULL, 'Lycée de biyem assi', 'madeleine.mpoo@institutsaintjean.org', NULL, 'MPOO HONDT', 'MBANGA Pauline', 'HONDT Guillaume', 'MADELEINE', '', '', 'LITTORAL', 'FEMININ', '-1608717796', 'ACTIVE', 'ACTIVE', 655020472, 694605943, 696404195, 62, 202, 202);
INSERT INTO `candidat` VALUES (794, 'Etudiant', '2020-01-14 13:45:57', '2020-01-14 13:45:58', '1999-12-04 23:00:00', NULL, 'collège adventiste de yaoundé', 'marcel.ngassa@institutsaintjean.org', NULL, 'NGASSA KONDJIO', 'Ngassa Aline estelle', 'Ngassa antoine marie', 'MARCEL', '', '', 'OUEST', 'MASCULIN', '-1608712037', 'ACTIVE', 'ACTIVE', 691008316, 677773299, 677615364, 62, 202, 202);
INSERT INTO `candidat` VALUES (795, 'Etudiant', '2020-01-14 13:45:59', '2020-01-14 13:45:59', '1998-01-13 23:00:00', NULL, 'Collège charle et thérese mbakop', 'patrick.ngayon@institutsaintjean.org', NULL, 'NGAYON', 'Djaguele Gisèle', '', 'PATRICK', '', '', 'EST', 'MASCULIN', '-1608742784', 'ACTIVE', 'ACTIVE', 690374298, 675159094, 651505719, 62, 202, 202);
INSERT INTO `candidat` VALUES (796, 'Etudiant', '2020-01-14 13:46:00', '2020-01-14 13:46:01', '1999-05-24 23:00:00', NULL, 'Collège F.X. VOGT', 'johan.nonga@institutsaintjean.org', NULL, 'NONGA BIKIM', 'NGO NONGA Jeanne', 'BIKIM TOUM', 'JOHAN ERWIN', '', '', 'CENTRE', 'MASCULIN', '-1608895490', 'ACTIVE', 'ACTIVE', 694172295, 699922390, 694172295, 62, 202, 202);
INSERT INTO `candidat` VALUES (797, 'Etudiant', '2020-01-14 13:46:03', '2020-01-14 13:46:04', '1996-10-13 23:00:00', NULL, '', 'franck.onana@institutsaintjean.org', NULL, 'ONANA TSOGO', '', '', 'Franck Bryan', '', '', 'SUD', 'MASCULIN', '914579251', 'ACTIVE', 'ACTIVE', 0, 0, 0, 62, 202, 202);
INSERT INTO `candidat` VALUES (798, 'Etudiant', '2020-01-14 13:46:05', '2020-01-14 13:46:05', '1998-12-31 23:00:00', NULL, 'Lycee biyem-assi', 'esdras.siemetcheu@institutsaintjean.org', NULL, 'SIEMETCHEU TIENTCHEU', 'KAMINI Marie', 'TIENTCHEU Philippe', 'ESDRAS-PHILIPPE', '', '', 'OUEST', 'MASCULIN', '-1608913935', 'ACTIVE', 'ACTIVE', 695649434, 696257852, 677558621, 62, 202, 202);
INSERT INTO `candidat` VALUES (799, 'Etudiant', '2020-01-14 13:46:06', '2020-01-14 13:46:07', '1996-08-18 23:00:00', NULL, 'lycée bilingue d\'essos', 'steve.simo@institutsaintjean.org', NULL, 'SIMO FOTSO', 'Fotso Jeanne d \'arc', 'FOTSO Emmanuel', 'STEVE JOEL', '', '', 'OUEST', 'MASCULIN', '-1608944658', 'ACTIVE', 'ACTIVE', 690289935, 696412021, 0, 62, 202, 202);
INSERT INTO `candidat` VALUES (800, 'Etudiant', '2020-01-14 13:46:07', '2020-01-14 13:46:08', '1998-11-23 23:00:00', NULL, 'lycée bilingue de mimboman', 'christian.tajudje@institutsaintjean.org', NULL, 'TAJUDJE NGUEMTO', '', '', 'CHRISTIAN', '', '', 'OUEST', 'MASCULIN', '-1608798432', 'ACTIVE', 'ACTIVE', 690938700, 677486919, 690938700, 62, 202, 202);
INSERT INTO `candidat` VALUES (801, 'Etudiant', '2020-01-14 13:46:09', '2020-01-14 13:46:10', '1999-01-04 23:00:00', NULL, 'Lycée de biyem assi', 'andre.tchadeu@institutsaintjean.org', NULL, 'TCHADEU DJOUMBISSIE', 'TCHEUKO LAURE', 'TCHADEU PROSPER', 'ANDRE MARTIAL', '', '', 'OUEST', 'MASCULIN', '-1608856305', 'ACTIVE', 'ACTIVE', 695683735, 675240199, 679460439, 62, 202, 202);
INSERT INTO `candidat` VALUES (802, 'Etudiant', '2020-01-14 13:46:11', '2020-01-14 13:46:12', '1997-03-19 23:00:00', NULL, 'Lycée de biyem assi', 'lorraine.tchongouang@institutsaintjean.org', NULL, 'TCHONGOUANG YTEMBE', 'TCHOKOTE Armande', 'YTEMBE Alphose', 'LORRAINE JOYCE', '', '', 'OUEST', 'FEMININ', '-1608824376', 'ACTIVE', 'ACTIVE', 670286107, 675449930, 674178262, 62, 202, 202);
INSERT INTO `candidat` VALUES (803, 'Etudiant', '2020-01-14 13:46:13', '2020-01-14 13:46:14', '2000-05-28 23:00:00', NULL, 'COLLEGE FLEMING', 'anaël.tomta@institutsaintjean.org', NULL, 'TOMTA WESS', 'datcho benedicte', 'WESSILESSIE ALPHONSE', 'ANAËL MORGANN', '', '', 'OUEST', 'MASCULIN', '-1608826143', 'ACTIVE', 'ACTIVE', 0, 0, 0, 62, 202, 202);
INSERT INTO `candidat` VALUES (804, 'Etudiant', '2020-01-14 13:46:14', '2020-01-14 13:46:15', '1999-06-27 23:00:00', NULL, 'Lycée Bilingue de Medong', 'marc.wamba@institutsaintjean.org', NULL, 'WAMBA MAWAGUIA', 'Djoumessi elise', 'wamba Jean Ledoux', 'MARC-MERES', '', '', 'OUEST', 'MASCULIN', '-1608943604', 'ACTIVE', 'ACTIVE', 657871873, 675068501, 675512571, 62, 202, 202);
INSERT INTO `candidat` VALUES (805, 'Etudiant', '2020-01-14 13:46:16', '2020-01-14 13:46:16', '1997-05-20 23:00:00', NULL, 'UNIVERSITE DE YAOUNDE (ICT4D)', 'constantin.cheutchoua@institutsaintjean.org', NULL, 'CHEUTCHOUA NITCHEU', 'TCHAMGA Jacqueline', 'NITCHEU Jean Baptiste', 'CONSTANTIN', '', '', 'OUEST', 'MASCULIN', '-1608819538', 'ACTIVE', 'ACTIVE', 695585034, 674021589, 694160102, 63, 202, 202);
INSERT INTO `candidat` VALUES (806, 'Etudiant', '2020-01-14 13:46:17', '2020-01-14 13:46:18', '2000-01-27 23:00:00', NULL, 'NESCAS', 'channel.donkeng@institutsaintjean.org', NULL, 'DONKENG DONFACK', '', '', 'Channel Laetitia', '', '', 'OUEST', 'FEMININ', '914735924', 'ACTIVE', 'ACTIVE', 0, 0, 0, 63, 202, 202);
INSERT INTO `candidat` VALUES (807, 'Etudiant', '2020-01-14 13:46:19', '2020-01-14 13:46:19', '1996-11-05 23:00:00', NULL, 'COLLEGE SAINT BENOIT', 'maxime.fodjo@institutsaintjean.org', NULL, 'FODJO', 'KAMTCHUANT Clotide', 'FUMTHUM Michel', 'Maxime Junior', '', '', 'OUEST', 'MASCULIN', '914735052', 'ACTIVE', 'ACTIVE', 0, 0, 0, 63, 202, 202);
INSERT INTO `candidat` VALUES (808, 'Etudiant', '2020-01-14 13:46:20', '2020-01-14 13:46:21', '1999-07-11 23:00:00', NULL, 'ENSPT', 'hyacinthe.fouda@institutsaintjean.org', NULL, 'FOUDA', 'GOURIOU Irène', 'FOUDA Hyacinthe', 'Hyacinthe Anthony', '', '', 'BRETAGNE', 'MASCULIN', '914709289', 'ACTIVE', 'ACTIVE', 0, 0, 0, 63, 202, 202);
INSERT INTO `candidat` VALUES (809, 'Etudiant', '2020-01-14 13:46:22', '2020-01-14 13:46:22', '1997-04-29 23:00:00', NULL, 'COLLEGE FLEMING', 'valere.lansi@institutsaintjean.org', NULL, 'LANSI DJOUMALE', '', '', 'Valère', '', '', 'Ouest', 'MASCULIN', '1637413854', 'ACTIVE', 'ACTIVE', 695823451, 0, 0, 63, 202, 202);
INSERT INTO `candidat` VALUES (810, 'Etudiant', '2020-01-14 13:46:23', '2020-01-14 13:46:24', '2000-04-20 23:00:00', NULL, 'LYCEE CLASSIQUE DE BAFOUSSAM', 'ange.lotchouang@institutsaintjean.org', NULL, 'LOTCHOUANG KOUSSEU', 'NONO Marie Caroline', 'LOTCHOUANG Etienne', 'Ange Cécile', '', '', 'OUEST', 'FEMININ', '914834033', 'ACTIVE', 'ACTIVE', 0, 0, 0, 63, 202, 202);
INSERT INTO `candidat` VALUES (811, 'Etudiant', '2020-01-14 13:46:25', '2020-01-14 13:46:25', '1997-01-19 23:00:00', NULL, 'UNIVERSITE DE YAOUNDE 1 (ICT4D)', 'giresse.lowe@institutsaintjean.org', NULL, 'LOWE NANMEGNE', 'TCHONANG RACHEL', 'NANMEGNE', 'GIRESSE FRANCK', '', '', 'OUEST', 'MASCULIN', '-1608818515', 'ACTIVE', 'ACTIVE', 690582022, 699460982, 699768481, 63, 202, 202);
INSERT INTO `candidat` VALUES (812, 'Etudiant', '2020-01-14 13:46:26', '2020-01-14 13:46:27', '1998-08-16 23:00:00', NULL, 'UNIVERSITE DE YAOUNDE I FACULTE DES SCIENCES', 'norman.mbouende@institutsaintjean.org', NULL, 'MBOUENDE TCHANDJA', 'TCHANDJA TIAKO Chantal', 'MBOUENDE SIEWE Andre', 'Norman Frejus', '', '', 'OUEST', 'MASCULIN', '914708084', 'ACTIVE', 'ACTIVE', 0, 0, 0, 63, 202, 202);
INSERT INTO `candidat` VALUES (813, 'Etudiant', '2020-01-14 13:46:28', '2020-01-14 13:46:28', '1999-12-31 23:00:00', NULL, 'UNIVERSITE DE YAOUNDE I FACULTE DES SCIENCES', 'winnie.melong@institutsaintjean.org', NULL, 'MELONG FOUDJI', '', '', 'Winnie Jordane', '', '', 'OUEST', 'FEMININ', '914799313', 'ACTIVE', 'ACTIVE', 0, 0, 0, 63, 202, 202);
INSERT INTO `candidat` VALUES (814, 'Etudiant', '2020-01-14 13:46:29', '2020-01-14 13:46:30', '1998-01-13 23:00:00', NULL, 'UNIVERSITE DE YAOUNDE I FACULTE DES SCIENCES', 'elvira.mfomen@institutsaintjean.org', NULL, 'MFOMEN NDAFEU', 'KOUAMOU Veronique', 'NDAFEU Celestin', 'Elvira Ruth', '', '', 'OUEST', 'FEMININ', '914659911', 'ACTIVE', 'ACTIVE', 0, 0, 0, 63, 202, 202);
INSERT INTO `candidat` VALUES (815, 'Etudiant', '2020-01-14 13:46:31', '2020-01-14 13:46:31', '2000-06-21 23:00:00', NULL, 'LYCEE BILINGUE DE MENDONG', 'karel.momo@institutsaintjean.org', NULL, 'MOMO KOUDJOU', 'DONGMO MOMO Marie Madouee', 'KOUDJOU TSAFACK Elie', 'Karel Orly', '', '', 'OUEST', 'FEMININ', '914599588', 'ACTIVE', 'ACTIVE', 0, 0, 0, 63, 202, 202);
INSERT INTO `candidat` VALUES (816, 'Etudiant', '2020-01-14 13:46:32', '2020-01-14 13:46:33', '1996-03-25 23:00:00', NULL, 'UNIVERSITE DE YAOUNDE I FACULTE DES SCIENCES', 'andre.ndoumou@institutsaintjean.org', NULL, 'NDOUMOU FOUDA MBALLA', 'BELOMO OBONO Josephine', 'NDOUMOU André', 'André', '', '', 'CENTRE', 'MASCULIN', '914720572', 'ACTIVE', 'ACTIVE', 0, 0, 0, 63, 202, 202);
INSERT INTO `candidat` VALUES (817, 'Etudiant', '2020-01-14 13:46:34', '2020-01-14 13:46:34', '1994-02-10 23:00:00', NULL, 'UNIVERSITE DE BUEA', 'ivan-dasny.nguepnang@institutsaintjean.org', NULL, 'NGUEPNANG NONO', 'NDJAMPOU Madeleine', 'NONO', 'Ivan-Dasny', '', '', 'OUEST', 'MASCULIN', '914745776', 'ACTIVE', 'ACTIVE', 0, 0, 0, 63, 202, 202);
INSERT INTO `candidat` VALUES (818, 'Etudiant', '2020-01-14 13:46:35', '2020-01-14 13:46:36', '1997-06-06 23:00:00', NULL, 'UNIVERSITE DE YAOUNDE 1 (ICT4D)', 'thomas.noutchedjam@institutsaintjean.org', NULL, 'NOUTCHEDJAM DJEUCHOM', '', '', 'THOMAS', '', '', 'OUEST', 'MASCULIN', '-1608723442', 'ACTIVE', 'ACTIVE', 696899526, 0, 0, 63, 202, 202);
INSERT INTO `candidat` VALUES (819, 'Etudiant', '2020-01-14 13:46:36', '2020-01-14 13:46:37', '1997-06-25 23:00:00', NULL, 'UNIVERSITE DE BUEA', 'rick.nsola@institutsaintjean.org', NULL, 'NSOLA OYANE', 'OYANE Yvonne', 'OYANE NSOLA Josué', 'Rick Stahnn Lewis', '', '', 'SUD', 'MASCULIN', '914782138', 'ACTIVE', 'ACTIVE', 0, 0, 0, 63, 202, 202);
INSERT INTO `candidat` VALUES (820, 'Etudiant', '2020-01-14 13:46:38', '2020-01-14 13:46:39', '1997-01-25 23:00:00', NULL, 'UNIVERSITE DE YAOUNDE I FACULTE DES SCIENCES', 'brice.nzokou@institutsaintjean.org', NULL, 'NZOKOU FONGANG', '', '', 'Brice Michael', '', '', 'OUEST', 'MASCULIN', '914602377', 'ACTIVE', 'ACTIVE', 0, 0, 0, 63, 202, 202);
INSERT INTO `candidat` VALUES (821, 'Etudiant', '2020-01-14 13:46:39', '2020-01-14 13:46:40', '1997-07-03 23:00:00', NULL, '', 'cedric.song@institutsaintjean.org', NULL, 'SONG', 'SONG Aimée Téclaire', 'ONANA ABENG Lazare', 'cédric Junior', '', '', 'CENTRE', 'MASCULIN', '914635236', 'ACTIVE', 'ACTIVE', 0, 0, 0, 63, 202, 202);
INSERT INTO `candidat` VALUES (822, 'Etudiant', '2020-01-14 13:46:41', '2020-01-18 14:44:49', '1998-06-22 22:00:00', '', '', 'divine.tcheutchoa@institutsaintjean.org', '', 'TCHEUTCHOA TCHEUTCHOA', '', '', 'Divine Elvira', '', '', 'OUEST', 'FEMININ', '914600332', 'ACTIVE', 'ACTIVE', 0, 0, 0, 63, 202, 205);
INSERT INTO `candidat` VALUES (823, 'Etudiant', '2020-01-14 13:46:42', '2020-01-14 13:46:43', '1994-01-29 23:00:00', NULL, 'LYCEE GENERAL LECLERC', 'cedric.temgoua@institutsaintjean.org', NULL, 'TEMGOUA NJOUNANG', 'DIFO odette', 'TEMGOUA Appolinaire', 'Cédric Lionnel', '', '', 'OUEST', 'MASCULIN', '914666734', 'ACTIVE', 'ACTIVE', 0, 0, 0, 63, 202, 202);
INSERT INTO `candidat` VALUES (824, 'Etudiant', '2020-01-14 13:46:44', '2020-01-14 13:46:45', '2001-04-06 23:00:00', NULL, 'LYCEE MGR BESSIEUX', 'viorika.timamo@institutsaintjean.org', NULL, 'TIMAMO', 'KANGOUM KAMGA Antoinette', 'TIMAMO SIMO Eugène', 'Viorika Shany Marion', '', '', 'OUEST', 'FEMININ', '914632223', 'ACTIVE', 'ACTIVE', 0, 0, 0, 63, 202, 202);
INSERT INTO `candidat` VALUES (825, 'Etudiant', '2020-01-14 13:46:45', '2020-01-14 13:46:46', '1996-02-02 23:00:00', NULL, 'UNIVERSITE DE YAOUNDE I FACULTE DES SCIENCES', 'keisper.tiyouh@institutsaintjean.org', NULL, 'TIYOUH Keisper NGONGANG', 'DOMCHEU Carine NGONGANG', 'TIYOUH Chritopher NGOULAPPE', '', '', '', 'OUEST', 'MASCULIN', '914720577', 'ACTIVE', 'ACTIVE', 0, 0, 0, 63, 202, 202);
INSERT INTO `candidat` VALUES (826, 'Etudiant', '2020-01-14 13:46:47', '2020-01-14 13:46:47', '1999-02-13 23:00:00', NULL, 'UNIVERSITE DE YAOUNDE I FACULTE DES SCIENCES', 'doline.touko@institutsaintjean.org', NULL, 'TOUKO CHOKOUAFI', 'CHEMALEU DJINE Fride', 'MOUKAM Timothe', 'Doline', '', '', 'OUEST', 'FEMININ', '914754114', 'ACTIVE', 'ACTIVE', 0, 0, 0, 63, 202, 202);

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
INSERT INTO `classe` VALUES (68, '2019-08-27 19:37:01', '2020-01-16 07:55:22', 'Troisième Année - Tronc Commun de Branche', 'ING 3', '-885878872', 'ACTIVE', 1, 205, 59, 56);
INSERT INTO `classe` VALUES (67, '2019-08-27 19:33:43', '2019-08-27 19:33:43', 'Ingénieur Quatrième Année', 'ING 4', '1860209945', 'ACTIVE', 1, 1, 60, 55);
INSERT INTO `classe` VALUES (69, '2019-08-27 19:37:50', '2020-01-16 07:57:16', 'Troisième Année - Informatique et système d\'information', 'ING 4', '-585968124', 'ACTIVE', 1, 205, 59, 54);

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
) ENGINE = MyISAM AUTO_INCREMENT = 10415 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discipline
-- ----------------------------
INSERT INTO `discipline` VALUES (10411, '2020-01-23 12:42:54', '2020-01-23 12:42:54', '2019-12-31 23:00:00', '', 0, '', 1, 0, '-1345565452', 'ACTIVE', 101, 8521, 101, 157);
INSERT INTO `discipline` VALUES (10410, '2020-01-23 12:42:54', '2020-01-23 12:42:54', '2019-12-31 23:00:00', '', 0, '', 0, 0, '-1244520750', 'ACTIVE', 101, 8520, 101, 157);
INSERT INTO `discipline` VALUES (10409, '2020-01-23 12:42:54', '2020-01-23 12:42:54', '2019-12-31 23:00:00', '', 0, '', 0, 0, '-411828688', 'ACTIVE', 101, 8519, 101, 157);
INSERT INTO `discipline` VALUES (10408, '2020-01-23 12:42:53', '2020-01-23 12:42:53', '2019-12-31 23:00:00', '', 0, '', 0, 0, '1157831350', 'ACTIVE', 101, 8518, 101, 157);
INSERT INTO `discipline` VALUES (10407, '2020-01-23 12:42:53', '2020-01-23 12:42:53', '2019-12-31 23:00:00', '', 0, '', 0, 0, '2123635968', 'ACTIVE', 101, 8517, 101, 157);
INSERT INTO `discipline` VALUES (10406, '2020-01-23 12:42:53', '2020-01-23 12:42:53', '2019-12-31 23:00:00', '', 0, '', 4, 0, '-861041718', 'ACTIVE', 101, 8516, 101, 157);
INSERT INTO `discipline` VALUES (10405, '2020-01-23 12:42:53', '2020-01-23 12:42:53', '2019-12-31 23:00:00', '', 0, '', 2, 0, '1434042276', 'ACTIVE', 101, 8515, 101, 157);
INSERT INTO `discipline` VALUES (10404, '2020-01-23 12:42:53', '2020-01-23 12:42:53', '2019-12-31 23:00:00', '', 0, '', 4, 0, '492493702', 'ACTIVE', 101, 8514, 101, 157);
INSERT INTO `discipline` VALUES (10403, '2020-01-23 12:42:53', '2020-01-23 12:42:53', '2019-12-31 23:00:00', '', 0, '', 0, 0, '-180651683', 'ACTIVE', 101, 8513, 101, 157);
INSERT INTO `discipline` VALUES (10402, '2020-01-23 12:42:53', '2020-01-23 12:42:53', '2019-12-31 23:00:00', '', 0, '', 4, 0, '1631461949', 'ACTIVE', 101, 8512, 101, 157);
INSERT INTO `discipline` VALUES (10401, '2020-01-23 12:42:53', '2020-01-23 12:42:53', '2019-12-31 23:00:00', '', 0, '', 0, 0, '507529244', 'ACTIVE', 101, 8511, 101, 157);
INSERT INTO `discipline` VALUES (10400, '2020-01-23 12:42:53', '2020-01-23 12:42:53', '2019-12-31 23:00:00', '', 0, '', 0, 0, '-831377164', 'ACTIVE', 101, 8510, 101, 157);
INSERT INTO `discipline` VALUES (10399, '2020-01-23 12:42:52', '2020-01-23 12:42:52', '2019-12-31 23:00:00', '', 0, '', 6, 0, '-2115985687', 'ACTIVE', 101, 8509, 101, 157);
INSERT INTO `discipline` VALUES (10398, '2020-01-23 12:42:52', '2020-01-23 12:42:52', '2019-12-31 23:00:00', '', 0, '', 0, 0, '1978827129', 'ACTIVE', 101, 8508, 101, 157);
INSERT INTO `discipline` VALUES (10397, '2020-01-23 12:42:52', '2020-01-23 12:42:52', '2019-12-31 23:00:00', '', 0, '', 1, 0, '1976462180', 'ACTIVE', 101, 8507, 101, 157);
INSERT INTO `discipline` VALUES (10396, '2020-01-23 12:42:52', '2020-01-23 12:42:52', '2019-12-31 23:00:00', '', 0, '', 0, 0, '-429766029', 'ACTIVE', 101, 8506, 101, 157);
INSERT INTO `discipline` VALUES (10395, '2020-01-23 12:42:52', '2020-01-23 12:42:52', '2019-12-31 23:00:00', '', 0, '', 4, 0, '-346498734', 'ACTIVE', 101, 8505, 101, 157);
INSERT INTO `discipline` VALUES (10394, '2020-01-23 12:42:52', '2020-01-23 12:42:52', '2019-12-31 23:00:00', '', 0, '', 0, 0, '-527566139', 'ACTIVE', 101, 8504, 101, 157);
INSERT INTO `discipline` VALUES (10393, '2020-01-23 12:42:52', '2020-01-23 12:42:52', '2019-12-31 23:00:00', '', 0, '', 0, 0, '963831765', 'ACTIVE', 101, 8503, 101, 157);
INSERT INTO `discipline` VALUES (10392, '2020-01-23 12:42:52', '2020-01-23 12:42:52', '2019-12-31 23:00:00', '', 0, '', 1, 0, '2382835', 'ACTIVE', 101, 8502, 101, 157);
INSERT INTO `discipline` VALUES (10391, '2020-01-23 12:42:52', '2020-01-23 12:42:52', '2019-12-31 23:00:00', '', 0, '', 22, 0, '752655069', 'ACTIVE', 101, 8501, 101, 157);
INSERT INTO `discipline` VALUES (10390, '2020-01-23 12:42:52', '2020-01-23 12:42:52', '2019-12-31 23:00:00', '', 0, '', 1, 0, '1995111513', 'ACTIVE', 101, 8500, 101, 157);
INSERT INTO `discipline` VALUES (10389, '2020-01-23 12:42:51', '2020-01-23 12:42:51', '2019-12-31 23:00:00', '', 0, '', 6, 0, '-1216331059', 'ACTIVE', 101, 8499, 101, 157);
INSERT INTO `discipline` VALUES (10388, '2020-01-23 12:42:51', '2020-01-23 12:42:51', '2019-12-31 23:00:00', '', 0, '', 18, 0, '413862117', 'ACTIVE', 101, 8498, 101, 157);
INSERT INTO `discipline` VALUES (10387, '2020-01-23 12:42:51', '2020-01-23 12:42:51', '2019-12-31 23:00:00', '', 0, '', 4, 0, '1860255081', 'ACTIVE', 101, 8497, 101, 157);
INSERT INTO `discipline` VALUES (10386, '2020-01-23 12:42:51', '2020-01-23 12:42:51', '2019-12-31 23:00:00', '', 0, '', 0, 0, '857881518', 'ACTIVE', 101, 8496, 101, 157);
INSERT INTO `discipline` VALUES (10385, '2020-01-23 12:42:51', '2020-01-23 12:42:51', '2019-12-31 23:00:00', '', 0, '', 0, 0, '-849916898', 'ACTIVE', 101, 8495, 101, 157);
INSERT INTO `discipline` VALUES (10384, '2020-01-23 12:42:51', '2020-01-23 12:42:51', '2019-12-31 23:00:00', '', 0, '', 0, 0, '-1276845911', 'ACTIVE', 101, 8494, 101, 157);
INSERT INTO `discipline` VALUES (10383, '2020-01-23 12:42:51', '2020-01-23 12:42:51', '2019-12-31 23:00:00', '', 0, '', 43, 0, '-1151215198', 'ACTIVE', 101, 8493, 101, 157);
INSERT INTO `discipline` VALUES (10382, '2020-01-23 12:42:50', '2020-01-23 12:42:51', '2019-12-31 23:00:00', '', 0, '', 0, 0, '-695710215', 'ACTIVE', 101, 8492, 101, 157);
INSERT INTO `discipline` VALUES (10381, '2020-01-23 12:42:50', '2020-01-23 12:42:50', '2019-12-31 23:00:00', '', 0, '', 4, 0, '-1510623279', 'ACTIVE', 101, 8491, 101, 157);
INSERT INTO `discipline` VALUES (10380, '2020-01-23 12:42:50', '2020-01-23 12:42:50', '2019-12-31 23:00:00', '', 0, '', 4, 0, '-80599135', 'ACTIVE', 101, 8490, 101, 157);
INSERT INTO `discipline` VALUES (10379, '2020-01-23 12:42:50', '2020-01-23 12:42:50', '2019-12-31 23:00:00', '', 0, '', 2, 0, '1741920409', 'ACTIVE', 101, 8489, 101, 157);
INSERT INTO `discipline` VALUES (10378, '2020-01-23 12:42:50', '2020-01-23 12:42:50', '2019-12-31 23:00:00', '', 0, '', 4, 0, '281585277', 'ACTIVE', 101, 8488, 101, 157);
INSERT INTO `discipline` VALUES (10377, '2020-01-23 12:42:50', '2020-01-23 12:42:50', '2019-12-31 23:00:00', '', 0, '', 0, 0, '-380869677', 'ACTIVE', 101, 8487, 101, 157);
INSERT INTO `discipline` VALUES (10376, '2020-01-23 12:42:50', '2020-01-23 12:42:50', '2019-12-31 23:00:00', '', 0, '', 8, 0, '1019049976', 'ACTIVE', 101, 8486, 101, 157);
INSERT INTO `discipline` VALUES (10375, '2020-01-23 12:42:50', '2020-01-23 12:42:50', '2019-12-31 23:00:00', '', 0, '', 10, 0, '-2055578993', 'ACTIVE', 101, 8485, 101, 157);
INSERT INTO `discipline` VALUES (10374, '2020-01-23 12:42:50', '2020-01-23 12:42:50', '2019-12-31 23:00:00', '', 0, '', 26, 0, '107407886', 'ACTIVE', 101, 8484, 101, 157);
INSERT INTO `discipline` VALUES (10373, '2020-01-23 12:42:50', '2020-01-23 12:42:50', '2019-12-31 23:00:00', '', 0, '', 4, 0, '-31314282', 'ACTIVE', 101, 8483, 101, 157);
INSERT INTO `discipline` VALUES (10372, '2020-01-23 12:42:50', '2020-01-23 12:42:50', '2019-12-31 23:00:00', '', 0, '', 4, 0, '2102758115', 'ACTIVE', 101, 8482, 101, 157);
INSERT INTO `discipline` VALUES (10371, '2020-01-23 12:42:49', '2020-01-23 12:42:49', '2019-12-31 23:00:00', '', 0, '', 6, 0, '421526539', 'ACTIVE', 101, 8481, 101, 157);
INSERT INTO `discipline` VALUES (10370, '2020-01-23 12:42:49', '2020-01-23 12:42:49', '2019-12-31 23:00:00', '', 0, '', 0, 0, '-1309867750', 'ACTIVE', 101, 8480, 101, 157);
INSERT INTO `discipline` VALUES (10369, '2020-01-23 12:42:49', '2020-01-23 12:42:49', '2019-12-31 23:00:00', '', 0, '', 2, 0, '2084193679', 'ACTIVE', 101, 8479, 101, 157);
INSERT INTO `discipline` VALUES (10368, '2020-01-23 12:42:49', '2020-01-23 12:42:49', '2019-12-31 23:00:00', '', 0, '', 0, 0, '592972287', 'ACTIVE', 101, 8478, 101, 157);
INSERT INTO `discipline` VALUES (10367, '2020-01-23 12:42:49', '2020-01-23 12:42:49', '2019-12-31 23:00:00', '', 0, '', 4, 0, '1948204112', 'ACTIVE', 101, 8477, 101, 157);
INSERT INTO `discipline` VALUES (10366, '2020-01-23 12:42:48', '2020-01-23 12:42:48', '2019-12-31 23:00:00', '', 0, '', 0, 0, '-1038182115', 'ACTIVE', 101, 8476, 101, 157);
INSERT INTO `discipline` VALUES (10365, '2020-01-23 12:42:48', '2020-01-23 12:42:48', '2019-12-31 23:00:00', '', 0, '', 4, 0, '-1058342502', 'ACTIVE', 101, 8475, 101, 157);
INSERT INTO `discipline` VALUES (10364, '2020-01-23 12:42:48', '2020-01-23 12:42:48', '2019-12-31 23:00:00', '', 0, '', 4, 0, '-1999636679', 'ACTIVE', 101, 8474, 101, 157);
INSERT INTO `discipline` VALUES (10363, '2020-01-23 12:42:48', '2020-01-23 12:42:48', '2019-12-31 23:00:00', '', 0, '', 3, 0, '1075814240', 'ACTIVE', 101, 8473, 101, 157);
INSERT INTO `discipline` VALUES (10362, '2020-01-23 12:42:48', '2020-01-23 12:42:48', '2019-12-31 23:00:00', '', 0, '', 0, 0, '-1620737776', 'ACTIVE', 101, 8472, 101, 157);
INSERT INTO `discipline` VALUES (10361, '2020-01-23 12:42:48', '2020-01-23 12:42:48', '2019-12-31 23:00:00', '', 0, '', 0, 0, '-534200708', 'ACTIVE', 101, 8471, 101, 157);
INSERT INTO `discipline` VALUES (10360, '2020-01-23 12:42:48', '2020-01-23 12:42:48', '2019-12-31 23:00:00', '', 0, '', 0, 0, '980720229', 'ACTIVE', 101, 8469, 101, 157);
INSERT INTO `discipline` VALUES (10359, '2020-01-23 12:42:48', '2020-01-23 12:42:48', '2019-12-31 23:00:00', '', 0, '', 2, 0, '401588003', 'ACTIVE', 101, 8470, 101, 157);
INSERT INTO `discipline` VALUES (10358, '2020-01-23 12:42:48', '2020-01-23 12:42:48', '2019-12-31 23:00:00', '', 0, '', 9, 0, '1143547774', 'ACTIVE', 101, 8468, 101, 157);
INSERT INTO `discipline` VALUES (10357, '2020-01-23 12:42:47', '2020-01-23 12:42:47', '2019-12-31 23:00:00', '', 0, '', 2, 0, '-1998952316', 'ACTIVE', 101, 8467, 101, 157);
INSERT INTO `discipline` VALUES (10356, '2020-01-23 12:42:47', '2020-01-23 12:42:47', '2019-12-31 23:00:00', '', 0, '', 4, 0, '-445121973', 'ACTIVE', 101, 8466, 101, 157);
INSERT INTO `discipline` VALUES (10355, '2020-01-23 12:42:47', '2020-01-23 12:42:47', '2019-12-31 23:00:00', '', 0, '', 4, 0, '-1375234608', 'ACTIVE', 101, 8465, 101, 157);
INSERT INTO `discipline` VALUES (10354, '2020-01-23 12:42:47', '2020-01-23 12:42:47', '2019-12-31 23:00:00', '', 0, '', 6, 0, '336356042', 'ACTIVE', 101, 8464, 101, 157);
INSERT INTO `discipline` VALUES (10353, '2020-01-23 12:42:47', '2020-01-23 12:42:47', '2019-12-31 23:00:00', '', 0, '', 2, 0, '-1478670771', 'ACTIVE', 101, 8463, 101, 157);
INSERT INTO `discipline` VALUES (10352, '2020-01-23 12:42:47', '2020-01-23 12:42:47', '2019-12-31 23:00:00', '', 0, '', 2, 0, '1845169439', 'ACTIVE', 101, 8461, 101, 157);
INSERT INTO `discipline` VALUES (10412, '2020-01-23 12:42:54', '2020-01-23 12:42:55', '2019-12-31 23:00:00', '', 0, '', 0, 0, '-1689412860', 'ACTIVE', 101, 8522, 101, 157);
INSERT INTO `discipline` VALUES (10413, '2020-01-23 12:42:55', '2020-01-23 12:42:55', '2019-12-31 23:00:00', '', 0, '', 0, 0, '1206441293', 'ACTIVE', 101, 8523, 101, 157);
INSERT INTO `discipline` VALUES (10414, '2020-01-23 12:42:55', '2020-01-23 12:42:55', '2019-12-31 23:00:00', '', 0, '', 4, 0, '857033045', 'ACTIVE', 101, 8524, 101, 157);

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
) ENGINE = MyISAM AUTO_INCREMENT = 4580 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of enseignant
-- ----------------------------
INSERT INTO `enseignant` VALUES (827, '2020-01-15 09:16:55', '2020-01-15 09:16:56', '2019-12-31 23:00:00', '', 'Fabien MBALLA <f_mballa@yahoo.fr>', '', 'MBALLA ', 'Fabien', '', 'MASCULIN', '741967584', 'ACTIVE', 'ACTIVE', 674411414, 202, 202);
INSERT INTO `enseignant` VALUES (828, '2020-01-15 13:41:27', '2020-01-15 13:41:28', '2019-12-31 23:00:00', '', 'tamoleonie@gmail.com', '', 'TAMO ', 'Léonie', '', 'FEMININ', '-44221657', 'ACTIVE', 'ACTIVE', 690217512, 202, 202);
INSERT INTO `enseignant` VALUES (829, '2020-01-15 13:43:33', '2020-01-15 13:43:34', '2019-12-31 23:00:00', '', 'patrick thomas <patrick.thomas@patrickthomas.xyz>', '', 'Thomas', 'Patrick', '', 'MASCULIN', '1087592257', 'ACTIVE', 'ACTIVE', 694633791, 202, 202);
INSERT INTO `enseignant` VALUES (830, '2020-01-15 14:47:13', '2020-01-15 14:47:39', '2019-12-31 23:00:00', '', 'TAPIGUE KOWO <tapiguedelphin@yahoo.fr>', '', 'TAPIGUE', 'Delphin', '', 'MASCULIN', '105205592', 'ACTIVE', 'ACTIVE', 699809233, 202, 202);
INSERT INTO `enseignant` VALUES (831, '2020-01-15 14:49:45', '2020-01-15 14:49:45', '2019-12-31 23:00:00', '', 'mkianpi@yahoo.com', '', 'KIANPI', 'Maurice', '', 'MASCULIN', '-556834082', 'ACTIVE', 'ACTIVE', 699529165, 202, 202);
INSERT INTO `enseignant` VALUES (832, '2020-01-15 14:51:04', '2020-01-15 14:51:05', '2019-12-31 23:00:00', '', 'thuguesfr@yahoo.fr', '', 'TCHANTCHO', 'Hugue', '', 'MASCULIN', '1241097622', 'ACTIVE', 'ACTIVE', 699111114, 202, 202);
INSERT INTO `enseignant` VALUES (833, '2020-01-15 14:52:24', '2020-01-15 14:52:25', '2019-12-31 23:00:00', '', 'charlesazane@ymail.com', '', 'AZANE', 'Charles', '', 'MASCULIN', '905659233', 'ACTIVE', 'ACTIVE', 677338841, 202, 202);
INSERT INTO `enseignant` VALUES (834, '2020-01-15 14:54:15', '2020-01-15 14:54:16', '2019-12-31 23:00:00', '', 'fjtheophile@gmail.com', '', 'Jean Théophile', 'Jean', '', 'MASCULIN', '1593156711', 'ACTIVE', 'ACTIVE', 690697010, 202, 202);
INSERT INTO `enseignant` VALUES (835, '2020-01-15 14:55:32', '2020-01-15 14:55:33', '2019-12-31 23:00:00', '', 'stephaneboris@yahoo.fr', '', 'TABEU', 'Stéphane', '', 'MASCULIN', '-569770625', 'ACTIVE', 'ACTIVE', 674892393, 202, 202);
INSERT INTO `enseignant` VALUES (836, '2020-01-15 15:03:39', '2020-01-15 15:04:00', '2019-12-31 23:00:00', '', 'djiokojeanpauld@yahoo.fr', '', 'Djioko', 'Jean Paul', '', 'MASCULIN', '-1028884624', 'ACTIVE', 'ACTIVE', 674441318, 202, 202);
INSERT INTO `enseignant` VALUES (837, '2020-01-15 15:05:11', '2020-01-15 15:05:12', '2019-12-31 23:00:00', '', 'sahapier@yahoo.fr', '', 'SAHA', 'Pierre', '', 'MASCULIN', '-2105759689', 'ACTIVE', 'ACTIVE', 674446209, 202, 202);
INSERT INTO `enseignant` VALUES (838, '2020-01-15 15:06:16', '2020-01-15 15:06:16', '2019-12-31 23:00:00', '', 'georges.kouamou@gmail.com', '', 'Kouamou', 'Georges', '', 'MASCULIN', '30878336', 'ACTIVE', 'ACTIVE', 699314978, 202, 202);
INSERT INTO `enseignant` VALUES (839, '2020-01-15 15:07:18', '2020-01-15 15:07:19', '2019-12-31 23:00:00', '', 'htapamo@hotmail.com', '', 'TAPAMO', 'Hypolite', '', 'MASCULIN', '1289741495', 'ACTIVE', 'ACTIVE', 699674023, 202, 202);
INSERT INTO `enseignant` VALUES (840, '2020-01-15 15:08:05', '2020-01-15 15:08:06', '2019-12-31 23:00:00', '', 'ossongoeric@yahoo.fr', '', 'OSSONGO', 'Eric', '', 'MASCULIN', '824482173', 'ACTIVE', 'ACTIVE', 675238002, 202, 202);
INSERT INTO `enseignant` VALUES (841, '2020-01-15 15:08:53', '2020-01-15 15:08:54', '2019-12-31 23:00:00', '', 'bomnose@yahoo.fr', '', 'BOMBA', 'Patrick', '', 'MASCULIN', '-358278086', 'ACTIVE', 'ACTIVE', 699272690, 202, 202);
INSERT INTO `enseignant` VALUES (842, '2020-01-15 15:11:05', '2020-01-15 15:11:26', '2019-12-31 23:00:00', '', 'cawase2008@yahoo.com', '', 'ANJEH ', 'CHRISTINA', '', 'FEMININ', '222068491', 'ACTIVE', 'ACTIVE', 674629749, 202, 202);
INSERT INTO `enseignant` VALUES (843, '2020-01-15 15:12:22', '2020-01-15 15:12:23', '2019-12-31 23:00:00', '', 'aurelienmekuko@gmail.com', '', 'MEKUKO', 'Aurélien', '', 'MASCULIN', '-250678784', 'ACTIVE', 'ACTIVE', 697231415, 202, 202);
INSERT INTO `enseignant` VALUES (844, '2020-01-15 15:13:44', '2020-01-15 15:13:44', '2019-12-31 23:00:00', '', 'wambapm@yahoo.fr', '', 'Wamba', 'Mesmaire', '', 'MASCULIN', '-2129640586', 'ACTIVE', 'ACTIVE', 691101046, 202, 202);
INSERT INTO `enseignant` VALUES (845, '2020-01-15 15:14:40', '2020-01-15 15:14:40', '2019-12-31 23:00:00', '', 'matchama@yahoo.fr', '', 'LAMARA', 'Maurice', '', 'MASCULIN', '-1847443015', 'ACTIVE', 'ACTIVE', 699494527, 202, 202);
INSERT INTO `enseignant` VALUES (846, '2020-01-15 15:16:15', '2020-01-15 15:16:37', '2019-12-31 23:00:00', '', 'ngpclaude@yahoo.fr', '', 'NGOUMOU ', 'Paul', '', 'MASCULIN', '1178742854', 'ACTIVE', 'ACTIVE', 695332177, 202, 202);
INSERT INTO `enseignant` VALUES (847, '2020-01-15 15:17:33', '2020-01-15 15:17:34', '2019-12-31 23:00:00', '', 'omermboa@gmail.com', '', 'MBOA', 'Omer', '', 'MASCULIN', '244959401', 'ACTIVE', 'ACTIVE', 677752133, 202, 202);
INSERT INTO `enseignant` VALUES (848, '2020-01-15 15:19:36', '2020-01-15 15:19:37', '2019-12-31 23:00:00', '', 'retemgoua@yahoo.fr', '', 'TEMGOUA', 'Etienne', '', 'MASCULIN', '-1907044873', 'ACTIVE', 'ACTIVE', 699508986, 202, 202);
INSERT INTO `enseignant` VALUES (849, '2020-01-15 15:20:28', '2020-01-15 15:20:29', '2019-12-31 23:00:00', '', 'jzoossie@yahoo.fr', '', 'ZOOSIE', 'Joseph', '', 'MASCULIN', '1961170639', 'ACTIVE', 'ACTIVE', 697614093, 202, 202);
INSERT INTO `enseignant` VALUES (850, '2020-01-15 15:21:22', '2020-01-15 15:21:23', '2019-12-31 23:00:00', '', 'amelachio@yahoo.fr', '', 'MELACHIO', 'Andre', '', 'MASCULIN', '1432724106', 'ACTIVE', 'ACTIVE', 675456857, 202, 202);
INSERT INTO `enseignant` VALUES (901, '2020-01-15 15:22:43', '2020-01-15 15:22:46', '2019-12-31 23:00:00', '', 'ndoundam@yahoo.com', '', 'NDOUDAM', 'René', '', 'MASCULIN', '1915917301', 'ACTIVE', 'ACTIVE', 677495680, 202, 202);
INSERT INTO `enseignant` VALUES (902, '2020-01-15 15:23:41', '2020-01-15 15:23:42', '2019-12-31 23:00:00', '', 'cheikh.kacfah@gmail.com', '', 'KACFAH', 'Cheick', '', 'MASCULIN', '869676144', 'ACTIVE', 'ACTIVE', 656709838, 202, 202);
INSERT INTO `enseignant` VALUES (1203, '2020-01-16 10:26:18', '2020-01-16 10:29:09', '2019-12-31 23:00:00', '', 'lnguenang@yahoo.fr', '', 'NGUENANG', 'Louis', '', 'MASCULIN', '-2077272858', 'ACTIVE', 'ACTIVE', 699234774, 202, 202);
INSERT INTO `enseignant` VALUES (1204, '2020-01-16 10:30:25', '2020-01-16 10:30:29', '2019-12-31 23:00:00', '', 'djihae@yahoo.fr', '', 'DJIHA', 'Eric', '', 'MASCULIN', '-674962103', 'ACTIVE', 'ACTIVE', 699353936, 202, 202);
INSERT INTO `enseignant` VALUES (1205, '2020-01-16 10:31:41', '2020-01-16 10:31:42', '2019-12-31 23:00:00', '', 'etjeck2006@yahoo.fr', '', 'TJECK', 'Fils', '', 'MASCULIN', '792873095', 'ACTIVE', 'ACTIVE', 696310167, 202, 202);
INSERT INTO `enseignant` VALUES (1207, '2020-01-16 10:37:12', '2020-01-16 10:37:14', '2019-12-31 23:00:00', '', 'mbehugo@yahoo.fr', '', 'MBE', 'Bruno', '', 'MASCULIN', '-978939839', 'ACTIVE', 'ACTIVE', 675479637, 202, 202);
INSERT INTO `enseignant` VALUES (1208, '2020-01-16 10:54:25', '2020-01-16 10:54:29', '2019-12-31 23:00:00', '', 'fouomenedaniel@gmail.com', '', 'FOUOMENE', 'Daniel', '', 'MASCULIN', '-298534645', 'ACTIVE', 'ACTIVE', 674099619, 202, 202);
INSERT INTO `enseignant` VALUES (1209, '2020-01-16 10:55:33', '2020-01-16 10:55:36', '2019-12-31 23:00:00', '', 'ekodeckstephane@gmail.com', '', 'EKODECK', 'Stéphane', '', 'MASCULIN', '1408955880', 'ACTIVE', 'ACTIVE', 694745220, 202, 202);
INSERT INTO `enseignant` VALUES (1210, '2020-01-16 10:56:44', '2020-01-16 10:56:45', '2019-12-31 23:00:00', '', 'edjiky@gmail.com', '', 'DJIKY', 'Eric', '', 'MASCULIN', '-876859521', 'ACTIVE', 'ACTIVE', 694361483, 202, 202);
INSERT INTO `enseignant` VALUES (1211, '2020-01-16 10:58:22', '2020-01-16 10:58:23', '2019-12-31 23:00:00', '', 'frbenoitreginald@stjean.com', '', 'Frère Benoit', 'Réginal', '', 'MASCULIN', '860443622', 'ACTIVE', 'ACTIVE', 690510604, 202, 202);
INSERT INTO `enseignant` VALUES (1212, '2020-01-16 11:00:57', '2020-01-16 11:04:42', '2019-12-31 23:00:00', '', 'kehbumaserge@gmail.com', '', 'KEHBUMA', 'Serge', '', 'MASCULIN', '-129244349', 'ACTIVE', 'ACTIVE', 699004924, 202, 202);
INSERT INTO `enseignant` VALUES (1215, '2020-01-16 11:05:56', '2020-01-16 11:05:58', '2019-12-31 23:00:00', '', 'mballandi@yahoo.fr', '', 'MBALLA NDI', 'Pierre', '', 'MASCULIN', '-1698365836', 'ACTIVE', 'ACTIVE', 662601513, 202, 202);
INSERT INTO `enseignant` VALUES (1216, '2020-01-16 11:09:25', '2020-01-16 11:09:26', '2019-12-31 23:00:00', '', 'nberengerg@gmail.com', '', 'NANA', 'Bérenger', '', 'MASCULIN', '549983394', 'ACTIVE', 'ACTIVE', 675667364, 202, 202);
INSERT INTO `enseignant` VALUES (1217, '2020-01-16 11:10:46', '2020-01-16 11:10:47', '2019-12-31 23:00:00', '', 'assjfred1@gmail.com', '', 'ASSOUMOU', 'Jean-frédérique', '', 'MASCULIN', '1720248203', 'ACTIVE', 'ACTIVE', 679433950, 202, 202);
INSERT INTO `enseignant` VALUES (4579, '2020-01-20 07:45:54', '2020-01-20 07:45:56', '2019-12-31 23:00:00', '', 'moupojouemma@yahoo.fr', '', 'MOUPOJOU', 'Emmanuel', '', 'MASCULIN', '1779345899', 'ACTIVE', 'ACTIVE', 694628998, 205, 205);

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
INSERT INTO `enseignement` VALUES (2386, '2020-01-17 19:54:16', '2020-01-17 19:54:18', '', 60, 'Recherche opérationnelle et aide à la décision', '', '887184878', 'ACTIVE', 205, 205, 157, 2367);
INSERT INTO `enseignement` VALUES (2385, '2020-01-17 19:53:42', '2020-01-17 19:53:44', '', 60, 'Conception et Développement d’applications pour mobiles', '', '-2071619758', 'ACTIVE', 205, 205, 157, 2366);
INSERT INTO `enseignement` VALUES (2384, '2020-01-17 19:52:56', '2020-01-17 19:52:57', '', 60, 'Sécurité avancée des réseaux et systèmes', '', '242366044', 'ACTIVE', 205, 205, 157, 2365);
INSERT INTO `enseignement` VALUES (2383, '2020-01-17 19:52:16', '2020-01-17 19:52:18', '', 60, 'Introduction au Big Data', '', '-479588075', 'ACTIVE', 205, 205, 157, 2364);
INSERT INTO `enseignement` VALUES (2382, '2020-01-17 19:51:40', '2020-01-17 19:51:41', '', 60, 'Ingénierie du Génie Logiciel', '', '2028797988', 'ACTIVE', 205, 205, 157, 2363);
INSERT INTO `enseignement` VALUES (2381, '2020-01-17 19:50:59', '2020-01-17 19:51:01', '', 60, 'Technologie .NET', '', '-1426929421', 'ACTIVE', 205, 205, 157, 2362);
INSERT INTO `enseignement` VALUES (2379, '2020-01-17 19:49:20', '2020-01-17 19:49:22', '', 15, 'Ethique et Développement I', '', '-409770646', 'ACTIVE', 205, 205, 157, 2360);
INSERT INTO `enseignement` VALUES (2380, '2020-01-17 19:50:31', '2020-01-17 19:50:33', '', 60, 'Programmation et administration des bases de Données Oracle ', '', '1414922956', 'ACTIVE', 205, 205, 157, 2361);
INSERT INTO `enseignement` VALUES (2378, '2020-01-17 19:48:30', '2020-01-17 19:48:32', '', 30, 'Anglais niveau pratique B1/B2', '', '-1610732590', 'ACTIVE', 205, 205, 157, 2359);
INSERT INTO `enseignement` VALUES (2377, '2020-01-17 19:47:42', '2020-01-17 19:47:46', '', 60, 'Systèmes d\'exploitation', '', '912247447', 'ACTIVE', 205, 205, 157, 2358);
INSERT INTO `enseignement` VALUES (2376, '2020-01-17 19:47:08', '2020-01-17 19:47:09', '', 60, 'Introduction aux Réseaux informatiques', '', '543413318', 'ACTIVE', 205, 205, 157, 2357);
INSERT INTO `enseignement` VALUES (2375, '2020-01-17 19:46:31', '2020-01-17 19:46:32', '', 60, 'Introduction aux Base de données', '', '-2075247626', 'ACTIVE', 205, 205, 157, 2356);
INSERT INTO `enseignement` VALUES (2374, '2020-01-17 19:45:52', '2020-01-17 19:45:55', '', 90, 'Programmation Orientée Objet II', '', '-2061779897', 'ACTIVE', 205, 205, 157, 2355);
INSERT INTO `enseignement` VALUES (2373, '2020-01-17 19:45:14', '2020-01-17 19:45:16', '', 60, 'Algèbre linaire I', '', '-419753658', 'ACTIVE', 205, 205, 157, 2354);
INSERT INTO `enseignement` VALUES (2372, '2020-01-17 19:44:18', '2020-01-17 19:44:20', '', 90, 'Modélisation des Systèmes d\'Information(UML)', '', '-326435987', 'ACTIVE', 205, 205, 157, 2353);
INSERT INTO `enseignement` VALUES (2371, '2020-01-17 19:43:16', '2020-01-17 19:43:17', '', 90, 'Algorithmique et Complexité', '', '717600623', 'ACTIVE', 205, 205, 157, 2352);
INSERT INTO `enseignement` VALUES (1935, '2020-01-17 14:53:40', '2020-01-17 14:53:41', '', 60, 'Introduction à la sécurité et à l’administration des réseaux', '', '-1324122743', 'ACTIVE', 205, 205, 157, 1916);
INSERT INTO `enseignement` VALUES (1934, '2020-01-17 14:51:01', '2020-01-17 14:51:02', '', 15, 'Sagesse et sciences ING3', '', '-2035169844', 'ACTIVE', 205, 205, 157, 1915);
INSERT INTO `enseignement` VALUES (1932, '2020-01-17 14:49:54', '2020-01-17 14:49:55', '', 45, 'Anglais Ing3', '', '1223463442', 'ACTIVE', 205, 205, 157, 1469);
INSERT INTO `enseignement` VALUES (1933, '2020-01-17 14:50:28', '2020-01-17 14:50:29', '', 90, 'Technologies du Web', '', '-155102724', 'ACTIVE', 205, 205, 157, 1914);
INSERT INTO `enseignement` VALUES (1931, '2020-01-17 14:49:16', '2020-01-17 14:49:17', '', 90, 'Conduite et gestion de projets informatiques Ing3', '', '598050704', 'ACTIVE', 205, 205, 157, 1913);
INSERT INTO `enseignement` VALUES (1930, '2020-01-17 14:48:39', '2020-01-17 14:48:40', '', 90, 'Principe de la programmation orientée objet ING3', '', '273573378', 'ACTIVE', 205, 205, 157, 1466);
INSERT INTO `enseignement` VALUES (1929, '2020-01-17 14:47:54', '2020-01-17 14:47:55', '', 90, 'Modélisation pour la conception des Systèmes d\'Information', '', '-1861020936', 'ACTIVE', 205, 205, 157, 1912);
INSERT INTO `enseignement` VALUES (1928, '2020-01-17 14:47:24', '2020-01-17 14:47:25', '', 90, 'Base de données', '', '-2034136927', 'ACTIVE', 205, 205, 157, 1463);
INSERT INTO `enseignement` VALUES (1927, '2020-01-17 14:46:57', '2020-01-17 14:46:58', '', 90, 'Théorie et codage de l’information', '', '1190702531', 'ACTIVE', 205, 205, 157, 1462);
INSERT INTO `enseignement` VALUES (1926, '2020-01-17 14:45:01', '2020-01-17 14:45:02', '', 15, 'Ethique et développement1 Ing2', '', '-1271388100', 'ACTIVE', 205, 205, 157, 1122);
INSERT INTO `enseignement` VALUES (1925, '2020-01-17 14:44:02', '2020-01-17 14:44:03', '', 60, 'Économie générale ', '', '-1163894136', 'ACTIVE', 205, 205, 157, 1124);
INSERT INTO `enseignement` VALUES (1924, '2020-01-17 14:43:19', '2020-01-17 14:43:20', '', 60, 'Anglais Ing2', '', '-446714442', 'ACTIVE', 205, 205, 157, 1121);
INSERT INTO `enseignement` VALUES (1922, '2020-01-17 14:41:23', '2020-01-17 14:41:24', '', 90, 'Langage C', '', '-1458549911', 'ACTIVE', 205, 205, 157, 1119);
INSERT INTO `enseignement` VALUES (1923, '2020-01-17 14:42:28', '2020-01-17 14:42:29', '', 90, 'Réseaux Ing2', '', '-530176333', 'ACTIVE', 205, 205, 157, 1120);
INSERT INTO `enseignement` VALUES (1921, '2020-01-17 14:40:42', '2020-01-17 14:40:43', '', 90, 'Probabilité et Statistique', '', '-183815024', 'ACTIVE', 205, 205, 157, 1117);
INSERT INTO `enseignement` VALUES (1920, '2020-01-17 14:39:37', '2020-01-17 14:39:38', '', 90, 'Analyse Avancée', '', '877769708', 'ACTIVE', 205, 205, 157, 1116);
INSERT INTO `enseignement` VALUES (1919, '2020-01-17 14:37:35', '2020-01-17 14:37:36', '', 15, 'Reflexion Humaine ing1', '', '1891190860', 'ACTIVE', 205, 205, 157, 1110);
INSERT INTO `enseignement` VALUES (1918, '2020-01-17 14:36:40', '2020-01-17 14:36:41', '', 60, 'Communication Ing1', '', '735143637', 'ACTIVE', 205, 205, 157, 1109);
INSERT INTO `enseignement` VALUES (1917, '2020-01-17 14:35:45', '2020-01-17 14:35:46', '', 60, 'Anglais ING1', '', '-941082070', 'ACTIVE', 205, 205, 157, 1108);
INSERT INTO `enseignement` VALUES (1260, '2020-01-16 12:40:31', '2020-01-17 11:49:46', '', 120, 'Analyse ING1', '', '-222951026', 'ACTIVE', 205, 205, 157, 1103);
INSERT INTO `enseignement` VALUES (1261, '2020-01-16 12:41:23', '2020-01-16 12:41:24', '', 120, 'ALGEBRE ING1', '', '-543139949', 'ACTIVE', 205, 205, 157, 1102);
INSERT INTO `enseignement` VALUES (1262, '2020-01-16 12:41:57', '2020-01-17 20:04:51', '', 120, 'Mecanique', '', '-268638044', 'ACTIVE', 205, 205, 157, 1104);
INSERT INTO `enseignement` VALUES (1263, '2020-01-16 12:42:51', '2020-01-17 20:20:45', '', 120, 'Electrocinétique', '', '-353779901', 'ACTIVE', 205, 205, 157, 1105);
INSERT INTO `enseignement` VALUES (1264, '2020-01-16 12:43:51', '2020-01-17 20:36:04', '', 90, 'Projet Arduno', '', '907552323', 'ACTIVE', 205, 205, 157, 1106);
INSERT INTO `enseignement` VALUES (1265, '2020-01-16 12:44:29', '2020-01-16 12:44:30', '', 90, 'MESURE', '', '-1727595923', 'ACTIVE', 205, 205, 157, 1107);
INSERT INTO `enseignement` VALUES (2387, '2020-01-17 19:54:53', '2020-01-17 19:54:55', '', 60, 'Fondamentaux de la communication', '', '943196646', 'ACTIVE', 205, 205, 157, 2368);
INSERT INTO `enseignement` VALUES (2388, '2020-01-17 19:55:32', '2020-01-17 19:55:36', '', 30, 'Anglais pratique', '', '1153321465', 'ACTIVE', 205, 205, 157, 2369);
INSERT INTO `enseignement` VALUES (2389, '2020-01-17 19:56:07', '2020-01-17 19:56:10', '', 60, 'Sagesse et science1', '', '-280003045', 'ACTIVE', 205, 205, 157, 2370);
INSERT INTO `enseignement` VALUES (3368, '2020-01-18 12:23:30', '2020-01-18 12:23:32', '', 60, 'Base en électronique', '', '567625057', 'ACTIVE', 205, 205, 157, 1118);
INSERT INTO `enseignement` VALUES (3816, '2020-01-19 09:38:30', '2020-01-19 09:38:39', '', 60, 'Introduction aux systèmes d\'information', '', '-1613175035', 'ACTIVE', 205, 205, 157, 1129);
INSERT INTO `enseignement` VALUES (3817, '2020-01-19 09:39:23', '2020-01-19 09:39:24', '', 60, 'Architecture des ordinateurs', '', '-1365757149', 'ACTIVE', 205, 205, 157, 1130);
INSERT INTO `enseignement` VALUES (3818, '2020-01-19 09:40:26', '2020-01-19 09:40:27', '', 60, 'Programmation Web I', '', '-380606601', 'ACTIVE', 205, 205, 157, 1252);
INSERT INTO `enseignement` VALUES (3819, '2020-01-19 09:41:27', '2020-01-19 09:41:28', '', 60, 'Introduction aux algorithmes L1', '', '-1530240174', 'ACTIVE', 205, 205, 157, 1255);
INSERT INTO `enseignement` VALUES (3820, '2020-01-19 09:42:07', '2020-01-19 09:42:08', '', 60, 'Mathématiques pour l\'informatique', '', '-1598578103', 'ACTIVE', 205, 205, 157, 1256);
INSERT INTO `enseignement` VALUES (3821, '2020-01-19 09:42:50', '2020-01-19 09:42:52', '', 60, 'Mathématiques discrètes I', '', '-622066143', 'ACTIVE', 205, 205, 157, 1257);
INSERT INTO `enseignement` VALUES (3822, '2020-01-19 09:43:36', '2020-01-19 09:43:37', '', 60, 'Anglais Remise à niveau A2 L1', '', '1078734758', 'ACTIVE', 205, 205, 157, 1258);
INSERT INTO `enseignement` VALUES (3823, '2020-01-19 09:44:34', '2020-01-19 09:44:35', '', 15, 'Réflexion Humaine1 L1', '', '-1001311642', 'ACTIVE', 205, 205, 157, 1259);
INSERT INTO `enseignement` VALUES (4580, '2020-01-20 08:10:16', '2020-01-20 08:27:42', '', 30, 'Enjeux Economie Numérique', '', '24878500', 'ACTIVE', 205, 205, 157, 1253);

-- ----------------------------
-- Table structure for enseignement_enseignant
-- ----------------------------
DROP TABLE IF EXISTS `enseignement_enseignant`;
CREATE TABLE `enseignement_enseignant`  (
  `code_enseignant` bigint(20) NOT NULL,
  `code_enseignement` bigint(20) NOT NULL,
  PRIMARY KEY (`code_enseignant`, `code_enseignement`) USING BTREE,
  INDEX `FK_enseignement_enseignant_code_enseignement`(`code_enseignement`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of enseignement_enseignant
-- ----------------------------
INSERT INTO `enseignement_enseignant` VALUES (1917, 842);
INSERT INTO `enseignement_enseignant` VALUES (1918, 847);
INSERT INTO `enseignement_enseignant` VALUES (1919, 834);
INSERT INTO `enseignement_enseignant` VALUES (1920, 848);
INSERT INTO `enseignement_enseignant` VALUES (1921, 832);
INSERT INTO `enseignement_enseignant` VALUES (1922, 830);
INSERT INTO `enseignement_enseignant` VALUES (1923, 840);
INSERT INTO `enseignement_enseignant` VALUES (1924, 833);
INSERT INTO `enseignement_enseignant` VALUES (1925, 850);
INSERT INTO `enseignement_enseignant` VALUES (1926, 834);
INSERT INTO `enseignement_enseignant` VALUES (1927, 901);
INSERT INTO `enseignement_enseignant` VALUES (1928, 902);
INSERT INTO `enseignement_enseignant` VALUES (1929, 837);
INSERT INTO `enseignement_enseignant` VALUES (1930, 4579);
INSERT INTO `enseignement_enseignant` VALUES (1931, 1216);
INSERT INTO `enseignement_enseignant` VALUES (1932, 1212);
INSERT INTO `enseignement_enseignant` VALUES (1933, 1208);
INSERT INTO `enseignement_enseignant` VALUES (1934, 834);
INSERT INTO `enseignement_enseignant` VALUES (1935, 841);
INSERT INTO `enseignement_enseignant` VALUES (1960, 843);
INSERT INTO `enseignement_enseignant` VALUES (1961, 844);
INSERT INTO `enseignement_enseignant` VALUES (1962, 845);
INSERT INTO `enseignement_enseignant` VALUES (1963, 846);
INSERT INTO `enseignement_enseignant` VALUES (1964, 835);
INSERT INTO `enseignement_enseignant` VALUES (1965, 1204);
INSERT INTO `enseignement_enseignant` VALUES (2371, 1210);
INSERT INTO `enseignement_enseignant` VALUES (2372, 837);
INSERT INTO `enseignement_enseignant` VALUES (2373, 831);
INSERT INTO `enseignement_enseignant` VALUES (2374, 838);
INSERT INTO `enseignement_enseignant` VALUES (2375, 839);
INSERT INTO `enseignement_enseignant` VALUES (2376, 1205);
INSERT INTO `enseignement_enseignant` VALUES (2377, 841);
INSERT INTO `enseignement_enseignant` VALUES (2378, 833);
INSERT INTO `enseignement_enseignant` VALUES (2379, 834);
INSERT INTO `enseignement_enseignant` VALUES (2380, 1217);
INSERT INTO `enseignement_enseignant` VALUES (2381, 1209);
INSERT INTO `enseignement_enseignant` VALUES (2382, 1203);
INSERT INTO `enseignement_enseignant` VALUES (2383, 1209);
INSERT INTO `enseignement_enseignant` VALUES (2384, 837);
INSERT INTO `enseignement_enseignant` VALUES (2385, 4579);
INSERT INTO `enseignement_enseignant` VALUES (2386, 1203);
INSERT INTO `enseignement_enseignant` VALUES (2387, 847);
INSERT INTO `enseignement_enseignant` VALUES (2388, 1212);
INSERT INTO `enseignement_enseignant` VALUES (2389, 834);
INSERT INTO `enseignement_enseignant` VALUES (3368, 849);
INSERT INTO `enseignement_enseignant` VALUES (3816, 827);
INSERT INTO `enseignement_enseignant` VALUES (3817, 828);
INSERT INTO `enseignement_enseignant` VALUES (3818, 1207);
INSERT INTO `enseignement_enseignant` VALUES (3819, 830);
INSERT INTO `enseignement_enseignant` VALUES (3820, 831);
INSERT INTO `enseignement_enseignant` VALUES (3821, 832);
INSERT INTO `enseignement_enseignant` VALUES (3822, 833);
INSERT INTO `enseignement_enseignant` VALUES (3823, 1211);
INSERT INTO `enseignement_enseignant` VALUES (4580, 829);

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
INSERT INTO `est_inscrit` VALUES (1936, '2020-01-17 19:11:37', '2020-01-17 19:11:39', 'MAT1021', '', '132372438', 'VALIDE', 'ACTIVE', 8461, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (1937, '2020-01-17 19:11:43', '2020-01-17 19:11:44', 'MAT1021', '', '488113112', 'VALIDE', 'ACTIVE', 8463, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (1938, '2020-01-17 19:11:48', '2020-01-17 19:11:50', 'MAT1021', '', '-123671860', 'VALIDE', 'ACTIVE', 8464, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (1939, '2020-01-17 19:11:54', '2020-01-17 19:11:56', 'MAT1021', '', '260332445', 'VALIDE', 'ACTIVE', 8465, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (1940, '2020-01-17 19:11:59', '2020-01-17 19:12:01', 'MAT1021', '', '-1301559832', 'VALIDE', 'ACTIVE', 8466, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (1941, '2020-01-17 19:12:05', '2020-01-17 19:12:07', 'MAT1021', '', '521044481', 'VALIDE', 'ACTIVE', 8467, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (1942, '2020-01-17 19:12:11', '2020-01-17 19:12:13', 'MAT1021', '', '-1093679670', 'VALIDE', 'ACTIVE', 8468, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (1943, '2020-01-17 19:12:17', '2020-01-17 19:12:19', 'MAT1021', '', '-1725097731', 'VALIDE', 'ACTIVE', 8469, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (1944, '2020-01-17 19:12:23', '2020-01-17 19:12:25', 'MAT1021', '', '466143737', 'VALIDE', 'ACTIVE', 8470, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (1945, '2020-01-17 19:12:29', '2020-01-17 19:12:30', 'MAT1021', '', '-560137697', 'VALIDE', 'ACTIVE', 8471, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (1946, '2020-01-17 19:12:34', '2020-01-17 19:12:36', 'MAT1021', '', '-1803948331', 'VALIDE', 'ACTIVE', 8472, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (1947, '2020-01-17 19:12:40', '2020-01-17 19:12:42', 'MAT1021', '', '1637301176', 'VALIDE', 'ACTIVE', 8473, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (1948, '2020-01-17 19:12:46', '2020-01-17 19:12:48', 'MAT1021', '', '-1527114885', 'VALIDE', 'ACTIVE', 8474, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (1949, '2020-01-17 19:12:52', '2020-01-17 19:12:54', 'MAT1021', '', '-1275763301', 'VALIDE', 'ACTIVE', 8475, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (1950, '2020-01-17 19:12:58', '2020-01-17 19:13:00', 'MAT1021', '', '-572053679', 'VALIDE', 'ACTIVE', 8476, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2201, '2020-01-17 19:13:04', '2020-01-17 19:13:07', 'MAT1021', '', '1000095740', 'VALIDE', 'ACTIVE', 8477, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2202, '2020-01-17 19:13:10', '2020-01-17 19:13:12', 'MAT1021', '', '109262798', 'VALIDE', 'ACTIVE', 8478, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2203, '2020-01-17 19:13:16', '2020-01-17 19:13:18', 'MAT1021', '', '1849773107', 'VALIDE', 'ACTIVE', 8479, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2204, '2020-01-17 19:13:22', '2020-01-17 19:13:24', 'MAT1021', '', '807688162', 'VALIDE', 'ACTIVE', 8480, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2205, '2020-01-17 19:13:28', '2020-01-17 19:13:30', 'MAT1021', '', '1362465372', 'VALIDE', 'ACTIVE', 8481, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2206, '2020-01-17 19:13:34', '2020-01-17 19:13:35', 'MAT1021', '', '-1248825747', 'VALIDE', 'ACTIVE', 8482, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2207, '2020-01-17 19:13:39', '2020-01-17 19:13:41', 'MAT1021', '', '1100019594', 'VALIDE', 'ACTIVE', 8483, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2208, '2020-01-17 19:13:45', '2020-01-17 19:13:47', 'MAT1021', '', '-1432606825', 'VALIDE', 'ACTIVE', 8484, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2209, '2020-01-17 19:13:51', '2020-01-17 19:13:53', 'MAT1021', '', '-2006549520', 'VALIDE', 'ACTIVE', 8485, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2210, '2020-01-17 19:13:57', '2020-01-17 19:13:58', 'MAT1021', '', '-1183390451', 'VALIDE', 'ACTIVE', 8486, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2211, '2020-01-17 19:14:02', '2020-01-17 19:14:04', 'MAT1021', '', '329916407', 'VALIDE', 'ACTIVE', 8487, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2212, '2020-01-17 19:14:08', '2020-01-17 19:14:10', 'MAT1021', '', '-247120782', 'VALIDE', 'ACTIVE', 8488, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2213, '2020-01-17 19:14:14', '2020-01-17 19:14:15', 'MAT1021', '', '932829427', 'VALIDE', 'ACTIVE', 8489, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2214, '2020-01-17 19:14:19', '2020-01-17 19:14:21', 'MAT1021', '', '1966208653', 'VALIDE', 'ACTIVE', 8490, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2215, '2020-01-17 19:14:25', '2020-01-17 19:14:27', 'MAT1021', '', '779030029', 'VALIDE', 'ACTIVE', 8491, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2216, '2020-01-17 19:14:31', '2020-01-17 19:14:33', 'MAT1021', '', '1023089047', 'VALIDE', 'ACTIVE', 8492, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2217, '2020-01-17 19:14:36', '2020-01-17 19:14:38', 'MAT1021', '', '-833445479', 'VALIDE', 'ACTIVE', 8493, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2218, '2020-01-17 19:14:42', '2020-01-17 19:14:44', 'MAT1021', '', '-1946558694', 'VALIDE', 'ACTIVE', 8494, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2219, '2020-01-17 19:14:48', '2020-01-17 19:14:49', 'MAT1021', '', '407569867', 'VALIDE', 'ACTIVE', 8495, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2220, '2020-01-17 19:14:53', '2020-01-17 19:14:55', 'MAT1021', '', '932136714', 'VALIDE', 'ACTIVE', 8496, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2221, '2020-01-17 19:14:59', '2020-01-17 19:15:00', 'MAT1021', '', '1131300773', 'VALIDE', 'ACTIVE', 8497, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2222, '2020-01-17 19:15:04', '2020-01-17 19:15:06', 'MAT1021', '', '-1442537583', 'VALIDE', 'ACTIVE', 8498, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2223, '2020-01-17 19:15:10', '2020-01-17 19:15:12', 'MAT1021', '', '1205123347', 'VALIDE', 'ACTIVE', 8499, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2224, '2020-01-17 19:15:16', '2020-01-17 19:15:18', 'MAT1021', '', '-547810741', 'VALIDE', 'ACTIVE', 8500, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2225, '2020-01-17 19:15:22', '2020-01-17 19:15:24', 'MAT1021', '', '1763590262', 'VALIDE', 'ACTIVE', 8501, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2226, '2020-01-17 19:15:27', '2020-01-17 19:15:29', 'MAT1021', '', '-70418324', 'VALIDE', 'ACTIVE', 8502, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2227, '2020-01-17 19:15:33', '2020-01-17 19:15:34', 'MAT1021', '', '-893125413', 'VALIDE', 'ACTIVE', 8503, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2228, '2020-01-17 19:15:38', '2020-01-17 19:15:40', 'MAT1021', '', '582201168', 'VALIDE', 'ACTIVE', 8504, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2229, '2020-01-17 19:15:44', '2020-01-17 19:15:46', 'MAT1021', '', '-9327391', 'VALIDE', 'ACTIVE', 8505, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2230, '2020-01-17 19:15:50', '2020-01-17 19:15:52', 'MAT1021', '', '-1946503601', 'VALIDE', 'ACTIVE', 8506, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2231, '2020-01-17 19:15:55', '2020-01-17 19:15:57', 'MAT1021', '', '-804871088', 'VALIDE', 'ACTIVE', 8507, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2232, '2020-01-17 19:16:01', '2020-01-17 19:16:02', 'MAT1021', '', '-619507086', 'VALIDE', 'ACTIVE', 8508, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2233, '2020-01-17 19:16:06', '2020-01-17 19:16:08', 'MAT1021', '', '848459998', 'VALIDE', 'ACTIVE', 8509, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2234, '2020-01-17 19:16:11', '2020-01-17 19:16:13', 'MAT1021', '', '-529836777', 'VALIDE', 'ACTIVE', 8510, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2235, '2020-01-17 19:16:17', '2020-01-17 19:16:18', 'MAT1021', '', '362913408', 'VALIDE', 'ACTIVE', 8511, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2236, '2020-01-17 19:16:22', '2020-01-17 19:16:24', 'MAT1021', '', '875702590', 'VALIDE', 'ACTIVE', 8512, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2237, '2020-01-17 19:16:29', '2020-01-17 19:16:30', 'MAT1021', '', '-1388926035', 'VALIDE', 'ACTIVE', 8513, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2238, '2020-01-17 19:16:34', '2020-01-17 19:16:35', 'MAT1021', '', '1821349787', 'VALIDE', 'ACTIVE', 8514, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2239, '2020-01-17 19:16:39', '2020-01-17 19:16:41', 'MAT1021', '', '541793954', 'VALIDE', 'ACTIVE', 8515, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2240, '2020-01-17 19:16:44', '2020-01-17 19:16:46', 'MAT1021', '', '484903038', 'VALIDE', 'ACTIVE', 8516, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2241, '2020-01-17 19:16:49', '2020-01-17 19:16:51', 'MAT1021', '', '-344477294', 'VALIDE', 'ACTIVE', 8517, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2242, '2020-01-17 19:16:55', '2020-01-17 19:16:56', 'MAT1021', '', '1310327386', 'VALIDE', 'ACTIVE', 8518, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2243, '2020-01-17 19:17:00', '2020-01-17 19:17:02', 'MAT1021', '', '1550804642', 'VALIDE', 'ACTIVE', 8519, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2244, '2020-01-17 19:17:05', '2020-01-17 19:17:07', 'MAT1021', '', '827499204', 'VALIDE', 'ACTIVE', 8520, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2245, '2020-01-17 19:17:11', '2020-01-17 19:17:12', 'MAT1021', '', '-1136317263', 'VALIDE', 'ACTIVE', 8521, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2246, '2020-01-17 19:17:16', '2020-01-17 19:17:17', 'MAT1021', '', '1023613039', 'VALIDE', 'ACTIVE', 8522, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2247, '2020-01-17 19:17:21', '2020-01-17 19:17:23', 'MAT1021', '', '-1008955530', 'VALIDE', 'ACTIVE', 8523, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2248, '2020-01-17 19:17:26', '2020-01-17 19:17:28', 'MAT1021', '', '-709022714', 'VALIDE', 'ACTIVE', 8524, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2249, '2020-01-17 19:17:32', '2020-01-17 19:17:34', 'MAT1021', '', '877542213', 'VALIDE', 'ACTIVE', 730, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2250, '2020-01-17 19:17:38', '2020-01-17 19:17:39', 'MAT1021', '', '167676130', 'VALIDE', 'ACTIVE', 728, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (2251, '2020-01-17 19:22:24', '2020-01-17 19:22:26', 'MAT1011', '', '1456492209', 'VALIDE', 'ACTIVE', 8461, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2252, '2020-01-17 19:22:30', '2020-01-17 19:22:31', 'MAT1011', '', '-1735216248', 'VALIDE', 'ACTIVE', 8463, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2253, '2020-01-17 19:22:35', '2020-01-17 19:22:36', 'MAT1011', '', '1230022324', 'VALIDE', 'ACTIVE', 8464, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2254, '2020-01-17 19:22:40', '2020-01-17 19:22:41', 'MAT1011', '', '-1114041960', 'VALIDE', 'ACTIVE', 8465, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2255, '2020-01-17 19:22:45', '2020-01-17 19:22:46', 'MAT1011', '', '-402877623', 'VALIDE', 'ACTIVE', 8466, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2256, '2020-01-17 19:22:50', '2020-01-17 19:22:51', 'MAT1011', '', '1283202260', 'VALIDE', 'ACTIVE', 8467, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2257, '2020-01-17 19:22:55', '2020-01-17 19:22:56', 'MAT1011', '', '849362893', 'VALIDE', 'ACTIVE', 8468, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2258, '2020-01-17 19:23:00', '2020-01-17 19:23:01', 'MAT1011', '', '1343237252', 'VALIDE', 'ACTIVE', 8469, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2259, '2020-01-17 19:23:05', '2020-01-17 19:23:06', 'MAT1011', '', '2049252407', 'VALIDE', 'ACTIVE', 8470, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2260, '2020-01-17 19:23:10', '2020-01-17 19:23:11', 'MAT1011', '', '-1136702398', 'VALIDE', 'ACTIVE', 8471, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2261, '2020-01-17 19:23:15', '2020-01-17 19:23:16', 'MAT1011', '', '448175289', 'VALIDE', 'ACTIVE', 8472, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2262, '2020-01-17 19:23:20', '2020-01-17 19:23:21', 'MAT1011', '', '1749832917', 'VALIDE', 'ACTIVE', 8473, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2263, '2020-01-17 19:23:24', '2020-01-17 19:23:25', 'MAT1011', '', '-1690082858', 'VALIDE', 'ACTIVE', 8474, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2264, '2020-01-17 19:23:29', '2020-01-17 19:23:31', 'MAT1011', '', '-393124873', 'VALIDE', 'ACTIVE', 8475, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2265, '2020-01-17 19:23:35', '2020-01-17 19:23:35', 'MAT1011', '', '-1439840536', 'VALIDE', 'ACTIVE', 8476, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2266, '2020-01-17 19:23:39', '2020-01-17 19:23:40', 'MAT1011', '', '375516500', 'VALIDE', 'ACTIVE', 8477, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2267, '2020-01-17 19:23:44', '2020-01-17 19:23:45', 'MAT1011', '', '-1182717306', 'VALIDE', 'ACTIVE', 8478, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2268, '2020-01-17 19:23:49', '2020-01-17 19:23:50', 'MAT1011', '', '-782141810', 'VALIDE', 'ACTIVE', 8479, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2269, '2020-01-17 19:23:54', '2020-01-17 19:23:55', 'MAT1011', '', '1585536097', 'VALIDE', 'ACTIVE', 8480, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2270, '2020-01-17 19:23:59', '2020-01-17 19:24:00', 'MAT1011', '', '-1829792939', 'VALIDE', 'ACTIVE', 8481, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2271, '2020-01-17 19:24:03', '2020-01-17 19:24:04', 'MAT1011', '', '888167749', 'VALIDE', 'ACTIVE', 8482, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2272, '2020-01-17 19:24:08', '2020-01-17 19:24:09', 'MAT1011', '', '-1924614113', 'VALIDE', 'ACTIVE', 8483, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2273, '2020-01-17 19:24:13', '2020-01-17 19:24:14', 'MAT1011', '', '2124390601', 'VALIDE', 'ACTIVE', 8484, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2274, '2020-01-17 19:24:17', '2020-01-17 19:24:18', 'MAT1011', '', '-2095601712', 'VALIDE', 'ACTIVE', 8485, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2275, '2020-01-17 19:24:22', '2020-01-17 19:24:23', 'MAT1011', '', '-1180121637', 'VALIDE', 'ACTIVE', 8486, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2276, '2020-01-17 19:24:27', '2020-01-17 19:24:28', 'MAT1011', '', '2044600076', 'VALIDE', 'ACTIVE', 8487, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2277, '2020-01-17 19:24:31', '2020-01-17 19:24:32', 'MAT1011', '', '-19897489', 'VALIDE', 'ACTIVE', 8488, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2278, '2020-01-17 19:24:36', '2020-01-17 19:24:37', 'MAT1011', '', '721072692', 'VALIDE', 'ACTIVE', 8489, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2279, '2020-01-17 19:24:40', '2020-01-17 19:24:41', 'MAT1011', '', '769478718', 'VALIDE', 'ACTIVE', 8490, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2280, '2020-01-17 19:24:45', '2020-01-17 19:24:46', 'MAT1011', '', '-671855253', 'VALIDE', 'ACTIVE', 8491, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2281, '2020-01-17 19:24:50', '2020-01-17 19:24:51', 'MAT1011', '', '1011673657', 'VALIDE', 'ACTIVE', 8492, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2282, '2020-01-17 19:24:55', '2020-01-17 19:24:56', 'MAT1011', '', '2044351897', 'VALIDE', 'ACTIVE', 8493, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2283, '2020-01-17 19:25:00', '2020-01-17 19:25:01', 'MAT1011', '', '-313877332', 'VALIDE', 'ACTIVE', 8494, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2284, '2020-01-17 19:25:05', '2020-01-17 19:25:06', 'MAT1011', '', '-299394231', 'VALIDE', 'ACTIVE', 8495, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2285, '2020-01-17 19:25:10', '2020-01-17 19:25:11', 'MAT1011', '', '1479502565', 'VALIDE', 'ACTIVE', 8496, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2286, '2020-01-17 19:25:14', '2020-01-17 19:25:15', 'MAT1011', '', '-1480714053', 'VALIDE', 'ACTIVE', 8497, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2287, '2020-01-17 19:25:19', '2020-01-17 19:25:20', 'MAT1011', '', '-736705404', 'VALIDE', 'ACTIVE', 8498, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2288, '2020-01-17 19:25:24', '2020-01-17 19:25:25', 'MAT1011', '', '-1044903113', 'VALIDE', 'ACTIVE', 8499, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2289, '2020-01-17 19:25:28', '2020-01-17 19:25:29', 'MAT1011', '', '683521743', 'VALIDE', 'ACTIVE', 8500, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2290, '2020-01-17 19:25:33', '2020-01-17 19:25:34', 'MAT1011', '', '-96420193', 'VALIDE', 'ACTIVE', 8501, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2291, '2020-01-17 19:25:37', '2020-01-17 19:25:38', 'MAT1011', '', '568007107', 'VALIDE', 'ACTIVE', 8502, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2292, '2020-01-17 19:25:42', '2020-01-17 19:25:43', 'MAT1011', '', '-1122761376', 'VALIDE', 'ACTIVE', 8503, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2293, '2020-01-17 19:25:46', '2020-01-17 19:25:47', 'MAT1011', '', '-1188287128', 'VALIDE', 'ACTIVE', 8504, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2294, '2020-01-17 19:25:51', '2020-01-17 19:25:51', 'MAT1011', '', '1544466960', 'VALIDE', 'ACTIVE', 8505, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2295, '2020-01-17 19:25:55', '2020-01-17 19:25:56', 'MAT1011', '', '-838911663', 'VALIDE', 'ACTIVE', 8506, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2296, '2020-01-17 19:26:00', '2020-01-17 19:26:01', 'MAT1011', '', '-776743972', 'VALIDE', 'ACTIVE', 8507, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2297, '2020-01-17 19:26:04', '2020-01-17 19:26:05', 'MAT1011', '', '-1117403608', 'VALIDE', 'ACTIVE', 8508, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2298, '2020-01-17 19:26:09', '2020-01-17 19:26:10', 'MAT1011', '', '2075385067', 'VALIDE', 'ACTIVE', 8509, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2299, '2020-01-17 19:26:13', '2020-01-17 19:26:14', 'MAT1011', '', '456876181', 'VALIDE', 'ACTIVE', 8510, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2300, '2020-01-17 19:26:18', '2020-01-17 19:26:19', 'MAT1011', '', '426999251', 'VALIDE', 'ACTIVE', 8511, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2301, '2020-01-17 19:26:22', '2020-01-17 19:26:24', 'MAT1011', '', '1561050761', 'VALIDE', 'ACTIVE', 8512, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2302, '2020-01-17 19:26:28', '2020-01-17 19:26:29', 'MAT1011', '', '-348843705', 'VALIDE', 'ACTIVE', 8513, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2303, '2020-01-17 19:26:33', '2020-01-17 19:26:33', 'MAT1011', '', '823599554', 'VALIDE', 'ACTIVE', 8514, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2304, '2020-01-17 19:26:37', '2020-01-17 19:26:38', 'MAT1011', '', '-1321349708', 'VALIDE', 'ACTIVE', 8515, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2305, '2020-01-17 19:26:42', '2020-01-17 19:26:43', 'MAT1011', '', '-1595095543', 'VALIDE', 'ACTIVE', 8516, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2306, '2020-01-17 19:26:46', '2020-01-17 19:26:47', 'MAT1011', '', '-728510372', 'VALIDE', 'ACTIVE', 8517, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2307, '2020-01-17 19:26:52', '2020-01-17 19:26:53', 'MAT1011', '', '105066462', 'VALIDE', 'ACTIVE', 8518, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2308, '2020-01-17 19:26:56', '2020-01-17 19:26:58', 'MAT1011', '', '1522083667', 'VALIDE', 'ACTIVE', 8519, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2309, '2020-01-17 19:27:02', '2020-01-17 19:27:03', 'MAT1011', '', '-379782333', 'VALIDE', 'ACTIVE', 8520, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2310, '2020-01-17 19:27:06', '2020-01-17 19:27:07', 'MAT1011', '', '1520056932', 'VALIDE', 'ACTIVE', 8521, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2311, '2020-01-17 19:27:11', '2020-01-17 19:27:12', 'MAT1011', '', '-1094868832', 'VALIDE', 'ACTIVE', 8522, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2312, '2020-01-17 19:27:15', '2020-01-17 19:27:16', 'MAT1011', '', '-625187219', 'VALIDE', 'ACTIVE', 8523, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2313, '2020-01-17 19:27:20', '2020-01-17 19:27:20', 'MAT1011', '', '587979449', 'VALIDE', 'ACTIVE', 8524, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2314, '2020-01-17 19:27:24', '2020-01-17 19:27:25', 'MAT1011', '', '-625894085', 'VALIDE', 'ACTIVE', 730, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2315, '2020-01-17 19:27:29', '2020-01-17 19:27:29', 'MAT1011', '', '211891719', 'VALIDE', 'ACTIVE', 728, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (2390, '2020-01-17 20:06:38', '2020-01-17 20:06:42', 'PHY1011', '', '520980867', 'VALIDE', 'ACTIVE', 8461, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2391, '2020-01-17 20:06:50', '2020-01-17 20:06:53', 'PHY1011', '', '-1003980981', 'VALIDE', 'ACTIVE', 8463, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2392, '2020-01-17 20:07:01', '2020-01-17 20:07:03', 'PHY1011', '', '78737294', 'VALIDE', 'ACTIVE', 8464, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2393, '2020-01-17 20:07:16', '2020-01-17 20:07:19', 'PHY1011', '', '1492165445', 'VALIDE', 'ACTIVE', 8465, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2394, '2020-01-17 20:07:28', '2020-01-17 20:07:31', 'PHY1011', '', '1579629621', 'VALIDE', 'ACTIVE', 8466, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2395, '2020-01-17 20:07:38', '2020-01-17 20:07:40', 'PHY1011', '', '-882777411', 'VALIDE', 'ACTIVE', 8467, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2396, '2020-01-17 20:07:48', '2020-01-17 20:07:51', 'PHY1011', '', '-1287838876', 'VALIDE', 'ACTIVE', 8468, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2397, '2020-01-17 20:08:01', '2020-01-17 20:08:04', 'PHY1011', '', '1353560727', 'VALIDE', 'ACTIVE', 8469, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2398, '2020-01-17 20:08:10', '2020-01-17 20:08:13', 'PHY1011', '', '1603086854', 'VALIDE', 'ACTIVE', 8470, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2399, '2020-01-17 20:08:20', '2020-01-17 20:08:25', 'PHY1011', '', '862586166', 'VALIDE', 'ACTIVE', 8471, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2400, '2020-01-17 20:08:33', '2020-01-17 20:08:37', 'PHY1011', '', '1400148876', 'VALIDE', 'ACTIVE', 8472, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2401, '2020-01-17 20:08:45', '2020-01-17 20:08:49', 'PHY1011', '', '-273309968', 'VALIDE', 'ACTIVE', 8473, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2402, '2020-01-17 20:08:56', '2020-01-17 20:09:00', 'PHY1011', '', '-350874464', 'VALIDE', 'ACTIVE', 8474, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2403, '2020-01-17 20:09:08', '2020-01-17 20:09:10', 'PHY1011', '', '1949972557', 'VALIDE', 'ACTIVE', 8475, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2404, '2020-01-17 20:09:20', '2020-01-17 20:09:23', 'PHY1011', '', '-525734762', 'VALIDE', 'ACTIVE', 8476, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2405, '2020-01-17 20:09:33', '2020-01-17 20:09:36', 'PHY1011', '', '-1215588754', 'VALIDE', 'ACTIVE', 8477, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2406, '2020-01-17 20:09:42', '2020-01-17 20:09:45', 'PHY1011', '', '-336491560', 'VALIDE', 'ACTIVE', 8478, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2407, '2020-01-17 20:09:53', '2020-01-17 20:09:56', 'PHY1011', '', '1164919371', 'VALIDE', 'ACTIVE', 8479, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2408, '2020-01-17 20:10:03', '2020-01-17 20:10:05', 'PHY1011', '', '1327348706', 'VALIDE', 'ACTIVE', 8480, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2409, '2020-01-17 20:10:14', '2020-01-17 20:10:16', 'PHY1011', '', '-2102433034', 'VALIDE', 'ACTIVE', 8481, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2410, '2020-01-17 20:10:25', '2020-01-17 20:10:28', 'PHY1011', '', '1797503692', 'VALIDE', 'ACTIVE', 8482, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2411, '2020-01-17 20:10:38', '2020-01-17 20:10:41', 'PHY1011', '', '-564102895', 'VALIDE', 'ACTIVE', 8483, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2412, '2020-01-17 20:10:49', '2020-01-17 20:10:52', 'PHY1011', '', '-1990075856', 'VALIDE', 'ACTIVE', 8484, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2413, '2020-01-17 20:11:01', '2020-01-17 20:11:04', 'PHY1011', '', '1420903764', 'VALIDE', 'ACTIVE', 8485, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2414, '2020-01-17 20:11:11', '2020-01-17 20:11:14', 'PHY1011', '', '-1519988820', 'VALIDE', 'ACTIVE', 8486, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2415, '2020-01-17 20:11:21', '2020-01-17 20:11:25', 'PHY1011', '', '1002528731', 'VALIDE', 'ACTIVE', 8487, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2416, '2020-01-17 20:11:33', '2020-01-17 20:11:36', 'PHY1011', '', '-1009840684', 'VALIDE', 'ACTIVE', 8488, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2417, '2020-01-17 20:11:43', '2020-01-17 20:11:46', 'PHY1011', '', '-1828186917', 'VALIDE', 'ACTIVE', 8489, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2418, '2020-01-17 20:11:54', '2020-01-17 20:11:58', 'PHY1011', '', '467542114', 'VALIDE', 'ACTIVE', 8490, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2419, '2020-01-17 20:12:08', '2020-01-17 20:12:11', 'PHY1011', '', '1024092139', 'VALIDE', 'ACTIVE', 8491, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2420, '2020-01-17 20:12:21', '2020-01-17 20:12:23', 'PHY1011', '', '-1852880068', 'VALIDE', 'ACTIVE', 8492, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2421, '2020-01-17 20:12:31', '2020-01-17 20:12:34', 'PHY1011', '', '88555178', 'VALIDE', 'ACTIVE', 8493, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2422, '2020-01-17 20:12:44', '2020-01-17 20:12:49', 'PHY1011', '', '1119163254', 'VALIDE', 'ACTIVE', 8494, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2423, '2020-01-17 20:12:59', '2020-01-17 20:13:04', 'PHY1011', '', '2091983438', 'VALIDE', 'ACTIVE', 8495, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2424, '2020-01-17 20:13:12', '2020-01-17 20:13:16', 'PHY1011', '', '667258007', 'VALIDE', 'ACTIVE', 8496, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2425, '2020-01-17 20:13:23', '2020-01-17 20:13:26', 'PHY1011', '', '-701934508', 'VALIDE', 'ACTIVE', 8497, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2426, '2020-01-17 20:13:33', '2020-01-17 20:13:36', 'PHY1011', '', '-585942374', 'VALIDE', 'ACTIVE', 8498, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2427, '2020-01-17 20:13:43', '2020-01-17 20:13:46', 'PHY1011', '', '-1679110390', 'VALIDE', 'ACTIVE', 8499, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2428, '2020-01-17 20:13:53', '2020-01-17 20:13:57', 'PHY1011', '', '-1434523731', 'VALIDE', 'ACTIVE', 8500, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2429, '2020-01-17 20:14:07', '2020-01-17 20:14:10', 'PHY1011', '', '1259485056', 'VALIDE', 'ACTIVE', 8501, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2430, '2020-01-17 20:14:17', '2020-01-17 20:14:20', 'PHY1011', '', '-1232421466', 'VALIDE', 'ACTIVE', 8502, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2431, '2020-01-17 20:14:31', '2020-01-17 20:14:35', 'PHY1011', '', '56205530', 'VALIDE', 'ACTIVE', 8503, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2432, '2020-01-17 20:14:48', '2020-01-17 20:14:52', 'PHY1011', '', '-1214858031', 'VALIDE', 'ACTIVE', 8504, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2433, '2020-01-17 20:15:00', '2020-01-17 20:15:04', 'PHY1011', '', '1183342967', 'VALIDE', 'ACTIVE', 8505, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2434, '2020-01-17 20:15:15', '2020-01-17 20:15:18', 'PHY1011', '', '-1630873986', 'VALIDE', 'ACTIVE', 8506, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2435, '2020-01-17 20:15:25', '2020-01-17 20:15:28', 'PHY1011', '', '1059599033', 'VALIDE', 'ACTIVE', 8507, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2436, '2020-01-17 20:15:37', '2020-01-17 20:15:40', 'PHY1011', '', '-529413050', 'VALIDE', 'ACTIVE', 8508, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2437, '2020-01-17 20:15:47', '2020-01-17 20:15:51', 'PHY1011', '', '691336969', 'VALIDE', 'ACTIVE', 8509, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2438, '2020-01-17 20:16:00', '2020-01-17 20:16:03', 'PHY1011', '', '1900740447', 'VALIDE', 'ACTIVE', 8510, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2439, '2020-01-17 20:16:10', '2020-01-17 20:16:13', 'PHY1011', '', '1808472443', 'VALIDE', 'ACTIVE', 8511, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2440, '2020-01-17 20:16:20', '2020-01-17 20:16:23', 'PHY1011', '', '357765722', 'VALIDE', 'ACTIVE', 8512, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2441, '2020-01-17 20:16:31', '2020-01-17 20:16:35', 'PHY1011', '', '-880079385', 'VALIDE', 'ACTIVE', 8513, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2442, '2020-01-17 20:16:50', '2020-01-17 20:16:53', 'PHY1011', '', '1476394042', 'VALIDE', 'ACTIVE', 8514, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2443, '2020-01-17 20:17:00', '2020-01-17 20:17:03', 'PHY1011', '', '2120766867', 'VALIDE', 'ACTIVE', 8515, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2444, '2020-01-17 20:17:11', '2020-01-17 20:17:16', 'PHY1011', '', '1391175287', 'VALIDE', 'ACTIVE', 8516, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2445, '2020-01-17 20:17:27', '2020-01-17 20:17:29', 'PHY1011', '', '232262860', 'VALIDE', 'ACTIVE', 8517, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2446, '2020-01-17 20:17:37', '2020-01-17 20:17:40', 'PHY1011', '', '487608591', 'VALIDE', 'ACTIVE', 8518, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2447, '2020-01-17 20:17:50', '2020-01-17 20:17:54', 'PHY1011', '', '588282492', 'VALIDE', 'ACTIVE', 8519, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2448, '2020-01-17 20:18:01', '2020-01-17 20:18:04', 'PHY1011', '', '-719581656', 'VALIDE', 'ACTIVE', 8520, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2449, '2020-01-17 20:18:16', '2020-01-17 20:18:20', 'PHY1011', '', '908658135', 'VALIDE', 'ACTIVE', 8521, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2450, '2020-01-17 20:18:27', '2020-01-17 20:18:30', 'PHY1011', '', '-1073981198', 'VALIDE', 'ACTIVE', 8522, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2451, '2020-01-17 20:18:39', '2020-01-17 20:18:48', 'PHY1011', '', '310870267', 'VALIDE', 'ACTIVE', 8523, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2452, '2020-01-17 20:18:56', '2020-01-17 20:18:59', 'PHY1011', '', '1250784493', 'VALIDE', 'ACTIVE', 8524, 205, 1262, 205);
INSERT INTO `est_inscrit` VALUES (2453, '2020-01-17 20:22:19', '2020-01-17 20:22:21', 'PHY1021', '', '843025778', 'VALIDE', 'ACTIVE', 8461, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2454, '2020-01-17 20:22:31', '2020-01-17 20:22:32', 'PHY1021', '', '-1668430969', 'VALIDE', 'ACTIVE', 8463, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2455, '2020-01-17 20:22:43', '2020-01-17 20:22:44', 'PHY1021', '', '741290008', 'VALIDE', 'ACTIVE', 8464, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2456, '2020-01-17 20:22:52', '2020-01-17 20:22:54', 'PHY1021', '', '-1309601235', 'VALIDE', 'ACTIVE', 8465, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2457, '2020-01-17 20:23:02', '2020-01-17 20:23:04', 'PHY1021', '', '-1744314579', 'VALIDE', 'ACTIVE', 8466, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2458, '2020-01-17 20:23:12', '2020-01-17 20:23:14', 'PHY1021', '', '368558054', 'VALIDE', 'ACTIVE', 8467, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2459, '2020-01-17 20:23:22', '2020-01-17 20:23:24', 'PHY1021', '', '1176174331', 'VALIDE', 'ACTIVE', 8468, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2460, '2020-01-17 20:23:33', '2020-01-17 20:23:34', 'PHY1021', '', '369467125', 'VALIDE', 'ACTIVE', 8469, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2461, '2020-01-17 20:23:42', '2020-01-17 20:23:44', 'PHY1021', '', '1793931751', 'VALIDE', 'ACTIVE', 8470, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2462, '2020-01-17 20:23:52', '2020-01-17 20:23:54', 'PHY1021', '', '177847081', 'VALIDE', 'ACTIVE', 8471, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2463, '2020-01-17 20:24:03', '2020-01-17 20:24:04', 'PHY1021', '', '1682502896', 'VALIDE', 'ACTIVE', 8472, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2464, '2020-01-17 20:24:21', '2020-01-17 20:24:22', 'PHY1021', '', '276185254', 'VALIDE', 'ACTIVE', 8473, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2465, '2020-01-17 20:24:30', '2020-01-17 20:24:33', 'PHY1021', '', '-1844188474', 'VALIDE', 'ACTIVE', 8474, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2466, '2020-01-17 20:24:42', '2020-01-17 20:24:44', 'PHY1021', '', '2022239965', 'VALIDE', 'ACTIVE', 8475, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2467, '2020-01-17 20:24:51', '2020-01-17 20:24:53', 'PHY1021', '', '-2074661625', 'VALIDE', 'ACTIVE', 8476, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2468, '2020-01-17 20:25:03', '2020-01-17 20:25:07', 'PHY1021', '', '-1091156053', 'VALIDE', 'ACTIVE', 8477, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2469, '2020-01-17 20:25:16', '2020-01-17 20:25:19', 'PHY1021', '', '-1887428373', 'VALIDE', 'ACTIVE', 8478, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2470, '2020-01-17 20:25:30', '2020-01-17 20:25:32', 'PHY1021', '', '92153858', 'VALIDE', 'ACTIVE', 8479, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2471, '2020-01-17 20:25:41', '2020-01-17 20:25:43', 'PHY1021', '', '-421817632', 'VALIDE', 'ACTIVE', 8480, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2472, '2020-01-17 20:25:59', '2020-01-17 20:26:01', 'PHY1021', '', '436665327', 'VALIDE', 'ACTIVE', 8481, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2473, '2020-01-17 20:26:11', '2020-01-17 20:26:13', 'PHY1021', '', '621787601', 'VALIDE', 'ACTIVE', 8482, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2474, '2020-01-17 20:26:22', '2020-01-17 20:26:23', 'PHY1021', '', '1575333342', 'VALIDE', 'ACTIVE', 8483, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2475, '2020-01-17 20:26:33', '2020-01-17 20:26:35', 'PHY1021', '', '-1142660620', 'VALIDE', 'ACTIVE', 8484, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2476, '2020-01-17 20:26:43', '2020-01-17 20:26:44', 'PHY1021', '', '-1196559094', 'VALIDE', 'ACTIVE', 8485, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2477, '2020-01-17 20:26:53', '2020-01-17 20:26:55', 'PHY1021', '', '1746393860', 'VALIDE', 'ACTIVE', 8486, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2478, '2020-01-17 20:27:05', '2020-01-17 20:27:07', 'PHY1021', '', '1645252030', 'VALIDE', 'ACTIVE', 8487, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2479, '2020-01-17 20:27:16', '2020-01-17 20:27:18', 'PHY1021', '', '-1109119302', 'VALIDE', 'ACTIVE', 8488, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2480, '2020-01-17 20:27:26', '2020-01-17 20:27:28', 'PHY1021', '', '-728957442', 'VALIDE', 'ACTIVE', 8489, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2481, '2020-01-17 20:27:35', '2020-01-17 20:27:36', 'PHY1021', '', '422539299', 'VALIDE', 'ACTIVE', 8490, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2482, '2020-01-17 20:27:45', '2020-01-17 20:27:47', 'PHY1021', '', '22222204', 'VALIDE', 'ACTIVE', 8491, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2483, '2020-01-17 20:28:05', '2020-01-17 20:28:07', 'PHY1021', '', '-128373162', 'VALIDE', 'ACTIVE', 8492, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2484, '2020-01-17 20:28:15', '2020-01-17 20:28:17', 'PHY1021', '', '805282203', 'VALIDE', 'ACTIVE', 8493, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2485, '2020-01-17 20:28:27', '2020-01-17 20:28:29', 'PHY1021', '', '-1351237472', 'VALIDE', 'ACTIVE', 8494, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2486, '2020-01-17 20:28:36', '2020-01-17 20:28:39', 'PHY1021', '', '208302154', 'VALIDE', 'ACTIVE', 8495, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2487, '2020-01-17 20:28:46', '2020-01-17 20:28:49', 'PHY1021', '', '-1687608686', 'VALIDE', 'ACTIVE', 8496, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2488, '2020-01-17 20:28:56', '2020-01-17 20:28:57', 'PHY1021', '', '382622358', 'VALIDE', 'ACTIVE', 8497, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2489, '2020-01-17 20:29:07', '2020-01-17 20:29:09', 'PHY1021', '', '1933831535', 'VALIDE', 'ACTIVE', 8498, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2490, '2020-01-17 20:29:17', '2020-01-17 20:29:18', 'PHY1021', '', '-1588633410', 'VALIDE', 'ACTIVE', 8499, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2491, '2020-01-17 20:29:27', '2020-01-17 20:29:28', 'PHY1021', '', '-1842077716', 'VALIDE', 'ACTIVE', 8500, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2492, '2020-01-17 20:29:37', '2020-01-17 20:29:40', 'PHY1021', '', '1315111414', 'VALIDE', 'ACTIVE', 8501, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2493, '2020-01-17 20:29:49', '2020-01-17 20:29:51', 'PHY1021', '', '2072327197', 'VALIDE', 'ACTIVE', 8502, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2494, '2020-01-17 20:30:03', '2020-01-17 20:30:04', 'PHY1021', '', '1935879315', 'VALIDE', 'ACTIVE', 8503, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2495, '2020-01-17 20:30:17', '2020-01-17 20:30:18', 'PHY1021', '', '934999649', 'VALIDE', 'ACTIVE', 8504, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2496, '2020-01-17 20:30:26', '2020-01-17 20:30:28', 'PHY1021', '', '952240704', 'VALIDE', 'ACTIVE', 8505, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2497, '2020-01-17 20:30:37', '2020-01-17 20:30:39', 'PHY1021', '', '1962952952', 'VALIDE', 'ACTIVE', 8506, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2498, '2020-01-17 20:30:46', '2020-01-17 20:30:48', 'PHY1021', '', '-885588466', 'VALIDE', 'ACTIVE', 8507, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2499, '2020-01-17 20:30:55', '2020-01-17 20:30:57', 'PHY1021', '', '-1622314235', 'VALIDE', 'ACTIVE', 8508, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2500, '2020-01-17 20:31:10', '2020-01-17 20:31:11', 'PHY1021', '', '1785106868', 'VALIDE', 'ACTIVE', 8509, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2501, '2020-01-17 20:31:21', '2020-01-17 20:31:25', 'PHY1021', '', '-86772340', 'VALIDE', 'ACTIVE', 8510, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2502, '2020-01-17 20:31:32', '2020-01-17 20:31:34', 'PHY1021', '', '817676733', 'VALIDE', 'ACTIVE', 8511, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2503, '2020-01-17 20:31:41', '2020-01-17 20:31:43', 'PHY1021', '', '-1193632665', 'VALIDE', 'ACTIVE', 8512, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2504, '2020-01-17 20:31:52', '2020-01-17 20:31:53', 'PHY1021', '', '-1917362018', 'VALIDE', 'ACTIVE', 8513, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2505, '2020-01-17 20:32:05', '2020-01-17 20:32:06', 'PHY1021', '', '-1488185990', 'VALIDE', 'ACTIVE', 8514, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2506, '2020-01-17 20:32:17', '2020-01-17 20:32:18', 'PHY1021', '', '1607646761', 'VALIDE', 'ACTIVE', 8515, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2507, '2020-01-17 20:32:26', '2020-01-17 20:32:29', 'PHY1021', '', '-1513425112', 'VALIDE', 'ACTIVE', 8516, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2508, '2020-01-17 20:32:37', '2020-01-17 20:32:39', 'PHY1021', '', '525487154', 'VALIDE', 'ACTIVE', 8517, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2509, '2020-01-17 20:32:47', '2020-01-17 20:32:49', 'PHY1021', '', '-892970203', 'VALIDE', 'ACTIVE', 8518, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2510, '2020-01-17 20:32:58', '2020-01-17 20:33:00', 'PHY1021', '', '1032251553', 'VALIDE', 'ACTIVE', 8519, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2511, '2020-01-17 20:33:06', '2020-01-17 20:33:08', 'PHY1021', '', '17802581', 'VALIDE', 'ACTIVE', 8520, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2512, '2020-01-17 20:33:19', '2020-01-17 20:33:22', 'PHY1021', '', '-891426005', 'VALIDE', 'ACTIVE', 8521, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2513, '2020-01-17 20:33:30', '2020-01-17 20:33:32', 'PHY1021', '', '1054805513', 'VALIDE', 'ACTIVE', 8522, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2514, '2020-01-17 20:33:44', '2020-01-17 20:33:46', 'PHY1021', '', '-1256081343', 'VALIDE', 'ACTIVE', 8523, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2515, '2020-01-17 20:33:57', '2020-01-17 20:33:59', 'PHY1021', '', '-183842038', 'VALIDE', 'ACTIVE', 8524, 205, 1263, 205);
INSERT INTO `est_inscrit` VALUES (2516, '2020-01-17 20:37:03', '2020-01-17 20:37:04', 'ING1011', '', '-1106130017', 'VALIDE', 'ACTIVE', 8461, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2517, '2020-01-17 20:37:13', '2020-01-17 20:37:15', 'ING1011', '', '1016945111', 'VALIDE', 'ACTIVE', 8463, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2518, '2020-01-17 20:37:24', '2020-01-17 20:37:28', 'ING1011', '', '1570096708', 'VALIDE', 'ACTIVE', 8464, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2519, '2020-01-17 20:37:37', '2020-01-17 20:37:39', 'ING1011', '', '1418875740', 'VALIDE', 'ACTIVE', 8465, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2520, '2020-01-17 20:37:47', '2020-01-17 20:37:50', 'ING1011', '', '-1026904886', 'VALIDE', 'ACTIVE', 8466, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2521, '2020-01-17 20:37:58', '2020-01-17 20:38:00', 'ING1011', '', '-1385456276', 'VALIDE', 'ACTIVE', 8467, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2522, '2020-01-17 20:38:10', '2020-01-17 20:38:12', 'ING1011', '', '-295249503', 'VALIDE', 'ACTIVE', 8468, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2523, '2020-01-17 20:38:20', '2020-01-17 20:38:22', 'ING1011', '', '-1590668528', 'VALIDE', 'ACTIVE', 8469, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2524, '2020-01-17 20:38:29', '2020-01-17 20:38:31', 'ING1011', '', '-1036796483', 'VALIDE', 'ACTIVE', 8470, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2525, '2020-01-17 20:38:49', '2020-01-17 20:38:51', 'ING1011', '', '1184880944', 'VALIDE', 'ACTIVE', 8471, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2526, '2020-01-17 20:39:01', '2020-01-17 20:39:03', 'ING1011', '', '370646586', 'VALIDE', 'ACTIVE', 8472, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2527, '2020-01-17 20:39:09', '2020-01-17 20:39:11', 'ING1011', '', '1710744226', 'VALIDE', 'ACTIVE', 8473, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2528, '2020-01-17 20:39:19', '2020-01-17 20:39:21', 'ING1011', '', '2057104109', 'VALIDE', 'ACTIVE', 8474, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2529, '2020-01-17 20:39:32', '2020-01-17 20:39:35', 'ING1011', '', '-1220117743', 'VALIDE', 'ACTIVE', 8475, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2530, '2020-01-17 20:39:44', '2020-01-17 20:39:46', 'ING1011', '', '1182797715', 'VALIDE', 'ACTIVE', 8476, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2531, '2020-01-17 20:39:55', '2020-01-17 20:39:57', 'ING1011', '', '1794127651', 'VALIDE', 'ACTIVE', 8477, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2532, '2020-01-17 20:40:04', '2020-01-17 20:40:07', 'ING1011', '', '-1897429689', 'VALIDE', 'ACTIVE', 8478, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2533, '2020-01-17 20:40:13', '2020-01-17 20:40:16', 'ING1011', '', '2065718481', 'VALIDE', 'ACTIVE', 8479, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2534, '2020-01-17 20:40:25', '2020-01-17 20:40:27', 'ING1011', '', '-1850730029', 'VALIDE', 'ACTIVE', 8480, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2535, '2020-01-17 20:40:35', '2020-01-17 20:40:37', 'ING1011', '', '521659286', 'VALIDE', 'ACTIVE', 8481, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2536, '2020-01-17 20:40:47', '2020-01-17 20:40:49', 'ING1011', '', '611854988', 'VALIDE', 'ACTIVE', 8482, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2537, '2020-01-17 20:41:00', '2020-01-17 20:41:01', 'ING1011', '', '-890075749', 'VALIDE', 'ACTIVE', 8483, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2538, '2020-01-17 20:41:11', '2020-01-17 20:41:14', 'ING1011', '', '1854536241', 'VALIDE', 'ACTIVE', 8484, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2539, '2020-01-17 20:41:25', '2020-01-17 20:41:27', 'ING1011', '', '848854681', 'VALIDE', 'ACTIVE', 8485, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2540, '2020-01-17 20:41:33', '2020-01-17 20:41:36', 'ING1011', '', '-150507793', 'VALIDE', 'ACTIVE', 8486, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2541, '2020-01-17 20:41:44', '2020-01-17 20:41:47', 'ING1011', '', '656366415', 'VALIDE', 'ACTIVE', 8487, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2542, '2020-01-17 20:41:58', '2020-01-17 20:41:59', 'ING1011', '', '-1773540190', 'VALIDE', 'ACTIVE', 8488, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2543, '2020-01-17 20:42:07', '2020-01-17 20:42:09', 'ING1011', '', '718987130', 'VALIDE', 'ACTIVE', 8489, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2544, '2020-01-17 20:42:19', '2020-01-17 20:42:22', 'ING1011', '', '-920151459', 'VALIDE', 'ACTIVE', 8490, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2545, '2020-01-17 20:42:33', '2020-01-17 20:42:35', 'ING1011', '', '948852066', 'VALIDE', 'ACTIVE', 8491, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2546, '2020-01-17 20:42:46', '2020-01-17 20:42:48', 'ING1011', '', '784278906', 'VALIDE', 'ACTIVE', 8492, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2547, '2020-01-17 20:42:54', '2020-01-17 20:42:56', 'ING1011', '', '-1290221322', 'VALIDE', 'ACTIVE', 8493, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2548, '2020-01-17 20:43:02', '2020-01-17 20:43:04', 'ING1011', '', '-1676070067', 'VALIDE', 'ACTIVE', 8494, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2549, '2020-01-17 20:43:13', '2020-01-17 20:43:14', 'ING1011', '', '-961535632', 'VALIDE', 'ACTIVE', 8495, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2550, '2020-01-17 20:43:22', '2020-01-17 20:43:24', 'ING1011', '', '-310270676', 'VALIDE', 'ACTIVE', 8496, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2551, '2020-01-17 20:43:32', '2020-01-17 20:43:38', 'ING1011', '', '1153251559', 'VALIDE', 'ACTIVE', 8497, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2552, '2020-01-17 20:43:47', '2020-01-17 20:43:49', 'ING1011', '', '1578113257', 'VALIDE', 'ACTIVE', 8498, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2553, '2020-01-17 20:43:58', '2020-01-17 20:43:59', 'ING1011', '', '-435615625', 'VALIDE', 'ACTIVE', 8499, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2554, '2020-01-17 20:44:07', '2020-01-17 20:44:09', 'ING1011', '', '1141735518', 'VALIDE', 'ACTIVE', 8500, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2555, '2020-01-17 20:44:21', '2020-01-17 20:44:22', 'ING1011', '', '-2002522837', 'VALIDE', 'ACTIVE', 8501, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2556, '2020-01-17 20:44:31', '2020-01-17 20:44:34', 'ING1011', '', '-249910410', 'VALIDE', 'ACTIVE', 8502, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2557, '2020-01-17 20:44:45', '2020-01-17 20:44:47', 'ING1011', '', '1402490905', 'VALIDE', 'ACTIVE', 8503, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2558, '2020-01-17 20:44:53', '2020-01-17 20:44:55', 'ING1011', '', '-587558685', 'VALIDE', 'ACTIVE', 8504, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2559, '2020-01-17 20:45:05', '2020-01-17 20:45:07', 'ING1011', '', '1224761023', 'VALIDE', 'ACTIVE', 8505, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2560, '2020-01-17 20:45:15', '2020-01-17 20:45:17', 'ING1011', '', '325414838', 'VALIDE', 'ACTIVE', 8506, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2561, '2020-01-17 20:45:25', '2020-01-17 20:45:27', 'ING1011', '', '1649101003', 'VALIDE', 'ACTIVE', 8507, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2562, '2020-01-17 20:45:35', '2020-01-17 20:45:36', 'ING1011', '', '-670685451', 'VALIDE', 'ACTIVE', 8508, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2563, '2020-01-17 20:45:44', '2020-01-17 20:45:45', 'ING1011', '', '-857261876', 'VALIDE', 'ACTIVE', 8509, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2564, '2020-01-17 20:45:54', '2020-01-17 20:45:57', 'ING1011', '', '946027246', 'VALIDE', 'ACTIVE', 8510, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2565, '2020-01-17 20:46:03', '2020-01-17 20:46:05', 'ING1011', '', '1830691951', 'VALIDE', 'ACTIVE', 8511, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2566, '2020-01-17 20:46:14', '2020-01-17 20:46:15', 'ING1011', '', '-251632451', 'VALIDE', 'ACTIVE', 8512, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2567, '2020-01-17 20:46:24', '2020-01-17 20:46:25', 'ING1011', '', '1122496487', 'VALIDE', 'ACTIVE', 8513, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2568, '2020-01-17 20:46:37', '2020-01-17 20:46:40', 'ING1011', '', '1011947892', 'VALIDE', 'ACTIVE', 8514, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2569, '2020-01-17 20:46:50', '2020-01-17 20:46:52', 'ING1011', '', '-178681945', 'VALIDE', 'ACTIVE', 8515, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2570, '2020-01-17 20:46:57', '2020-01-17 20:47:00', 'ING1011', '', '-827845147', 'VALIDE', 'ACTIVE', 8516, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2571, '2020-01-17 20:47:10', '2020-01-17 20:47:12', 'ING1011', '', '1857787330', 'VALIDE', 'ACTIVE', 8517, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2572, '2020-01-17 20:47:23', '2020-01-17 20:47:25', 'ING1011', '', '675614119', 'VALIDE', 'ACTIVE', 8518, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2573, '2020-01-17 20:47:35', '2020-01-17 20:47:38', 'ING1011', '', '1018679525', 'VALIDE', 'ACTIVE', 8519, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2574, '2020-01-17 20:47:47', '2020-01-17 20:47:49', 'ING1011', '', '-1196804280', 'VALIDE', 'ACTIVE', 8520, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2575, '2020-01-17 20:47:56', '2020-01-17 20:47:58', 'ING1011', '', '-1170887628', 'VALIDE', 'ACTIVE', 8521, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2576, '2020-01-17 20:48:08', '2020-01-17 20:48:10', 'ING1011', '', '985758516', 'VALIDE', 'ACTIVE', 8522, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2577, '2020-01-17 20:48:19', '2020-01-17 20:48:21', 'ING1011', '', '-546574234', 'VALIDE', 'ACTIVE', 8523, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2578, '2020-01-17 20:48:33', '2020-01-17 20:48:35', 'ING1011', '', '-1005481816', 'VALIDE', 'ACTIVE', 8524, 205, 1264, 205);
INSERT INTO `est_inscrit` VALUES (2579, '2020-01-17 20:51:22', '2020-01-17 20:51:23', 'PHY1031', '', '1330488859', 'VALIDE', 'ACTIVE', 8461, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2580, '2020-01-17 20:51:31', '2020-01-17 20:51:32', 'PHY1031', '', '-1566628766', 'VALIDE', 'ACTIVE', 8463, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2581, '2020-01-17 20:51:44', '2020-01-17 20:51:46', 'PHY1031', '', '-1090154756', 'VALIDE', 'ACTIVE', 8464, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2582, '2020-01-17 20:51:54', '2020-01-17 20:51:56', 'PHY1031', '', '-1195367087', 'VALIDE', 'ACTIVE', 8465, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2583, '2020-01-17 20:52:05', '2020-01-17 20:52:07', 'PHY1031', '', '1882283214', 'VALIDE', 'ACTIVE', 8466, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2584, '2020-01-17 20:52:14', '2020-01-17 20:52:16', 'PHY1031', '', '-685205256', 'VALIDE', 'ACTIVE', 8467, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2585, '2020-01-17 20:52:24', '2020-01-17 20:52:28', 'PHY1031', '', '617104084', 'VALIDE', 'ACTIVE', 8468, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2586, '2020-01-17 20:52:36', '2020-01-17 20:52:38', 'PHY1031', '', '324625114', 'VALIDE', 'ACTIVE', 8469, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2587, '2020-01-17 20:52:46', '2020-01-17 20:52:47', 'PHY1031', '', '598252946', 'VALIDE', 'ACTIVE', 8470, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2588, '2020-01-17 20:52:56', '2020-01-17 20:52:58', 'PHY1031', '', '1600807513', 'VALIDE', 'ACTIVE', 8471, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2589, '2020-01-17 20:53:06', '2020-01-17 20:53:10', 'PHY1031', '', '327136267', 'VALIDE', 'ACTIVE', 8472, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2590, '2020-01-17 20:53:17', '2020-01-17 20:53:21', 'PHY1031', '', '-86211864', 'VALIDE', 'ACTIVE', 8473, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2591, '2020-01-17 20:53:29', '2020-01-17 20:53:30', 'PHY1031', '', '-1257407949', 'VALIDE', 'ACTIVE', 8474, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2592, '2020-01-17 20:53:40', '2020-01-17 20:53:42', 'PHY1031', '', '535373970', 'VALIDE', 'ACTIVE', 8475, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2593, '2020-01-17 20:53:52', '2020-01-17 20:53:54', 'PHY1031', '', '-879185079', 'VALIDE', 'ACTIVE', 8476, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2594, '2020-01-17 20:54:01', '2020-01-17 20:54:04', 'PHY1031', '', '-2034991410', 'VALIDE', 'ACTIVE', 8477, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2595, '2020-01-17 20:54:14', '2020-01-17 20:54:15', 'PHY1031', '', '-1823261563', 'VALIDE', 'ACTIVE', 8478, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2596, '2020-01-17 20:54:26', '2020-01-17 20:54:28', 'PHY1031', '', '-113592611', 'VALIDE', 'ACTIVE', 8479, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2597, '2020-01-17 20:54:36', '2020-01-17 20:54:38', 'PHY1031', '', '1493455808', 'VALIDE', 'ACTIVE', 8480, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2598, '2020-01-17 20:54:46', '2020-01-17 20:54:48', 'PHY1031', '', '-1658154126', 'VALIDE', 'ACTIVE', 8481, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2599, '2020-01-17 20:55:01', '2020-01-17 20:55:02', 'PHY1031', '', '-2088256957', 'VALIDE', 'ACTIVE', 8482, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2600, '2020-01-17 20:55:11', '2020-01-17 20:55:13', 'PHY1031', '', '1597412290', 'VALIDE', 'ACTIVE', 8483, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2601, '2020-01-17 20:55:24', '2020-01-17 20:55:29', 'PHY1031', '', '563197536', 'VALIDE', 'ACTIVE', 8484, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2602, '2020-01-17 20:55:39', '2020-01-17 20:55:41', 'PHY1031', '', '-1458471948', 'VALIDE', 'ACTIVE', 8485, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2603, '2020-01-17 20:55:54', '2020-01-17 20:55:56', 'PHY1031', '', '1735604476', 'VALIDE', 'ACTIVE', 8486, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2604, '2020-01-17 20:56:03', '2020-01-17 20:56:08', 'PHY1031', '', '586781939', 'VALIDE', 'ACTIVE', 8487, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2605, '2020-01-17 20:56:16', '2020-01-17 20:56:18', 'PHY1031', '', '-1089342858', 'VALIDE', 'ACTIVE', 8488, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2606, '2020-01-17 20:56:29', '2020-01-17 20:56:31', 'PHY1031', '', '-748383341', 'VALIDE', 'ACTIVE', 8489, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2607, '2020-01-17 20:56:42', '2020-01-17 20:56:43', 'PHY1031', '', '-504108566', 'VALIDE', 'ACTIVE', 8490, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2608, '2020-01-17 20:56:53', '2020-01-17 20:56:55', 'PHY1031', '', '1581102468', 'VALIDE', 'ACTIVE', 8491, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2609, '2020-01-17 20:57:06', '2020-01-17 20:57:09', 'PHY1031', '', '-1511049884', 'VALIDE', 'ACTIVE', 8492, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2610, '2020-01-17 20:57:15', '2020-01-17 20:57:17', 'PHY1031', '', '322050751', 'VALIDE', 'ACTIVE', 8493, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2611, '2020-01-17 20:57:24', '2020-01-17 20:57:26', 'PHY1031', '', '2101011606', 'VALIDE', 'ACTIVE', 8494, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2612, '2020-01-17 20:57:38', '2020-01-17 20:57:39', 'PHY1031', '', '-672488380', 'VALIDE', 'ACTIVE', 8495, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2613, '2020-01-17 20:57:49', '2020-01-17 20:57:50', 'PHY1031', '', '625304816', 'VALIDE', 'ACTIVE', 8496, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2614, '2020-01-17 20:58:00', '2020-01-17 20:58:02', 'PHY1031', '', '1677749078', 'VALIDE', 'ACTIVE', 8497, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2615, '2020-01-17 20:58:11', '2020-01-17 20:58:13', 'PHY1031', '', '1715142204', 'VALIDE', 'ACTIVE', 8498, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2616, '2020-01-17 20:58:21', '2020-01-17 20:58:24', 'PHY1031', '', '-37624513', 'VALIDE', 'ACTIVE', 8499, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2617, '2020-01-17 20:58:33', '2020-01-17 20:58:35', 'PHY1031', '', '-192515999', 'VALIDE', 'ACTIVE', 8500, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2618, '2020-01-17 20:58:44', '2020-01-17 20:58:47', 'PHY1031', '', '734308854', 'VALIDE', 'ACTIVE', 8501, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2619, '2020-01-17 20:58:56', '2020-01-17 20:58:57', 'PHY1031', '', '-794401689', 'VALIDE', 'ACTIVE', 8502, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2620, '2020-01-17 20:59:04', '2020-01-17 20:59:06', 'PHY1031', '', '-1071056228', 'VALIDE', 'ACTIVE', 8503, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2621, '2020-01-17 20:59:14', '2020-01-17 20:59:17', 'PHY1031', '', '-700942875', 'VALIDE', 'ACTIVE', 8504, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2622, '2020-01-17 20:59:26', '2020-01-17 20:59:28', 'PHY1031', '', '-1361027673', 'VALIDE', 'ACTIVE', 8505, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2623, '2020-01-17 20:59:39', '2020-01-17 20:59:40', 'PHY1031', '', '-1993996413', 'VALIDE', 'ACTIVE', 8506, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2624, '2020-01-17 20:59:51', '2020-01-17 20:59:53', 'PHY1031', '', '-1200605332', 'VALIDE', 'ACTIVE', 8507, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2625, '2020-01-17 21:00:01', '2020-01-17 21:00:03', 'PHY1031', '', '1300840817', 'VALIDE', 'ACTIVE', 8508, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2626, '2020-01-17 21:00:11', '2020-01-17 21:00:13', 'PHY1031', '', '-1197293592', 'VALIDE', 'ACTIVE', 8509, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2627, '2020-01-17 21:00:22', '2020-01-17 21:00:23', 'PHY1031', '', '-912228541', 'VALIDE', 'ACTIVE', 8510, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2628, '2020-01-17 21:00:35', '2020-01-17 21:00:36', 'PHY1031', '', '-47792391', 'VALIDE', 'ACTIVE', 8511, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2629, '2020-01-17 21:00:44', '2020-01-17 21:00:46', 'PHY1031', '', '-509709323', 'VALIDE', 'ACTIVE', 8512, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2630, '2020-01-17 21:00:55', '2020-01-17 21:00:56', 'PHY1031', '', '-1212881576', 'VALIDE', 'ACTIVE', 8513, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2631, '2020-01-17 21:01:04', '2020-01-17 21:01:06', 'PHY1031', '', '-1810814154', 'VALIDE', 'ACTIVE', 8514, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2632, '2020-01-17 21:01:14', '2020-01-17 21:01:15', 'PHY1031', '', '-392760967', 'VALIDE', 'ACTIVE', 8515, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2633, '2020-01-17 21:01:25', '2020-01-17 21:01:28', 'PHY1031', '', '847209649', 'VALIDE', 'ACTIVE', 8516, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2634, '2020-01-17 21:01:40', '2020-01-17 21:01:42', 'PHY1031', '', '459451303', 'VALIDE', 'ACTIVE', 8517, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2635, '2020-01-17 21:01:52', '2020-01-17 21:01:54', 'PHY1031', '', '1624809069', 'VALIDE', 'ACTIVE', 8518, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2636, '2020-01-17 21:02:05', '2020-01-17 21:02:06', 'PHY1031', '', '1472938433', 'VALIDE', 'ACTIVE', 8519, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2637, '2020-01-17 21:02:16', '2020-01-17 21:02:18', 'PHY1031', '', '-1976822113', 'VALIDE', 'ACTIVE', 8520, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2638, '2020-01-17 21:02:27', '2020-01-17 21:02:29', 'PHY1031', '', '1982680156', 'VALIDE', 'ACTIVE', 8521, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2639, '2020-01-17 21:02:39', '2020-01-17 21:02:41', 'PHY1031', '', '-1136662336', 'VALIDE', 'ACTIVE', 8522, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2640, '2020-01-17 21:02:50', '2020-01-17 21:02:52', 'PHY1031', '', '1222559819', 'VALIDE', 'ACTIVE', 8523, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2641, '2020-01-17 21:03:00', '2020-01-17 21:03:02', 'PHY1031', '', '-626236187', 'VALIDE', 'ACTIVE', 8524, 205, 1265, 205);
INSERT INTO `est_inscrit` VALUES (2642, '2020-01-17 21:17:48', '2020-01-17 21:17:49', 'COM1011', '', '-924622685', 'VALIDE', 'ACTIVE', 8461, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2643, '2020-01-17 21:17:58', '2020-01-17 21:18:00', 'COM1011', '', '-609568933', 'VALIDE', 'ACTIVE', 8463, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2644, '2020-01-17 21:18:09', '2020-01-17 21:18:11', 'COM1011', '', '-22640296', 'VALIDE', 'ACTIVE', 8464, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2645, '2020-01-17 21:18:18', '2020-01-17 21:18:20', 'COM1011', '', '-1563755387', 'VALIDE', 'ACTIVE', 8465, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2646, '2020-01-17 21:18:30', '2020-01-17 21:18:34', 'COM1011', '', '1366405358', 'VALIDE', 'ACTIVE', 8466, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2647, '2020-01-17 21:18:41', '2020-01-17 21:18:43', 'COM1011', '', '2054608010', 'VALIDE', 'ACTIVE', 8467, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2648, '2020-01-17 21:18:53', '2020-01-17 21:18:55', 'COM1011', '', '2087247656', 'VALIDE', 'ACTIVE', 8468, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2649, '2020-01-17 21:19:11', '2020-01-17 21:19:12', 'COM1011', '', '481441217', 'VALIDE', 'ACTIVE', 8469, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2650, '2020-01-17 21:19:20', '2020-01-17 21:19:22', 'COM1011', '', '-1345525887', 'VALIDE', 'ACTIVE', 8470, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2651, '2020-01-17 21:19:28', '2020-01-17 21:19:31', 'COM1011', '', '797082901', 'VALIDE', 'ACTIVE', 8471, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2652, '2020-01-17 21:19:40', '2020-01-17 21:19:42', 'COM1011', '', '-1193722500', 'VALIDE', 'ACTIVE', 8472, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2653, '2020-01-17 21:19:49', '2020-01-17 21:19:50', 'COM1011', '', '-572585371', 'VALIDE', 'ACTIVE', 8473, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2654, '2020-01-17 21:19:58', '2020-01-17 21:19:59', 'COM1011', '', '-923551510', 'VALIDE', 'ACTIVE', 8474, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2655, '2020-01-17 21:20:10', '2020-01-17 21:20:14', 'COM1011', '', '1954943284', 'VALIDE', 'ACTIVE', 8475, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2656, '2020-01-17 21:20:23', '2020-01-17 21:20:25', 'COM1011', '', '-385908418', 'VALIDE', 'ACTIVE', 8476, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2657, '2020-01-17 21:20:34', '2020-01-17 21:20:36', 'COM1011', '', '-2089705687', 'VALIDE', 'ACTIVE', 8477, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2658, '2020-01-17 21:20:45', '2020-01-17 21:20:47', 'COM1011', '', '980686878', 'VALIDE', 'ACTIVE', 8478, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2659, '2020-01-17 21:20:56', '2020-01-17 21:20:57', 'COM1011', '', '-1085236192', 'VALIDE', 'ACTIVE', 8479, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2660, '2020-01-17 21:21:07', '2020-01-17 21:21:09', 'COM1011', '', '-1778858293', 'VALIDE', 'ACTIVE', 8480, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2661, '2020-01-17 21:21:18', '2020-01-17 21:21:21', 'COM1011', '', '-1797412451', 'VALIDE', 'ACTIVE', 8481, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2662, '2020-01-17 21:21:28', '2020-01-17 21:21:30', 'COM1011', '', '444532682', 'VALIDE', 'ACTIVE', 8482, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2663, '2020-01-17 21:21:42', '2020-01-17 21:21:44', 'COM1011', '', '1414574383', 'VALIDE', 'ACTIVE', 8483, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2664, '2020-01-17 21:21:52', '2020-01-17 21:21:54', 'COM1011', '', '-829468054', 'VALIDE', 'ACTIVE', 8484, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2665, '2020-01-17 21:22:06', '2020-01-17 21:22:08', 'COM1011', '', '804684511', 'VALIDE', 'ACTIVE', 8485, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2666, '2020-01-17 21:22:17', '2020-01-17 21:22:20', 'COM1011', '', '-697387105', 'VALIDE', 'ACTIVE', 8486, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2667, '2020-01-17 21:22:28', '2020-01-17 21:22:30', 'COM1011', '', '-1747764326', 'VALIDE', 'ACTIVE', 8487, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2668, '2020-01-17 21:22:37', '2020-01-17 21:22:38', 'COM1011', '', '-1061517118', 'VALIDE', 'ACTIVE', 8488, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2669, '2020-01-17 21:22:48', '2020-01-17 21:22:50', 'COM1011', '', '1332741666', 'VALIDE', 'ACTIVE', 8489, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2670, '2020-01-17 21:22:57', '2020-01-17 21:22:59', 'COM1011', '', '-1262173691', 'VALIDE', 'ACTIVE', 8490, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2671, '2020-01-17 21:23:10', '2020-01-17 21:23:12', 'COM1011', '', '-1502686360', 'VALIDE', 'ACTIVE', 8491, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2672, '2020-01-17 21:23:21', '2020-01-17 21:23:23', 'COM1011', '', '-913495129', 'VALIDE', 'ACTIVE', 8492, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2673, '2020-01-17 21:23:34', '2020-01-17 21:23:36', 'COM1011', '', '-1338083283', 'VALIDE', 'ACTIVE', 8493, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2674, '2020-01-17 21:23:45', '2020-01-17 21:23:47', 'COM1011', '', '628754946', 'VALIDE', 'ACTIVE', 8494, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2675, '2020-01-17 21:23:55', '2020-01-17 21:23:57', 'COM1011', '', '2129332484', 'VALIDE', 'ACTIVE', 8495, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2676, '2020-01-17 21:24:05', '2020-01-17 21:24:07', 'COM1011', '', '-995342452', 'VALIDE', 'ACTIVE', 8496, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2677, '2020-01-17 21:24:14', '2020-01-17 21:24:16', 'COM1011', '', '-1048039775', 'VALIDE', 'ACTIVE', 8497, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2678, '2020-01-17 21:24:25', '2020-01-17 21:24:26', 'COM1011', '', '2041363072', 'VALIDE', 'ACTIVE', 8498, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2679, '2020-01-17 21:24:36', '2020-01-17 21:24:38', 'COM1011', '', '-1920227981', 'VALIDE', 'ACTIVE', 8499, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2680, '2020-01-17 21:24:51', '2020-01-17 21:24:53', 'COM1011', '', '1406281765', 'VALIDE', 'ACTIVE', 8500, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2681, '2020-01-17 21:25:03', '2020-01-17 21:25:05', 'COM1011', '', '-2100238832', 'VALIDE', 'ACTIVE', 8501, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2682, '2020-01-17 21:25:16', '2020-01-17 21:25:18', 'COM1011', '', '-694729614', 'VALIDE', 'ACTIVE', 8502, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2683, '2020-01-17 21:25:24', '2020-01-17 21:25:26', 'COM1011', '', '-2003939541', 'VALIDE', 'ACTIVE', 8503, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2684, '2020-01-17 21:25:36', '2020-01-17 21:25:38', 'COM1011', '', '1618752397', 'VALIDE', 'ACTIVE', 8504, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2685, '2020-01-17 21:25:45', '2020-01-17 21:25:46', 'COM1011', '', '-228794314', 'VALIDE', 'ACTIVE', 8505, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2686, '2020-01-17 21:25:57', '2020-01-17 21:25:58', 'COM1011', '', '97653857', 'VALIDE', 'ACTIVE', 8506, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2687, '2020-01-17 21:26:06', '2020-01-17 21:26:09', 'COM1011', '', '1104630053', 'VALIDE', 'ACTIVE', 8507, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2688, '2020-01-17 21:26:18', '2020-01-17 21:26:20', 'COM1011', '', '973533142', 'VALIDE', 'ACTIVE', 8508, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2689, '2020-01-17 21:26:29', '2020-01-17 21:26:32', 'COM1011', '', '83866031', 'VALIDE', 'ACTIVE', 8509, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2690, '2020-01-17 21:26:46', '2020-01-17 21:26:49', 'COM1011', '', '-262660877', 'VALIDE', 'ACTIVE', 8510, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2691, '2020-01-17 21:26:59', '2020-01-17 21:27:01', 'COM1011', '', '-452229635', 'VALIDE', 'ACTIVE', 8511, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2692, '2020-01-17 21:27:10', '2020-01-17 21:27:16', 'COM1011', '', '1992727145', 'VALIDE', 'ACTIVE', 8512, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2693, '2020-01-17 21:27:26', '2020-01-17 21:27:28', 'COM1011', '', '-1105899658', 'VALIDE', 'ACTIVE', 8513, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2694, '2020-01-17 21:27:36', '2020-01-17 21:27:37', 'COM1011', '', '-637268227', 'VALIDE', 'ACTIVE', 8514, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2695, '2020-01-17 21:27:45', '2020-01-17 21:27:47', 'COM1011', '', '256603975', 'VALIDE', 'ACTIVE', 8515, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2696, '2020-01-17 21:27:55', '2020-01-17 21:27:57', 'COM1011', '', '-412019170', 'VALIDE', 'ACTIVE', 8516, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2697, '2020-01-17 21:28:07', '2020-01-17 21:28:10', 'COM1011', '', '-126086689', 'VALIDE', 'ACTIVE', 8517, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2698, '2020-01-17 21:28:23', '2020-01-17 21:28:24', 'COM1011', '', '1782489053', 'VALIDE', 'ACTIVE', 8518, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2699, '2020-01-17 21:28:36', '2020-01-17 21:28:38', 'COM1011', '', '-1207966215', 'VALIDE', 'ACTIVE', 8519, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2700, '2020-01-17 21:28:47', '2020-01-17 21:28:48', 'COM1011', '', '-2000320917', 'VALIDE', 'ACTIVE', 8520, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2701, '2020-01-17 21:28:58', '2020-01-17 21:29:02', 'COM1011', '', '595314016', 'VALIDE', 'ACTIVE', 8521, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2702, '2020-01-17 21:29:11', '2020-01-17 21:29:14', 'COM1011', '', '-1648494454', 'VALIDE', 'ACTIVE', 8522, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2703, '2020-01-17 21:29:22', '2020-01-17 21:29:24', 'COM1011', '', '-136297841', 'VALIDE', 'ACTIVE', 8523, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2704, '2020-01-17 21:29:31', '2020-01-17 21:29:32', 'COM1011', '', '-1948322451', 'VALIDE', 'ACTIVE', 8524, 205, 1918, 205);
INSERT INTO `est_inscrit` VALUES (2705, '2020-01-17 21:32:32', '2020-01-17 21:32:35', 'HUM1011', '', '-577178230', 'VALIDE', 'ACTIVE', 8461, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2706, '2020-01-17 21:32:43', '2020-01-17 21:32:45', 'HUM1011', '', '-394688474', 'VALIDE', 'ACTIVE', 8463, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2707, '2020-01-17 21:32:59', '2020-01-17 21:33:01', 'HUM1011', '', '-1322444682', 'VALIDE', 'ACTIVE', 8464, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2708, '2020-01-17 21:33:09', '2020-01-17 21:33:12', 'HUM1011', '', '2006483713', 'VALIDE', 'ACTIVE', 8465, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2709, '2020-01-17 21:33:20', '2020-01-17 21:33:21', 'HUM1011', '', '-1130483631', 'VALIDE', 'ACTIVE', 8466, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2710, '2020-01-17 21:33:33', '2020-01-17 21:33:34', 'HUM1011', '', '794248742', 'VALIDE', 'ACTIVE', 8467, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2711, '2020-01-17 21:33:44', '2020-01-17 21:33:46', 'HUM1011', '', '544485998', 'VALIDE', 'ACTIVE', 8468, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2712, '2020-01-17 21:34:02', '2020-01-17 21:34:03', 'HUM1011', '', '1898976795', 'VALIDE', 'ACTIVE', 8469, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2713, '2020-01-17 21:34:13', '2020-01-17 21:34:15', 'HUM1011', '', '-1873737057', 'VALIDE', 'ACTIVE', 8470, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2714, '2020-01-17 21:34:26', '2020-01-17 21:34:27', 'HUM1011', '', '-1664347935', 'VALIDE', 'ACTIVE', 8471, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2715, '2020-01-17 21:34:41', '2020-01-17 21:34:43', 'HUM1011', '', '-1723242000', 'VALIDE', 'ACTIVE', 8472, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2716, '2020-01-17 21:34:53', '2020-01-17 21:34:55', 'HUM1011', '', '-1969777090', 'VALIDE', 'ACTIVE', 8473, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2717, '2020-01-17 21:35:07', '2020-01-17 21:35:10', 'HUM1011', '', '1280717567', 'VALIDE', 'ACTIVE', 8474, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2718, '2020-01-17 21:35:23', '2020-01-17 21:35:25', 'HUM1011', '', '-259563129', 'VALIDE', 'ACTIVE', 8475, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2719, '2020-01-17 21:35:38', '2020-01-17 21:35:41', 'HUM1011', '', '1165202112', 'VALIDE', 'ACTIVE', 8476, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2720, '2020-01-17 21:35:50', '2020-01-17 21:35:52', 'HUM1011', '', '-180027785', 'VALIDE', 'ACTIVE', 8477, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2721, '2020-01-17 21:36:03', '2020-01-17 21:36:05', 'HUM1011', '', '981102450', 'VALIDE', 'ACTIVE', 8478, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2722, '2020-01-17 21:36:15', '2020-01-17 21:36:17', 'HUM1011', '', '-675563698', 'VALIDE', 'ACTIVE', 8479, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2723, '2020-01-17 21:36:28', '2020-01-17 21:36:29', 'HUM1011', '', '453387858', 'VALIDE', 'ACTIVE', 8480, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2724, '2020-01-17 21:36:40', '2020-01-17 21:36:42', 'HUM1011', '', '799628439', 'VALIDE', 'ACTIVE', 8481, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2725, '2020-01-17 21:36:53', '2020-01-17 21:36:58', 'HUM1011', '', '1086260827', 'VALIDE', 'ACTIVE', 8482, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2726, '2020-01-17 21:37:05', '2020-01-17 21:37:07', 'HUM1011', '', '576510885', 'VALIDE', 'ACTIVE', 8483, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2727, '2020-01-17 21:37:15', '2020-01-17 21:37:17', 'HUM1011', '', '1888071215', 'VALIDE', 'ACTIVE', 8484, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2728, '2020-01-17 21:37:25', '2020-01-17 21:37:27', 'HUM1011', '', '-1142059019', 'VALIDE', 'ACTIVE', 8485, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2729, '2020-01-17 21:37:37', '2020-01-17 21:37:39', 'HUM1011', '', '-904535001', 'VALIDE', 'ACTIVE', 8486, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2730, '2020-01-17 21:37:50', '2020-01-17 21:37:51', 'HUM1011', '', '-79284659', 'VALIDE', 'ACTIVE', 8487, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2731, '2020-01-17 21:38:07', '2020-01-17 21:38:09', 'HUM1011', '', '1181333238', 'VALIDE', 'ACTIVE', 8488, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2732, '2020-01-17 21:38:18', '2020-01-17 21:38:20', 'HUM1011', '', '1680053197', 'VALIDE', 'ACTIVE', 8489, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2733, '2020-01-17 21:38:30', '2020-01-17 21:38:32', 'HUM1011', '', '1360255266', 'VALIDE', 'ACTIVE', 8490, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2734, '2020-01-17 21:38:39', '2020-01-17 21:38:42', 'HUM1011', '', '-1020779084', 'VALIDE', 'ACTIVE', 8491, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2735, '2020-01-17 21:38:51', '2020-01-17 21:38:53', 'HUM1011', '', '39077622', 'VALIDE', 'ACTIVE', 8492, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2736, '2020-01-17 21:39:03', '2020-01-17 21:39:06', 'HUM1011', '', '-1966568276', 'VALIDE', 'ACTIVE', 8493, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2737, '2020-01-17 21:39:14', '2020-01-17 21:39:16', 'HUM1011', '', '-660766766', 'VALIDE', 'ACTIVE', 8494, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2738, '2020-01-17 21:39:25', '2020-01-17 21:39:27', 'HUM1011', '', '479563509', 'VALIDE', 'ACTIVE', 8495, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2739, '2020-01-17 21:39:40', '2020-01-17 21:39:42', 'HUM1011', '', '-1912671839', 'VALIDE', 'ACTIVE', 8496, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2740, '2020-01-17 21:39:54', '2020-01-17 21:39:55', 'HUM1011', '', '-1228114037', 'VALIDE', 'ACTIVE', 8497, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2741, '2020-01-17 21:40:02', '2020-01-17 21:40:03', 'HUM1011', '', '1681249548', 'VALIDE', 'ACTIVE', 8498, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2742, '2020-01-17 21:40:15', '2020-01-17 21:40:17', 'HUM1011', '', '-112432331', 'VALIDE', 'ACTIVE', 8499, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2743, '2020-01-17 21:40:31', '2020-01-17 21:40:33', 'HUM1011', '', '-1947732661', 'VALIDE', 'ACTIVE', 8500, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2744, '2020-01-17 21:40:42', '2020-01-17 21:40:44', 'HUM1011', '', '1916156575', 'VALIDE', 'ACTIVE', 8501, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2745, '2020-01-17 21:40:54', '2020-01-17 21:40:58', 'HUM1011', '', '-1589920365', 'VALIDE', 'ACTIVE', 8502, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2746, '2020-01-17 21:41:07', '2020-01-17 21:41:08', 'HUM1011', '', '-59249268', 'VALIDE', 'ACTIVE', 8503, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2747, '2020-01-17 21:41:19', '2020-01-17 21:41:21', 'HUM1011', '', '190255902', 'VALIDE', 'ACTIVE', 8504, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2748, '2020-01-17 21:41:35', '2020-01-17 21:41:38', 'HUM1011', '', '983723157', 'VALIDE', 'ACTIVE', 8505, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2749, '2020-01-17 21:41:48', '2020-01-17 21:41:50', 'HUM1011', '', '-860934523', 'VALIDE', 'ACTIVE', 8506, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2750, '2020-01-17 21:42:00', '2020-01-17 21:42:02', 'HUM1011', '', '-2082881442', 'VALIDE', 'ACTIVE', 8507, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2751, '2020-01-17 21:42:13', '2020-01-17 21:42:19', 'HUM1011', '', '821742686', 'VALIDE', 'ACTIVE', 8508, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2752, '2020-01-17 21:42:30', '2020-01-17 21:42:33', 'HUM1011', '', '-112815212', 'VALIDE', 'ACTIVE', 8509, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2753, '2020-01-17 21:42:41', '2020-01-17 21:42:44', 'HUM1011', '', '230329588', 'VALIDE', 'ACTIVE', 8510, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2754, '2020-01-17 21:42:56', '2020-01-17 21:42:58', 'HUM1011', '', '1042563914', 'VALIDE', 'ACTIVE', 8511, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2755, '2020-01-17 21:43:14', '2020-01-17 21:43:17', 'HUM1011', '', '569543105', 'VALIDE', 'ACTIVE', 8512, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2756, '2020-01-17 21:43:25', '2020-01-17 21:43:27', 'HUM1011', '', '-392220734', 'VALIDE', 'ACTIVE', 8513, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2757, '2020-01-17 21:43:35', '2020-01-17 21:43:37', 'HUM1011', '', '339222786', 'VALIDE', 'ACTIVE', 8514, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2758, '2020-01-17 21:43:46', '2020-01-17 21:43:48', 'HUM1011', '', '-1798166186', 'VALIDE', 'ACTIVE', 8515, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2759, '2020-01-17 21:44:00', '2020-01-17 21:44:03', 'HUM1011', '', '2041935726', 'VALIDE', 'ACTIVE', 8516, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2760, '2020-01-17 21:44:16', '2020-01-17 21:44:18', 'HUM1011', '', '-1570923757', 'VALIDE', 'ACTIVE', 8517, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2761, '2020-01-17 21:44:30', '2020-01-17 21:44:33', 'HUM1011', '', '1385951229', 'VALIDE', 'ACTIVE', 8518, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2762, '2020-01-17 21:44:41', '2020-01-17 21:44:42', 'HUM1011', '', '379328250', 'VALIDE', 'ACTIVE', 8519, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2763, '2020-01-17 21:44:54', '2020-01-17 21:44:55', 'HUM1011', '', '-1265589459', 'VALIDE', 'ACTIVE', 8520, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2764, '2020-01-17 21:45:06', '2020-01-17 21:45:09', 'HUM1011', '', '-177473285', 'VALIDE', 'ACTIVE', 8521, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2765, '2020-01-17 21:45:18', '2020-01-17 21:45:20', 'HUM1011', '', '210069927', 'VALIDE', 'ACTIVE', 8522, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2766, '2020-01-17 21:45:28', '2020-01-17 21:45:29', 'HUM1011', '', '985971270', 'VALIDE', 'ACTIVE', 8523, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2767, '2020-01-17 21:45:38', '2020-01-17 21:45:40', 'HUM1011', '', '1122584962', 'VALIDE', 'ACTIVE', 8524, 205, 1919, 205);
INSERT INTO `est_inscrit` VALUES (2852, '2020-01-18 08:35:54', '2020-01-18 08:35:56', 'MAT2033', '', '2110601392', 'VALIDE', 'ACTIVE', 574, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2853, '2020-01-18 08:36:01', '2020-01-18 08:36:02', 'MAT2033', '', '-1372153067', 'VALIDE', 'ACTIVE', 574, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2854, '2020-01-18 08:36:07', '2020-01-18 08:36:09', 'MAT2033', '', '-836447019', 'VALIDE', 'ACTIVE', 702, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2855, '2020-01-18 08:36:14', '2020-01-18 08:36:16', 'MAT2033', '', '1647639502', 'VALIDE', 'ACTIVE', 703, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2856, '2020-01-18 08:36:21', '2020-01-18 08:36:22', 'MAT2033', '', '525564542', 'VALIDE', 'ACTIVE', 704, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2857, '2020-01-18 08:36:27', '2020-01-18 08:36:29', 'MAT2033', '', '-1785821603', 'VALIDE', 'ACTIVE', 705, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2858, '2020-01-18 08:36:34', '2020-01-18 08:36:36', 'MAT2033', '', '84589004', 'VALIDE', 'ACTIVE', 706, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2859, '2020-01-18 08:36:40', '2020-01-18 08:36:42', 'MAT2033', '', '1524455216', 'VALIDE', 'ACTIVE', 707, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2860, '2020-01-18 08:36:47', '2020-01-18 08:36:49', 'MAT2033', '', '1648892344', 'VALIDE', 'ACTIVE', 708, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2861, '2020-01-18 08:36:54', '2020-01-18 08:36:56', 'MAT2033', '', '-476251707', 'VALIDE', 'ACTIVE', 709, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2862, '2020-01-18 08:37:01', '2020-01-18 08:37:03', 'MAT2033', '', '2028152688', 'VALIDE', 'ACTIVE', 710, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2863, '2020-01-18 08:37:08', '2020-01-18 08:37:10', 'MAT2033', '', '1247764446', 'VALIDE', 'ACTIVE', 711, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2864, '2020-01-18 08:37:15', '2020-01-18 08:37:17', 'MAT2033', '', '1815142360', 'VALIDE', 'ACTIVE', 712, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2865, '2020-01-18 08:37:21', '2020-01-18 08:37:24', 'MAT2033', '', '-1349861398', 'VALIDE', 'ACTIVE', 713, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2866, '2020-01-18 08:37:28', '2020-01-18 08:37:30', 'MAT2033', '', '-1096541522', 'VALIDE', 'ACTIVE', 714, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2867, '2020-01-18 08:37:35', '2020-01-18 08:37:37', 'MAT2033', '', '749373912', 'VALIDE', 'ACTIVE', 715, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2868, '2020-01-18 08:37:41', '2020-01-18 08:37:43', 'MAT2033', '', '-303897360', 'VALIDE', 'ACTIVE', 716, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2869, '2020-01-18 08:37:48', '2020-01-18 08:37:50', 'MAT2033', '', '1997896057', 'VALIDE', 'ACTIVE', 717, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2870, '2020-01-18 08:37:55', '2020-01-18 08:37:57', 'MAT2033', '', '1711863485', 'VALIDE', 'ACTIVE', 719, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2871, '2020-01-18 08:38:01', '2020-01-18 08:38:03', 'MAT2033', '', '-1121636292', 'VALIDE', 'ACTIVE', 720, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2872, '2020-01-18 08:38:08', '2020-01-18 08:38:10', 'MAT2033', '', '1156245082', 'VALIDE', 'ACTIVE', 721, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2873, '2020-01-18 08:38:15', '2020-01-18 08:38:16', 'MAT2033', '', '-1508425395', 'VALIDE', 'ACTIVE', 722, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2874, '2020-01-18 08:38:21', '2020-01-18 08:38:23', 'MAT2033', '', '191844081', 'VALIDE', 'ACTIVE', 723, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2875, '2020-01-18 08:38:28', '2020-01-18 08:38:30', 'MAT2033', '', '-896123446', 'VALIDE', 'ACTIVE', 724, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2876, '2020-01-18 08:38:35', '2020-01-18 08:38:37', 'MAT2033', '', '-1030572871', 'VALIDE', 'ACTIVE', 725, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2877, '2020-01-18 08:38:41', '2020-01-18 08:38:43', 'MAT2033', '', '291461877', 'VALIDE', 'ACTIVE', 726, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2878, '2020-01-18 08:38:48', '2020-01-18 08:38:50', 'MAT2033', '', '268092521', 'VALIDE', 'ACTIVE', 727, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2879, '2020-01-18 08:38:55', '2020-01-18 08:38:57', 'MAT2033', '', '-1770873028', 'VALIDE', 'ACTIVE', 728, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2880, '2020-01-18 08:39:02', '2020-01-18 08:39:04', 'MAT2033', '', '1607837449', 'VALIDE', 'ACTIVE', 729, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2881, '2020-01-18 08:39:09', '2020-01-18 08:39:11', 'MAT2033', '', '-1206569151', 'VALIDE', 'ACTIVE', 730, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2882, '2020-01-18 08:39:16', '2020-01-18 08:39:18', 'MAT2033', '', '1438246630', 'VALIDE', 'ACTIVE', 731, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2883, '2020-01-18 08:39:23', '2020-01-18 08:39:25', 'MAT2033', '', '1290954718', 'VALIDE', 'ACTIVE', 732, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2884, '2020-01-18 08:39:30', '2020-01-18 08:39:32', 'MAT2033', '', '-372276720', 'VALIDE', 'ACTIVE', 733, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2885, '2020-01-18 08:39:36', '2020-01-18 08:39:39', 'MAT2033', '', '2034016579', 'VALIDE', 'ACTIVE', 734, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2886, '2020-01-18 08:39:43', '2020-01-18 08:39:45', 'MAT2033', '', '-926015094', 'VALIDE', 'ACTIVE', 735, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2887, '2020-01-18 08:39:50', '2020-01-18 08:39:52', 'MAT2033', '', '1477055194', 'VALIDE', 'ACTIVE', 736, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2888, '2020-01-18 08:39:56', '2020-01-18 08:39:58', 'MAT2033', '', '1030339528', 'VALIDE', 'ACTIVE', 737, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2889, '2020-01-18 08:40:03', '2020-01-18 08:40:05', 'MAT2033', '', '768042485', 'VALIDE', 'ACTIVE', 738, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2890, '2020-01-18 08:40:10', '2020-01-18 08:40:13', 'MAT2033', '', '-349799487', 'VALIDE', 'ACTIVE', 739, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2891, '2020-01-18 08:40:18', '2020-01-18 08:40:20', 'MAT2033', '', '1330457145', 'VALIDE', 'ACTIVE', 740, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2892, '2020-01-18 08:40:24', '2020-01-18 08:40:26', 'MAT2033', '', '-1823502592', 'VALIDE', 'ACTIVE', 741, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2893, '2020-01-18 08:40:31', '2020-01-18 08:40:33', 'MAT2033', '', '-1594882766', 'VALIDE', 'ACTIVE', 742, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2894, '2020-01-18 08:40:38', '2020-01-18 08:40:40', 'MAT2033', '', '705078956', 'VALIDE', 'ACTIVE', 743, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2895, '2020-01-18 08:40:45', '2020-01-18 08:40:47', 'MAT2033', '', '-1218805672', 'VALIDE', 'ACTIVE', 744, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2896, '2020-01-18 08:40:51', '2020-01-18 08:40:53', 'MAT2033', '', '-1838031647', 'VALIDE', 'ACTIVE', 745, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2897, '2020-01-18 08:40:58', '2020-01-18 08:41:00', 'MAT2033', '', '2026376680', 'VALIDE', 'ACTIVE', 746, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2898, '2020-01-18 08:41:04', '2020-01-18 08:41:06', 'MAT2033', '', '-989329475', 'VALIDE', 'ACTIVE', 747, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2899, '2020-01-18 08:41:10', '2020-01-18 08:41:12', 'MAT2033', '', '-867224300', 'VALIDE', 'ACTIVE', 748, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2900, '2020-01-18 08:41:17', '2020-01-18 08:41:19', 'MAT2033', '', '-213427796', 'VALIDE', 'ACTIVE', 749, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2901, '2020-01-18 08:41:24', '2020-01-18 08:41:27', 'MAT2033', '', '-1455566575', 'VALIDE', 'ACTIVE', 750, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2902, '2020-01-18 08:41:32', '2020-01-18 08:41:34', 'MAT2033', '', '-1209824476', 'VALIDE', 'ACTIVE', 751, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2903, '2020-01-18 08:41:39', '2020-01-18 08:41:41', 'MAT2033', '', '772366492', 'VALIDE', 'ACTIVE', 752, 205, 1920, 205);
INSERT INTO `est_inscrit` VALUES (2952, '2020-01-18 09:38:23', '2020-01-18 09:39:17', 'INP3195', '', '-1476513651', 'VALIDE', 'ACTIVE', 805, 205, 2380, 205);
INSERT INTO `est_inscrit` VALUES (2953, '2020-01-18 09:39:21', '2020-01-18 09:39:22', 'INP3195', '', '412354802', 'VALIDE', 'ACTIVE', 806, 205, 2380, 205);
INSERT INTO `est_inscrit` VALUES (2954, '2020-01-18 09:39:26', '2020-01-18 09:39:27', 'INP3195', '', '-442327953', 'VALIDE', 'ACTIVE', 807, 205, 2380, 205);
INSERT INTO `est_inscrit` VALUES (2955, '2020-01-18 09:39:30', '2020-01-18 09:39:31', 'INP3195', '', '2006388959', 'VALIDE', 'ACTIVE', 808, 205, 2380, 205);
INSERT INTO `est_inscrit` VALUES (2956, '2020-01-18 09:39:35', '2020-01-18 09:39:35', 'INP3195', '', '-1832806630', 'VALIDE', 'ACTIVE', 809, 205, 2380, 205);
INSERT INTO `est_inscrit` VALUES (2957, '2020-01-18 09:39:40', '2020-01-18 09:39:41', 'INP3195', '', '-1428696463', 'VALIDE', 'ACTIVE', 810, 205, 2380, 205);
INSERT INTO `est_inscrit` VALUES (2958, '2020-01-18 09:39:44', '2020-01-18 09:39:45', 'INP3195', '', '1395915164', 'VALIDE', 'ACTIVE', 811, 205, 2380, 205);
INSERT INTO `est_inscrit` VALUES (2959, '2020-01-18 09:39:49', '2020-01-18 09:39:50', 'INP3195', '', '-409277742', 'VALIDE', 'ACTIVE', 812, 205, 2380, 205);
INSERT INTO `est_inscrit` VALUES (2960, '2020-01-18 09:39:54', '2020-01-18 09:39:54', 'INP3195', '', '967123326', 'VALIDE', 'ACTIVE', 813, 205, 2380, 205);
INSERT INTO `est_inscrit` VALUES (2961, '2020-01-18 09:39:58', '2020-01-18 09:39:59', 'INP3195', '', '1833948696', 'VALIDE', 'ACTIVE', 814, 205, 2380, 205);
INSERT INTO `est_inscrit` VALUES (2962, '2020-01-18 09:40:03', '2020-01-18 09:40:04', 'INP3195', '', '632271357', 'VALIDE', 'ACTIVE', 815, 205, 2380, 205);
INSERT INTO `est_inscrit` VALUES (2963, '2020-01-18 09:40:08', '2020-01-18 09:40:08', 'INP3195', '', '593140712', 'VALIDE', 'ACTIVE', 816, 205, 2380, 205);
INSERT INTO `est_inscrit` VALUES (2964, '2020-01-18 09:40:12', '2020-01-18 09:40:13', 'INP3195', '', '-574709026', 'VALIDE', 'ACTIVE', 817, 205, 2380, 205);
INSERT INTO `est_inscrit` VALUES (2965, '2020-01-18 09:40:17', '2020-01-18 09:40:18', 'INP3195', '', '425725076', 'VALIDE', 'ACTIVE', 818, 205, 2380, 205);
INSERT INTO `est_inscrit` VALUES (2966, '2020-01-18 09:40:21', '2020-01-18 09:40:22', 'INP3195', '', '670622781', 'VALIDE', 'ACTIVE', 819, 205, 2380, 205);
INSERT INTO `est_inscrit` VALUES (2967, '2020-01-18 09:44:23', '2020-01-18 09:44:25', 'MAT2043', '', '1584708070', 'VALIDE', 'ACTIVE', 702, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2968, '2020-01-18 09:44:28', '2020-01-18 09:44:30', 'MAT2043', '', '-2142574328', 'VALIDE', 'ACTIVE', 703, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2969, '2020-01-18 09:44:33', '2020-01-18 09:44:35', 'MAT2043', '', '-1863956411', 'VALIDE', 'ACTIVE', 704, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2970, '2020-01-18 09:44:38', '2020-01-18 09:44:40', 'MAT2043', '', '-269431788', 'VALIDE', 'ACTIVE', 705, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2971, '2020-01-18 09:44:43', '2020-01-18 09:44:45', 'MAT2043', '', '-337263734', 'VALIDE', 'ACTIVE', 706, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2972, '2020-01-18 09:44:48', '2020-01-18 09:44:50', 'MAT2043', '', '1531370089', 'VALIDE', 'ACTIVE', 707, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2973, '2020-01-18 09:44:53', '2020-01-18 09:44:54', 'MAT2043', '', '-1603408014', 'VALIDE', 'ACTIVE', 708, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2974, '2020-01-18 09:44:58', '2020-01-18 09:44:59', 'MAT2043', '', '743472453', 'VALIDE', 'ACTIVE', 709, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2975, '2020-01-18 09:45:04', '2020-01-18 09:45:05', 'MAT2043', '', '-1646973508', 'VALIDE', 'ACTIVE', 710, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2976, '2020-01-18 09:45:09', '2020-01-18 09:45:10', 'MAT2043', '', '-1002086647', 'VALIDE', 'ACTIVE', 711, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2977, '2020-01-18 09:45:14', '2020-01-18 09:45:15', 'MAT2043', '', '-1670167550', 'VALIDE', 'ACTIVE', 712, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2978, '2020-01-18 09:45:19', '2020-01-18 09:45:20', 'MAT2043', '', '1689600197', 'VALIDE', 'ACTIVE', 713, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2979, '2020-01-18 09:45:24', '2020-01-18 09:45:25', 'MAT2043', '', '1750739832', 'VALIDE', 'ACTIVE', 714, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2980, '2020-01-18 09:45:29', '2020-01-18 09:45:30', 'MAT2043', '', '-2021147595', 'VALIDE', 'ACTIVE', 715, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2981, '2020-01-18 09:45:34', '2020-01-18 09:45:35', 'MAT2043', '', '1639695119', 'VALIDE', 'ACTIVE', 716, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2982, '2020-01-18 09:45:39', '2020-01-18 09:45:40', 'MAT2043', '', '-620220182', 'VALIDE', 'ACTIVE', 717, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2983, '2020-01-18 09:45:44', '2020-01-18 09:45:45', 'MAT2043', '', '948386107', 'VALIDE', 'ACTIVE', 719, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2984, '2020-01-18 09:45:49', '2020-01-18 09:45:50', 'MAT2043', '', '-850422952', 'VALIDE', 'ACTIVE', 720, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2985, '2020-01-18 09:45:54', '2020-01-18 09:45:55', 'MAT2043', '', '1191479974', 'VALIDE', 'ACTIVE', 721, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2986, '2020-01-18 09:45:59', '2020-01-18 09:46:00', 'MAT2043', '', '-2094553398', 'VALIDE', 'ACTIVE', 722, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2987, '2020-01-18 09:46:04', '2020-01-18 09:46:05', 'MAT2043', '', '-1449106674', 'VALIDE', 'ACTIVE', 723, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2988, '2020-01-18 09:46:10', '2020-01-18 09:46:12', 'MAT2043', '', '734460500', 'VALIDE', 'ACTIVE', 724, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2989, '2020-01-18 09:46:15', '2020-01-18 09:46:17', 'MAT2043', '', '-1296177977', 'VALIDE', 'ACTIVE', 725, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2990, '2020-01-18 09:46:21', '2020-01-18 09:46:22', 'MAT2043', '', '-1504821051', 'VALIDE', 'ACTIVE', 726, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2991, '2020-01-18 09:46:26', '2020-01-18 09:46:27', 'MAT2043', '', '635052651', 'VALIDE', 'ACTIVE', 727, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2992, '2020-01-18 09:46:30', '2020-01-18 09:46:32', 'MAT2043', '', '-989275254', 'VALIDE', 'ACTIVE', 728, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2993, '2020-01-18 09:46:35', '2020-01-18 09:46:37', 'MAT2043', '', '363134856', 'VALIDE', 'ACTIVE', 729, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2994, '2020-01-18 09:46:40', '2020-01-18 09:46:42', 'MAT2043', '', '1995561241', 'VALIDE', 'ACTIVE', 730, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2995, '2020-01-18 09:46:45', '2020-01-18 09:46:47', 'MAT2043', '', '-731531435', 'VALIDE', 'ACTIVE', 731, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2996, '2020-01-18 09:46:50', '2020-01-18 09:46:52', 'MAT2043', '', '-1115901966', 'VALIDE', 'ACTIVE', 732, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2997, '2020-01-18 09:46:55', '2020-01-18 09:46:57', 'MAT2043', '', '-1983494520', 'VALIDE', 'ACTIVE', 733, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2998, '2020-01-18 09:47:00', '2020-01-18 09:47:02', 'MAT2043', '', '135769948', 'VALIDE', 'ACTIVE', 734, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (2999, '2020-01-18 09:47:05', '2020-01-18 09:47:07', 'MAT2043', '', '996374231', 'VALIDE', 'ACTIVE', 735, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (3000, '2020-01-18 09:47:10', '2020-01-18 09:47:12', 'MAT2043', '', '1848898982', 'VALIDE', 'ACTIVE', 736, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (3101, '2020-01-18 09:47:15', '2020-01-18 09:47:18', 'MAT2043', '', '2132265274', 'VALIDE', 'ACTIVE', 737, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (3102, '2020-01-18 09:47:21', '2020-01-18 09:47:23', 'MAT2043', '', '1947793721', 'VALIDE', 'ACTIVE', 738, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (3103, '2020-01-18 09:47:26', '2020-01-18 09:47:28', 'MAT2043', '', '-1480161528', 'VALIDE', 'ACTIVE', 739, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (3104, '2020-01-18 09:47:31', '2020-01-18 09:47:33', 'MAT2043', '', '-610394815', 'VALIDE', 'ACTIVE', 740, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (3105, '2020-01-18 09:47:36', '2020-01-18 09:47:38', 'MAT2043', '', '162661207', 'VALIDE', 'ACTIVE', 741, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (3106, '2020-01-18 09:47:41', '2020-01-18 09:47:43', 'MAT2043', '', '-1834936661', 'VALIDE', 'ACTIVE', 742, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (3107, '2020-01-18 09:47:47', '2020-01-18 09:47:48', 'MAT2043', '', '-953474580', 'VALIDE', 'ACTIVE', 743, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (3108, '2020-01-18 09:47:52', '2020-01-18 09:47:53', 'MAT2043', '', '-260771423', 'VALIDE', 'ACTIVE', 744, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (3109, '2020-01-18 09:47:57', '2020-01-18 09:47:58', 'MAT2043', '', '955108124', 'VALIDE', 'ACTIVE', 745, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (3110, '2020-01-18 09:48:02', '2020-01-18 09:48:03', 'MAT2043', '', '1628568443', 'VALIDE', 'ACTIVE', 746, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (3111, '2020-01-18 09:48:07', '2020-01-18 09:48:08', 'MAT2043', '', '-909433045', 'VALIDE', 'ACTIVE', 747, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (3112, '2020-01-18 09:48:12', '2020-01-18 09:48:13', 'MAT2043', '', '1895015399', 'VALIDE', 'ACTIVE', 748, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (3113, '2020-01-18 09:48:17', '2020-01-18 09:48:18', 'MAT2043', '', '-846610145', 'VALIDE', 'ACTIVE', 749, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (3114, '2020-01-18 09:48:22', '2020-01-18 09:48:23', 'MAT2043', '', '-230262111', 'VALIDE', 'ACTIVE', 750, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (3115, '2020-01-18 09:48:27', '2020-01-18 09:48:29', 'MAT2043', '', '1033710753', 'VALIDE', 'ACTIVE', 751, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (3116, '2020-01-18 09:48:32', '2020-01-18 09:48:33', 'MAT2043', '', '-1237466989', 'VALIDE', 'ACTIVE', 752, 205, 1921, 205);
INSERT INTO `est_inscrit` VALUES (3117, '2020-01-18 10:32:45', '2020-01-18 10:32:47', 'INF2023', '', '849293112', 'VALIDE', 'ACTIVE', 702, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3118, '2020-01-18 10:32:56', '2020-01-18 10:32:59', 'INF2023', '', '497409403', 'VALIDE', 'ACTIVE', 703, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3119, '2020-01-18 10:33:08', '2020-01-18 10:33:11', 'INF2023', '', '-1473385205', 'VALIDE', 'ACTIVE', 704, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3120, '2020-01-18 10:33:24', '2020-01-18 10:33:26', 'INF2023', '', '-338688437', 'VALIDE', 'ACTIVE', 705, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3121, '2020-01-18 10:33:35', '2020-01-18 10:33:37', 'INF2023', '', '2123787083', 'VALIDE', 'ACTIVE', 706, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3122, '2020-01-18 10:33:45', '2020-01-18 10:33:46', 'INF2023', '', '-2049875122', 'VALIDE', 'ACTIVE', 707, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3123, '2020-01-18 10:33:59', '2020-01-18 10:34:02', 'INF2023', '', '-383431222', 'VALIDE', 'ACTIVE', 708, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3124, '2020-01-18 10:34:11', '2020-01-18 10:34:13', 'INF2023', '', '-307503483', 'VALIDE', 'ACTIVE', 709, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3125, '2020-01-18 10:34:28', '2020-01-18 10:34:30', 'INF2023', '', '-971319461', 'VALIDE', 'ACTIVE', 710, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3126, '2020-01-18 10:34:40', '2020-01-18 10:34:44', 'INF2023', '', '-2023031124', 'VALIDE', 'ACTIVE', 711, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3127, '2020-01-18 10:34:55', '2020-01-18 10:34:56', 'INF2023', '', '-542013035', 'VALIDE', 'ACTIVE', 712, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3128, '2020-01-18 10:35:08', '2020-01-18 10:35:12', 'INF2023', '', '1649157947', 'VALIDE', 'ACTIVE', 713, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3129, '2020-01-18 10:35:24', '2020-01-18 10:35:25', 'INF2023', '', '-442199842', 'VALIDE', 'ACTIVE', 714, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3130, '2020-01-18 10:35:37', '2020-01-18 10:35:40', 'INF2023', '', '1551479075', 'VALIDE', 'ACTIVE', 715, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3131, '2020-01-18 10:35:52', '2020-01-18 10:35:54', 'INF2023', '', '-1663666580', 'VALIDE', 'ACTIVE', 716, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3132, '2020-01-18 10:36:05', '2020-01-18 10:36:09', 'INF2023', '', '1886390929', 'VALIDE', 'ACTIVE', 717, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3133, '2020-01-18 10:36:21', '2020-01-18 10:36:23', 'INF2023', '', '-1779497025', 'VALIDE', 'ACTIVE', 719, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3134, '2020-01-18 10:36:41', '2020-01-18 10:36:44', 'INF2023', '', '1699647949', 'VALIDE', 'ACTIVE', 720, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3135, '2020-01-18 10:37:09', '2020-01-18 10:37:11', 'INF2023', '', '-40618584', 'VALIDE', 'ACTIVE', 721, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3136, '2020-01-18 10:37:32', '2020-01-18 10:37:37', 'INF2023', '', '-1730121257', 'VALIDE', 'ACTIVE', 722, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3137, '2020-01-18 10:37:50', '2020-01-18 10:37:54', 'INF2023', '', '2018987329', 'VALIDE', 'ACTIVE', 723, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3138, '2020-01-18 10:38:07', '2020-01-18 10:38:10', 'INF2023', '', '1371508944', 'VALIDE', 'ACTIVE', 724, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3139, '2020-01-18 10:38:32', '2020-01-18 10:38:35', 'INF2023', '', '-1944702680', 'VALIDE', 'ACTIVE', 725, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3140, '2020-01-18 10:38:58', '2020-01-18 10:39:02', 'INF2023', '', '-137719570', 'VALIDE', 'ACTIVE', 726, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3141, '2020-01-18 10:39:15', '2020-01-18 10:39:18', 'INF2023', '', '595200151', 'VALIDE', 'ACTIVE', 727, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3142, '2020-01-18 10:39:33', '2020-01-18 10:39:37', 'INF2023', '', '-1635023713', 'VALIDE', 'ACTIVE', 728, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3143, '2020-01-18 10:40:01', '2020-01-18 10:40:05', 'INF2023', '', '-703068908', 'VALIDE', 'ACTIVE', 729, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3144, '2020-01-18 10:40:25', '2020-01-18 10:40:29', 'INF2023', '', '-766833356', 'VALIDE', 'ACTIVE', 730, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3145, '2020-01-18 10:40:49', '2020-01-18 10:40:51', 'INF2023', '', '1503704102', 'VALIDE', 'ACTIVE', 731, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3146, '2020-01-18 10:41:08', '2020-01-18 10:41:18', 'INF2023', '', '72243741', 'VALIDE', 'ACTIVE', 732, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3147, '2020-01-18 10:41:32', '2020-01-18 10:41:35', 'INF2023', '', '1572364265', 'VALIDE', 'ACTIVE', 733, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3148, '2020-01-18 10:41:52', '2020-01-18 10:41:56', 'INF2023', '', '-1876501884', 'VALIDE', 'ACTIVE', 734, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3149, '2020-01-18 10:42:16', '2020-01-18 10:42:18', 'INF2023', '', '1292946620', 'VALIDE', 'ACTIVE', 735, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3150, '2020-01-18 10:42:29', '2020-01-18 10:42:31', 'INF2023', '', '1964828937', 'VALIDE', 'ACTIVE', 736, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3151, '2020-01-18 10:42:42', '2020-01-18 10:42:49', 'INF2023', '', '-1467815507', 'VALIDE', 'ACTIVE', 737, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3152, '2020-01-18 10:43:05', '2020-01-18 10:43:10', 'INF2023', '', '62082314', 'VALIDE', 'ACTIVE', 738, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3153, '2020-01-18 10:43:40', '2020-01-18 10:43:43', 'INF2023', '', '-1165069630', 'VALIDE', 'ACTIVE', 739, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3154, '2020-01-18 10:44:01', '2020-01-18 10:44:05', 'INF2023', '', '-987090922', 'VALIDE', 'ACTIVE', 740, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3155, '2020-01-18 10:44:22', '2020-01-18 10:44:23', 'INF2023', '', '1085295543', 'VALIDE', 'ACTIVE', 741, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3156, '2020-01-18 10:44:33', '2020-01-18 10:44:35', 'INF2023', '', '2018791797', 'VALIDE', 'ACTIVE', 742, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3157, '2020-01-18 10:44:46', '2020-01-18 10:44:48', 'INF2023', '', '-1864144121', 'VALIDE', 'ACTIVE', 743, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3158, '2020-01-18 10:44:58', '2020-01-18 10:45:02', 'INF2023', '', '-1914562646', 'VALIDE', 'ACTIVE', 744, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3159, '2020-01-18 10:45:19', '2020-01-18 10:45:24', 'INF2023', '', '218736784', 'VALIDE', 'ACTIVE', 745, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3160, '2020-01-18 10:45:40', '2020-01-18 10:45:43', 'INF2023', '', '-48310007', 'VALIDE', 'ACTIVE', 746, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3161, '2020-01-18 10:46:10', '2020-01-18 10:46:12', 'INF2023', '', '-1530657319', 'VALIDE', 'ACTIVE', 747, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3162, '2020-01-18 10:46:30', '2020-01-18 10:46:35', 'INF2023', '', '-567817439', 'VALIDE', 'ACTIVE', 748, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3163, '2020-01-18 10:46:59', '2020-01-18 10:47:02', 'INF2023', '', '963565884', 'VALIDE', 'ACTIVE', 749, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3164, '2020-01-18 10:47:35', '2020-01-18 10:47:38', 'INF2023', '', '89051681', 'VALIDE', 'ACTIVE', 750, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3165, '2020-01-18 10:48:02', '2020-01-18 10:48:07', 'INF2023', '', '1195573759', 'VALIDE', 'ACTIVE', 751, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3166, '2020-01-18 10:48:41', '2020-01-18 10:48:43', 'INF2023', '', '-473022631', 'VALIDE', 'ACTIVE', 752, 205, 1922, 205);
INSERT INTO `est_inscrit` VALUES (3167, '2020-01-18 11:04:24', '2020-01-18 11:04:26', 'INF2033', '', '576582268', 'VALIDE', 'ACTIVE', 702, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3168, '2020-01-18 11:04:37', '2020-01-18 11:04:41', 'INF2033', '', '1935856744', 'VALIDE', 'ACTIVE', 703, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3169, '2020-01-18 11:04:53', '2020-01-18 11:04:55', 'INF2033', '', '-1120753017', 'VALIDE', 'ACTIVE', 704, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3170, '2020-01-18 11:05:04', '2020-01-18 11:05:06', 'INF2033', '', '-1752397257', 'VALIDE', 'ACTIVE', 705, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3171, '2020-01-18 11:05:15', '2020-01-18 11:05:18', 'INF2033', '', '1758557563', 'VALIDE', 'ACTIVE', 706, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3172, '2020-01-18 11:05:30', '2020-01-18 11:05:34', 'INF2033', '', '1829626046', 'VALIDE', 'ACTIVE', 707, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3173, '2020-01-18 11:05:54', '2020-01-18 11:05:56', 'INF2033', '', '83561532', 'VALIDE', 'ACTIVE', 708, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3174, '2020-01-18 11:06:18', '2020-01-18 11:06:22', 'INF2033', '', '1428576347', 'VALIDE', 'ACTIVE', 709, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3175, '2020-01-18 11:06:39', '2020-01-18 11:06:43', 'INF2033', '', '-110021032', 'VALIDE', 'ACTIVE', 710, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3176, '2020-01-18 11:07:03', '2020-01-18 11:07:07', 'INF2033', '', '947660913', 'VALIDE', 'ACTIVE', 711, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3177, '2020-01-18 11:07:26', '2020-01-18 11:07:31', 'INF2033', '', '-2127351900', 'VALIDE', 'ACTIVE', 712, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3178, '2020-01-18 11:07:46', '2020-01-18 11:07:49', 'INF2033', '', '819488189', 'VALIDE', 'ACTIVE', 713, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3179, '2020-01-18 11:08:01', '2020-01-18 11:08:03', 'INF2033', '', '1399265768', 'VALIDE', 'ACTIVE', 714, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3180, '2020-01-18 11:08:19', '2020-01-18 11:08:22', 'INF2033', '', '572036262', 'VALIDE', 'ACTIVE', 715, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3181, '2020-01-18 11:08:37', '2020-01-18 11:08:43', 'INF2033', '', '1103458982', 'VALIDE', 'ACTIVE', 716, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3182, '2020-01-18 11:08:58', '2020-01-18 11:09:01', 'INF2033', '', '2092656144', 'VALIDE', 'ACTIVE', 717, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3183, '2020-01-18 11:09:12', '2020-01-18 11:09:18', 'INF2033', '', '-2144035', 'VALIDE', 'ACTIVE', 719, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3184, '2020-01-18 11:09:43', '2020-01-18 11:09:45', 'INF2033', '', '506097567', 'VALIDE', 'ACTIVE', 720, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3185, '2020-01-18 11:10:03', '2020-01-18 11:10:06', 'INF2033', '', '511009057', 'VALIDE', 'ACTIVE', 721, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3186, '2020-01-18 11:10:24', '2020-01-18 11:10:27', 'INF2033', '', '1481320131', 'VALIDE', 'ACTIVE', 722, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3187, '2020-01-18 11:10:51', '2020-01-18 11:10:53', 'INF2033', '', '-1180062817', 'VALIDE', 'ACTIVE', 723, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3188, '2020-01-18 11:11:07', '2020-01-18 11:11:10', 'INF2033', '', '-74895079', 'VALIDE', 'ACTIVE', 724, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3189, '2020-01-18 11:11:19', '2020-01-18 11:11:22', 'INF2033', '', '1148258526', 'VALIDE', 'ACTIVE', 725, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3190, '2020-01-18 11:11:33', '2020-01-18 11:11:35', 'INF2033', '', '-2094690242', 'VALIDE', 'ACTIVE', 726, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3191, '2020-01-18 11:11:53', '2020-01-18 11:11:54', 'INF2033', '', '1130487033', 'VALIDE', 'ACTIVE', 727, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3192, '2020-01-18 11:12:15', '2020-01-18 11:12:19', 'INF2033', '', '1214953451', 'VALIDE', 'ACTIVE', 728, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3193, '2020-01-18 11:12:31', '2020-01-18 11:12:33', 'INF2033', '', '-512037133', 'VALIDE', 'ACTIVE', 729, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3194, '2020-01-18 11:12:52', '2020-01-18 11:12:54', 'INF2033', '', '1726998570', 'VALIDE', 'ACTIVE', 730, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3195, '2020-01-18 11:13:08', '2020-01-18 11:13:14', 'INF2033', '', '1892469699', 'VALIDE', 'ACTIVE', 731, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3196, '2020-01-18 11:13:31', '2020-01-18 11:13:33', 'INF2033', '', '1786872266', 'VALIDE', 'ACTIVE', 732, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3197, '2020-01-18 11:13:46', '2020-01-18 11:13:48', 'INF2033', '', '-1157542873', 'VALIDE', 'ACTIVE', 733, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3198, '2020-01-18 11:14:01', '2020-01-18 11:14:03', 'INF2033', '', '-1870646159', 'VALIDE', 'ACTIVE', 734, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3199, '2020-01-18 11:14:15', '2020-01-18 11:14:17', 'INF2033', '', '-1091366481', 'VALIDE', 'ACTIVE', 735, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3200, '2020-01-18 11:14:29', '2020-01-18 11:14:31', 'INF2033', '', '-1905457283', 'VALIDE', 'ACTIVE', 736, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3201, '2020-01-18 11:14:40', '2020-01-18 11:14:46', 'INF2033', '', '-1841486450', 'VALIDE', 'ACTIVE', 737, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3202, '2020-01-18 11:14:57', '2020-01-18 11:14:59', 'INF2033', '', '1559677941', 'VALIDE', 'ACTIVE', 738, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3203, '2020-01-18 11:15:08', '2020-01-18 11:15:10', 'INF2033', '', '-918033616', 'VALIDE', 'ACTIVE', 739, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3204, '2020-01-18 11:15:21', '2020-01-18 11:15:23', 'INF2033', '', '-654972969', 'VALIDE', 'ACTIVE', 740, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3205, '2020-01-18 11:15:31', '2020-01-18 11:15:35', 'INF2033', '', '1844623016', 'VALIDE', 'ACTIVE', 741, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3206, '2020-01-18 11:15:45', '2020-01-18 11:15:47', 'INF2033', '', '-1318869145', 'VALIDE', 'ACTIVE', 742, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3207, '2020-01-18 11:15:59', '2020-01-18 11:16:00', 'INF2033', '', '478164089', 'VALIDE', 'ACTIVE', 743, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3208, '2020-01-18 11:16:09', '2020-01-18 11:16:11', 'INF2033', '', '891887800', 'VALIDE', 'ACTIVE', 744, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3209, '2020-01-18 11:16:20', '2020-01-18 11:16:23', 'INF2033', '', '807282419', 'VALIDE', 'ACTIVE', 745, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3210, '2020-01-18 11:16:32', '2020-01-18 11:16:33', 'INF2033', '', '-2014499737', 'VALIDE', 'ACTIVE', 746, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3211, '2020-01-18 11:16:42', '2020-01-18 11:16:44', 'INF2033', '', '860662133', 'VALIDE', 'ACTIVE', 747, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3212, '2020-01-18 11:16:59', '2020-01-18 11:17:02', 'INF2033', '', '-1130454187', 'VALIDE', 'ACTIVE', 748, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3213, '2020-01-18 11:17:11', '2020-01-18 11:17:13', 'INF2033', '', '-1613835606', 'VALIDE', 'ACTIVE', 749, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3214, '2020-01-18 11:17:23', '2020-01-18 11:17:25', 'INF2033', '', '-2013543798', 'VALIDE', 'ACTIVE', 750, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3215, '2020-01-18 11:17:38', '2020-01-18 11:17:41', 'INF2033', '', '1723709345', 'VALIDE', 'ACTIVE', 751, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3216, '2020-01-18 11:17:50', '2020-01-18 11:17:53', 'INF2033', '', '1553061119', 'VALIDE', 'ACTIVE', 752, 205, 1923, 205);
INSERT INTO `est_inscrit` VALUES (3217, '2020-01-18 11:20:16', '2020-01-18 11:20:20', 'LAC2033', '', '515475696', 'VALIDE', 'ACTIVE', 702, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3218, '2020-01-18 11:20:37', '2020-01-18 11:20:40', 'LAC2033', '', '110289060', 'VALIDE', 'ACTIVE', 703, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3219, '2020-01-18 11:20:53', '2020-01-18 11:20:55', 'LAC2033', '', '-1203720368', 'VALIDE', 'ACTIVE', 704, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3220, '2020-01-18 11:21:07', '2020-01-18 11:21:10', 'LAC2033', '', '-1277079872', 'VALIDE', 'ACTIVE', 705, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3221, '2020-01-18 11:21:19', '2020-01-18 11:21:22', 'LAC2033', '', '1996144326', 'VALIDE', 'ACTIVE', 706, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3222, '2020-01-18 11:21:36', '2020-01-18 11:21:39', 'LAC2033', '', '1336064700', 'VALIDE', 'ACTIVE', 707, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3223, '2020-01-18 11:21:48', '2020-01-18 11:21:51', 'LAC2033', '', '-206247155', 'VALIDE', 'ACTIVE', 708, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3224, '2020-01-18 11:22:03', '2020-01-18 11:22:05', 'LAC2033', '', '165600096', 'VALIDE', 'ACTIVE', 709, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3225, '2020-01-18 11:22:13', '2020-01-18 11:22:14', 'LAC2033', '', '294477762', 'VALIDE', 'ACTIVE', 710, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3226, '2020-01-18 11:22:24', '2020-01-18 11:22:25', 'LAC2033', '', '-1602320211', 'VALIDE', 'ACTIVE', 711, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3227, '2020-01-18 11:22:34', '2020-01-18 11:22:36', 'LAC2033', '', '570243078', 'VALIDE', 'ACTIVE', 712, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3228, '2020-01-18 11:22:44', '2020-01-18 11:22:45', 'LAC2033', '', '-126143169', 'VALIDE', 'ACTIVE', 713, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3229, '2020-01-18 11:22:53', '2020-01-18 11:22:55', 'LAC2033', '', '1076700444', 'VALIDE', 'ACTIVE', 714, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3230, '2020-01-18 11:23:03', '2020-01-18 11:23:04', 'LAC2033', '', '426376010', 'VALIDE', 'ACTIVE', 715, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3231, '2020-01-18 11:23:14', '2020-01-18 11:23:15', 'LAC2033', '', '211982663', 'VALIDE', 'ACTIVE', 716, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3232, '2020-01-18 11:23:26', '2020-01-18 11:23:27', 'LAC2033', '', '1615588837', 'VALIDE', 'ACTIVE', 717, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3233, '2020-01-18 11:23:35', '2020-01-18 11:23:37', 'LAC2033', '', '-626488023', 'VALIDE', 'ACTIVE', 719, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3234, '2020-01-18 11:23:47', '2020-01-18 11:23:48', 'LAC2033', '', '657868187', 'VALIDE', 'ACTIVE', 720, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3235, '2020-01-18 11:23:56', '2020-01-18 11:23:58', 'LAC2033', '', '-485099932', 'VALIDE', 'ACTIVE', 721, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3236, '2020-01-18 11:24:05', '2020-01-18 11:24:06', 'LAC2033', '', '-2123642089', 'VALIDE', 'ACTIVE', 722, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3237, '2020-01-18 11:24:14', '2020-01-18 11:24:16', 'LAC2033', '', '239561690', 'VALIDE', 'ACTIVE', 723, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3238, '2020-01-18 11:24:22', '2020-01-18 11:24:24', 'LAC2033', '', '382188735', 'VALIDE', 'ACTIVE', 724, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3239, '2020-01-18 11:24:33', '2020-01-18 11:24:35', 'LAC2033', '', '1820907934', 'VALIDE', 'ACTIVE', 725, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3240, '2020-01-18 11:24:44', '2020-01-18 11:24:45', 'LAC2033', '', '-2071705703', 'VALIDE', 'ACTIVE', 726, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3241, '2020-01-18 11:24:54', '2020-01-18 11:24:56', 'LAC2033', '', '-1990763740', 'VALIDE', 'ACTIVE', 727, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3242, '2020-01-18 11:25:03', '2020-01-18 11:25:05', 'LAC2033', '', '1946373087', 'VALIDE', 'ACTIVE', 728, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3243, '2020-01-18 11:25:11', '2020-01-18 11:25:13', 'LAC2033', '', '-1360768409', 'VALIDE', 'ACTIVE', 729, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3244, '2020-01-18 11:25:21', '2020-01-18 11:25:22', 'LAC2033', '', '450662603', 'VALIDE', 'ACTIVE', 730, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3245, '2020-01-18 11:25:29', '2020-01-18 11:25:31', 'LAC2033', '', '932442815', 'VALIDE', 'ACTIVE', 731, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3246, '2020-01-18 11:25:37', '2020-01-18 11:25:39', 'LAC2033', '', '142119142', 'VALIDE', 'ACTIVE', 732, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3247, '2020-01-18 11:25:47', '2020-01-18 11:25:48', 'LAC2033', '', '-1743220257', 'VALIDE', 'ACTIVE', 733, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3248, '2020-01-18 11:25:58', '2020-01-18 11:25:59', 'LAC2033', '', '-532364686', 'VALIDE', 'ACTIVE', 734, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3249, '2020-01-18 11:26:09', '2020-01-18 11:26:11', 'LAC2033', '', '1894248817', 'VALIDE', 'ACTIVE', 735, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3250, '2020-01-18 11:26:20', '2020-01-18 11:26:23', 'LAC2033', '', '178045770', 'VALIDE', 'ACTIVE', 736, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3251, '2020-01-18 11:26:31', '2020-01-18 11:26:37', 'LAC2033', '', '-1532254183', 'VALIDE', 'ACTIVE', 737, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3252, '2020-01-18 11:26:43', '2020-01-18 11:26:47', 'LAC2033', '', '-1994975401', 'VALIDE', 'ACTIVE', 738, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3253, '2020-01-18 11:26:56', '2020-01-18 11:26:58', 'LAC2033', '', '1263535659', 'VALIDE', 'ACTIVE', 739, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3254, '2020-01-18 11:27:04', '2020-01-18 11:27:06', 'LAC2033', '', '406507107', 'VALIDE', 'ACTIVE', 740, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3255, '2020-01-18 11:27:15', '2020-01-18 11:27:16', 'LAC2033', '', '-2002261184', 'VALIDE', 'ACTIVE', 741, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3256, '2020-01-18 11:27:23', '2020-01-18 11:27:24', 'LAC2033', '', '-501488341', 'VALIDE', 'ACTIVE', 742, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3257, '2020-01-18 11:27:33', '2020-01-18 11:27:35', 'LAC2033', '', '-237123227', 'VALIDE', 'ACTIVE', 743, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3258, '2020-01-18 11:27:44', '2020-01-18 11:27:46', 'LAC2033', '', '1975990258', 'VALIDE', 'ACTIVE', 744, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3259, '2020-01-18 11:27:56', '2020-01-18 11:27:57', 'LAC2033', '', '-521015642', 'VALIDE', 'ACTIVE', 745, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3260, '2020-01-18 11:28:10', '2020-01-18 11:28:12', 'LAC2033', '', '1735412829', 'VALIDE', 'ACTIVE', 746, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3261, '2020-01-18 11:28:19', '2020-01-18 11:28:21', 'LAC2033', '', '-119351888', 'VALIDE', 'ACTIVE', 747, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3262, '2020-01-18 11:28:30', '2020-01-18 11:28:31', 'LAC2033', '', '1427192793', 'VALIDE', 'ACTIVE', 748, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3263, '2020-01-18 11:28:41', '2020-01-18 11:28:44', 'LAC2033', '', '1905377357', 'VALIDE', 'ACTIVE', 749, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3264, '2020-01-18 11:28:53', '2020-01-18 11:28:54', 'LAC2033', '', '1449197344', 'VALIDE', 'ACTIVE', 750, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3265, '2020-01-18 11:29:03', '2020-01-18 11:29:04', 'LAC2033', '', '-1780955047', 'VALIDE', 'ACTIVE', 751, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3266, '2020-01-18 11:29:12', '2020-01-18 11:29:14', 'LAC2033', '', '1087925526', 'VALIDE', 'ACTIVE', 752, 205, 1924, 205);
INSERT INTO `est_inscrit` VALUES (3267, '2020-01-18 11:30:35', '2020-01-18 11:30:36', 'ECO2013', '', '234610919', 'VALIDE', 'ACTIVE', 702, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3268, '2020-01-18 11:30:48', '2020-01-18 11:30:52', 'ECO2013', '', '210164552', 'VALIDE', 'ACTIVE', 703, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3269, '2020-01-18 11:31:03', '2020-01-18 11:31:05', 'ECO2013', '', '815221051', 'VALIDE', 'ACTIVE', 704, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3270, '2020-01-18 11:31:19', '2020-01-18 11:31:22', 'ECO2013', '', '1758647670', 'VALIDE', 'ACTIVE', 705, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3271, '2020-01-18 11:31:33', '2020-01-18 11:31:34', 'ECO2013', '', '419571612', 'VALIDE', 'ACTIVE', 706, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3272, '2020-01-18 11:31:41', '2020-01-18 11:31:43', 'ECO2013', '', '-1004593235', 'VALIDE', 'ACTIVE', 707, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3273, '2020-01-18 11:31:57', '2020-01-18 11:31:59', 'ECO2013', '', '130291134', 'VALIDE', 'ACTIVE', 708, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3274, '2020-01-18 11:32:05', '2020-01-18 11:32:07', 'ECO2013', '', '29361556', 'VALIDE', 'ACTIVE', 709, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3275, '2020-01-18 11:32:15', '2020-01-18 11:32:16', 'ECO2013', '', '253283648', 'VALIDE', 'ACTIVE', 710, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3276, '2020-01-18 11:32:24', '2020-01-18 11:32:26', 'ECO2013', '', '1676195240', 'VALIDE', 'ACTIVE', 711, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3277, '2020-01-18 11:32:34', '2020-01-18 11:32:36', 'ECO2013', '', '1164990467', 'VALIDE', 'ACTIVE', 712, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3278, '2020-01-18 11:32:47', '2020-01-18 11:32:48', 'ECO2013', '', '-838482715', 'VALIDE', 'ACTIVE', 713, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3279, '2020-01-18 11:32:55', '2020-01-18 11:32:56', 'ECO2013', '', '-108521288', 'VALIDE', 'ACTIVE', 714, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3280, '2020-01-18 11:33:04', '2020-01-18 11:33:06', 'ECO2013', '', '-114463744', 'VALIDE', 'ACTIVE', 715, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3281, '2020-01-18 11:33:12', '2020-01-18 11:33:14', 'ECO2013', '', '484066796', 'VALIDE', 'ACTIVE', 716, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3282, '2020-01-18 11:33:21', '2020-01-18 11:33:23', 'ECO2013', '', '-1063679236', 'VALIDE', 'ACTIVE', 717, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3283, '2020-01-18 11:33:32', '2020-01-18 11:33:33', 'ECO2013', '', '354685654', 'VALIDE', 'ACTIVE', 719, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3284, '2020-01-18 11:33:40', '2020-01-18 11:33:42', 'ECO2013', '', '-478599805', 'VALIDE', 'ACTIVE', 720, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3285, '2020-01-18 11:33:50', '2020-01-18 11:33:51', 'ECO2013', '', '-2067706308', 'VALIDE', 'ACTIVE', 721, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3286, '2020-01-18 11:33:59', '2020-01-18 11:34:01', 'ECO2013', '', '-1404544038', 'VALIDE', 'ACTIVE', 722, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3287, '2020-01-18 11:34:09', '2020-01-18 11:34:11', 'ECO2013', '', '-1199199720', 'VALIDE', 'ACTIVE', 723, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3288, '2020-01-18 11:34:18', '2020-01-18 11:34:20', 'ECO2013', '', '2074099035', 'VALIDE', 'ACTIVE', 724, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3289, '2020-01-18 11:34:27', '2020-01-18 11:34:29', 'ECO2013', '', '110558791', 'VALIDE', 'ACTIVE', 725, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3290, '2020-01-18 11:34:37', '2020-01-18 11:34:39', 'ECO2013', '', '1693502927', 'VALIDE', 'ACTIVE', 726, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3291, '2020-01-18 11:34:45', '2020-01-18 11:34:47', 'ECO2013', '', '-329569591', 'VALIDE', 'ACTIVE', 727, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3292, '2020-01-18 11:34:57', '2020-01-18 11:34:58', 'ECO2013', '', '-1101290047', 'VALIDE', 'ACTIVE', 728, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3293, '2020-01-18 11:35:07', '2020-01-18 11:35:08', 'ECO2013', '', '-1732089170', 'VALIDE', 'ACTIVE', 729, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3294, '2020-01-18 11:35:16', '2020-01-18 11:35:18', 'ECO2013', '', '1589059436', 'VALIDE', 'ACTIVE', 730, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3295, '2020-01-18 11:35:26', '2020-01-18 11:35:28', 'ECO2013', '', '866268988', 'VALIDE', 'ACTIVE', 731, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3296, '2020-01-18 11:35:35', '2020-01-18 11:35:36', 'ECO2013', '', '593792208', 'VALIDE', 'ACTIVE', 732, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3297, '2020-01-18 11:35:43', '2020-01-18 11:35:44', 'ECO2013', '', '1643460303', 'VALIDE', 'ACTIVE', 733, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3298, '2020-01-18 11:35:51', '2020-01-18 11:35:52', 'ECO2013', '', '1448140609', 'VALIDE', 'ACTIVE', 734, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3299, '2020-01-18 11:36:00', '2020-01-18 11:36:02', 'ECO2013', '', '2039498267', 'VALIDE', 'ACTIVE', 735, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3300, '2020-01-18 11:36:12', '2020-01-18 11:36:14', 'ECO2013', '', '-2086894025', 'VALIDE', 'ACTIVE', 736, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3301, '2020-01-18 11:36:22', '2020-01-18 11:36:27', 'ECO2013', '', '983432706', 'VALIDE', 'ACTIVE', 737, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3302, '2020-01-18 11:36:36', '2020-01-18 11:36:37', 'ECO2013', '', '455434494', 'VALIDE', 'ACTIVE', 738, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3303, '2020-01-18 11:36:44', '2020-01-18 11:36:46', 'ECO2013', '', '-1047543189', 'VALIDE', 'ACTIVE', 739, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3304, '2020-01-18 11:36:53', '2020-01-18 11:36:55', 'ECO2013', '', '-1719049690', 'VALIDE', 'ACTIVE', 740, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3305, '2020-01-18 11:37:03', '2020-01-18 11:37:05', 'ECO2013', '', '2020832768', 'VALIDE', 'ACTIVE', 741, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3306, '2020-01-18 11:37:13', '2020-01-18 11:37:15', 'ECO2013', '', '1968629447', 'VALIDE', 'ACTIVE', 742, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3307, '2020-01-18 11:37:21', '2020-01-18 11:37:22', 'ECO2013', '', '1441307414', 'VALIDE', 'ACTIVE', 743, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3308, '2020-01-18 11:37:30', '2020-01-18 11:37:32', 'ECO2013', '', '141774403', 'VALIDE', 'ACTIVE', 744, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3309, '2020-01-18 11:37:38', '2020-01-18 11:37:40', 'ECO2013', '', '-888003460', 'VALIDE', 'ACTIVE', 745, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3310, '2020-01-18 11:37:47', '2020-01-18 11:37:48', 'ECO2013', '', '1543975273', 'VALIDE', 'ACTIVE', 746, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3311, '2020-01-18 11:37:57', '2020-01-18 11:37:58', 'ECO2013', '', '-1963164491', 'VALIDE', 'ACTIVE', 747, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3312, '2020-01-18 11:38:06', '2020-01-18 11:38:08', 'ECO2013', '', '849624967', 'VALIDE', 'ACTIVE', 748, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3313, '2020-01-18 11:38:16', '2020-01-18 11:38:18', 'ECO2013', '', '-284528239', 'VALIDE', 'ACTIVE', 749, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3314, '2020-01-18 11:38:28', '2020-01-18 11:38:30', 'ECO2013', '', '-2005806501', 'VALIDE', 'ACTIVE', 750, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3315, '2020-01-18 11:38:40', '2020-01-18 11:38:42', 'ECO2013', '', '-1188902690', 'VALIDE', 'ACTIVE', 751, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3316, '2020-01-18 11:38:50', '2020-01-18 11:38:52', 'ECO2013', '', '1815253122', 'VALIDE', 'ACTIVE', 752, 205, 1925, 205);
INSERT INTO `est_inscrit` VALUES (3317, '2020-01-18 11:41:40', '2020-01-18 11:41:42', 'HUM2033', '', '-1665306863', 'VALIDE', 'ACTIVE', 702, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3318, '2020-01-18 11:41:58', '2020-01-18 11:42:00', 'HUM2033', '', '-5075838', 'VALIDE', 'ACTIVE', 703, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3319, '2020-01-18 11:42:15', '2020-01-18 11:42:18', 'HUM2033', '', '313185827', 'VALIDE', 'ACTIVE', 704, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3320, '2020-01-18 11:42:29', '2020-01-18 11:42:31', 'HUM2033', '', '-282948262', 'VALIDE', 'ACTIVE', 705, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3321, '2020-01-18 11:42:45', '2020-01-18 11:42:47', 'HUM2033', '', '-446307856', 'VALIDE', 'ACTIVE', 706, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3322, '2020-01-18 11:42:58', '2020-01-18 11:43:00', 'HUM2033', '', '-1406266380', 'VALIDE', 'ACTIVE', 707, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3323, '2020-01-18 11:43:10', '2020-01-18 11:43:12', 'HUM2033', '', '-857981422', 'VALIDE', 'ACTIVE', 708, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3324, '2020-01-18 11:43:21', '2020-01-18 11:43:25', 'HUM2033', '', '-1792980281', 'VALIDE', 'ACTIVE', 709, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3325, '2020-01-18 11:43:36', '2020-01-18 11:43:38', 'HUM2033', '', '1216276293', 'VALIDE', 'ACTIVE', 710, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3326, '2020-01-18 11:43:49', '2020-01-18 11:43:51', 'HUM2033', '', '-1667259755', 'VALIDE', 'ACTIVE', 711, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3327, '2020-01-18 11:44:02', '2020-01-18 11:44:03', 'HUM2033', '', '-271000729', 'VALIDE', 'ACTIVE', 712, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3328, '2020-01-18 11:44:12', '2020-01-18 11:44:14', 'HUM2033', '', '-1651716596', 'VALIDE', 'ACTIVE', 713, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3329, '2020-01-18 11:44:27', '2020-01-18 11:44:33', 'HUM2033', '', '1752818457', 'VALIDE', 'ACTIVE', 714, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3330, '2020-01-18 11:44:46', '2020-01-18 11:44:52', 'HUM2033', '', '1960392937', 'VALIDE', 'ACTIVE', 715, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3331, '2020-01-18 11:45:06', '2020-01-18 11:45:09', 'HUM2033', '', '1828524451', 'VALIDE', 'ACTIVE', 716, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3332, '2020-01-18 11:45:22', '2020-01-18 11:45:25', 'HUM2033', '', '631920160', 'VALIDE', 'ACTIVE', 717, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3333, '2020-01-18 11:45:38', '2020-01-18 11:45:41', 'HUM2033', '', '-1531389697', 'VALIDE', 'ACTIVE', 719, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3334, '2020-01-18 11:45:54', '2020-01-18 11:45:58', 'HUM2033', '', '-1179319510', 'VALIDE', 'ACTIVE', 720, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3335, '2020-01-18 11:46:11', '2020-01-18 11:46:13', 'HUM2033', '', '-1066479929', 'VALIDE', 'ACTIVE', 721, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3336, '2020-01-18 11:46:26', '2020-01-18 11:46:28', 'HUM2033', '', '-178049640', 'VALIDE', 'ACTIVE', 722, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3337, '2020-01-18 11:46:39', '2020-01-18 11:46:42', 'HUM2033', '', '1298964619', 'VALIDE', 'ACTIVE', 723, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3338, '2020-01-18 11:46:57', '2020-01-18 11:46:59', 'HUM2033', '', '-691586984', 'VALIDE', 'ACTIVE', 724, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3339, '2020-01-18 11:47:18', '2020-01-18 11:47:23', 'HUM2033', '', '1044018642', 'VALIDE', 'ACTIVE', 725, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3340, '2020-01-18 11:47:33', '2020-01-18 11:47:35', 'HUM2033', '', '-1004070219', 'VALIDE', 'ACTIVE', 726, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3341, '2020-01-18 11:47:43', '2020-01-18 11:47:45', 'HUM2033', '', '1313164168', 'VALIDE', 'ACTIVE', 727, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3342, '2020-01-18 11:47:53', '2020-01-18 11:47:56', 'HUM2033', '', '2009678223', 'VALIDE', 'ACTIVE', 728, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3343, '2020-01-18 11:48:05', '2020-01-18 11:48:08', 'HUM2033', '', '791842504', 'VALIDE', 'ACTIVE', 729, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3344, '2020-01-18 11:48:21', '2020-01-18 11:48:24', 'HUM2033', '', '-1867385471', 'VALIDE', 'ACTIVE', 730, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3345, '2020-01-18 11:48:42', '2020-01-18 11:48:42', 'HUM2033', '', '-266899633', 'VALIDE', 'ACTIVE', 731, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3346, '2020-01-18 11:58:25', '2020-01-18 11:58:26', 'HUM2033', '', '163256086', 'VALIDE', 'ACTIVE', 732, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3347, '2020-01-18 11:58:31', '2020-01-18 11:58:32', 'HUM2033', '', '-1220011959', 'VALIDE', 'ACTIVE', 733, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3348, '2020-01-18 11:58:36', '2020-01-18 11:58:37', 'HUM2033', '', '-679442910', 'VALIDE', 'ACTIVE', 734, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3349, '2020-01-18 11:58:42', '2020-01-18 11:58:43', 'HUM2033', '', '-217292487', 'VALIDE', 'ACTIVE', 735, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3350, '2020-01-18 11:58:48', '2020-01-18 11:58:49', 'HUM2033', '', '637137840', 'VALIDE', 'ACTIVE', 736, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3351, '2020-01-18 11:58:54', '2020-01-18 11:58:57', 'HUM2033', '', '-1430613527', 'VALIDE', 'ACTIVE', 737, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3352, '2020-01-18 11:59:02', '2020-01-18 11:59:03', 'HUM2033', '', '860285366', 'VALIDE', 'ACTIVE', 738, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3353, '2020-01-18 11:59:08', '2020-01-18 11:59:09', 'HUM2033', '', '1728143476', 'VALIDE', 'ACTIVE', 739, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3354, '2020-01-18 11:59:14', '2020-01-18 11:59:15', 'HUM2033', '', '1915952196', 'VALIDE', 'ACTIVE', 740, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3355, '2020-01-18 11:59:21', '2020-01-18 11:59:22', 'HUM2033', '', '-2128867828', 'VALIDE', 'ACTIVE', 741, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3356, '2020-01-18 11:59:27', '2020-01-18 11:59:28', 'HUM2033', '', '-71820315', 'VALIDE', 'ACTIVE', 742, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3357, '2020-01-18 11:59:33', '2020-01-18 11:59:34', 'HUM2033', '', '-850390354', 'VALIDE', 'ACTIVE', 743, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3358, '2020-01-18 11:59:39', '2020-01-18 11:59:40', 'HUM2033', '', '-754479199', 'VALIDE', 'ACTIVE', 744, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3359, '2020-01-18 11:59:44', '2020-01-18 11:59:45', 'HUM2033', '', '700408380', 'VALIDE', 'ACTIVE', 745, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3360, '2020-01-18 11:59:50', '2020-01-18 11:59:51', 'HUM2033', '', '87806422', 'VALIDE', 'ACTIVE', 746, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3361, '2020-01-18 11:59:57', '2020-01-18 11:59:58', 'HUM2033', '', '370800495', 'VALIDE', 'ACTIVE', 747, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3362, '2020-01-18 12:00:02', '2020-01-18 12:00:03', 'HUM2033', '', '356438529', 'VALIDE', 'ACTIVE', 748, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3363, '2020-01-18 12:00:08', '2020-01-18 12:00:09', 'HUM2033', '', '-912129703', 'VALIDE', 'ACTIVE', 749, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3364, '2020-01-18 12:00:13', '2020-01-18 12:00:14', 'HUM2033', '', '379231680', 'VALIDE', 'ACTIVE', 750, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3365, '2020-01-18 12:00:19', '2020-01-18 12:00:20', 'HUM2033', '', '-1889544923', 'VALIDE', 'ACTIVE', 751, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3366, '2020-01-18 12:00:25', '2020-01-18 12:00:26', 'HUM2033', '', '1074494793', 'VALIDE', 'ACTIVE', 752, 205, 1926, 205);
INSERT INTO `est_inscrit` VALUES (3370, '2020-01-18 12:26:26', '2020-01-18 12:26:28', 'PHY2033', '', '1734058529', 'VALIDE', 'ACTIVE', 702, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3371, '2020-01-18 12:26:36', '2020-01-18 12:26:37', 'PHY2033', '', '1849469465', 'VALIDE', 'ACTIVE', 703, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3372, '2020-01-18 12:26:46', '2020-01-18 12:26:48', 'PHY2033', '', '-1190860522', 'VALIDE', 'ACTIVE', 704, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3373, '2020-01-18 12:26:58', '2020-01-18 12:27:00', 'PHY2033', '', '-1712703645', 'VALIDE', 'ACTIVE', 705, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3374, '2020-01-18 12:27:08', '2020-01-18 12:27:11', 'PHY2033', '', '-1307188868', 'VALIDE', 'ACTIVE', 706, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3375, '2020-01-18 12:27:20', '2020-01-18 12:27:21', 'PHY2033', '', '1325880666', 'VALIDE', 'ACTIVE', 707, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3376, '2020-01-18 12:27:29', '2020-01-18 12:27:31', 'PHY2033', '', '1492066179', 'VALIDE', 'ACTIVE', 708, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3377, '2020-01-18 12:27:41', '2020-01-18 12:27:43', 'PHY2033', '', '1807955786', 'VALIDE', 'ACTIVE', 709, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3378, '2020-01-18 12:27:50', '2020-01-18 12:27:52', 'PHY2033', '', '1368516675', 'VALIDE', 'ACTIVE', 710, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3379, '2020-01-18 12:28:02', '2020-01-18 12:28:04', 'PHY2033', '', '1913866222', 'VALIDE', 'ACTIVE', 711, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3380, '2020-01-18 12:28:13', '2020-01-18 12:28:14', 'PHY2033', '', '41804052', 'VALIDE', 'ACTIVE', 712, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3381, '2020-01-18 12:28:23', '2020-01-18 12:28:25', 'PHY2033', '', '1462142897', 'VALIDE', 'ACTIVE', 713, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3382, '2020-01-18 12:28:36', '2020-01-18 12:28:37', 'PHY2033', '', '1634404657', 'VALIDE', 'ACTIVE', 714, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3383, '2020-01-18 12:28:47', '2020-01-18 12:28:48', 'PHY2033', '', '1277172931', 'VALIDE', 'ACTIVE', 715, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3384, '2020-01-18 12:28:55', '2020-01-18 12:28:57', 'PHY2033', '', '1436851705', 'VALIDE', 'ACTIVE', 716, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3385, '2020-01-18 12:29:05', '2020-01-18 12:29:07', 'PHY2033', '', '-208965258', 'VALIDE', 'ACTIVE', 717, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3386, '2020-01-18 12:29:15', '2020-01-18 12:29:17', 'PHY2033', '', '-1398361501', 'VALIDE', 'ACTIVE', 719, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3387, '2020-01-18 12:29:26', '2020-01-18 12:29:28', 'PHY2033', '', '913187193', 'VALIDE', 'ACTIVE', 720, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3388, '2020-01-18 12:29:38', '2020-01-18 12:29:39', 'PHY2033', '', '521839095', 'VALIDE', 'ACTIVE', 721, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3389, '2020-01-18 12:29:51', '2020-01-18 12:29:52', 'PHY2033', '', '-1690772', 'VALIDE', 'ACTIVE', 722, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3390, '2020-01-18 12:30:02', '2020-01-18 12:30:05', 'PHY2033', '', '-1526461483', 'VALIDE', 'ACTIVE', 723, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3391, '2020-01-18 12:30:15', '2020-01-18 12:30:16', 'PHY2033', '', '2075696073', 'VALIDE', 'ACTIVE', 724, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3392, '2020-01-18 12:30:25', '2020-01-18 12:30:27', 'PHY2033', '', '-1129186816', 'VALIDE', 'ACTIVE', 725, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3393, '2020-01-18 12:30:36', '2020-01-18 12:30:38', 'PHY2033', '', '83754127', 'VALIDE', 'ACTIVE', 726, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3394, '2020-01-18 12:30:50', '2020-01-18 12:30:52', 'PHY2033', '', '1117916007', 'VALIDE', 'ACTIVE', 727, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3395, '2020-01-18 12:31:01', '2020-01-18 12:31:03', 'PHY2033', '', '-768040805', 'VALIDE', 'ACTIVE', 728, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3396, '2020-01-18 12:31:11', '2020-01-18 12:31:12', 'PHY2033', '', '-1264137458', 'VALIDE', 'ACTIVE', 729, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3397, '2020-01-18 12:31:20', '2020-01-18 12:31:21', 'PHY2033', '', '791186524', 'VALIDE', 'ACTIVE', 730, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3398, '2020-01-18 12:31:33', '2020-01-18 12:31:34', 'PHY2033', '', '1829610150', 'VALIDE', 'ACTIVE', 731, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3399, '2020-01-18 12:31:46', '2020-01-18 12:31:48', 'PHY2033', '', '692401944', 'VALIDE', 'ACTIVE', 732, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3400, '2020-01-18 12:31:59', '2020-01-18 12:32:02', 'PHY2033', '', '10193214', 'VALIDE', 'ACTIVE', 733, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3401, '2020-01-18 12:32:13', '2020-01-18 12:32:19', 'PHY2033', '', '304268028', 'VALIDE', 'ACTIVE', 734, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3402, '2020-01-18 12:32:32', '2020-01-18 12:32:34', 'PHY2033', '', '93905696', 'VALIDE', 'ACTIVE', 735, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3403, '2020-01-18 12:32:45', '2020-01-18 12:32:47', 'PHY2033', '', '771664', 'VALIDE', 'ACTIVE', 736, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3404, '2020-01-18 12:32:56', '2020-01-18 12:32:58', 'PHY2033', '', '-1519631343', 'VALIDE', 'ACTIVE', 737, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3405, '2020-01-18 12:33:09', '2020-01-18 12:33:11', 'PHY2033', '', '1081984411', 'VALIDE', 'ACTIVE', 738, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3406, '2020-01-18 12:33:22', '2020-01-18 12:33:25', 'PHY2033', '', '327443035', 'VALIDE', 'ACTIVE', 739, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3407, '2020-01-18 12:33:40', '2020-01-18 12:33:42', 'PHY2033', '', '222472976', 'VALIDE', 'ACTIVE', 740, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3408, '2020-01-18 12:33:53', '2020-01-18 12:33:55', 'PHY2033', '', '-561712920', 'VALIDE', 'ACTIVE', 741, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3409, '2020-01-18 12:34:07', '2020-01-18 12:34:10', 'PHY2033', '', '-479766255', 'VALIDE', 'ACTIVE', 742, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3410, '2020-01-18 12:34:21', '2020-01-18 12:34:23', 'PHY2033', '', '258776855', 'VALIDE', 'ACTIVE', 743, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3411, '2020-01-18 12:34:34', '2020-01-18 12:34:36', 'PHY2033', '', '-1587428764', 'VALIDE', 'ACTIVE', 744, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3412, '2020-01-18 12:34:48', '2020-01-18 12:34:50', 'PHY2033', '', '-1229303792', 'VALIDE', 'ACTIVE', 745, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3413, '2020-01-18 12:35:04', '2020-01-18 12:35:06', 'PHY2033', '', '484665507', 'VALIDE', 'ACTIVE', 746, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3414, '2020-01-18 12:35:16', '2020-01-18 12:35:18', 'PHY2033', '', '1262993633', 'VALIDE', 'ACTIVE', 747, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3415, '2020-01-18 12:35:29', '2020-01-18 12:35:31', 'PHY2033', '', '1170960947', 'VALIDE', 'ACTIVE', 748, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3416, '2020-01-18 12:35:40', '2020-01-18 12:35:43', 'PHY2033', '', '-1909607110', 'VALIDE', 'ACTIVE', 749, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3417, '2020-01-18 12:35:52', '2020-01-18 12:35:54', 'PHY2033', '', '142254166', 'VALIDE', 'ACTIVE', 750, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3418, '2020-01-18 12:36:06', '2020-01-18 12:36:08', 'PHY2033', '', '-689598872', 'VALIDE', 'ACTIVE', 751, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3419, '2020-01-18 12:36:17', '2020-01-18 12:36:19', 'PHY2033', '', '-94349720', 'VALIDE', 'ACTIVE', 752, 205, 3368, 205);
INSERT INTO `est_inscrit` VALUES (3420, '2020-01-18 12:40:15', '2020-01-18 12:40:17', 'INP3256', '', '-1309069802', 'VALIDE', 'ACTIVE', 805, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3421, '2020-01-18 12:40:26', '2020-01-18 12:40:29', 'INP3256', '', '-1072072169', 'VALIDE', 'ACTIVE', 806, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3422, '2020-01-18 12:40:40', '2020-01-18 12:40:43', 'INP3256', '', '-1528515119', 'VALIDE', 'ACTIVE', 807, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3423, '2020-01-18 12:40:52', '2020-01-18 12:40:53', 'INP3256', '', '-1021238100', 'VALIDE', 'ACTIVE', 808, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3424, '2020-01-18 12:41:01', '2020-01-18 12:41:03', 'INP3256', '', '1143527719', 'VALIDE', 'ACTIVE', 809, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3425, '2020-01-18 12:41:17', '2020-01-18 12:41:20', 'INP3256', '', '-2100344043', 'VALIDE', 'ACTIVE', 810, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3426, '2020-01-18 12:41:33', '2020-01-18 12:41:36', 'INP3256', '', '-1422056363', 'VALIDE', 'ACTIVE', 811, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3427, '2020-01-18 12:41:46', '2020-01-18 12:41:48', 'INP3256', '', '-246149742', 'VALIDE', 'ACTIVE', 812, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3428, '2020-01-18 12:42:04', '2020-01-18 12:42:09', 'INP3256', '', '1654495204', 'VALIDE', 'ACTIVE', 813, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3429, '2020-01-18 12:42:22', '2020-01-18 12:42:24', 'INP3256', '', '-965446926', 'VALIDE', 'ACTIVE', 814, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3430, '2020-01-18 12:42:34', '2020-01-18 12:42:37', 'INP3256', '', '425240736', 'VALIDE', 'ACTIVE', 815, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3431, '2020-01-18 12:42:49', '2020-01-18 12:42:53', 'INP3256', '', '1146594262', 'VALIDE', 'ACTIVE', 816, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3432, '2020-01-18 12:43:03', '2020-01-18 12:43:05', 'INP3256', '', '-990256392', 'VALIDE', 'ACTIVE', 817, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3433, '2020-01-18 12:43:19', '2020-01-18 12:43:21', 'INP3256', '', '-796533950', 'VALIDE', 'ACTIVE', 818, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3434, '2020-01-18 12:43:31', '2020-01-18 12:43:33', 'INP3256', '', '-1668968391', 'VALIDE', 'ACTIVE', 819, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3435, '2020-01-18 14:52:29', '2020-01-18 14:52:30', 'INP3256', '', '-1339811461', 'VALIDE', 'ACTIVE', 805, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3436, '2020-01-18 14:52:34', '2020-01-18 14:52:35', 'INP3256', '', '-1312349841', 'VALIDE', 'ACTIVE', 806, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3437, '2020-01-18 14:52:39', '2020-01-18 14:52:39', 'INP3256', '', '2030047428', 'VALIDE', 'ACTIVE', 807, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3438, '2020-01-18 14:52:43', '2020-01-18 14:52:44', 'INP3256', '', '1870539514', 'VALIDE', 'ACTIVE', 808, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3439, '2020-01-18 14:52:48', '2020-01-18 14:52:49', 'INP3256', '', '-1607063246', 'VALIDE', 'ACTIVE', 809, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3440, '2020-01-18 14:52:52', '2020-01-18 14:52:53', 'INP3256', '', '-444304471', 'VALIDE', 'ACTIVE', 810, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3441, '2020-01-18 14:52:57', '2020-01-18 14:52:58', 'INP3256', '', '710591913', 'VALIDE', 'ACTIVE', 811, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3442, '2020-01-18 14:53:02', '2020-01-18 14:53:03', 'INP3256', '', '191500959', 'VALIDE', 'ACTIVE', 812, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3443, '2020-01-18 14:53:07', '2020-01-18 14:53:07', 'INP3256', '', '-793765205', 'VALIDE', 'ACTIVE', 813, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3444, '2020-01-18 14:53:11', '2020-01-18 14:53:12', 'INP3256', '', '-520140351', 'VALIDE', 'ACTIVE', 814, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3445, '2020-01-18 14:53:16', '2020-01-18 14:53:17', 'INP3256', '', '1592855165', 'VALIDE', 'ACTIVE', 815, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3446, '2020-01-18 14:53:20', '2020-01-18 14:53:22', 'INP3256', '', '-1454349954', 'VALIDE', 'ACTIVE', 816, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3447, '2020-01-18 14:53:26', '2020-01-18 14:53:27', 'INP3256', '', '940978563', 'VALIDE', 'ACTIVE', 817, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3448, '2020-01-18 14:53:31', '2020-01-18 14:53:32', 'INP3256', '', '-744172386', 'VALIDE', 'ACTIVE', 818, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3449, '2020-01-18 14:53:36', '2020-01-18 14:53:36', 'INP3256', '', '-1334968514', 'VALIDE', 'ACTIVE', 819, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3450, '2020-01-18 15:01:12', '2020-01-18 15:01:13', 'INP3256', '', '1988836416', 'VALIDE', 'ACTIVE', 820, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3451, '2020-01-18 15:01:17', '2020-01-18 15:01:19', 'INP3256', '', '556853302', 'VALIDE', 'ACTIVE', 821, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3452, '2020-01-18 15:01:23', '2020-01-18 15:01:24', 'INP3256', '', '-1862703179', 'VALIDE', 'ACTIVE', 816, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3453, '2020-01-18 15:01:28', '2020-01-18 15:01:28', 'INP3256', '', '-1301419176', 'VALIDE', 'ACTIVE', 823, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3454, '2020-01-18 15:01:33', '2020-01-18 15:01:34', 'INP3256', '', '-1730561492', 'VALIDE', 'ACTIVE', 824, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3455, '2020-01-18 15:01:38', '2020-01-18 15:01:38', 'INP3256', '', '1987972166', 'VALIDE', 'ACTIVE', 825, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3456, '2020-01-18 15:01:42', '2020-01-18 15:01:43', 'INP3256', '', '634841601', 'VALIDE', 'ACTIVE', 826, 205, 2381, 205);
INSERT INTO `est_inscrit` VALUES (3457, '2020-01-18 15:10:53', '2020-01-18 15:10:54', 'INP3195', '', '390676262', 'VALIDE', 'ACTIVE', 820, 205, 2380, 205);
INSERT INTO `est_inscrit` VALUES (3458, '2020-01-18 15:10:58', '2020-01-18 15:10:59', 'INP3195', '', '1535011027', 'VALIDE', 'ACTIVE', 821, 205, 2380, 205);
INSERT INTO `est_inscrit` VALUES (3459, '2020-01-18 15:11:02', '2020-01-18 15:11:03', 'INP3195', '', '-2109196682', 'VALIDE', 'ACTIVE', 822, 205, 2380, 205);
INSERT INTO `est_inscrit` VALUES (3460, '2020-01-18 15:11:07', '2020-01-18 15:11:08', 'INP3195', '', '-992848973', 'VALIDE', 'ACTIVE', 823, 205, 2380, 205);
INSERT INTO `est_inscrit` VALUES (3461, '2020-01-18 15:11:12', '2020-01-18 15:11:12', 'INP3195', '', '1668871071', 'VALIDE', 'ACTIVE', 824, 205, 2380, 205);
INSERT INTO `est_inscrit` VALUES (3462, '2020-01-18 15:11:16', '2020-01-18 15:11:17', 'INP3195', '', '1425680883', 'VALIDE', 'ACTIVE', 825, 205, 2380, 205);
INSERT INTO `est_inscrit` VALUES (3463, '2020-01-18 15:11:21', '2020-01-18 15:11:22', 'INP3195', '', '-1317783865', 'VALIDE', 'ACTIVE', 826, 205, 2380, 205);
INSERT INTO `est_inscrit` VALUES (3464, '2020-01-18 15:14:16', '2020-01-18 15:14:17', 'INP3205', '', '1841684221', 'VALIDE', 'ACTIVE', 805, 205, 2382, 205);
INSERT INTO `est_inscrit` VALUES (3465, '2020-01-18 15:14:20', '2020-01-18 15:14:21', 'INP3205', '', '1956325705', 'VALIDE', 'ACTIVE', 806, 205, 2382, 205);
INSERT INTO `est_inscrit` VALUES (3466, '2020-01-18 15:14:25', '2020-01-18 15:14:26', 'INP3205', '', '75047334', 'VALIDE', 'ACTIVE', 807, 205, 2382, 205);
INSERT INTO `est_inscrit` VALUES (3467, '2020-01-18 15:14:30', '2020-01-18 15:14:31', 'INP3205', '', '-2015020134', 'VALIDE', 'ACTIVE', 808, 205, 2382, 205);
INSERT INTO `est_inscrit` VALUES (3468, '2020-01-18 15:14:34', '2020-01-18 15:14:35', 'INP3205', '', '-551111316', 'VALIDE', 'ACTIVE', 809, 205, 2382, 205);
INSERT INTO `est_inscrit` VALUES (3469, '2020-01-18 15:14:40', '2020-01-18 15:14:41', 'INP3205', '', '-1093928098', 'VALIDE', 'ACTIVE', 810, 205, 2382, 205);
INSERT INTO `est_inscrit` VALUES (3470, '2020-01-18 15:14:44', '2020-01-18 15:14:45', 'INP3205', '', '1975827983', 'VALIDE', 'ACTIVE', 811, 205, 2382, 205);
INSERT INTO `est_inscrit` VALUES (3471, '2020-01-18 15:14:49', '2020-01-18 15:14:50', 'INP3205', '', '-782042583', 'VALIDE', 'ACTIVE', 812, 205, 2382, 205);
INSERT INTO `est_inscrit` VALUES (3472, '2020-01-18 15:14:54', '2020-01-18 15:14:55', 'INP3205', '', '148772381', 'VALIDE', 'ACTIVE', 813, 205, 2382, 205);
INSERT INTO `est_inscrit` VALUES (3473, '2020-01-18 15:14:58', '2020-01-18 15:14:59', 'INP3205', '', '-561472388', 'VALIDE', 'ACTIVE', 814, 205, 2382, 205);
INSERT INTO `est_inscrit` VALUES (3474, '2020-01-18 15:15:03', '2020-01-18 15:15:04', 'INP3205', '', '-1082923215', 'VALIDE', 'ACTIVE', 815, 205, 2382, 205);
INSERT INTO `est_inscrit` VALUES (3475, '2020-01-18 15:15:07', '2020-01-18 15:15:08', 'INP3205', '', '526300974', 'VALIDE', 'ACTIVE', 816, 205, 2382, 205);
INSERT INTO `est_inscrit` VALUES (3476, '2020-01-18 15:15:12', '2020-01-18 15:15:13', 'INP3205', '', '1416885684', 'VALIDE', 'ACTIVE', 817, 205, 2382, 205);
INSERT INTO `est_inscrit` VALUES (3477, '2020-01-18 15:15:17', '2020-01-18 15:15:18', 'INP3205', '', '-393698345', 'VALIDE', 'ACTIVE', 818, 205, 2382, 205);
INSERT INTO `est_inscrit` VALUES (3478, '2020-01-18 15:15:21', '2020-01-18 15:15:22', 'INP3205', '', '-1361328641', 'VALIDE', 'ACTIVE', 819, 205, 2382, 205);
INSERT INTO `est_inscrit` VALUES (3479, '2020-01-18 15:15:26', '2020-01-18 15:15:27', 'INP3205', '', '-1668396952', 'VALIDE', 'ACTIVE', 820, 205, 2382, 205);
INSERT INTO `est_inscrit` VALUES (3480, '2020-01-18 15:15:31', '2020-01-18 15:15:32', 'INP3205', '', '1453007603', 'VALIDE', 'ACTIVE', 821, 205, 2382, 205);
INSERT INTO `est_inscrit` VALUES (3481, '2020-01-18 15:15:35', '2020-01-18 15:15:36', 'INP3205', '', '-1571276801', 'VALIDE', 'ACTIVE', 822, 205, 2382, 205);
INSERT INTO `est_inscrit` VALUES (3482, '2020-01-18 15:15:40', '2020-01-18 15:15:41', 'INP3205', '', '1244355651', 'VALIDE', 'ACTIVE', 823, 205, 2382, 205);
INSERT INTO `est_inscrit` VALUES (3483, '2020-01-18 15:15:45', '2020-01-18 15:15:47', 'INP3205', '', '-651171055', 'VALIDE', 'ACTIVE', 824, 205, 2382, 205);
INSERT INTO `est_inscrit` VALUES (3484, '2020-01-18 15:15:51', '2020-01-18 15:15:52', 'INP3205', '', '179143807', 'VALIDE', 'ACTIVE', 825, 205, 2382, 205);
INSERT INTO `est_inscrit` VALUES (3485, '2020-01-18 15:15:55', '2020-01-18 15:15:56', 'INP3205', '', '-37033094', 'VALIDE', 'ACTIVE', 826, 205, 2382, 205);
INSERT INTO `est_inscrit` VALUES (3486, '2020-01-18 15:18:05', '2020-01-18 15:18:06', 'INP3215', '', '-916921017', 'VALIDE', 'ACTIVE', 805, 205, 2383, 205);
INSERT INTO `est_inscrit` VALUES (3487, '2020-01-18 15:18:10', '2020-01-18 15:18:11', 'INP3215', '', '-760150146', 'VALIDE', 'ACTIVE', 806, 205, 2383, 205);
INSERT INTO `est_inscrit` VALUES (3488, '2020-01-18 15:18:14', '2020-01-18 15:18:15', 'INP3215', '', '-1620880212', 'VALIDE', 'ACTIVE', 807, 205, 2383, 205);
INSERT INTO `est_inscrit` VALUES (3489, '2020-01-18 15:18:19', '2020-01-18 15:18:20', 'INP3215', '', '-1865763440', 'VALIDE', 'ACTIVE', 808, 205, 2383, 205);
INSERT INTO `est_inscrit` VALUES (3490, '2020-01-18 15:18:24', '2020-01-18 15:18:25', 'INP3215', '', '614327369', 'VALIDE', 'ACTIVE', 809, 205, 2383, 205);
INSERT INTO `est_inscrit` VALUES (3491, '2020-01-18 15:18:29', '2020-01-18 15:18:29', 'INP3215', '', '1514526132', 'VALIDE', 'ACTIVE', 810, 205, 2383, 205);
INSERT INTO `est_inscrit` VALUES (3492, '2020-01-18 15:18:33', '2020-01-18 15:18:34', 'INP3215', '', '-1115039436', 'VALIDE', 'ACTIVE', 811, 205, 2383, 205);
INSERT INTO `est_inscrit` VALUES (3493, '2020-01-18 15:18:38', '2020-01-18 15:18:39', 'INP3215', '', '-1152272073', 'VALIDE', 'ACTIVE', 812, 205, 2383, 205);
INSERT INTO `est_inscrit` VALUES (3494, '2020-01-18 15:18:42', '2020-01-18 15:18:43', 'INP3215', '', '1950255691', 'VALIDE', 'ACTIVE', 813, 205, 2383, 205);
INSERT INTO `est_inscrit` VALUES (3495, '2020-01-18 15:18:47', '2020-01-18 15:18:48', 'INP3215', '', '-736135085', 'VALIDE', 'ACTIVE', 814, 205, 2383, 205);
INSERT INTO `est_inscrit` VALUES (3496, '2020-01-18 15:18:51', '2020-01-18 15:18:52', 'INP3215', '', '-1910923328', 'VALIDE', 'ACTIVE', 815, 205, 2383, 205);
INSERT INTO `est_inscrit` VALUES (3497, '2020-01-18 15:18:56', '2020-01-18 15:18:57', 'INP3215', '', '101428305', 'VALIDE', 'ACTIVE', 816, 205, 2383, 205);
INSERT INTO `est_inscrit` VALUES (3498, '2020-01-18 15:19:01', '2020-01-18 15:19:01', 'INP3215', '', '1000730387', 'VALIDE', 'ACTIVE', 817, 205, 2383, 205);
INSERT INTO `est_inscrit` VALUES (3499, '2020-01-18 15:19:05', '2020-01-18 15:19:06', 'INP3215', '', '-1489931199', 'VALIDE', 'ACTIVE', 818, 205, 2383, 205);
INSERT INTO `est_inscrit` VALUES (3500, '2020-01-18 15:19:11', '2020-01-18 15:19:12', 'INP3215', '', '-1955281546', 'VALIDE', 'ACTIVE', 819, 205, 2383, 205);
INSERT INTO `est_inscrit` VALUES (3501, '2020-01-18 15:19:15', '2020-01-18 15:19:17', 'INP3215', '', '854724194', 'VALIDE', 'ACTIVE', 820, 205, 2383, 205);
INSERT INTO `est_inscrit` VALUES (3502, '2020-01-18 15:19:21', '2020-01-18 15:19:22', 'INP3215', '', '446777028', 'VALIDE', 'ACTIVE', 821, 205, 2383, 205);
INSERT INTO `est_inscrit` VALUES (3503, '2020-01-18 15:19:26', '2020-01-18 15:19:26', 'INP3215', '', '418174042', 'VALIDE', 'ACTIVE', 822, 205, 2383, 205);
INSERT INTO `est_inscrit` VALUES (3504, '2020-01-18 15:19:30', '2020-01-18 15:19:31', 'INP3215', '', '-1865240947', 'VALIDE', 'ACTIVE', 823, 205, 2383, 205);
INSERT INTO `est_inscrit` VALUES (3505, '2020-01-18 15:19:35', '2020-01-18 15:19:36', 'INP3215', '', '-1513149998', 'VALIDE', 'ACTIVE', 824, 205, 2383, 205);
INSERT INTO `est_inscrit` VALUES (3506, '2020-01-18 15:19:39', '2020-01-18 15:19:40', 'INP3215', '', '1997061668', 'VALIDE', 'ACTIVE', 825, 205, 2383, 205);
INSERT INTO `est_inscrit` VALUES (3507, '2020-01-18 15:19:44', '2020-01-18 15:19:45', 'INP3215', '', '1213517699', 'VALIDE', 'ACTIVE', 826, 205, 2383, 205);
INSERT INTO `est_inscrit` VALUES (3508, '2020-01-18 15:21:02', '2020-01-18 15:21:03', 'INP3225', '', '453790515', 'VALIDE', 'ACTIVE', 805, 205, 2384, 205);
INSERT INTO `est_inscrit` VALUES (3509, '2020-01-18 15:21:06', '2020-01-18 15:21:07', 'INP3225', '', '541304313', 'VALIDE', 'ACTIVE', 806, 205, 2384, 205);
INSERT INTO `est_inscrit` VALUES (3510, '2020-01-18 15:21:11', '2020-01-18 15:21:12', 'INP3225', '', '-1929016011', 'VALIDE', 'ACTIVE', 807, 205, 2384, 205);
INSERT INTO `est_inscrit` VALUES (3511, '2020-01-18 15:21:15', '2020-01-18 15:21:16', 'INP3225', '', '-495320027', 'VALIDE', 'ACTIVE', 808, 205, 2384, 205);
INSERT INTO `est_inscrit` VALUES (3512, '2020-01-18 15:21:20', '2020-01-18 15:21:21', 'INP3225', '', '-201987259', 'VALIDE', 'ACTIVE', 809, 205, 2384, 205);
INSERT INTO `est_inscrit` VALUES (3513, '2020-01-18 15:21:25', '2020-01-18 15:21:26', 'INP3225', '', '678590626', 'VALIDE', 'ACTIVE', 810, 205, 2384, 205);
INSERT INTO `est_inscrit` VALUES (3514, '2020-01-18 15:21:30', '2020-01-18 15:21:31', 'INP3225', '', '442152634', 'VALIDE', 'ACTIVE', 811, 205, 2384, 205);
INSERT INTO `est_inscrit` VALUES (3515, '2020-01-18 15:21:34', '2020-01-18 15:21:35', 'INP3225', '', '313705647', 'VALIDE', 'ACTIVE', 812, 205, 2384, 205);
INSERT INTO `est_inscrit` VALUES (3516, '2020-01-18 15:21:39', '2020-01-18 15:21:40', 'INP3225', '', '-1599762414', 'VALIDE', 'ACTIVE', 813, 205, 2384, 205);
INSERT INTO `est_inscrit` VALUES (3517, '2020-01-18 15:21:44', '2020-01-18 15:21:44', 'INP3225', '', '195443599', 'VALIDE', 'ACTIVE', 814, 205, 2384, 205);
INSERT INTO `est_inscrit` VALUES (3518, '2020-01-18 15:21:48', '2020-01-18 15:21:49', 'INP3225', '', '729801444', 'VALIDE', 'ACTIVE', 815, 205, 2384, 205);
INSERT INTO `est_inscrit` VALUES (3519, '2020-01-18 15:21:53', '2020-01-18 15:21:54', 'INP3225', '', '-1990070234', 'VALIDE', 'ACTIVE', 816, 205, 2384, 205);
INSERT INTO `est_inscrit` VALUES (3520, '2020-01-18 15:21:57', '2020-01-18 15:21:58', 'INP3225', '', '1385677849', 'VALIDE', 'ACTIVE', 817, 205, 2384, 205);
INSERT INTO `est_inscrit` VALUES (3521, '2020-01-18 15:22:02', '2020-01-18 15:22:03', 'INP3225', '', '1401033074', 'VALIDE', 'ACTIVE', 818, 205, 2384, 205);
INSERT INTO `est_inscrit` VALUES (3522, '2020-01-18 15:22:06', '2020-01-18 15:22:07', 'INP3225', '', '1177924491', 'VALIDE', 'ACTIVE', 819, 205, 2384, 205);
INSERT INTO `est_inscrit` VALUES (3523, '2020-01-18 15:22:11', '2020-01-18 15:22:12', 'INP3225', '', '-1848381572', 'VALIDE', 'ACTIVE', 820, 205, 2384, 205);
INSERT INTO `est_inscrit` VALUES (3524, '2020-01-18 15:22:16', '2020-01-18 15:22:17', 'INP3225', '', '1936399704', 'VALIDE', 'ACTIVE', 821, 205, 2384, 205);
INSERT INTO `est_inscrit` VALUES (3525, '2020-01-18 15:22:21', '2020-01-18 15:22:22', 'INP3225', '', '-1758564343', 'VALIDE', 'ACTIVE', 822, 205, 2384, 205);
INSERT INTO `est_inscrit` VALUES (3526, '2020-01-18 15:22:26', '2020-01-18 15:22:27', 'INP3225', '', '-1655597747', 'VALIDE', 'ACTIVE', 823, 205, 2384, 205);
INSERT INTO `est_inscrit` VALUES (3527, '2020-01-18 15:22:30', '2020-01-18 15:22:31', 'INP3225', '', '42778411', 'VALIDE', 'ACTIVE', 824, 205, 2384, 205);
INSERT INTO `est_inscrit` VALUES (3528, '2020-01-18 15:22:35', '2020-01-18 15:22:36', 'INP3225', '', '-1651125839', 'VALIDE', 'ACTIVE', 825, 205, 2384, 205);
INSERT INTO `est_inscrit` VALUES (3529, '2020-01-18 15:22:40', '2020-01-18 15:22:40', 'INP3225', '', '483859922', 'VALIDE', 'ACTIVE', 826, 205, 2384, 205);
INSERT INTO `est_inscrit` VALUES (3530, '2020-01-18 15:23:36', '2020-01-18 15:23:37', 'INP3286', '', '39779034', 'VALIDE', 'ACTIVE', 805, 205, 2385, 205);
INSERT INTO `est_inscrit` VALUES (3531, '2020-01-18 15:23:41', '2020-01-18 15:23:41', 'INP3286', '', '434111403', 'VALIDE', 'ACTIVE', 806, 205, 2385, 205);
INSERT INTO `est_inscrit` VALUES (3532, '2020-01-18 15:23:45', '2020-01-18 15:23:46', 'INP3286', '', '1334101869', 'VALIDE', 'ACTIVE', 807, 205, 2385, 205);
INSERT INTO `est_inscrit` VALUES (3533, '2020-01-18 15:23:50', '2020-01-18 15:23:51', 'INP3286', '', '466614146', 'VALIDE', 'ACTIVE', 808, 205, 2385, 205);
INSERT INTO `est_inscrit` VALUES (3534, '2020-01-18 15:23:54', '2020-01-18 15:23:55', 'INP3286', '', '1298741793', 'VALIDE', 'ACTIVE', 809, 205, 2385, 205);
INSERT INTO `est_inscrit` VALUES (3535, '2020-01-18 15:23:59', '2020-01-18 15:24:00', 'INP3286', '', '-1027331266', 'VALIDE', 'ACTIVE', 810, 205, 2385, 205);
INSERT INTO `est_inscrit` VALUES (3536, '2020-01-18 15:24:03', '2020-01-18 15:24:04', 'INP3286', '', '-1726395552', 'VALIDE', 'ACTIVE', 811, 205, 2385, 205);
INSERT INTO `est_inscrit` VALUES (3537, '2020-01-18 15:24:08', '2020-01-18 15:24:09', 'INP3286', '', '2064839983', 'VALIDE', 'ACTIVE', 812, 205, 2385, 205);
INSERT INTO `est_inscrit` VALUES (3538, '2020-01-18 15:24:13', '2020-01-18 15:24:14', 'INP3286', '', '-93802847', 'VALIDE', 'ACTIVE', 813, 205, 2385, 205);
INSERT INTO `est_inscrit` VALUES (3539, '2020-01-18 15:24:17', '2020-01-18 15:24:18', 'INP3286', '', '-801723918', 'VALIDE', 'ACTIVE', 814, 205, 2385, 205);
INSERT INTO `est_inscrit` VALUES (3540, '2020-01-18 15:24:22', '2020-01-18 15:24:23', 'INP3286', '', '993293055', 'VALIDE', 'ACTIVE', 815, 205, 2385, 205);
INSERT INTO `est_inscrit` VALUES (3541, '2020-01-18 15:24:26', '2020-01-18 15:24:27', 'INP3286', '', '79144195', 'VALIDE', 'ACTIVE', 816, 205, 2385, 205);
INSERT INTO `est_inscrit` VALUES (3542, '2020-01-18 15:24:31', '2020-01-18 15:24:32', 'INP3286', '', '-386416863', 'VALIDE', 'ACTIVE', 817, 205, 2385, 205);
INSERT INTO `est_inscrit` VALUES (3543, '2020-01-18 15:24:36', '2020-01-18 15:24:36', 'INP3286', '', '-1114510875', 'VALIDE', 'ACTIVE', 818, 205, 2385, 205);
INSERT INTO `est_inscrit` VALUES (3544, '2020-01-18 15:24:40', '2020-01-18 15:24:41', 'INP3286', '', '1319080762', 'VALIDE', 'ACTIVE', 819, 205, 2385, 205);
INSERT INTO `est_inscrit` VALUES (3545, '2020-01-18 15:24:45', '2020-01-18 15:24:46', 'INP3286', '', '1045456091', 'VALIDE', 'ACTIVE', 820, 205, 2385, 205);
INSERT INTO `est_inscrit` VALUES (3546, '2020-01-18 15:24:49', '2020-01-18 15:24:50', 'INP3286', '', '1108969397', 'VALIDE', 'ACTIVE', 821, 205, 2385, 205);
INSERT INTO `est_inscrit` VALUES (3547, '2020-01-18 15:24:54', '2020-01-18 15:24:55', 'INP3286', '', '1537570743', 'VALIDE', 'ACTIVE', 822, 205, 2385, 205);
INSERT INTO `est_inscrit` VALUES (3548, '2020-01-18 15:24:58', '2020-01-18 15:24:59', 'INP3286', '', '1237184006', 'VALIDE', 'ACTIVE', 823, 205, 2385, 205);
INSERT INTO `est_inscrit` VALUES (3549, '2020-01-18 15:25:03', '2020-01-18 15:25:04', 'INP3286', '', '-1109256742', 'VALIDE', 'ACTIVE', 824, 205, 2385, 205);
INSERT INTO `est_inscrit` VALUES (3550, '2020-01-18 15:25:08', '2020-01-18 15:25:09', 'INP3286', '', '7201737', 'VALIDE', 'ACTIVE', 825, 205, 2385, 205);
INSERT INTO `est_inscrit` VALUES (3551, '2020-01-18 15:25:12', '2020-01-18 15:25:14', 'INP3286', '', '2114386272', 'VALIDE', 'ACTIVE', 826, 205, 2385, 205);
INSERT INTO `est_inscrit` VALUES (3552, '2020-01-18 15:30:00', '2020-01-18 15:30:01', 'MAP3065', '', '1104683131', 'VALIDE', 'ACTIVE', 805, 205, 2386, 205);
INSERT INTO `est_inscrit` VALUES (3553, '2020-01-18 15:30:05', '2020-01-18 15:30:06', 'MAP3065', '', '-1993480365', 'VALIDE', 'ACTIVE', 806, 205, 2386, 205);
INSERT INTO `est_inscrit` VALUES (3554, '2020-01-18 15:30:10', '2020-01-18 15:30:10', 'MAP3065', '', '-308507357', 'VALIDE', 'ACTIVE', 807, 205, 2386, 205);
INSERT INTO `est_inscrit` VALUES (3555, '2020-01-18 15:30:14', '2020-01-18 15:30:15', 'MAP3065', '', '1696905181', 'VALIDE', 'ACTIVE', 808, 205, 2386, 205);
INSERT INTO `est_inscrit` VALUES (3556, '2020-01-18 15:30:19', '2020-01-18 15:30:20', 'MAP3065', '', '289492923', 'VALIDE', 'ACTIVE', 809, 205, 2386, 205);
INSERT INTO `est_inscrit` VALUES (3557, '2020-01-18 15:30:23', '2020-01-18 15:30:24', 'MAP3065', '', '342782688', 'VALIDE', 'ACTIVE', 810, 205, 2386, 205);
INSERT INTO `est_inscrit` VALUES (3558, '2020-01-18 15:30:28', '2020-01-18 15:30:29', 'MAP3065', '', '-1837102446', 'VALIDE', 'ACTIVE', 811, 205, 2386, 205);
INSERT INTO `est_inscrit` VALUES (3559, '2020-01-18 15:30:32', '2020-01-18 15:30:33', 'MAP3065', '', '-1407538573', 'VALIDE', 'ACTIVE', 812, 205, 2386, 205);
INSERT INTO `est_inscrit` VALUES (3560, '2020-01-18 15:30:37', '2020-01-18 15:30:38', 'MAP3065', '', '174856138', 'VALIDE', 'ACTIVE', 813, 205, 2386, 205);
INSERT INTO `est_inscrit` VALUES (3561, '2020-01-18 15:30:42', '2020-01-18 15:30:43', 'MAP3065', '', '486053404', 'VALIDE', 'ACTIVE', 814, 205, 2386, 205);
INSERT INTO `est_inscrit` VALUES (3562, '2020-01-18 15:30:46', '2020-01-18 15:30:47', 'MAP3065', '', '-1276376615', 'VALIDE', 'ACTIVE', 815, 205, 2386, 205);
INSERT INTO `est_inscrit` VALUES (3563, '2020-01-18 15:30:51', '2020-01-18 15:30:52', 'MAP3065', '', '303992010', 'VALIDE', 'ACTIVE', 816, 205, 2386, 205);
INSERT INTO `est_inscrit` VALUES (3564, '2020-01-18 15:30:55', '2020-01-18 15:30:56', 'MAP3065', '', '-774192510', 'VALIDE', 'ACTIVE', 817, 205, 2386, 205);
INSERT INTO `est_inscrit` VALUES (3565, '2020-01-18 15:31:00', '2020-01-18 15:31:01', 'MAP3065', '', '1648964029', 'VALIDE', 'ACTIVE', 818, 205, 2386, 205);
INSERT INTO `est_inscrit` VALUES (3566, '2020-01-18 15:31:05', '2020-01-18 15:31:06', 'MAP3065', '', '-704773731', 'VALIDE', 'ACTIVE', 819, 205, 2386, 205);
INSERT INTO `est_inscrit` VALUES (3567, '2020-01-18 15:31:11', '2020-01-18 15:31:12', 'MAP3065', '', '-781061501', 'VALIDE', 'ACTIVE', 820, 205, 2386, 205);
INSERT INTO `est_inscrit` VALUES (3568, '2020-01-18 15:31:15', '2020-01-18 15:31:16', 'MAP3065', '', '1925031615', 'VALIDE', 'ACTIVE', 821, 205, 2386, 205);
INSERT INTO `est_inscrit` VALUES (3569, '2020-01-18 15:31:20', '2020-01-18 15:31:21', 'MAP3065', '', '1396038738', 'VALIDE', 'ACTIVE', 822, 205, 2386, 205);
INSERT INTO `est_inscrit` VALUES (3570, '2020-01-18 15:31:24', '2020-01-18 15:31:25', 'MAP3065', '', '-575105665', 'VALIDE', 'ACTIVE', 823, 205, 2386, 205);
INSERT INTO `est_inscrit` VALUES (3571, '2020-01-18 15:31:29', '2020-01-18 15:31:30', 'MAP3065', '', '-395062399', 'VALIDE', 'ACTIVE', 824, 205, 2386, 205);
INSERT INTO `est_inscrit` VALUES (3572, '2020-01-18 15:31:34', '2020-01-18 15:31:35', 'MAP3065', '', '1588013757', 'VALIDE', 'ACTIVE', 825, 205, 2386, 205);
INSERT INTO `est_inscrit` VALUES (3573, '2020-01-18 15:31:39', '2020-01-18 15:31:40', 'MAP3065', '', '1219514942', 'VALIDE', 'ACTIVE', 826, 205, 2386, 205);
INSERT INTO `est_inscrit` VALUES (3574, '2020-01-18 15:33:48', '2020-01-18 15:33:49', 'COP3025', '', '-1931727807', 'VALIDE', 'ACTIVE', 805, 205, 2387, 205);
INSERT INTO `est_inscrit` VALUES (3575, '2020-01-18 15:33:53', '2020-01-18 15:33:54', 'COP3025', '', '-208747287', 'VALIDE', 'ACTIVE', 806, 205, 2387, 205);
INSERT INTO `est_inscrit` VALUES (3576, '2020-01-18 15:33:57', '2020-01-18 15:33:58', 'COP3025', '', '-1527737595', 'VALIDE', 'ACTIVE', 807, 205, 2387, 205);
INSERT INTO `est_inscrit` VALUES (3577, '2020-01-18 15:34:02', '2020-01-18 15:34:03', 'COP3025', '', '74620306', 'VALIDE', 'ACTIVE', 808, 205, 2387, 205);
INSERT INTO `est_inscrit` VALUES (3578, '2020-01-18 15:34:07', '2020-01-18 15:34:07', 'COP3025', '', '96679817', 'VALIDE', 'ACTIVE', 809, 205, 2387, 205);
INSERT INTO `est_inscrit` VALUES (3579, '2020-01-18 15:34:11', '2020-01-18 15:34:12', 'COP3025', '', '-619802984', 'VALIDE', 'ACTIVE', 810, 205, 2387, 205);
INSERT INTO `est_inscrit` VALUES (3580, '2020-01-18 15:34:17', '2020-01-18 15:34:17', 'COP3025', '', '-790191971', 'VALIDE', 'ACTIVE', 811, 205, 2387, 205);
INSERT INTO `est_inscrit` VALUES (3581, '2020-01-18 15:34:21', '2020-01-18 15:34:22', 'COP3025', '', '-23493418', 'VALIDE', 'ACTIVE', 812, 205, 2387, 205);
INSERT INTO `est_inscrit` VALUES (3582, '2020-01-18 15:34:26', '2020-01-18 15:34:27', 'COP3025', '', '1858105807', 'VALIDE', 'ACTIVE', 813, 205, 2387, 205);
INSERT INTO `est_inscrit` VALUES (3583, '2020-01-18 15:34:31', '2020-01-18 15:34:32', 'COP3025', '', '2016385339', 'VALIDE', 'ACTIVE', 814, 205, 2387, 205);
INSERT INTO `est_inscrit` VALUES (3584, '2020-01-18 15:34:35', '2020-01-18 15:34:36', 'COP3025', '', '-1031429552', 'VALIDE', 'ACTIVE', 815, 205, 2387, 205);
INSERT INTO `est_inscrit` VALUES (3585, '2020-01-18 15:34:40', '2020-01-18 15:34:41', 'COP3025', '', '1896802157', 'VALIDE', 'ACTIVE', 816, 205, 2387, 205);
INSERT INTO `est_inscrit` VALUES (3586, '2020-01-18 15:34:45', '2020-01-18 15:34:45', 'COP3025', '', '-567635441', 'VALIDE', 'ACTIVE', 817, 205, 2387, 205);
INSERT INTO `est_inscrit` VALUES (3587, '2020-01-18 15:34:49', '2020-01-18 15:34:50', 'COP3025', '', '35719052', 'VALIDE', 'ACTIVE', 818, 205, 2387, 205);
INSERT INTO `est_inscrit` VALUES (3588, '2020-01-18 15:34:54', '2020-01-18 15:34:55', 'COP3025', '', '1489640549', 'VALIDE', 'ACTIVE', 819, 205, 2387, 205);
INSERT INTO `est_inscrit` VALUES (3589, '2020-01-18 15:34:58', '2020-01-18 15:34:59', 'COP3025', '', '440463596', 'VALIDE', 'ACTIVE', 820, 205, 2387, 205);
INSERT INTO `est_inscrit` VALUES (3590, '2020-01-18 15:35:03', '2020-01-18 15:35:04', 'COP3025', '', '-877347960', 'VALIDE', 'ACTIVE', 821, 205, 2387, 205);
INSERT INTO `est_inscrit` VALUES (3591, '2020-01-18 15:35:07', '2020-01-18 15:35:08', 'COP3025', '', '1729937804', 'VALIDE', 'ACTIVE', 822, 205, 2387, 205);
INSERT INTO `est_inscrit` VALUES (3592, '2020-01-18 15:35:12', '2020-01-18 15:35:13', 'COP3025', '', '-1579358079', 'VALIDE', 'ACTIVE', 823, 205, 2387, 205);
INSERT INTO `est_inscrit` VALUES (3593, '2020-01-18 15:35:16', '2020-01-18 15:35:17', 'COP3025', '', '216578436', 'VALIDE', 'ACTIVE', 824, 205, 2387, 205);
INSERT INTO `est_inscrit` VALUES (3594, '2020-01-18 15:35:21', '2020-01-18 15:35:22', 'COP3025', '', '1989966603', 'VALIDE', 'ACTIVE', 825, 205, 2387, 205);
INSERT INTO `est_inscrit` VALUES (3595, '2020-01-18 15:35:25', '2020-01-18 15:35:26', 'COP3025', '', '997612071', 'VALIDE', 'ACTIVE', 826, 205, 2387, 205);
INSERT INTO `est_inscrit` VALUES (3596, '2020-01-18 15:37:22', '2020-01-18 15:37:23', 'LAP3045', '', '1713779596', 'VALIDE', 'ACTIVE', 805, 205, 2388, 205);
INSERT INTO `est_inscrit` VALUES (3597, '2020-01-18 15:37:27', '2020-01-18 15:37:28', 'LAP3045', '', '29474830', 'VALIDE', 'ACTIVE', 806, 205, 2388, 205);
INSERT INTO `est_inscrit` VALUES (3598, '2020-01-18 15:37:32', '2020-01-18 15:37:33', 'LAP3045', '', '-2038015960', 'VALIDE', 'ACTIVE', 807, 205, 2388, 205);
INSERT INTO `est_inscrit` VALUES (3599, '2020-01-18 15:37:37', '2020-01-18 15:37:37', 'LAP3045', '', '-1817383167', 'VALIDE', 'ACTIVE', 808, 205, 2388, 205);
INSERT INTO `est_inscrit` VALUES (3600, '2020-01-18 15:37:41', '2020-01-18 15:37:42', 'LAP3045', '', '-262259475', 'VALIDE', 'ACTIVE', 809, 205, 2388, 205);
INSERT INTO `est_inscrit` VALUES (3601, '2020-01-18 15:37:46', '2020-01-18 15:37:48', 'LAP3045', '', '-1549434283', 'VALIDE', 'ACTIVE', 810, 205, 2388, 205);
INSERT INTO `est_inscrit` VALUES (3602, '2020-01-18 15:37:51', '2020-01-18 15:37:52', 'LAP3045', '', '627842716', 'VALIDE', 'ACTIVE', 811, 205, 2388, 205);
INSERT INTO `est_inscrit` VALUES (3603, '2020-01-18 15:37:56', '2020-01-18 15:37:57', 'LAP3045', '', '1996737619', 'VALIDE', 'ACTIVE', 812, 205, 2388, 205);
INSERT INTO `est_inscrit` VALUES (3604, '2020-01-18 15:38:00', '2020-01-18 15:38:01', 'LAP3045', '', '-688379841', 'VALIDE', 'ACTIVE', 813, 205, 2388, 205);
INSERT INTO `est_inscrit` VALUES (3605, '2020-01-18 15:38:05', '2020-01-18 15:38:06', 'LAP3045', '', '894796347', 'VALIDE', 'ACTIVE', 814, 205, 2388, 205);
INSERT INTO `est_inscrit` VALUES (3606, '2020-01-18 15:38:10', '2020-01-18 15:38:10', 'LAP3045', '', '-1541931251', 'VALIDE', 'ACTIVE', 815, 205, 2388, 205);
INSERT INTO `est_inscrit` VALUES (3607, '2020-01-18 15:38:14', '2020-01-18 15:38:15', 'LAP3045', '', '-30832924', 'VALIDE', 'ACTIVE', 816, 205, 2388, 205);
INSERT INTO `est_inscrit` VALUES (3608, '2020-01-18 15:38:19', '2020-01-18 15:38:20', 'LAP3045', '', '418206129', 'VALIDE', 'ACTIVE', 817, 205, 2388, 205);
INSERT INTO `est_inscrit` VALUES (3609, '2020-01-18 15:38:23', '2020-01-18 15:38:24', 'LAP3045', '', '1689303919', 'VALIDE', 'ACTIVE', 818, 205, 2388, 205);
INSERT INTO `est_inscrit` VALUES (3610, '2020-01-18 15:38:28', '2020-01-18 15:38:29', 'LAP3045', '', '383973438', 'VALIDE', 'ACTIVE', 819, 205, 2388, 205);
INSERT INTO `est_inscrit` VALUES (3611, '2020-01-18 15:38:33', '2020-01-18 15:38:33', 'LAP3045', '', '410672900', 'VALIDE', 'ACTIVE', 820, 205, 2388, 205);
INSERT INTO `est_inscrit` VALUES (3612, '2020-01-18 15:38:37', '2020-01-18 15:38:38', 'LAP3045', '', '639646737', 'VALIDE', 'ACTIVE', 821, 205, 2388, 205);
INSERT INTO `est_inscrit` VALUES (3613, '2020-01-18 15:38:42', '2020-01-18 15:38:42', 'LAP3045', '', '-1729674185', 'VALIDE', 'ACTIVE', 822, 205, 2388, 205);
INSERT INTO `est_inscrit` VALUES (3614, '2020-01-18 15:38:46', '2020-01-18 15:38:47', 'LAP3045', '', '-614131357', 'VALIDE', 'ACTIVE', 823, 205, 2388, 205);
INSERT INTO `est_inscrit` VALUES (3615, '2020-01-18 15:38:51', '2020-01-18 15:38:52', 'LAP3045', '', '-1622970088', 'VALIDE', 'ACTIVE', 824, 205, 2388, 205);
INSERT INTO `est_inscrit` VALUES (3616, '2020-01-18 15:38:55', '2020-01-18 15:38:56', 'LAP3045', '', '451946029', 'VALIDE', 'ACTIVE', 825, 205, 2388, 205);
INSERT INTO `est_inscrit` VALUES (3617, '2020-01-18 15:39:00', '2020-01-18 15:39:01', 'LAP3045', '', '1908731066', 'VALIDE', 'ACTIVE', 826, 205, 2388, 205);
INSERT INTO `est_inscrit` VALUES (3618, '2020-01-18 15:40:16', '2020-01-18 15:40:17', 'HUP3055', '', '-817458475', 'VALIDE', 'ACTIVE', 805, 205, 2389, 205);
INSERT INTO `est_inscrit` VALUES (3619, '2020-01-18 15:40:38', '2020-01-18 15:40:40', 'HUP3055', '', '551478027', 'VALIDE', 'ACTIVE', 806, 205, 2389, 205);
INSERT INTO `est_inscrit` VALUES (3620, '2020-01-18 15:40:52', '2020-01-18 15:40:54', 'HUP3055', '', '485518960', 'VALIDE', 'ACTIVE', 807, 205, 2389, 205);
INSERT INTO `est_inscrit` VALUES (3621, '2020-01-18 15:40:58', '2020-01-18 15:40:58', 'HUP3055', '', '-332437983', 'VALIDE', 'ACTIVE', 808, 205, 2389, 205);
INSERT INTO `est_inscrit` VALUES (3622, '2020-01-18 15:41:02', '2020-01-18 15:41:03', 'HUP3055', '', '1692670380', 'VALIDE', 'ACTIVE', 809, 205, 2389, 205);
INSERT INTO `est_inscrit` VALUES (3623, '2020-01-18 15:41:07', '2020-01-18 15:41:08', 'HUP3055', '', '-849185122', 'VALIDE', 'ACTIVE', 810, 205, 2389, 205);
INSERT INTO `est_inscrit` VALUES (3624, '2020-01-18 15:41:11', '2020-01-18 15:41:12', 'HUP3055', '', '1637129976', 'VALIDE', 'ACTIVE', 811, 205, 2389, 205);
INSERT INTO `est_inscrit` VALUES (3625, '2020-01-18 15:41:16', '2020-01-18 15:41:17', 'HUP3055', '', '-1573100642', 'VALIDE', 'ACTIVE', 812, 205, 2389, 205);
INSERT INTO `est_inscrit` VALUES (3626, '2020-01-18 15:41:20', '2020-01-18 15:41:21', 'HUP3055', '', '-1017243013', 'VALIDE', 'ACTIVE', 813, 205, 2389, 205);
INSERT INTO `est_inscrit` VALUES (3627, '2020-01-18 15:41:25', '2020-01-18 15:41:26', 'HUP3055', '', '-1846485220', 'VALIDE', 'ACTIVE', 814, 205, 2389, 205);
INSERT INTO `est_inscrit` VALUES (3628, '2020-01-18 15:41:29', '2020-01-18 15:41:30', 'HUP3055', '', '-1278696698', 'VALIDE', 'ACTIVE', 815, 205, 2389, 205);
INSERT INTO `est_inscrit` VALUES (3629, '2020-01-18 15:41:34', '2020-01-18 15:41:35', 'HUP3055', '', '1135471575', 'VALIDE', 'ACTIVE', 816, 205, 2389, 205);
INSERT INTO `est_inscrit` VALUES (3630, '2020-01-18 15:41:39', '2020-01-18 15:41:39', 'HUP3055', '', '-1791461238', 'VALIDE', 'ACTIVE', 817, 205, 2389, 205);
INSERT INTO `est_inscrit` VALUES (3631, '2020-01-18 15:41:43', '2020-01-18 15:41:44', 'HUP3055', '', '-540221606', 'VALIDE', 'ACTIVE', 818, 205, 2389, 205);
INSERT INTO `est_inscrit` VALUES (3632, '2020-01-18 15:41:48', '2020-01-18 15:41:49', 'HUP3055', '', '-647060560', 'VALIDE', 'ACTIVE', 819, 205, 2389, 205);
INSERT INTO `est_inscrit` VALUES (3633, '2020-01-18 15:41:53', '2020-01-18 15:41:54', 'HUP3055', '', '-642632327', 'VALIDE', 'ACTIVE', 820, 205, 2389, 205);
INSERT INTO `est_inscrit` VALUES (3634, '2020-01-18 15:41:57', '2020-01-18 15:41:58', 'HUP3055', '', '-1357531501', 'VALIDE', 'ACTIVE', 821, 205, 2389, 205);
INSERT INTO `est_inscrit` VALUES (3635, '2020-01-18 15:42:02', '2020-01-18 15:42:03', 'HUP3055', '', '-1808196568', 'VALIDE', 'ACTIVE', 822, 205, 2389, 205);
INSERT INTO `est_inscrit` VALUES (3636, '2020-01-18 15:42:06', '2020-01-18 15:42:07', 'HUP3055', '', '-13499704', 'VALIDE', 'ACTIVE', 823, 205, 2389, 205);
INSERT INTO `est_inscrit` VALUES (3637, '2020-01-18 15:42:11', '2020-01-18 15:42:12', 'HUP3055', '', '-500718952', 'VALIDE', 'ACTIVE', 824, 205, 2389, 205);
INSERT INTO `est_inscrit` VALUES (3638, '2020-01-18 15:42:16', '2020-01-18 15:42:16', 'HUP3055', '', '-217136600', 'VALIDE', 'ACTIVE', 825, 205, 2389, 205);
INSERT INTO `est_inscrit` VALUES (3639, '2020-01-18 15:42:20', '2020-01-18 15:42:21', 'HUP3055', '', '-760421053', 'VALIDE', 'ACTIVE', 826, 205, 2389, 205);
INSERT INTO `est_inscrit` VALUES (3640, '2020-01-18 15:54:15', '2020-01-18 15:54:21', 'INP2103', '', '-1962867846', 'VALIDE', 'ACTIVE', 782, 205, 2371, 205);
INSERT INTO `est_inscrit` VALUES (3641, '2020-01-18 15:54:25', '2020-01-18 15:54:26', 'INP2103', '', '-472152221', 'VALIDE', 'ACTIVE', 783, 205, 2371, 205);
INSERT INTO `est_inscrit` VALUES (3642, '2020-01-18 15:54:30', '2020-01-18 15:54:31', 'INP2103', '', '1463764192', 'VALIDE', 'ACTIVE', 784, 205, 2371, 205);
INSERT INTO `est_inscrit` VALUES (3643, '2020-01-18 15:54:35', '2020-01-18 15:54:36', 'INP2103', '', '-836928294', 'VALIDE', 'ACTIVE', 785, 205, 2371, 205);
INSERT INTO `est_inscrit` VALUES (3644, '2020-01-18 15:54:40', '2020-01-18 15:54:41', 'INP2103', '', '-1194523871', 'VALIDE', 'ACTIVE', 786, 205, 2371, 205);
INSERT INTO `est_inscrit` VALUES (3645, '2020-01-18 15:54:44', '2020-01-18 15:54:45', 'INP2103', '', '1394753977', 'VALIDE', 'ACTIVE', 787, 205, 2371, 205);
INSERT INTO `est_inscrit` VALUES (3646, '2020-01-18 15:54:49', '2020-01-18 15:54:50', 'INP2103', '', '-861808726', 'VALIDE', 'ACTIVE', 788, 205, 2371, 205);
INSERT INTO `est_inscrit` VALUES (3647, '2020-01-18 15:54:54', '2020-01-18 15:54:55', 'INP2103', '', '-543885758', 'VALIDE', 'ACTIVE', 789, 205, 2371, 205);
INSERT INTO `est_inscrit` VALUES (3648, '2020-01-18 15:54:59', '2020-01-18 15:54:59', 'INP2103', '', '1996997030', 'VALIDE', 'ACTIVE', 790, 205, 2371, 205);
INSERT INTO `est_inscrit` VALUES (3649, '2020-01-18 15:55:03', '2020-01-18 15:55:04', 'INP2103', '', '968138617', 'VALIDE', 'ACTIVE', 791, 205, 2371, 205);
INSERT INTO `est_inscrit` VALUES (3650, '2020-01-18 15:55:08', '2020-01-18 15:55:09', 'INP2103', '', '-1724754766', 'VALIDE', 'ACTIVE', 792, 205, 2371, 205);
INSERT INTO `est_inscrit` VALUES (3651, '2020-01-18 15:55:13', '2020-01-18 15:55:15', 'INP2103', '', '1515710995', 'VALIDE', 'ACTIVE', 793, 205, 2371, 205);
INSERT INTO `est_inscrit` VALUES (3652, '2020-01-18 15:55:19', '2020-01-18 15:55:19', 'INP2103', '', '-1325600123', 'VALIDE', 'ACTIVE', 794, 205, 2371, 205);
INSERT INTO `est_inscrit` VALUES (3653, '2020-01-18 15:55:23', '2020-01-18 15:55:24', 'INP2103', '', '-1230404870', 'VALIDE', 'ACTIVE', 795, 205, 2371, 205);
INSERT INTO `est_inscrit` VALUES (3654, '2020-01-18 15:55:28', '2020-01-18 15:55:29', 'INP2103', '', '-1264220674', 'VALIDE', 'ACTIVE', 796, 205, 2371, 205);
INSERT INTO `est_inscrit` VALUES (3655, '2020-01-18 15:55:33', '2020-01-18 15:55:34', 'INP2103', '', '1783126745', 'VALIDE', 'ACTIVE', 797, 205, 2371, 205);
INSERT INTO `est_inscrit` VALUES (3656, '2020-01-18 15:55:37', '2020-01-18 15:55:38', 'INP2103', '', '201976162', 'VALIDE', 'ACTIVE', 799, 205, 2371, 205);
INSERT INTO `est_inscrit` VALUES (3657, '2020-01-18 15:55:44', '2020-01-18 15:55:45', 'INP2103', '', '-820841335', 'VALIDE', 'ACTIVE', 800, 205, 2371, 205);
INSERT INTO `est_inscrit` VALUES (3658, '2020-01-18 15:55:49', '2020-01-18 15:55:49', 'INP2103', '', '-1929812062', 'VALIDE', 'ACTIVE', 801, 205, 2371, 205);
INSERT INTO `est_inscrit` VALUES (3659, '2020-01-18 15:55:54', '2020-01-18 15:55:54', 'INP2103', '', '1568378326', 'VALIDE', 'ACTIVE', 802, 205, 2371, 205);
INSERT INTO `est_inscrit` VALUES (3660, '2020-01-18 15:55:58', '2020-01-18 15:55:59', 'INP2103', '', '-536161186', 'VALIDE', 'ACTIVE', 803, 205, 2371, 205);
INSERT INTO `est_inscrit` VALUES (3661, '2020-01-18 15:56:03', '2020-01-18 15:56:04', 'INP2103', '', '-42023922', 'VALIDE', 'ACTIVE', 804, 205, 2371, 205);
INSERT INTO `est_inscrit` VALUES (3662, '2020-01-18 15:56:58', '2020-01-18 15:56:59', 'INP2113', '', '850700474', 'VALIDE', 'ACTIVE', 782, 205, 2372, 205);
INSERT INTO `est_inscrit` VALUES (3663, '2020-01-18 15:57:03', '2020-01-18 15:57:04', 'INP2113', '', '-10386774', 'VALIDE', 'ACTIVE', 783, 205, 2372, 205);
INSERT INTO `est_inscrit` VALUES (3664, '2020-01-18 15:57:07', '2020-01-18 15:57:08', 'INP2113', '', '702680727', 'VALIDE', 'ACTIVE', 784, 205, 2372, 205);
INSERT INTO `est_inscrit` VALUES (3665, '2020-01-18 15:57:12', '2020-01-18 15:57:13', 'INP2113', '', '950433397', 'VALIDE', 'ACTIVE', 785, 205, 2372, 205);
INSERT INTO `est_inscrit` VALUES (3666, '2020-01-18 15:57:16', '2020-01-18 15:57:17', 'INP2113', '', '1790243384', 'VALIDE', 'ACTIVE', 786, 205, 2372, 205);
INSERT INTO `est_inscrit` VALUES (3667, '2020-01-18 15:57:21', '2020-01-18 15:57:22', 'INP2113', '', '1539277868', 'VALIDE', 'ACTIVE', 787, 205, 2372, 205);
INSERT INTO `est_inscrit` VALUES (3668, '2020-01-18 15:57:26', '2020-01-18 15:57:26', 'INP2113', '', '-1480264005', 'VALIDE', 'ACTIVE', 788, 205, 2372, 205);
INSERT INTO `est_inscrit` VALUES (3669, '2020-01-18 15:57:30', '2020-01-18 15:57:31', 'INP2113', '', '-1538252470', 'VALIDE', 'ACTIVE', 789, 205, 2372, 205);
INSERT INTO `est_inscrit` VALUES (3670, '2020-01-18 15:57:35', '2020-01-18 15:57:36', 'INP2113', '', '-545048281', 'VALIDE', 'ACTIVE', 790, 205, 2372, 205);
INSERT INTO `est_inscrit` VALUES (3671, '2020-01-18 15:57:39', '2020-01-18 15:57:40', 'INP2113', '', '-1593509172', 'VALIDE', 'ACTIVE', 791, 205, 2372, 205);
INSERT INTO `est_inscrit` VALUES (3672, '2020-01-18 15:57:44', '2020-01-18 15:57:45', 'INP2113', '', '1465833609', 'VALIDE', 'ACTIVE', 792, 205, 2372, 205);
INSERT INTO `est_inscrit` VALUES (3673, '2020-01-18 15:57:49', '2020-01-18 15:57:50', 'INP2113', '', '1929487268', 'VALIDE', 'ACTIVE', 793, 205, 2372, 205);
INSERT INTO `est_inscrit` VALUES (3674, '2020-01-18 15:57:54', '2020-01-18 15:57:55', 'INP2113', '', '-556097817', 'VALIDE', 'ACTIVE', 794, 205, 2372, 205);
INSERT INTO `est_inscrit` VALUES (3675, '2020-01-18 15:57:59', '2020-01-18 15:58:00', 'INP2113', '', '610072609', 'VALIDE', 'ACTIVE', 795, 205, 2372, 205);
INSERT INTO `est_inscrit` VALUES (3676, '2020-01-18 15:58:03', '2020-01-18 15:58:04', 'INP2113', '', '-2076212307', 'VALIDE', 'ACTIVE', 796, 205, 2372, 205);
INSERT INTO `est_inscrit` VALUES (3677, '2020-01-18 15:58:08', '2020-01-18 15:58:09', 'INP2113', '', '1340877974', 'VALIDE', 'ACTIVE', 797, 205, 2372, 205);
INSERT INTO `est_inscrit` VALUES (3678, '2020-01-18 15:58:13', '2020-01-18 15:58:13', 'INP2113', '', '2125831910', 'VALIDE', 'ACTIVE', 799, 205, 2372, 205);
INSERT INTO `est_inscrit` VALUES (3679, '2020-01-18 15:58:17', '2020-01-18 15:58:18', 'INP2113', '', '-246274512', 'VALIDE', 'ACTIVE', 800, 205, 2372, 205);
INSERT INTO `est_inscrit` VALUES (3680, '2020-01-18 15:58:22', '2020-01-18 15:58:23', 'INP2113', '', '704261947', 'VALIDE', 'ACTIVE', 801, 205, 2372, 205);
INSERT INTO `est_inscrit` VALUES (3681, '2020-01-18 15:58:26', '2020-01-18 15:58:27', 'INP2113', '', '-241673592', 'VALIDE', 'ACTIVE', 802, 205, 2372, 205);
INSERT INTO `est_inscrit` VALUES (3682, '2020-01-18 15:58:31', '2020-01-18 15:58:32', 'INP2113', '', '-68778523', 'VALIDE', 'ACTIVE', 803, 205, 2372, 205);
INSERT INTO `est_inscrit` VALUES (3683, '2020-01-18 15:58:36', '2020-01-18 15:58:37', 'INP2113', '', '2069899541', 'VALIDE', 'ACTIVE', 804, 205, 2372, 205);
INSERT INTO `est_inscrit` VALUES (3684, '2020-01-18 16:01:32', '2020-01-18 16:01:33', 'INP2123', '', '968345637', 'VALIDE', 'ACTIVE', 782, 205, 2374, 205);
INSERT INTO `est_inscrit` VALUES (3685, '2020-01-18 16:01:36', '2020-01-18 16:01:37', 'INP2123', '', '320926195', 'VALIDE', 'ACTIVE', 783, 205, 2374, 205);
INSERT INTO `est_inscrit` VALUES (3686, '2020-01-18 16:01:41', '2020-01-18 16:01:42', 'INP2123', '', '-892485277', 'VALIDE', 'ACTIVE', 784, 205, 2374, 205);
INSERT INTO `est_inscrit` VALUES (3687, '2020-01-18 16:01:46', '2020-01-18 16:01:47', 'INP2123', '', '-1280968941', 'VALIDE', 'ACTIVE', 785, 205, 2374, 205);
INSERT INTO `est_inscrit` VALUES (3688, '2020-01-18 16:01:50', '2020-01-18 16:01:51', 'INP2123', '', '-964756034', 'VALIDE', 'ACTIVE', 786, 205, 2374, 205);
INSERT INTO `est_inscrit` VALUES (3689, '2020-01-18 16:01:55', '2020-01-18 16:01:56', 'INP2123', '', '-680547948', 'VALIDE', 'ACTIVE', 787, 205, 2374, 205);
INSERT INTO `est_inscrit` VALUES (3690, '2020-01-18 16:01:59', '2020-01-18 16:02:00', 'INP2123', '', '1121427729', 'VALIDE', 'ACTIVE', 788, 205, 2374, 205);
INSERT INTO `est_inscrit` VALUES (3691, '2020-01-18 16:02:04', '2020-01-18 16:02:05', 'INP2123', '', '-295702956', 'VALIDE', 'ACTIVE', 789, 205, 2374, 205);
INSERT INTO `est_inscrit` VALUES (3692, '2020-01-18 16:02:08', '2020-01-18 16:02:09', 'INP2123', '', '-1252321445', 'VALIDE', 'ACTIVE', 790, 205, 2374, 205);
INSERT INTO `est_inscrit` VALUES (3693, '2020-01-18 16:02:14', '2020-01-18 16:02:15', 'INP2123', '', '1129678055', 'VALIDE', 'ACTIVE', 791, 205, 2374, 205);
INSERT INTO `est_inscrit` VALUES (3694, '2020-01-18 16:02:19', '2020-01-18 16:02:19', 'INP2123', '', '1162964513', 'VALIDE', 'ACTIVE', 792, 205, 2374, 205);
INSERT INTO `est_inscrit` VALUES (3695, '2020-01-18 16:02:23', '2020-01-18 16:02:24', 'INP2123', '', '-224542144', 'VALIDE', 'ACTIVE', 793, 205, 2374, 205);
INSERT INTO `est_inscrit` VALUES (3696, '2020-01-18 16:02:28', '2020-01-18 16:02:29', 'INP2123', '', '-503701167', 'VALIDE', 'ACTIVE', 794, 205, 2374, 205);
INSERT INTO `est_inscrit` VALUES (3697, '2020-01-18 16:02:32', '2020-01-18 16:02:33', 'INP2123', '', '-1824435479', 'VALIDE', 'ACTIVE', 795, 205, 2374, 205);
INSERT INTO `est_inscrit` VALUES (3698, '2020-01-18 16:02:37', '2020-01-18 16:02:38', 'INP2123', '', '589459104', 'VALIDE', 'ACTIVE', 796, 205, 2374, 205);
INSERT INTO `est_inscrit` VALUES (3699, '2020-01-18 16:02:42', '2020-01-18 16:02:42', 'INP2123', '', '-2139220997', 'VALIDE', 'ACTIVE', 797, 205, 2374, 205);
INSERT INTO `est_inscrit` VALUES (3700, '2020-01-18 16:02:46', '2020-01-18 16:02:47', 'INP2123', '', '1976701471', 'VALIDE', 'ACTIVE', 799, 205, 2374, 205);
INSERT INTO `est_inscrit` VALUES (3701, '2020-01-18 16:02:51', '2020-01-18 16:02:53', 'INP2123', '', '-389375254', 'VALIDE', 'ACTIVE', 800, 205, 2374, 205);
INSERT INTO `est_inscrit` VALUES (3702, '2020-01-18 16:02:56', '2020-01-18 16:02:57', 'INP2123', '', '1138258277', 'VALIDE', 'ACTIVE', 801, 205, 2374, 205);
INSERT INTO `est_inscrit` VALUES (3703, '2020-01-18 16:03:01', '2020-01-18 16:03:02', 'INP2123', '', '686051360', 'VALIDE', 'ACTIVE', 802, 205, 2374, 205);
INSERT INTO `est_inscrit` VALUES (3704, '2020-01-18 16:03:06', '2020-01-18 16:03:06', 'INP2123', '', '-1877092923', 'VALIDE', 'ACTIVE', 803, 205, 2374, 205);
INSERT INTO `est_inscrit` VALUES (3705, '2020-01-18 16:03:10', '2020-01-18 16:03:11', 'INP2123', '', '-668613015', 'VALIDE', 'ACTIVE', 804, 205, 2374, 205);
INSERT INTO `est_inscrit` VALUES (3706, '2020-01-18 16:04:17', '2020-01-18 16:04:18', 'INP2133', '', '1758005536', 'VALIDE', 'ACTIVE', 782, 205, 2375, 205);
INSERT INTO `est_inscrit` VALUES (3707, '2020-01-18 16:04:21', '2020-01-18 16:04:22', 'INP2133', '', '-1297364175', 'VALIDE', 'ACTIVE', 783, 205, 2375, 205);
INSERT INTO `est_inscrit` VALUES (3708, '2020-01-18 16:04:26', '2020-01-18 16:04:27', 'INP2133', '', '-1082272970', 'VALIDE', 'ACTIVE', 784, 205, 2375, 205);
INSERT INTO `est_inscrit` VALUES (3709, '2020-01-18 16:04:31', '2020-01-18 16:04:31', 'INP2133', '', '1273970299', 'VALIDE', 'ACTIVE', 785, 205, 2375, 205);
INSERT INTO `est_inscrit` VALUES (3710, '2020-01-18 16:04:35', '2020-01-18 16:04:36', 'INP2133', '', '905649176', 'VALIDE', 'ACTIVE', 786, 205, 2375, 205);
INSERT INTO `est_inscrit` VALUES (3711, '2020-01-18 16:04:40', '2020-01-18 16:04:41', 'INP2133', '', '-1716397266', 'VALIDE', 'ACTIVE', 787, 205, 2375, 205);
INSERT INTO `est_inscrit` VALUES (3712, '2020-01-18 16:04:44', '2020-01-18 16:04:45', 'INP2133', '', '-1094160304', 'VALIDE', 'ACTIVE', 788, 205, 2375, 205);
INSERT INTO `est_inscrit` VALUES (3713, '2020-01-18 16:04:49', '2020-01-18 16:04:50', 'INP2133', '', '1014070048', 'VALIDE', 'ACTIVE', 789, 205, 2375, 205);
INSERT INTO `est_inscrit` VALUES (3714, '2020-01-18 16:04:53', '2020-01-18 16:04:54', 'INP2133', '', '678715721', 'VALIDE', 'ACTIVE', 790, 205, 2375, 205);
INSERT INTO `est_inscrit` VALUES (3715, '2020-01-18 16:04:58', '2020-01-18 16:04:59', 'INP2133', '', '-1548275679', 'VALIDE', 'ACTIVE', 791, 205, 2375, 205);
INSERT INTO `est_inscrit` VALUES (3716, '2020-01-18 16:05:03', '2020-01-18 16:05:03', 'INP2133', '', '-1715830331', 'VALIDE', 'ACTIVE', 792, 205, 2375, 205);
INSERT INTO `est_inscrit` VALUES (3717, '2020-01-18 16:05:07', '2020-01-18 16:05:08', 'INP2133', '', '-1959739407', 'VALIDE', 'ACTIVE', 793, 205, 2375, 205);
INSERT INTO `est_inscrit` VALUES (3718, '2020-01-18 16:05:12', '2020-01-18 16:05:13', 'INP2133', '', '-1398991627', 'VALIDE', 'ACTIVE', 794, 205, 2375, 205);
INSERT INTO `est_inscrit` VALUES (3719, '2020-01-18 16:05:16', '2020-01-18 16:05:17', 'INP2133', '', '1661450295', 'VALIDE', 'ACTIVE', 795, 205, 2375, 205);
INSERT INTO `est_inscrit` VALUES (3720, '2020-01-18 16:05:21', '2020-01-18 16:05:22', 'INP2133', '', '-248329551', 'VALIDE', 'ACTIVE', 796, 205, 2375, 205);
INSERT INTO `est_inscrit` VALUES (3721, '2020-01-18 16:05:25', '2020-01-18 16:05:26', 'INP2133', '', '949436213', 'VALIDE', 'ACTIVE', 797, 205, 2375, 205);
INSERT INTO `est_inscrit` VALUES (3722, '2020-01-18 16:05:30', '2020-01-18 16:05:31', 'INP2133', '', '964379255', 'VALIDE', 'ACTIVE', 799, 205, 2375, 205);
INSERT INTO `est_inscrit` VALUES (3723, '2020-01-18 16:05:35', '2020-01-18 16:05:35', 'INP2133', '', '374966946', 'VALIDE', 'ACTIVE', 800, 205, 2375, 205);
INSERT INTO `est_inscrit` VALUES (3724, '2020-01-18 16:05:39', '2020-01-18 16:05:40', 'INP2133', '', '-1929473192', 'VALIDE', 'ACTIVE', 801, 205, 2375, 205);
INSERT INTO `est_inscrit` VALUES (3725, '2020-01-18 16:05:44', '2020-01-18 16:05:45', 'INP2133', '', '1656612306', 'VALIDE', 'ACTIVE', 802, 205, 2375, 205);
INSERT INTO `est_inscrit` VALUES (3726, '2020-01-18 16:05:48', '2020-01-18 16:05:49', 'INP2133', '', '328965147', 'VALIDE', 'ACTIVE', 803, 205, 2375, 205);
INSERT INTO `est_inscrit` VALUES (3727, '2020-01-18 16:05:53', '2020-01-18 16:05:54', 'INP2133', '', '-440965068', 'VALIDE', 'ACTIVE', 804, 205, 2375, 205);
INSERT INTO `est_inscrit` VALUES (3728, '2020-01-18 16:06:53', '2020-01-18 16:06:54', 'REP2013', '', '-1232957727', 'VALIDE', 'ACTIVE', 782, 205, 2376, 205);
INSERT INTO `est_inscrit` VALUES (3729, '2020-01-18 16:06:58', '2020-01-18 16:06:59', 'REP2013', '', '1645026098', 'VALIDE', 'ACTIVE', 783, 205, 2376, 205);
INSERT INTO `est_inscrit` VALUES (3730, '2020-01-18 16:07:02', '2020-01-18 16:07:03', 'REP2013', '', '-1317039765', 'VALIDE', 'ACTIVE', 784, 205, 2376, 205);
INSERT INTO `est_inscrit` VALUES (3731, '2020-01-18 16:07:07', '2020-01-18 16:07:08', 'REP2013', '', '-1650255949', 'VALIDE', 'ACTIVE', 785, 205, 2376, 205);
INSERT INTO `est_inscrit` VALUES (3732, '2020-01-18 16:07:11', '2020-01-18 16:07:12', 'REP2013', '', '-1338290978', 'VALIDE', 'ACTIVE', 786, 205, 2376, 205);
INSERT INTO `est_inscrit` VALUES (3733, '2020-01-18 16:07:16', '2020-01-18 16:07:17', 'REP2013', '', '-1395179251', 'VALIDE', 'ACTIVE', 787, 205, 2376, 205);
INSERT INTO `est_inscrit` VALUES (3734, '2020-01-18 16:07:21', '2020-01-18 16:07:21', 'REP2013', '', '394863460', 'VALIDE', 'ACTIVE', 788, 205, 2376, 205);
INSERT INTO `est_inscrit` VALUES (3735, '2020-01-18 16:07:26', '2020-01-18 16:07:27', 'REP2013', '', '-927302812', 'VALIDE', 'ACTIVE', 789, 205, 2376, 205);
INSERT INTO `est_inscrit` VALUES (3736, '2020-01-18 16:07:31', '2020-01-18 16:07:32', 'REP2013', '', '1323580357', 'VALIDE', 'ACTIVE', 790, 205, 2376, 205);
INSERT INTO `est_inscrit` VALUES (3737, '2020-01-18 16:07:35', '2020-01-18 16:07:36', 'REP2013', '', '1288547722', 'VALIDE', 'ACTIVE', 791, 205, 2376, 205);
INSERT INTO `est_inscrit` VALUES (3738, '2020-01-18 16:07:40', '2020-01-18 16:07:41', 'REP2013', '', '990033137', 'VALIDE', 'ACTIVE', 792, 205, 2376, 205);
INSERT INTO `est_inscrit` VALUES (3739, '2020-01-18 16:07:45', '2020-01-18 16:07:45', 'REP2013', '', '-1848128000', 'VALIDE', 'ACTIVE', 793, 205, 2376, 205);
INSERT INTO `est_inscrit` VALUES (3740, '2020-01-18 16:07:49', '2020-01-18 16:07:50', 'REP2013', '', '-857780492', 'VALIDE', 'ACTIVE', 794, 205, 2376, 205);
INSERT INTO `est_inscrit` VALUES (3741, '2020-01-18 16:07:54', '2020-01-18 16:07:55', 'REP2013', '', '-1679299463', 'VALIDE', 'ACTIVE', 795, 205, 2376, 205);
INSERT INTO `est_inscrit` VALUES (3742, '2020-01-18 16:07:58', '2020-01-18 16:07:59', 'REP2013', '', '-914712764', 'VALIDE', 'ACTIVE', 796, 205, 2376, 205);
INSERT INTO `est_inscrit` VALUES (3743, '2020-01-18 16:08:03', '2020-01-18 16:08:04', 'REP2013', '', '1981772238', 'VALIDE', 'ACTIVE', 797, 205, 2376, 205);
INSERT INTO `est_inscrit` VALUES (3744, '2020-01-18 16:08:08', '2020-01-18 16:08:08', 'REP2013', '', '-1590480744', 'VALIDE', 'ACTIVE', 799, 205, 2376, 205);
INSERT INTO `est_inscrit` VALUES (3745, '2020-01-18 16:08:12', '2020-01-18 16:08:13', 'REP2013', '', '-230070637', 'VALIDE', 'ACTIVE', 800, 205, 2376, 205);
INSERT INTO `est_inscrit` VALUES (3746, '2020-01-18 16:08:17', '2020-01-18 16:08:18', 'REP2013', '', '1904466222', 'VALIDE', 'ACTIVE', 801, 205, 2376, 205);
INSERT INTO `est_inscrit` VALUES (3747, '2020-01-18 16:08:21', '2020-01-18 16:08:22', 'REP2013', '', '363035998', 'VALIDE', 'ACTIVE', 802, 205, 2376, 205);
INSERT INTO `est_inscrit` VALUES (3748, '2020-01-18 16:08:26', '2020-01-18 16:08:27', 'REP2013', '', '214771110', 'VALIDE', 'ACTIVE', 803, 205, 2376, 205);
INSERT INTO `est_inscrit` VALUES (3749, '2020-01-18 16:08:31', '2020-01-18 16:08:31', 'REP2013', '', '1144245326', 'VALIDE', 'ACTIVE', 804, 205, 2376, 205);
INSERT INTO `est_inscrit` VALUES (3750, '2020-01-18 16:09:48', '2020-01-18 16:09:49', 'INP2143', '', '-1069871419', 'VALIDE', 'ACTIVE', 782, 205, 2377, 205);
INSERT INTO `est_inscrit` VALUES (3751, '2020-01-18 16:09:52', '2020-01-18 16:09:54', 'INP2143', '', '-1764815039', 'VALIDE', 'ACTIVE', 783, 205, 2377, 205);
INSERT INTO `est_inscrit` VALUES (3752, '2020-01-18 16:09:58', '2020-01-18 16:09:59', 'INP2143', '', '-951580829', 'VALIDE', 'ACTIVE', 784, 205, 2377, 205);
INSERT INTO `est_inscrit` VALUES (3753, '2020-01-18 16:10:03', '2020-01-18 16:10:03', 'INP2143', '', '-508095845', 'VALIDE', 'ACTIVE', 785, 205, 2377, 205);
INSERT INTO `est_inscrit` VALUES (3754, '2020-01-18 16:10:07', '2020-01-18 16:10:08', 'INP2143', '', '1011374625', 'VALIDE', 'ACTIVE', 786, 205, 2377, 205);
INSERT INTO `est_inscrit` VALUES (3755, '2020-01-18 16:10:12', '2020-01-18 16:10:13', 'INP2143', '', '-1147300748', 'VALIDE', 'ACTIVE', 787, 205, 2377, 205);
INSERT INTO `est_inscrit` VALUES (3756, '2020-01-18 16:10:16', '2020-01-18 16:10:17', 'INP2143', '', '677228026', 'VALIDE', 'ACTIVE', 788, 205, 2377, 205);
INSERT INTO `est_inscrit` VALUES (3757, '2020-01-18 16:10:21', '2020-01-18 16:10:22', 'INP2143', '', '-489216817', 'VALIDE', 'ACTIVE', 789, 205, 2377, 205);
INSERT INTO `est_inscrit` VALUES (3758, '2020-01-18 16:10:25', '2020-01-18 16:10:26', 'INP2143', '', '1432427597', 'VALIDE', 'ACTIVE', 790, 205, 2377, 205);
INSERT INTO `est_inscrit` VALUES (3759, '2020-01-18 16:10:30', '2020-01-18 16:10:31', 'INP2143', '', '-18475545', 'VALIDE', 'ACTIVE', 791, 205, 2377, 205);
INSERT INTO `est_inscrit` VALUES (3760, '2020-01-18 16:10:35', '2020-01-18 16:10:37', 'INP2143', '', '-282461837', 'VALIDE', 'ACTIVE', 792, 205, 2377, 205);
INSERT INTO `est_inscrit` VALUES (3761, '2020-01-18 16:10:40', '2020-01-18 16:10:41', 'INP2143', '', '1521608204', 'VALIDE', 'ACTIVE', 793, 205, 2377, 205);
INSERT INTO `est_inscrit` VALUES (3762, '2020-01-18 16:10:45', '2020-01-18 16:10:46', 'INP2143', '', '1556089891', 'VALIDE', 'ACTIVE', 794, 205, 2377, 205);
INSERT INTO `est_inscrit` VALUES (3763, '2020-01-18 16:10:49', '2020-01-18 16:10:50', 'INP2143', '', '-1345349062', 'VALIDE', 'ACTIVE', 795, 205, 2377, 205);
INSERT INTO `est_inscrit` VALUES (3764, '2020-01-18 16:10:54', '2020-01-18 16:10:55', 'INP2143', '', '1193918495', 'VALIDE', 'ACTIVE', 796, 205, 2377, 205);
INSERT INTO `est_inscrit` VALUES (3765, '2020-01-18 16:10:59', '2020-01-18 16:10:59', 'INP2143', '', '855106312', 'VALIDE', 'ACTIVE', 797, 205, 2377, 205);
INSERT INTO `est_inscrit` VALUES (3766, '2020-01-18 16:11:03', '2020-01-18 16:11:04', 'INP2143', '', '-1946689173', 'VALIDE', 'ACTIVE', 799, 205, 2377, 205);
INSERT INTO `est_inscrit` VALUES (3767, '2020-01-18 16:11:08', '2020-01-18 16:11:09', 'INP2143', '', '-1532297029', 'VALIDE', 'ACTIVE', 800, 205, 2377, 205);
INSERT INTO `est_inscrit` VALUES (3768, '2020-01-18 16:11:12', '2020-01-18 16:11:13', 'INP2143', '', '-1685074496', 'VALIDE', 'ACTIVE', 801, 205, 2377, 205);
INSERT INTO `est_inscrit` VALUES (3769, '2020-01-18 16:11:17', '2020-01-18 16:11:18', 'INP2143', '', '1194163251', 'VALIDE', 'ACTIVE', 802, 205, 2377, 205);
INSERT INTO `est_inscrit` VALUES (3770, '2020-01-18 16:11:21', '2020-01-18 16:11:22', 'INP2143', '', '423752910', 'VALIDE', 'ACTIVE', 803, 205, 2377, 205);
INSERT INTO `est_inscrit` VALUES (3771, '2020-01-18 16:11:26', '2020-01-18 16:11:27', 'INP2143', '', '1625023134', 'VALIDE', 'ACTIVE', 804, 205, 2377, 205);
INSERT INTO `est_inscrit` VALUES (3772, '2020-01-18 16:13:25', '2020-01-18 16:13:26', 'LAP2033', '', '41308577', 'VALIDE', 'ACTIVE', 782, 205, 2378, 205);
INSERT INTO `est_inscrit` VALUES (3773, '2020-01-18 16:13:30', '2020-01-18 16:13:31', 'LAP2033', '', '-946045375', 'VALIDE', 'ACTIVE', 783, 205, 2378, 205);
INSERT INTO `est_inscrit` VALUES (3774, '2020-01-18 16:13:34', '2020-01-18 16:13:35', 'LAP2033', '', '-1714990624', 'VALIDE', 'ACTIVE', 784, 205, 2378, 205);
INSERT INTO `est_inscrit` VALUES (3775, '2020-01-18 16:13:39', '2020-01-18 16:13:40', 'LAP2033', '', '-1896569563', 'VALIDE', 'ACTIVE', 785, 205, 2378, 205);
INSERT INTO `est_inscrit` VALUES (3776, '2020-01-18 16:13:44', '2020-01-18 16:13:45', 'LAP2033', '', '1172336651', 'VALIDE', 'ACTIVE', 786, 205, 2378, 205);
INSERT INTO `est_inscrit` VALUES (3777, '2020-01-18 16:13:50', '2020-01-18 16:13:51', 'LAP2033', '', '-1409625575', 'VALIDE', 'ACTIVE', 787, 205, 2378, 205);
INSERT INTO `est_inscrit` VALUES (3778, '2020-01-18 16:13:54', '2020-01-18 16:13:55', 'LAP2033', '', '1281103802', 'VALIDE', 'ACTIVE', 788, 205, 2378, 205);
INSERT INTO `est_inscrit` VALUES (3779, '2020-01-18 16:13:59', '2020-01-18 16:14:00', 'LAP2033', '', '45239968', 'VALIDE', 'ACTIVE', 789, 205, 2378, 205);
INSERT INTO `est_inscrit` VALUES (3780, '2020-01-18 16:14:03', '2020-01-18 16:14:04', 'LAP2033', '', '-1309083741', 'VALIDE', 'ACTIVE', 790, 205, 2378, 205);
INSERT INTO `est_inscrit` VALUES (3781, '2020-01-18 16:14:08', '2020-01-18 16:14:09', 'LAP2033', '', '174348643', 'VALIDE', 'ACTIVE', 791, 205, 2378, 205);
INSERT INTO `est_inscrit` VALUES (3782, '2020-01-18 16:14:13', '2020-01-18 16:14:14', 'LAP2033', '', '-748081765', 'VALIDE', 'ACTIVE', 792, 205, 2378, 205);
INSERT INTO `est_inscrit` VALUES (3783, '2020-01-18 16:14:17', '2020-01-18 16:14:18', 'LAP2033', '', '-1693071053', 'VALIDE', 'ACTIVE', 793, 205, 2378, 205);
INSERT INTO `est_inscrit` VALUES (3784, '2020-01-18 16:14:22', '2020-01-18 16:14:23', 'LAP2033', '', '1574979941', 'VALIDE', 'ACTIVE', 794, 205, 2378, 205);
INSERT INTO `est_inscrit` VALUES (3785, '2020-01-18 16:14:26', '2020-01-18 16:14:27', 'LAP2033', '', '-1910538569', 'VALIDE', 'ACTIVE', 795, 205, 2378, 205);
INSERT INTO `est_inscrit` VALUES (3786, '2020-01-18 16:14:31', '2020-01-18 16:14:32', 'LAP2033', '', '-1938157059', 'VALIDE', 'ACTIVE', 796, 205, 2378, 205);
INSERT INTO `est_inscrit` VALUES (3787, '2020-01-18 16:14:36', '2020-01-18 16:14:37', 'LAP2033', '', '-983837924', 'VALIDE', 'ACTIVE', 797, 205, 2378, 205);
INSERT INTO `est_inscrit` VALUES (3788, '2020-01-18 16:14:40', '2020-01-18 16:14:41', 'LAP2033', '', '322048992', 'VALIDE', 'ACTIVE', 799, 205, 2378, 205);
INSERT INTO `est_inscrit` VALUES (3789, '2020-01-18 16:14:45', '2020-01-18 16:14:46', 'LAP2033', '', '1347887493', 'VALIDE', 'ACTIVE', 800, 205, 2378, 205);
INSERT INTO `est_inscrit` VALUES (3790, '2020-01-18 16:14:49', '2020-01-18 16:14:50', 'LAP2033', '', '541593864', 'VALIDE', 'ACTIVE', 801, 205, 2378, 205);
INSERT INTO `est_inscrit` VALUES (3791, '2020-01-18 16:14:55', '2020-01-18 16:14:56', 'LAP2033', '', '1723495198', 'VALIDE', 'ACTIVE', 802, 205, 2378, 205);
INSERT INTO `est_inscrit` VALUES (3792, '2020-01-18 16:15:00', '2020-01-18 16:15:00', 'LAP2033', '', '-1857367245', 'VALIDE', 'ACTIVE', 803, 205, 2378, 205);
INSERT INTO `est_inscrit` VALUES (3793, '2020-01-18 16:15:04', '2020-01-18 16:15:05', 'LAP2033', '', '-1299423875', 'VALIDE', 'ACTIVE', 804, 205, 2378, 205);
INSERT INTO `est_inscrit` VALUES (3794, '2020-01-18 16:16:23', '2020-01-18 16:16:24', 'HUP2033', '', '-768486508', 'VALIDE', 'ACTIVE', 782, 205, 2379, 205);
INSERT INTO `est_inscrit` VALUES (3795, '2020-01-18 16:16:27', '2020-01-18 16:16:28', 'HUP2033', '', '1519919126', 'VALIDE', 'ACTIVE', 783, 205, 2379, 205);
INSERT INTO `est_inscrit` VALUES (3796, '2020-01-18 16:16:32', '2020-01-18 16:16:33', 'HUP2033', '', '69972799', 'VALIDE', 'ACTIVE', 784, 205, 2379, 205);
INSERT INTO `est_inscrit` VALUES (3797, '2020-01-18 16:16:37', '2020-01-18 16:16:37', 'HUP2033', '', '1678774313', 'VALIDE', 'ACTIVE', 785, 205, 2379, 205);
INSERT INTO `est_inscrit` VALUES (3798, '2020-01-18 16:16:41', '2020-01-18 16:16:42', 'HUP2033', '', '414145801', 'VALIDE', 'ACTIVE', 786, 205, 2379, 205);
INSERT INTO `est_inscrit` VALUES (3799, '2020-01-18 16:16:46', '2020-01-18 16:16:47', 'HUP2033', '', '45404016', 'VALIDE', 'ACTIVE', 787, 205, 2379, 205);
INSERT INTO `est_inscrit` VALUES (3800, '2020-01-18 16:16:50', '2020-01-18 16:16:51', 'HUP2033', '', '-1217260888', 'VALIDE', 'ACTIVE', 788, 205, 2379, 205);
INSERT INTO `est_inscrit` VALUES (3801, '2020-01-18 16:16:55', '2020-01-18 16:16:58', 'HUP2033', '', '1935553931', 'VALIDE', 'ACTIVE', 789, 205, 2379, 205);
INSERT INTO `est_inscrit` VALUES (3802, '2020-01-18 16:17:02', '2020-01-18 16:17:03', 'HUP2033', '', '811566780', 'VALIDE', 'ACTIVE', 790, 205, 2379, 205);
INSERT INTO `est_inscrit` VALUES (3803, '2020-01-18 16:17:07', '2020-01-18 16:17:08', 'HUP2033', '', '783594612', 'VALIDE', 'ACTIVE', 791, 205, 2379, 205);
INSERT INTO `est_inscrit` VALUES (3804, '2020-01-18 16:17:11', '2020-01-18 16:17:12', 'HUP2033', '', '1677242637', 'VALIDE', 'ACTIVE', 792, 205, 2379, 205);
INSERT INTO `est_inscrit` VALUES (3805, '2020-01-18 16:17:16', '2020-01-18 16:17:17', 'HUP2033', '', '1973260498', 'VALIDE', 'ACTIVE', 793, 205, 2379, 205);
INSERT INTO `est_inscrit` VALUES (3806, '2020-01-18 16:17:20', '2020-01-18 16:17:21', 'HUP2033', '', '1418521486', 'VALIDE', 'ACTIVE', 794, 205, 2379, 205);
INSERT INTO `est_inscrit` VALUES (3807, '2020-01-18 16:17:25', '2020-01-18 16:17:26', 'HUP2033', '', '-1405573022', 'VALIDE', 'ACTIVE', 795, 205, 2379, 205);
INSERT INTO `est_inscrit` VALUES (3808, '2020-01-18 16:17:30', '2020-01-18 16:17:30', 'HUP2033', '', '1577491345', 'VALIDE', 'ACTIVE', 796, 205, 2379, 205);
INSERT INTO `est_inscrit` VALUES (3809, '2020-01-18 16:17:34', '2020-01-18 16:17:35', 'HUP2033', '', '1663196544', 'VALIDE', 'ACTIVE', 797, 205, 2379, 205);
INSERT INTO `est_inscrit` VALUES (3810, '2020-01-18 16:17:39', '2020-01-18 16:17:40', 'HUP2033', '', '-1629782627', 'VALIDE', 'ACTIVE', 799, 205, 2379, 205);
INSERT INTO `est_inscrit` VALUES (3811, '2020-01-18 16:17:43', '2020-01-18 16:17:44', 'HUP2033', '', '1658774225', 'VALIDE', 'ACTIVE', 800, 205, 2379, 205);
INSERT INTO `est_inscrit` VALUES (3812, '2020-01-18 16:17:48', '2020-01-18 16:17:49', 'HUP2033', '', '-1956690493', 'VALIDE', 'ACTIVE', 801, 205, 2379, 205);
INSERT INTO `est_inscrit` VALUES (3813, '2020-01-18 16:17:52', '2020-01-18 16:17:53', 'HUP2033', '', '1753516757', 'VALIDE', 'ACTIVE', 802, 205, 2379, 205);
INSERT INTO `est_inscrit` VALUES (3814, '2020-01-18 16:17:57', '2020-01-18 16:17:58', 'HUP2033', '', '546088729', 'VALIDE', 'ACTIVE', 803, 205, 2379, 205);
INSERT INTO `est_inscrit` VALUES (3815, '2020-01-18 16:18:02', '2020-01-18 16:18:03', 'HUP2033', '', '1807227996', 'VALIDE', 'ACTIVE', 804, 205, 2379, 205);
INSERT INTO `est_inscrit` VALUES (3824, '2020-01-19 09:46:43', '2020-01-19 09:46:44', 'HUP1011', '', '1820473269', 'VALIDE', 'ACTIVE', 753, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3825, '2020-01-19 09:46:50', '2020-01-19 09:46:51', 'HUP1011', '', '1097488360', 'VALIDE', 'ACTIVE', 754, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3826, '2020-01-19 09:46:57', '2020-01-19 09:46:58', 'HUP1011', '', '1281046441', 'VALIDE', 'ACTIVE', 755, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3827, '2020-01-19 09:47:03', '2020-01-19 09:47:04', 'HUP1011', '', '-1097327208', 'VALIDE', 'ACTIVE', 756, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3828, '2020-01-19 09:47:09', '2020-01-19 09:47:10', 'HUP1011', '', '-511304239', 'VALIDE', 'ACTIVE', 757, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3829, '2020-01-19 09:47:15', '2020-01-19 09:47:16', 'HUP1011', '', '-17157657', 'VALIDE', 'ACTIVE', 758, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3830, '2020-01-19 09:47:21', '2020-01-19 09:47:22', 'HUP1011', '', '-2029859993', 'VALIDE', 'ACTIVE', 759, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3831, '2020-01-19 09:47:27', '2020-01-19 09:47:28', 'HUP1011', '', '-738373577', 'VALIDE', 'ACTIVE', 760, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3832, '2020-01-19 09:47:33', '2020-01-19 09:47:35', 'HUP1011', '', '-72291129', 'VALIDE', 'ACTIVE', 761, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3833, '2020-01-19 09:47:40', '2020-01-19 09:47:41', 'HUP1011', '', '-948686726', 'VALIDE', 'ACTIVE', 762, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3834, '2020-01-19 09:47:47', '2020-01-19 09:47:48', 'HUP1011', '', '-374259929', 'VALIDE', 'ACTIVE', 763, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3835, '2020-01-19 09:47:54', '2020-01-19 09:47:55', 'HUP1011', '', '1901629664', 'VALIDE', 'ACTIVE', 764, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3836, '2020-01-19 09:48:01', '2020-01-19 09:48:02', 'HUP1011', '', '-689825000', 'VALIDE', 'ACTIVE', 765, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3837, '2020-01-19 09:48:07', '2020-01-19 09:48:09', 'HUP1011', '', '1298603912', 'VALIDE', 'ACTIVE', 766, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3838, '2020-01-19 09:48:14', '2020-01-19 09:48:16', 'HUP1011', '', '1967325332', 'VALIDE', 'ACTIVE', 767, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3839, '2020-01-19 09:48:21', '2020-01-19 09:48:22', 'HUP1011', '', '-28742039', 'VALIDE', 'ACTIVE', 768, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3840, '2020-01-19 09:48:28', '2020-01-19 09:48:29', 'HUP1011', '', '1842768509', 'VALIDE', 'ACTIVE', 769, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3841, '2020-01-19 09:48:34', '2020-01-19 09:48:35', 'HUP1011', '', '659584686', 'VALIDE', 'ACTIVE', 770, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3842, '2020-01-19 09:48:40', '2020-01-19 09:48:41', 'HUP1011', '', '807206441', 'VALIDE', 'ACTIVE', 771, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3843, '2020-01-19 09:48:47', '2020-01-19 09:48:48', 'HUP1011', '', '-716487949', 'VALIDE', 'ACTIVE', 772, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3844, '2020-01-19 09:48:53', '2020-01-19 09:48:54', 'HUP1011', '', '-1569380102', 'VALIDE', 'ACTIVE', 773, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3845, '2020-01-19 09:49:00', '2020-01-19 09:49:01', 'HUP1011', '', '-985942089', 'VALIDE', 'ACTIVE', 774, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3846, '2020-01-19 09:49:06', '2020-01-19 09:49:07', 'HUP1011', '', '877555916', 'VALIDE', 'ACTIVE', 775, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3847, '2020-01-19 09:49:13', '2020-01-19 09:49:14', 'HUP1011', '', '-1383541072', 'VALIDE', 'ACTIVE', 776, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3848, '2020-01-19 09:49:20', '2020-01-19 09:49:21', 'HUP1011', '', '-1323302760', 'VALIDE', 'ACTIVE', 777, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3849, '2020-01-19 09:49:26', '2020-01-19 09:49:27', 'HUP1011', '', '-128351153', 'VALIDE', 'ACTIVE', 778, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3850, '2020-01-19 09:49:33', '2020-01-19 09:49:34', 'HUP1011', '', '-94954988', 'VALIDE', 'ACTIVE', 779, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3851, '2020-01-19 09:49:40', '2020-01-19 09:49:42', 'HUP1011', '', '-2068429082', 'VALIDE', 'ACTIVE', 780, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3852, '2020-01-19 09:49:48', '2020-01-19 09:49:49', 'HUP1011', '', '1449997276', 'VALIDE', 'ACTIVE', 781, 205, 3823, 205);
INSERT INTO `est_inscrit` VALUES (3853, '2020-01-19 10:19:32', '2020-01-19 10:19:33', 'MAP1021', '', '670723539', 'VALIDE', 'ACTIVE', 753, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3854, '2020-01-19 10:19:39', '2020-01-19 10:19:40', 'MAP1021', '', '-1847556814', 'VALIDE', 'ACTIVE', 754, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3855, '2020-01-19 10:19:45', '2020-01-19 10:19:47', 'MAP1021', '', '-744453054', 'VALIDE', 'ACTIVE', 755, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3856, '2020-01-19 10:19:52', '2020-01-19 10:19:53', 'MAP1021', '', '-1412591311', 'VALIDE', 'ACTIVE', 756, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3857, '2020-01-19 10:19:58', '2020-01-19 10:20:00', 'MAP1021', '', '-493609053', 'VALIDE', 'ACTIVE', 757, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3858, '2020-01-19 10:20:05', '2020-01-19 10:20:06', 'MAP1021', '', '221069442', 'VALIDE', 'ACTIVE', 758, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3859, '2020-01-19 10:20:12', '2020-01-19 10:20:13', 'MAP1021', '', '-1819044479', 'VALIDE', 'ACTIVE', 759, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3860, '2020-01-19 10:20:18', '2020-01-19 10:20:19', 'MAP1021', '', '1154115286', 'VALIDE', 'ACTIVE', 760, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3861, '2020-01-19 10:20:25', '2020-01-19 10:20:26', 'MAP1021', '', '1942412338', 'VALIDE', 'ACTIVE', 761, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3862, '2020-01-19 10:20:32', '2020-01-19 10:20:33', 'MAP1021', '', '-202683599', 'VALIDE', 'ACTIVE', 762, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3863, '2020-01-19 10:20:38', '2020-01-19 10:20:39', 'MAP1021', '', '1517726614', 'VALIDE', 'ACTIVE', 763, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3864, '2020-01-19 10:20:44', '2020-01-19 10:20:45', 'MAP1021', '', '-287844677', 'VALIDE', 'ACTIVE', 764, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3865, '2020-01-19 10:20:51', '2020-01-19 10:20:53', 'MAP1021', '', '-1526596104', 'VALIDE', 'ACTIVE', 765, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3866, '2020-01-19 10:20:58', '2020-01-19 10:20:59', 'MAP1021', '', '-1235473028', 'VALIDE', 'ACTIVE', 766, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3867, '2020-01-19 10:21:04', '2020-01-19 10:21:05', 'MAP1021', '', '-502840087', 'VALIDE', 'ACTIVE', 767, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3868, '2020-01-19 10:21:11', '2020-01-19 10:21:12', 'MAP1021', '', '1360651127', 'VALIDE', 'ACTIVE', 768, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3869, '2020-01-19 10:21:18', '2020-01-19 10:21:19', 'MAP1021', '', '1639313435', 'VALIDE', 'ACTIVE', 769, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3870, '2020-01-19 10:21:25', '2020-01-19 10:21:26', 'MAP1021', '', '-375453063', 'VALIDE', 'ACTIVE', 770, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3871, '2020-01-19 10:21:32', '2020-01-19 10:21:33', 'MAP1021', '', '-1387788275', 'VALIDE', 'ACTIVE', 771, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3872, '2020-01-19 10:21:39', '2020-01-19 10:21:40', 'MAP1021', '', '970377988', 'VALIDE', 'ACTIVE', 772, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3873, '2020-01-19 10:21:45', '2020-01-19 10:21:47', 'MAP1021', '', '2065490214', 'VALIDE', 'ACTIVE', 773, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3874, '2020-01-19 10:21:52', '2020-01-19 10:21:53', 'MAP1021', '', '516482061', 'VALIDE', 'ACTIVE', 774, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3875, '2020-01-19 10:21:59', '2020-01-19 10:22:00', 'MAP1021', '', '-174291163', 'VALIDE', 'ACTIVE', 775, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3876, '2020-01-19 10:22:06', '2020-01-19 10:22:07', 'MAP1021', '', '-1327438482', 'VALIDE', 'ACTIVE', 776, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3877, '2020-01-19 10:22:12', '2020-01-19 10:22:14', 'MAP1021', '', '-616098651', 'VALIDE', 'ACTIVE', 777, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3878, '2020-01-19 10:22:19', '2020-01-19 10:22:21', 'MAP1021', '', '432818253', 'VALIDE', 'ACTIVE', 778, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3879, '2020-01-19 10:22:26', '2020-01-19 10:22:27', 'MAP1021', '', '381542173', 'VALIDE', 'ACTIVE', 779, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3880, '2020-01-19 10:22:33', '2020-01-19 10:22:34', 'MAP1021', '', '-106415224', 'VALIDE', 'ACTIVE', 780, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3881, '2020-01-19 10:22:39', '2020-01-19 10:22:40', 'MAP1021', '', '-1174401070', 'VALIDE', 'ACTIVE', 781, 205, 3821, 205);
INSERT INTO `est_inscrit` VALUES (3882, '2020-01-19 10:24:13', '2020-01-19 10:24:15', 'LAP1011', '', '-1677585711', 'VALIDE', 'ACTIVE', 753, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3883, '2020-01-19 10:24:21', '2020-01-19 10:24:22', 'LAP1011', '', '-894442940', 'VALIDE', 'ACTIVE', 754, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3884, '2020-01-19 10:24:28', '2020-01-19 10:24:29', 'LAP1011', '', '1072060021', 'VALIDE', 'ACTIVE', 755, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3885, '2020-01-19 10:24:34', '2020-01-19 10:24:35', 'LAP1011', '', '-394765948', 'VALIDE', 'ACTIVE', 756, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3886, '2020-01-19 10:24:41', '2020-01-19 10:24:43', 'LAP1011', '', '297511961', 'VALIDE', 'ACTIVE', 757, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3887, '2020-01-19 10:24:49', '2020-01-19 10:24:51', 'LAP1011', '', '1442426465', 'VALIDE', 'ACTIVE', 758, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3888, '2020-01-19 10:24:58', '2020-01-19 10:24:59', 'LAP1011', '', '101929394', 'VALIDE', 'ACTIVE', 759, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3889, '2020-01-19 10:25:04', '2020-01-19 10:25:06', 'LAP1011', '', '-2048821852', 'VALIDE', 'ACTIVE', 760, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3890, '2020-01-19 10:25:11', '2020-01-19 10:25:13', 'LAP1011', '', '1832718023', 'VALIDE', 'ACTIVE', 761, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3891, '2020-01-19 10:25:18', '2020-01-19 10:25:19', 'LAP1011', '', '794032442', 'VALIDE', 'ACTIVE', 762, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3892, '2020-01-19 10:25:25', '2020-01-19 10:25:26', 'LAP1011', '', '-1980486753', 'VALIDE', 'ACTIVE', 763, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3893, '2020-01-19 10:25:32', '2020-01-19 10:25:33', 'LAP1011', '', '-812098916', 'VALIDE', 'ACTIVE', 764, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3894, '2020-01-19 10:25:39', '2020-01-19 10:25:40', 'LAP1011', '', '2078090917', 'VALIDE', 'ACTIVE', 765, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3895, '2020-01-19 10:25:46', '2020-01-19 10:25:47', 'LAP1011', '', '-1578162506', 'VALIDE', 'ACTIVE', 766, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3896, '2020-01-19 10:25:54', '2020-01-19 10:25:55', 'LAP1011', '', '1787332942', 'VALIDE', 'ACTIVE', 767, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3897, '2020-01-19 10:26:00', '2020-01-19 10:26:01', 'LAP1011', '', '-1226410359', 'VALIDE', 'ACTIVE', 768, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3898, '2020-01-19 10:26:07', '2020-01-19 10:26:08', 'LAP1011', '', '1320828260', 'VALIDE', 'ACTIVE', 769, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3899, '2020-01-19 10:26:14', '2020-01-19 10:26:15', 'LAP1011', '', '-1025857921', 'VALIDE', 'ACTIVE', 770, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3900, '2020-01-19 10:26:20', '2020-01-19 10:26:21', 'LAP1011', '', '-926545515', 'VALIDE', 'ACTIVE', 771, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3901, '2020-01-19 10:26:27', '2020-01-19 10:26:30', 'LAP1011', '', '299115238', 'VALIDE', 'ACTIVE', 772, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3902, '2020-01-19 10:26:35', '2020-01-19 10:26:37', 'LAP1011', '', '204000286', 'VALIDE', 'ACTIVE', 773, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3903, '2020-01-19 10:26:42', '2020-01-19 10:26:44', 'LAP1011', '', '1119891927', 'VALIDE', 'ACTIVE', 774, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3904, '2020-01-19 10:26:49', '2020-01-19 10:26:51', 'LAP1011', '', '-914605528', 'VALIDE', 'ACTIVE', 775, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3905, '2020-01-19 10:26:57', '2020-01-19 10:26:58', 'LAP1011', '', '643097068', 'VALIDE', 'ACTIVE', 776, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3906, '2020-01-19 10:27:04', '2020-01-19 10:27:05', 'LAP1011', '', '-815372094', 'VALIDE', 'ACTIVE', 777, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3907, '2020-01-19 10:27:11', '2020-01-19 10:27:12', 'LAP1011', '', '236897182', 'VALIDE', 'ACTIVE', 778, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3908, '2020-01-19 10:27:17', '2020-01-19 10:27:18', 'LAP1011', '', '255606122', 'VALIDE', 'ACTIVE', 779, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3909, '2020-01-19 10:27:25', '2020-01-19 10:27:26', 'LAP1011', '', '703342436', 'VALIDE', 'ACTIVE', 780, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3910, '2020-01-19 10:27:32', '2020-01-19 10:27:33', 'LAP1011', '', '1497075883', 'VALIDE', 'ACTIVE', 781, 205, 3822, 205);
INSERT INTO `est_inscrit` VALUES (3911, '2020-01-19 10:28:37', '2020-01-19 10:28:38', 'MAP1011', '', '-530845628', 'VALIDE', 'ACTIVE', 753, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3912, '2020-01-19 10:28:43', '2020-01-19 10:28:44', 'MAP1011', '', '-1351135476', 'VALIDE', 'ACTIVE', 754, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3913, '2020-01-19 10:28:50', '2020-01-19 10:28:51', 'MAP1011', '', '-1184651503', 'VALIDE', 'ACTIVE', 755, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3914, '2020-01-19 10:28:57', '2020-01-19 10:28:58', 'MAP1011', '', '-1642297938', 'VALIDE', 'ACTIVE', 756, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3915, '2020-01-19 10:29:04', '2020-01-19 10:29:05', 'MAP1011', '', '1879338229', 'VALIDE', 'ACTIVE', 757, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3916, '2020-01-19 10:29:11', '2020-01-19 10:29:12', 'MAP1011', '', '-1764338294', 'VALIDE', 'ACTIVE', 758, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3917, '2020-01-19 10:29:18', '2020-01-19 10:29:19', 'MAP1011', '', '154078557', 'VALIDE', 'ACTIVE', 759, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3918, '2020-01-19 10:29:24', '2020-01-19 10:29:26', 'MAP1011', '', '1973749867', 'VALIDE', 'ACTIVE', 760, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3919, '2020-01-19 10:29:31', '2020-01-19 10:29:32', 'MAP1011', '', '677033200', 'VALIDE', 'ACTIVE', 761, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3920, '2020-01-19 10:29:38', '2020-01-19 10:29:39', 'MAP1011', '', '565376538', 'VALIDE', 'ACTIVE', 762, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3921, '2020-01-19 10:29:45', '2020-01-19 10:29:46', 'MAP1011', '', '496879020', 'VALIDE', 'ACTIVE', 763, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3922, '2020-01-19 10:29:52', '2020-01-19 10:29:53', 'MAP1011', '', '-1925832836', 'VALIDE', 'ACTIVE', 764, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3923, '2020-01-19 10:29:59', '2020-01-19 10:30:00', 'MAP1011', '', '-1370819551', 'VALIDE', 'ACTIVE', 765, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3924, '2020-01-19 10:30:06', '2020-01-19 10:30:07', 'MAP1011', '', '-932440079', 'VALIDE', 'ACTIVE', 766, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3925, '2020-01-19 10:30:12', '2020-01-19 10:30:13', 'MAP1011', '', '-688712959', 'VALIDE', 'ACTIVE', 767, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3926, '2020-01-19 10:30:19', '2020-01-19 10:30:20', 'MAP1011', '', '59349997', 'VALIDE', 'ACTIVE', 768, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3927, '2020-01-19 10:30:26', '2020-01-19 10:30:27', 'MAP1011', '', '-623184271', 'VALIDE', 'ACTIVE', 769, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3928, '2020-01-19 10:30:33', '2020-01-19 10:30:34', 'MAP1011', '', '737794422', 'VALIDE', 'ACTIVE', 770, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3929, '2020-01-19 10:30:40', '2020-01-19 10:30:41', 'MAP1011', '', '483345167', 'VALIDE', 'ACTIVE', 771, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3930, '2020-01-19 10:30:47', '2020-01-19 10:30:48', 'MAP1011', '', '-408520909', 'VALIDE', 'ACTIVE', 772, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3931, '2020-01-19 10:30:54', '2020-01-19 10:30:55', 'MAP1011', '', '-1007646046', 'VALIDE', 'ACTIVE', 773, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3932, '2020-01-19 10:31:01', '2020-01-19 10:31:02', 'MAP1011', '', '-2129157455', 'VALIDE', 'ACTIVE', 774, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3933, '2020-01-19 10:31:08', '2020-01-19 10:31:09', 'MAP1011', '', '-1502127238', 'VALIDE', 'ACTIVE', 775, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3934, '2020-01-19 10:31:15', '2020-01-19 10:31:16', 'MAP1011', '', '-1313441432', 'VALIDE', 'ACTIVE', 776, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3935, '2020-01-19 10:31:21', '2020-01-19 10:31:23', 'MAP1011', '', '-1662752457', 'VALIDE', 'ACTIVE', 777, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3936, '2020-01-19 10:31:28', '2020-01-19 10:31:30', 'MAP1011', '', '600906539', 'VALIDE', 'ACTIVE', 778, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3937, '2020-01-19 10:31:35', '2020-01-19 10:31:37', 'MAP1011', '', '-1229755019', 'VALIDE', 'ACTIVE', 779, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3938, '2020-01-19 10:31:42', '2020-01-19 10:31:43', 'MAP1011', '', '1181480335', 'VALIDE', 'ACTIVE', 780, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3939, '2020-01-19 10:31:49', '2020-01-19 10:31:50', 'MAP1011', '', '-1776768971', 'VALIDE', 'ACTIVE', 781, 205, 3820, 205);
INSERT INTO `est_inscrit` VALUES (3940, '2020-01-19 10:35:21', '2020-01-19 10:35:22', 'INP1041', '', '-421490221', 'VALIDE', 'ACTIVE', 753, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3941, '2020-01-19 10:35:28', '2020-01-19 10:35:29', 'INP1041', '', '-2118097959', 'VALIDE', 'ACTIVE', 754, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3942, '2020-01-19 10:35:34', '2020-01-19 10:35:35', 'INP1041', '', '1294787978', 'VALIDE', 'ACTIVE', 755, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3943, '2020-01-19 10:35:41', '2020-01-19 10:35:43', 'INP1041', '', '-1901702552', 'VALIDE', 'ACTIVE', 756, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3944, '2020-01-19 10:35:48', '2020-01-19 10:35:49', 'INP1041', '', '1863558466', 'VALIDE', 'ACTIVE', 757, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3945, '2020-01-19 10:35:55', '2020-01-19 10:35:57', 'INP1041', '', '1743171097', 'VALIDE', 'ACTIVE', 758, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3946, '2020-01-19 10:36:02', '2020-01-19 10:36:04', 'INP1041', '', '-1789030631', 'VALIDE', 'ACTIVE', 759, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3947, '2020-01-19 10:36:09', '2020-01-19 10:36:11', 'INP1041', '', '-1611708026', 'VALIDE', 'ACTIVE', 760, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3948, '2020-01-19 10:36:16', '2020-01-19 10:36:17', 'INP1041', '', '-1673386873', 'VALIDE', 'ACTIVE', 761, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3949, '2020-01-19 10:36:23', '2020-01-19 10:36:24', 'INP1041', '', '-1392467018', 'VALIDE', 'ACTIVE', 762, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3950, '2020-01-19 10:36:30', '2020-01-19 10:36:31', 'INP1041', '', '-1441283552', 'VALIDE', 'ACTIVE', 763, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3951, '2020-01-19 10:36:36', '2020-01-19 10:36:39', 'INP1041', '', '1240515177', 'VALIDE', 'ACTIVE', 764, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3952, '2020-01-19 10:36:45', '2020-01-19 10:36:46', 'INP1041', '', '-191448768', 'VALIDE', 'ACTIVE', 765, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3953, '2020-01-19 10:36:52', '2020-01-19 10:36:53', 'INP1041', '', '-2141862642', 'VALIDE', 'ACTIVE', 766, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3954, '2020-01-19 10:36:59', '2020-01-19 10:37:01', 'INP1041', '', '-1189292298', 'VALIDE', 'ACTIVE', 767, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3955, '2020-01-19 10:37:07', '2020-01-19 10:37:08', 'INP1041', '', '2065916972', 'VALIDE', 'ACTIVE', 768, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3956, '2020-01-19 10:37:13', '2020-01-19 10:37:15', 'INP1041', '', '409164579', 'VALIDE', 'ACTIVE', 769, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3957, '2020-01-19 10:37:20', '2020-01-19 10:37:22', 'INP1041', '', '56021825', 'VALIDE', 'ACTIVE', 770, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3958, '2020-01-19 10:37:27', '2020-01-19 10:37:28', 'INP1041', '', '2145018315', 'VALIDE', 'ACTIVE', 771, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3959, '2020-01-19 10:37:33', '2020-01-19 10:37:34', 'INP1041', '', '-947829858', 'VALIDE', 'ACTIVE', 772, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3960, '2020-01-19 10:37:39', '2020-01-19 10:37:41', 'INP1041', '', '481808141', 'VALIDE', 'ACTIVE', 773, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3961, '2020-01-19 10:37:46', '2020-01-19 10:37:47', 'INP1041', '', '-1937959424', 'VALIDE', 'ACTIVE', 774, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3962, '2020-01-19 10:37:53', '2020-01-19 10:37:54', 'INP1041', '', '-317568170', 'VALIDE', 'ACTIVE', 775, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3963, '2020-01-19 10:38:00', '2020-01-19 10:38:01', 'INP1041', '', '1109862503', 'VALIDE', 'ACTIVE', 776, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3964, '2020-01-19 10:38:07', '2020-01-19 10:38:08', 'INP1041', '', '1304244258', 'VALIDE', 'ACTIVE', 777, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3965, '2020-01-19 10:38:14', '2020-01-19 10:38:15', 'INP1041', '', '157447945', 'VALIDE', 'ACTIVE', 778, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3966, '2020-01-19 10:38:20', '2020-01-19 10:38:22', 'INP1041', '', '1095720440', 'VALIDE', 'ACTIVE', 779, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3967, '2020-01-19 10:38:27', '2020-01-19 10:38:28', 'INP1041', '', '1580984316', 'VALIDE', 'ACTIVE', 780, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3968, '2020-01-19 10:38:34', '2020-01-19 10:38:35', 'INP1041', '', '15022698', 'VALIDE', 'ACTIVE', 781, 205, 3819, 205);
INSERT INTO `est_inscrit` VALUES (3969, '2020-01-19 10:39:50', '2020-01-19 10:39:51', 'INP1031', '', '-861481349', 'VALIDE', 'ACTIVE', 753, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3970, '2020-01-19 10:39:57', '2020-01-19 10:39:58', 'INP1031', '', '-1748912847', 'VALIDE', 'ACTIVE', 754, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3971, '2020-01-19 10:40:03', '2020-01-19 10:40:04', 'INP1031', '', '-35210889', 'VALIDE', 'ACTIVE', 755, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3972, '2020-01-19 10:40:10', '2020-01-19 10:40:12', 'INP1031', '', '-1921001723', 'VALIDE', 'ACTIVE', 756, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3973, '2020-01-19 10:40:17', '2020-01-19 10:40:19', 'INP1031', '', '-1670107815', 'VALIDE', 'ACTIVE', 757, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3974, '2020-01-19 10:40:25', '2020-01-19 10:40:26', 'INP1031', '', '-186447624', 'VALIDE', 'ACTIVE', 758, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3975, '2020-01-19 10:40:31', '2020-01-19 10:40:33', 'INP1031', '', '464161307', 'VALIDE', 'ACTIVE', 759, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3976, '2020-01-19 10:40:38', '2020-01-19 10:40:39', 'INP1031', '', '788503290', 'VALIDE', 'ACTIVE', 760, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3977, '2020-01-19 10:40:45', '2020-01-19 10:40:46', 'INP1031', '', '1000139268', 'VALIDE', 'ACTIVE', 761, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3978, '2020-01-19 10:40:52', '2020-01-19 10:40:53', 'INP1031', '', '1427064035', 'VALIDE', 'ACTIVE', 762, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3979, '2020-01-19 10:40:58', '2020-01-19 10:41:00', 'INP1031', '', '-1053820515', 'VALIDE', 'ACTIVE', 763, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3980, '2020-01-19 10:41:05', '2020-01-19 10:41:06', 'INP1031', '', '-2085704180', 'VALIDE', 'ACTIVE', 764, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3981, '2020-01-19 10:41:12', '2020-01-19 10:41:13', 'INP1031', '', '-2089848610', 'VALIDE', 'ACTIVE', 765, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3982, '2020-01-19 10:41:19', '2020-01-19 10:41:20', 'INP1031', '', '-1354407742', 'VALIDE', 'ACTIVE', 766, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3983, '2020-01-19 10:41:26', '2020-01-19 10:41:27', 'INP1031', '', '362661375', 'VALIDE', 'ACTIVE', 767, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3984, '2020-01-19 10:41:33', '2020-01-19 10:41:34', 'INP1031', '', '1988616755', 'VALIDE', 'ACTIVE', 768, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3985, '2020-01-19 10:41:39', '2020-01-19 10:41:41', 'INP1031', '', '-777187574', 'VALIDE', 'ACTIVE', 769, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3986, '2020-01-19 10:41:46', '2020-01-19 10:41:47', 'INP1031', '', '-1323257899', 'VALIDE', 'ACTIVE', 770, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3987, '2020-01-19 10:41:53', '2020-01-19 10:41:54', 'INP1031', '', '-976124762', 'VALIDE', 'ACTIVE', 771, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3988, '2020-01-19 10:42:00', '2020-01-19 10:42:01', 'INP1031', '', '367319531', 'VALIDE', 'ACTIVE', 772, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3989, '2020-01-19 10:42:07', '2020-01-19 10:42:08', 'INP1031', '', '1499136103', 'VALIDE', 'ACTIVE', 773, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3990, '2020-01-19 10:42:14', '2020-01-19 10:42:15', 'INP1031', '', '-899986299', 'VALIDE', 'ACTIVE', 774, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3991, '2020-01-19 10:42:21', '2020-01-19 10:42:22', 'INP1031', '', '1564411787', 'VALIDE', 'ACTIVE', 775, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3992, '2020-01-19 10:42:28', '2020-01-19 10:42:29', 'INP1031', '', '1571409541', 'VALIDE', 'ACTIVE', 776, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3993, '2020-01-19 10:42:35', '2020-01-19 10:42:36', 'INP1031', '', '1906316236', 'VALIDE', 'ACTIVE', 777, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3994, '2020-01-19 10:42:41', '2020-01-19 10:42:42', 'INP1031', '', '1774275811', 'VALIDE', 'ACTIVE', 778, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3995, '2020-01-19 10:42:47', '2020-01-19 10:42:49', 'INP1031', '', '723768557', 'VALIDE', 'ACTIVE', 779, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3996, '2020-01-19 10:42:54', '2020-01-19 10:42:56', 'INP1031', '', '-1527888472', 'VALIDE', 'ACTIVE', 780, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3997, '2020-01-19 10:43:01', '2020-01-19 10:43:02', 'INP1031', '', '-1994748872', 'VALIDE', 'ACTIVE', 781, 205, 3818, 205);
INSERT INTO `est_inscrit` VALUES (3998, '2020-01-19 10:44:26', '2020-01-19 10:44:27', 'INP1021', '', '196930096', 'VALIDE', 'ACTIVE', 753, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (3999, '2020-01-19 10:44:33', '2020-01-19 10:44:34', 'INP1021', '', '159280495', 'VALIDE', 'ACTIVE', 754, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4000, '2020-01-19 10:44:40', '2020-01-19 10:44:41', 'INP1021', '', '753902603', 'VALIDE', 'ACTIVE', 755, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4001, '2020-01-19 10:44:47', '2020-01-19 10:44:49', 'INP1021', '', '-1197988506', 'VALIDE', 'ACTIVE', 756, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4002, '2020-01-19 10:44:55', '2020-01-19 10:44:56', 'INP1021', '', '-246114888', 'VALIDE', 'ACTIVE', 757, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4003, '2020-01-19 10:45:02', '2020-01-19 10:45:03', 'INP1021', '', '833883193', 'VALIDE', 'ACTIVE', 758, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4004, '2020-01-19 10:45:09', '2020-01-19 10:45:10', 'INP1021', '', '1073289223', 'VALIDE', 'ACTIVE', 759, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4005, '2020-01-19 10:45:15', '2020-01-19 10:45:17', 'INP1021', '', '1418963396', 'VALIDE', 'ACTIVE', 760, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4006, '2020-01-19 10:45:22', '2020-01-19 10:45:23', 'INP1021', '', '748025898', 'VALIDE', 'ACTIVE', 761, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4007, '2020-01-19 10:45:29', '2020-01-19 10:45:30', 'INP1021', '', '422921358', 'VALIDE', 'ACTIVE', 762, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4008, '2020-01-19 10:45:39', '2020-01-19 10:45:40', 'INP1021', '', '933956568', 'VALIDE', 'ACTIVE', 763, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4009, '2020-01-19 10:45:45', '2020-01-19 10:45:46', 'INP1021', '', '1324198472', 'VALIDE', 'ACTIVE', 764, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4010, '2020-01-19 10:45:52', '2020-01-19 10:45:53', 'INP1021', '', '821049072', 'VALIDE', 'ACTIVE', 765, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4011, '2020-01-19 10:45:59', '2020-01-19 10:46:00', 'INP1021', '', '-68147131', 'VALIDE', 'ACTIVE', 766, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4012, '2020-01-19 10:46:06', '2020-01-19 10:46:07', 'INP1021', '', '-619474007', 'VALIDE', 'ACTIVE', 767, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4013, '2020-01-19 10:46:13', '2020-01-19 10:46:14', 'INP1021', '', '-594391513', 'VALIDE', 'ACTIVE', 768, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4014, '2020-01-19 10:46:20', '2020-01-19 10:46:21', 'INP1021', '', '758582036', 'VALIDE', 'ACTIVE', 769, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4015, '2020-01-19 10:46:27', '2020-01-19 10:46:28', 'INP1021', '', '998042930', 'VALIDE', 'ACTIVE', 770, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4016, '2020-01-19 10:46:34', '2020-01-19 10:46:35', 'INP1021', '', '-579214392', 'VALIDE', 'ACTIVE', 771, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4017, '2020-01-19 10:46:41', '2020-01-19 10:46:42', 'INP1021', '', '55874462', 'VALIDE', 'ACTIVE', 772, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4018, '2020-01-19 10:46:47', '2020-01-19 10:46:49', 'INP1021', '', '-142399786', 'VALIDE', 'ACTIVE', 773, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4019, '2020-01-19 10:46:54', '2020-01-19 10:46:56', 'INP1021', '', '-101110334', 'VALIDE', 'ACTIVE', 774, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4020, '2020-01-19 10:47:01', '2020-01-19 10:47:02', 'INP1021', '', '-596062657', 'VALIDE', 'ACTIVE', 775, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4021, '2020-01-19 10:47:08', '2020-01-19 10:47:09', 'INP1021', '', '-835443751', 'VALIDE', 'ACTIVE', 776, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4022, '2020-01-19 10:47:15', '2020-01-19 10:47:16', 'INP1021', '', '-1934519967', 'VALIDE', 'ACTIVE', 777, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4023, '2020-01-19 10:47:22', '2020-01-19 10:47:23', 'INP1021', '', '1082510241', 'VALIDE', 'ACTIVE', 778, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4024, '2020-01-19 10:47:29', '2020-01-19 10:47:30', 'INP1021', '', '-205530489', 'VALIDE', 'ACTIVE', 779, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4025, '2020-01-19 10:47:36', '2020-01-19 10:47:38', 'INP1021', '', '874554270', 'VALIDE', 'ACTIVE', 780, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4026, '2020-01-19 10:47:44', '2020-01-19 10:47:45', 'INP1021', '', '-1647782695', 'VALIDE', 'ACTIVE', 781, 205, 3817, 205);
INSERT INTO `est_inscrit` VALUES (4027, '2020-01-19 10:53:52', '2020-01-19 10:53:54', 'INP1011', '', '1533360817', 'VALIDE', 'ACTIVE', 753, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4028, '2020-01-19 10:54:00', '2020-01-19 10:54:01', 'INP1011', '', '-2051560479', 'VALIDE', 'ACTIVE', 754, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4029, '2020-01-19 10:54:06', '2020-01-19 10:54:08', 'INP1011', '', '-1635551989', 'VALIDE', 'ACTIVE', 755, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4030, '2020-01-19 10:54:13', '2020-01-19 10:54:13', 'INP1011', '', '861745996', 'VALIDE', 'ACTIVE', 756, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4031, '2020-01-19 10:54:18', '2020-01-19 10:54:19', 'INP1011', '', '-276513047', 'VALIDE', 'ACTIVE', 757, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4032, '2020-01-19 10:54:23', '2020-01-19 10:54:24', 'INP1011', '', '-112588061', 'VALIDE', 'ACTIVE', 758, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4033, '2020-01-19 10:54:29', '2020-01-19 10:54:30', 'INP1011', '', '1546820589', 'VALIDE', 'ACTIVE', 759, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4034, '2020-01-19 10:54:34', '2020-01-19 10:54:35', 'INP1011', '', '1544460441', 'VALIDE', 'ACTIVE', 760, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4035, '2020-01-19 10:54:40', '2020-01-19 10:54:41', 'INP1011', '', '2062855146', 'VALIDE', 'ACTIVE', 761, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4036, '2020-01-19 10:54:47', '2020-01-19 10:54:48', 'INP1011', '', '-1352582780', 'VALIDE', 'ACTIVE', 762, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4037, '2020-01-19 10:54:53', '2020-01-19 10:54:54', 'INP1011', '', '1652010060', 'VALIDE', 'ACTIVE', 763, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4038, '2020-01-19 10:55:00', '2020-01-19 10:55:01', 'INP1011', '', '-2102091505', 'VALIDE', 'ACTIVE', 764, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4039, '2020-01-19 10:55:06', '2020-01-19 10:55:08', 'INP1011', '', '2133357418', 'VALIDE', 'ACTIVE', 765, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4040, '2020-01-19 10:55:13', '2020-01-19 10:55:14', 'INP1011', '', '-288930661', 'VALIDE', 'ACTIVE', 766, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4041, '2020-01-19 10:55:20', '2020-01-19 10:55:21', 'INP1011', '', '353334517', 'VALIDE', 'ACTIVE', 767, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4042, '2020-01-19 10:55:27', '2020-01-19 10:55:28', 'INP1011', '', '1332613488', 'VALIDE', 'ACTIVE', 768, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4043, '2020-01-19 10:55:34', '2020-01-19 10:55:36', 'INP1011', '', '-1211810245', 'VALIDE', 'ACTIVE', 769, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4044, '2020-01-19 10:55:41', '2020-01-19 10:55:42', 'INP1011', '', '1082469781', 'VALIDE', 'ACTIVE', 770, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4045, '2020-01-19 10:55:48', '2020-01-19 10:55:49', 'INP1011', '', '-1632011944', 'VALIDE', 'ACTIVE', 771, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4046, '2020-01-19 10:55:55', '2020-01-19 10:55:56', 'INP1011', '', '-2028254951', 'VALIDE', 'ACTIVE', 772, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4047, '2020-01-19 10:56:03', '2020-01-19 10:56:04', 'INP1011', '', '-2067942077', 'VALIDE', 'ACTIVE', 773, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4048, '2020-01-19 10:56:10', '2020-01-19 10:56:12', 'INP1011', '', '-1966486720', 'VALIDE', 'ACTIVE', 774, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4049, '2020-01-19 10:56:17', '2020-01-19 10:56:19', 'INP1011', '', '-949556001', 'VALIDE', 'ACTIVE', 775, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4050, '2020-01-19 10:56:25', '2020-01-19 10:56:26', 'INP1011', '', '2055553070', 'VALIDE', 'ACTIVE', 776, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4051, '2020-01-19 10:56:32', '2020-01-19 10:56:34', 'INP1011', '', '796940081', 'VALIDE', 'ACTIVE', 777, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4052, '2020-01-19 10:56:40', '2020-01-19 10:56:41', 'INP1011', '', '-487626389', 'VALIDE', 'ACTIVE', 778, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4053, '2020-01-19 10:56:47', '2020-01-19 10:56:49', 'INP1011', '', '-1150918458', 'VALIDE', 'ACTIVE', 779, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4054, '2020-01-19 10:56:54', '2020-01-19 10:56:55', 'INP1011', '', '1123534755', 'VALIDE', 'ACTIVE', 780, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4055, '2020-01-19 10:57:01', '2020-01-19 10:57:02', 'INP1011', '', '1066458155', 'VALIDE', 'ACTIVE', 781, 205, 3816, 205);
INSERT INTO `est_inscrit` VALUES (4102, '2020-01-19 11:40:02', '2020-01-19 11:40:04', 'RES3165', '', '-780012473', 'VALIDE', 'ACTIVE', 552, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4103, '2020-01-19 11:40:07', '2020-01-19 11:40:09', 'RES3165', '', '1473072173', 'VALIDE', 'ACTIVE', 553, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4104, '2020-01-19 11:40:12', '2020-01-19 11:40:14', 'RES3165', '', '-1007862683', 'VALIDE', 'ACTIVE', 554, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4105, '2020-01-19 11:40:18', '2020-01-19 11:40:19', 'RES3165', '', '-1052568548', 'VALIDE', 'ACTIVE', 555, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4106, '2020-01-19 11:40:23', '2020-01-19 11:40:24', 'RES3165', '', '1952534676', 'VALIDE', 'ACTIVE', 556, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4107, '2020-01-19 11:40:28', '2020-01-19 11:40:30', 'RES3165', '', '1741603221', 'VALIDE', 'ACTIVE', 557, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4108, '2020-01-19 11:40:33', '2020-01-19 11:40:35', 'RES3165', '', '2109855522', 'VALIDE', 'ACTIVE', 558, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4109, '2020-01-19 11:40:38', '2020-01-19 11:40:40', 'RES3165', '', '-2035565843', 'VALIDE', 'ACTIVE', 559, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4110, '2020-01-19 11:40:44', '2020-01-19 11:40:45', 'RES3165', '', '-315403165', 'VALIDE', 'ACTIVE', 560, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4111, '2020-01-19 11:40:49', '2020-01-19 11:40:50', 'RES3165', '', '879533118', 'VALIDE', 'ACTIVE', 561, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4112, '2020-01-19 11:40:54', '2020-01-19 11:40:56', 'RES3165', '', '1685405910', 'VALIDE', 'ACTIVE', 562, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4113, '2020-01-19 11:40:59', '2020-01-19 11:41:01', 'RES3165', '', '1506595706', 'VALIDE', 'ACTIVE', 563, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4114, '2020-01-19 11:41:04', '2020-01-19 11:41:06', 'RES3165', '', '-2096569868', 'VALIDE', 'ACTIVE', 564, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4115, '2020-01-19 11:41:10', '2020-01-19 11:41:11', 'RES3165', '', '168184843', 'VALIDE', 'ACTIVE', 565, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4116, '2020-01-19 11:41:15', '2020-01-19 11:41:16', 'RES3165', '', '605619349', 'VALIDE', 'ACTIVE', 566, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4117, '2020-01-19 11:41:20', '2020-01-19 11:41:22', 'RES3165', '', '-1871641249', 'VALIDE', 'ACTIVE', 567, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4118, '2020-01-19 11:41:25', '2020-01-19 11:41:27', 'RES3165', '', '802078238', 'VALIDE', 'ACTIVE', 568, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4119, '2020-01-19 11:41:30', '2020-01-19 11:41:32', 'RES3165', '', '1294825926', 'VALIDE', 'ACTIVE', 569, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4120, '2020-01-19 11:41:35', '2020-01-19 11:41:37', 'RES3165', '', '1938139846', 'VALIDE', 'ACTIVE', 570, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4121, '2020-01-19 11:41:41', '2020-01-19 11:41:42', 'RES3165', '', '-1835052658', 'VALIDE', 'ACTIVE', 571, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4122, '2020-01-19 11:41:46', '2020-01-19 11:41:47', 'RES3165', '', '-1681952620', 'VALIDE', 'ACTIVE', 572, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4123, '2020-01-19 11:41:51', '2020-01-19 11:41:53', 'RES3165', '', '1991524434', 'VALIDE', 'ACTIVE', 573, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4124, '2020-01-19 11:41:57', '2020-01-19 11:41:59', 'RES3165', '', '946501886', 'VALIDE', 'ACTIVE', 574, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4125, '2020-01-19 11:42:02', '2020-01-19 11:42:04', 'RES3165', '', '-262040880', 'VALIDE', 'ACTIVE', 575, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4126, '2020-01-19 11:42:07', '2020-01-19 11:42:09', 'RES3165', '', '-911131337', 'VALIDE', 'ACTIVE', 576, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4127, '2020-01-19 11:42:13', '2020-01-19 11:42:14', 'RES3165', '', '-1406051750', 'VALIDE', 'ACTIVE', 577, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4128, '2020-01-19 11:42:18', '2020-01-19 11:42:19', 'RES3165', '', '-1998440935', 'VALIDE', 'ACTIVE', 578, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4129, '2020-01-19 11:42:23', '2020-01-19 11:42:25', 'RES3165', '', '1228848887', 'VALIDE', 'ACTIVE', 579, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4130, '2020-01-19 11:42:28', '2020-01-19 11:42:30', 'RES3165', '', '-371585762', 'VALIDE', 'ACTIVE', 580, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4131, '2020-01-19 11:42:33', '2020-01-19 11:42:35', 'RES3165', '', '211471279', 'VALIDE', 'ACTIVE', 581, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4132, '2020-01-19 11:42:39', '2020-01-19 11:42:40', 'RES3165', '', '493332827', 'VALIDE', 'ACTIVE', 582, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4133, '2020-01-19 11:42:44', '2020-01-19 11:42:46', 'RES3165', '', '-658780940', 'VALIDE', 'ACTIVE', 583, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4134, '2020-01-19 11:42:49', '2020-01-19 11:42:51', 'RES3165', '', '-185115968', 'VALIDE', 'ACTIVE', 584, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4135, '2020-01-19 11:42:55', '2020-01-19 11:42:56', 'RES3165', '', '1334606864', 'VALIDE', 'ACTIVE', 585, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4136, '2020-01-19 11:43:03', '2020-01-19 11:43:04', 'RES3165', '', '1964459794', 'VALIDE', 'ACTIVE', 586, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4137, '2020-01-19 11:43:08', '2020-01-19 11:43:10', 'RES3165', '', '780061401', 'VALIDE', 'ACTIVE', 587, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4138, '2020-01-19 11:43:13', '2020-01-19 11:43:15', 'RES3165', '', '105799868', 'VALIDE', 'ACTIVE', 588, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4139, '2020-01-19 11:43:18', '2020-01-19 11:43:20', 'RES3165', '', '-1932151320', 'VALIDE', 'ACTIVE', 589, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4140, '2020-01-19 11:43:23', '2020-01-19 11:43:25', 'RES3165', '', '1979122310', 'VALIDE', 'ACTIVE', 590, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4141, '2020-01-19 11:43:29', '2020-01-19 11:43:30', 'RES3165', '', '-1323672961', 'VALIDE', 'ACTIVE', 591, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4142, '2020-01-19 11:43:34', '2020-01-19 11:43:35', 'RES3165', '', '1427027670', 'VALIDE', 'ACTIVE', 592, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4143, '2020-01-19 11:43:39', '2020-01-19 11:43:41', 'RES3165', '', '-84107575', 'VALIDE', 'ACTIVE', 593, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4144, '2020-01-19 11:43:44', '2020-01-19 11:43:46', 'RES3165', '', '1162909210', 'VALIDE', 'ACTIVE', 594, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4145, '2020-01-19 11:43:50', '2020-01-19 11:43:51', 'RES3165', '', '-2136844682', 'VALIDE', 'ACTIVE', 595, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4146, '2020-01-19 11:43:55', '2020-01-19 11:43:56', 'RES3165', '', '222148124', 'VALIDE', 'ACTIVE', 596, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4147, '2020-01-19 11:44:00', '2020-01-19 11:44:02', 'RES3165', '', '1479312407', 'VALIDE', 'ACTIVE', 597, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4148, '2020-01-19 11:44:06', '2020-01-19 11:44:08', 'RES3165', '', '748694347', 'VALIDE', 'ACTIVE', 598, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4149, '2020-01-19 11:44:11', '2020-01-19 11:44:13', 'RES3165', '', '2076157124', 'VALIDE', 'ACTIVE', 599, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4150, '2020-01-19 11:44:17', '2020-01-19 11:44:18', 'RES3165', '', '-1270348612', 'VALIDE', 'ACTIVE', 600, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4151, '2020-01-19 11:44:22', '2020-01-19 11:44:25', 'RES3165', '', '-1927069167', 'VALIDE', 'ACTIVE', 601, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4152, '2020-01-19 11:44:28', '2020-01-19 11:44:30', 'RES3165', '', '1938582891', 'VALIDE', 'ACTIVE', 602, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4153, '2020-01-19 11:44:33', '2020-01-19 11:44:35', 'RES3165', '', '976016923', 'VALIDE', 'ACTIVE', 603, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4154, '2020-01-19 11:44:39', '2020-01-19 11:44:40', 'RES3165', '', '-1657030467', 'VALIDE', 'ACTIVE', 604, 205, 1927, 205);
INSERT INTO `est_inscrit` VALUES (4155, '2020-01-19 11:46:13', '2020-01-19 11:46:14', 'INF3175', '', '-1725579572', 'VALIDE', 'ACTIVE', 552, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4156, '2020-01-19 11:46:17', '2020-01-19 11:46:18', 'INF3175', '', '-51611301', 'VALIDE', 'ACTIVE', 553, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4157, '2020-01-19 11:46:22', '2020-01-19 11:46:23', 'INF3175', '', '-810020307', 'VALIDE', 'ACTIVE', 554, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4158, '2020-01-19 11:46:26', '2020-01-19 11:46:27', 'INF3175', '', '-1697165734', 'VALIDE', 'ACTIVE', 555, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4159, '2020-01-19 11:46:31', '2020-01-19 11:46:32', 'INF3175', '', '558427717', 'VALIDE', 'ACTIVE', 556, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4160, '2020-01-19 11:46:35', '2020-01-19 11:46:36', 'INF3175', '', '1286874435', 'VALIDE', 'ACTIVE', 557, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4161, '2020-01-19 11:46:40', '2020-01-19 11:46:41', 'INF3175', '', '1090952218', 'VALIDE', 'ACTIVE', 558, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4162, '2020-01-19 11:46:44', '2020-01-19 11:46:45', 'INF3175', '', '1184025542', 'VALIDE', 'ACTIVE', 559, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4163, '2020-01-19 11:46:49', '2020-01-19 11:46:50', 'INF3175', '', '823539505', 'VALIDE', 'ACTIVE', 560, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4164, '2020-01-19 11:46:54', '2020-01-19 11:46:54', 'INF3175', '', '1794441762', 'VALIDE', 'ACTIVE', 561, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4165, '2020-01-19 11:46:58', '2020-01-19 11:46:59', 'INF3175', '', '632543945', 'VALIDE', 'ACTIVE', 562, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4166, '2020-01-19 11:47:03', '2020-01-19 11:47:03', 'INF3175', '', '1018196285', 'VALIDE', 'ACTIVE', 563, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4167, '2020-01-19 11:47:07', '2020-01-19 11:47:08', 'INF3175', '', '-1789927732', 'VALIDE', 'ACTIVE', 564, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4168, '2020-01-19 11:47:12', '2020-01-19 11:47:12', 'INF3175', '', '1247463346', 'VALIDE', 'ACTIVE', 565, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4169, '2020-01-19 11:47:16', '2020-01-19 11:47:17', 'INF3175', '', '-2090489236', 'VALIDE', 'ACTIVE', 566, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4170, '2020-01-19 11:47:21', '2020-01-19 11:47:22', 'INF3175', '', '-1292451386', 'VALIDE', 'ACTIVE', 567, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4171, '2020-01-19 11:47:25', '2020-01-19 11:47:26', 'INF3175', '', '-1073413118', 'VALIDE', 'ACTIVE', 568, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4172, '2020-01-19 11:47:30', '2020-01-19 11:47:31', 'INF3175', '', '-1467005535', 'VALIDE', 'ACTIVE', 569, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4173, '2020-01-19 11:47:34', '2020-01-19 11:47:35', 'INF3175', '', '605334337', 'VALIDE', 'ACTIVE', 570, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4174, '2020-01-19 11:47:39', '2020-01-19 11:47:40', 'INF3175', '', '1130700877', 'VALIDE', 'ACTIVE', 571, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4175, '2020-01-19 11:47:43', '2020-01-19 11:47:44', 'INF3175', '', '-1202161116', 'VALIDE', 'ACTIVE', 572, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4176, '2020-01-19 11:47:48', '2020-01-19 11:47:49', 'INF3175', '', '361207527', 'VALIDE', 'ACTIVE', 573, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4177, '2020-01-19 11:47:52', '2020-01-19 11:47:53', 'INF3175', '', '1912317214', 'VALIDE', 'ACTIVE', 574, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4178, '2020-01-19 11:47:57', '2020-01-19 11:47:58', 'INF3175', '', '-253176550', 'VALIDE', 'ACTIVE', 575, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4179, '2020-01-19 11:48:01', '2020-01-19 11:48:02', 'INF3175', '', '-72918133', 'VALIDE', 'ACTIVE', 576, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4180, '2020-01-19 11:48:06', '2020-01-19 11:48:07', 'INF3175', '', '1872499715', 'VALIDE', 'ACTIVE', 577, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4181, '2020-01-19 11:48:10', '2020-01-19 11:48:11', 'INF3175', '', '-1635661076', 'VALIDE', 'ACTIVE', 578, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4182, '2020-01-19 11:48:15', '2020-01-19 11:48:16', 'INF3175', '', '1703743939', 'VALIDE', 'ACTIVE', 579, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4183, '2020-01-19 11:48:20', '2020-01-19 11:48:21', 'INF3175', '', '-453914827', 'VALIDE', 'ACTIVE', 580, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4184, '2020-01-19 11:48:25', '2020-01-19 11:48:26', 'INF3175', '', '222905365', 'VALIDE', 'ACTIVE', 581, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4185, '2020-01-19 11:48:29', '2020-01-19 11:48:30', 'INF3175', '', '-1310055385', 'VALIDE', 'ACTIVE', 582, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4186, '2020-01-19 11:48:34', '2020-01-19 11:48:35', 'INF3175', '', '-370732230', 'VALIDE', 'ACTIVE', 583, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4187, '2020-01-19 11:48:38', '2020-01-19 11:48:39', 'INF3175', '', '-1995556917', 'VALIDE', 'ACTIVE', 584, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4188, '2020-01-19 11:48:43', '2020-01-19 11:48:44', 'INF3175', '', '1937508093', 'VALIDE', 'ACTIVE', 585, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4189, '2020-01-19 11:48:47', '2020-01-19 11:48:48', 'INF3175', '', '1201319148', 'VALIDE', 'ACTIVE', 586, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4190, '2020-01-19 11:48:52', '2020-01-19 11:48:53', 'INF3175', '', '-798849901', 'VALIDE', 'ACTIVE', 587, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4191, '2020-01-19 11:48:56', '2020-01-19 11:48:57', 'INF3175', '', '142172246', 'VALIDE', 'ACTIVE', 588, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4192, '2020-01-19 11:49:01', '2020-01-19 11:49:02', 'INF3175', '', '-1478811646', 'VALIDE', 'ACTIVE', 589, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4193, '2020-01-19 11:49:05', '2020-01-19 11:49:06', 'INF3175', '', '-426239623', 'VALIDE', 'ACTIVE', 590, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4194, '2020-01-19 11:49:10', '2020-01-19 11:49:11', 'INF3175', '', '265732084', 'VALIDE', 'ACTIVE', 591, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4195, '2020-01-19 11:49:14', '2020-01-19 11:49:15', 'INF3175', '', '1548174571', 'VALIDE', 'ACTIVE', 592, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4196, '2020-01-19 11:49:19', '2020-01-19 11:49:20', 'INF3175', '', '1186552353', 'VALIDE', 'ACTIVE', 593, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4197, '2020-01-19 11:49:23', '2020-01-19 11:49:24', 'INF3175', '', '1040536675', 'VALIDE', 'ACTIVE', 594, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4198, '2020-01-19 11:49:29', '2020-01-19 11:49:30', 'INF3175', '', '1149171908', 'VALIDE', 'ACTIVE', 595, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4199, '2020-01-19 11:49:33', '2020-01-19 11:49:34', 'INF3175', '', '1295784841', 'VALIDE', 'ACTIVE', 596, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4200, '2020-01-19 11:49:38', '2020-01-19 11:49:39', 'INF3175', '', '-2140271807', 'VALIDE', 'ACTIVE', 597, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4201, '2020-01-19 11:49:42', '2020-01-19 11:49:44', 'INF3175', '', '-1890680672', 'VALIDE', 'ACTIVE', 598, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4202, '2020-01-19 11:49:48', '2020-01-19 11:49:49', 'INF3175', '', '-128387128', 'VALIDE', 'ACTIVE', 599, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4203, '2020-01-19 11:49:52', '2020-01-19 11:49:53', 'INF3175', '', '-16568586', 'VALIDE', 'ACTIVE', 600, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4204, '2020-01-19 11:49:57', '2020-01-19 11:49:58', 'INF3175', '', '-629128005', 'VALIDE', 'ACTIVE', 601, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4205, '2020-01-19 11:50:01', '2020-01-19 11:50:02', 'INF3175', '', '770954584', 'VALIDE', 'ACTIVE', 602, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4206, '2020-01-19 11:50:06', '2020-01-19 11:50:07', 'INF3175', '', '1274628440', 'VALIDE', 'ACTIVE', 603, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4207, '2020-01-19 11:50:10', '2020-01-19 11:50:11', 'INF3175', '', '1834723708', 'VALIDE', 'ACTIVE', 604, 205, 1928, 205);
INSERT INTO `est_inscrit` VALUES (4208, '2020-01-19 11:51:26', '2020-01-19 11:51:27', 'INF3165', '', '-2140535971', 'VALIDE', 'ACTIVE', 552, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4209, '2020-01-19 11:51:31', '2020-01-19 11:51:32', 'INF3165', '', '1934972853', 'VALIDE', 'ACTIVE', 553, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4210, '2020-01-19 11:51:35', '2020-01-19 11:51:36', 'INF3165', '', '-832536181', 'VALIDE', 'ACTIVE', 554, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4211, '2020-01-19 11:51:40', '2020-01-19 11:51:42', 'INF3165', '', '-379562350', 'VALIDE', 'ACTIVE', 555, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4212, '2020-01-19 11:51:46', '2020-01-19 11:51:47', 'INF3165', '', '-1762458285', 'VALIDE', 'ACTIVE', 556, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4213, '2020-01-19 11:51:50', '2020-01-19 11:51:51', 'INF3165', '', '-611264293', 'VALIDE', 'ACTIVE', 557, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4214, '2020-01-19 11:51:55', '2020-01-19 11:51:56', 'INF3165', '', '450208309', 'VALIDE', 'ACTIVE', 558, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4215, '2020-01-19 11:51:59', '2020-01-19 11:52:00', 'INF3165', '', '-928853468', 'VALIDE', 'ACTIVE', 559, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4216, '2020-01-19 11:52:04', '2020-01-19 11:52:05', 'INF3165', '', '438235297', 'VALIDE', 'ACTIVE', 560, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4217, '2020-01-19 11:52:08', '2020-01-19 11:52:09', 'INF3165', '', '-263884490', 'VALIDE', 'ACTIVE', 561, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4218, '2020-01-19 11:52:13', '2020-01-19 11:52:14', 'INF3165', '', '179220923', 'VALIDE', 'ACTIVE', 562, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4219, '2020-01-19 11:52:17', '2020-01-19 11:52:18', 'INF3165', '', '-44635893', 'VALIDE', 'ACTIVE', 563, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4220, '2020-01-19 11:52:22', '2020-01-19 11:52:23', 'INF3165', '', '-875648152', 'VALIDE', 'ACTIVE', 564, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4221, '2020-01-19 11:52:27', '2020-01-19 11:52:27', 'INF3165', '', '1231646844', 'VALIDE', 'ACTIVE', 565, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4222, '2020-01-19 11:52:31', '2020-01-19 11:52:32', 'INF3165', '', '-150924582', 'VALIDE', 'ACTIVE', 566, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4223, '2020-01-19 11:52:36', '2020-01-19 11:52:36', 'INF3165', '', '1674633977', 'VALIDE', 'ACTIVE', 567, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4224, '2020-01-19 11:52:40', '2020-01-19 11:52:41', 'INF3165', '', '979161507', 'VALIDE', 'ACTIVE', 568, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4225, '2020-01-19 11:52:45', '2020-01-19 11:52:46', 'INF3165', '', '1204956157', 'VALIDE', 'ACTIVE', 569, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4226, '2020-01-19 11:52:50', '2020-01-19 11:52:51', 'INF3165', '', '603490862', 'VALIDE', 'ACTIVE', 570, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4227, '2020-01-19 11:52:55', '2020-01-19 11:52:56', 'INF3165', '', '1756734904', 'VALIDE', 'ACTIVE', 571, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4228, '2020-01-19 11:53:00', '2020-01-19 11:53:00', 'INF3165', '', '-624930708', 'VALIDE', 'ACTIVE', 572, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4229, '2020-01-19 11:53:04', '2020-01-19 11:53:05', 'INF3165', '', '-983409946', 'VALIDE', 'ACTIVE', 573, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4230, '2020-01-19 11:53:09', '2020-01-19 11:53:09', 'INF3165', '', '-23932981', 'VALIDE', 'ACTIVE', 574, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4231, '2020-01-19 11:53:13', '2020-01-19 11:53:14', 'INF3165', '', '544813494', 'VALIDE', 'ACTIVE', 575, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4232, '2020-01-19 11:53:18', '2020-01-19 11:53:18', 'INF3165', '', '377181370', 'VALIDE', 'ACTIVE', 576, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4233, '2020-01-19 11:53:22', '2020-01-19 11:53:23', 'INF3165', '', '-1718792247', 'VALIDE', 'ACTIVE', 577, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4234, '2020-01-19 11:53:27', '2020-01-19 11:53:27', 'INF3165', '', '578181075', 'VALIDE', 'ACTIVE', 578, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4235, '2020-01-19 11:53:31', '2020-01-19 11:53:32', 'INF3165', '', '1561894934', 'VALIDE', 'ACTIVE', 579, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4236, '2020-01-19 11:53:36', '2020-01-19 11:53:37', 'INF3165', '', '859572748', 'VALIDE', 'ACTIVE', 580, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4237, '2020-01-19 11:53:40', '2020-01-19 11:53:41', 'INF3165', '', '1827184477', 'VALIDE', 'ACTIVE', 581, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4238, '2020-01-19 11:53:45', '2020-01-19 11:53:46', 'INF3165', '', '1134980720', 'VALIDE', 'ACTIVE', 582, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4239, '2020-01-19 11:53:49', '2020-01-19 11:53:50', 'INF3165', '', '-1016304115', 'VALIDE', 'ACTIVE', 583, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4240, '2020-01-19 11:53:54', '2020-01-19 11:53:55', 'INF3165', '', '-524415101', 'VALIDE', 'ACTIVE', 584, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4241, '2020-01-19 11:53:58', '2020-01-19 11:53:59', 'INF3165', '', '-1591120950', 'VALIDE', 'ACTIVE', 585, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4242, '2020-01-19 11:54:03', '2020-01-19 11:54:04', 'INF3165', '', '-564742845', 'VALIDE', 'ACTIVE', 586, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4243, '2020-01-19 11:54:07', '2020-01-19 11:54:08', 'INF3165', '', '2112875989', 'VALIDE', 'ACTIVE', 587, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4244, '2020-01-19 11:54:12', '2020-01-19 11:54:12', 'INF3165', '', '-1959283586', 'VALIDE', 'ACTIVE', 588, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4245, '2020-01-19 11:54:16', '2020-01-19 11:54:17', 'INF3165', '', '-121495025', 'VALIDE', 'ACTIVE', 589, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4246, '2020-01-19 11:54:21', '2020-01-19 11:54:21', 'INF3165', '', '971329028', 'VALIDE', 'ACTIVE', 590, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4247, '2020-01-19 11:54:25', '2020-01-19 11:54:26', 'INF3165', '', '949672289', 'VALIDE', 'ACTIVE', 591, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4248, '2020-01-19 11:54:30', '2020-01-19 11:54:30', 'INF3165', '', '-347210684', 'VALIDE', 'ACTIVE', 592, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4249, '2020-01-19 11:54:34', '2020-01-19 11:54:35', 'INF3165', '', '-205862847', 'VALIDE', 'ACTIVE', 593, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4250, '2020-01-19 11:54:39', '2020-01-19 11:54:39', 'INF3165', '', '292341797', 'VALIDE', 'ACTIVE', 594, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4251, '2020-01-19 11:54:43', '2020-01-19 11:54:45', 'INF3165', '', '-462246307', 'VALIDE', 'ACTIVE', 595, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4252, '2020-01-19 11:54:49', '2020-01-19 11:54:49', 'INF3165', '', '1489108699', 'VALIDE', 'ACTIVE', 596, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4253, '2020-01-19 11:54:54', '2020-01-19 11:54:55', 'INF3165', '', '-794995663', 'VALIDE', 'ACTIVE', 597, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4254, '2020-01-19 11:54:58', '2020-01-19 11:54:59', 'INF3165', '', '105716177', 'VALIDE', 'ACTIVE', 598, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4255, '2020-01-19 11:55:03', '2020-01-19 11:55:04', 'INF3165', '', '2097779923', 'VALIDE', 'ACTIVE', 599, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4256, '2020-01-19 11:55:07', '2020-01-19 11:55:08', 'INF3165', '', '-669992070', 'VALIDE', 'ACTIVE', 600, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4257, '2020-01-19 11:55:12', '2020-01-19 11:55:13', 'INF3165', '', '-1284188946', 'VALIDE', 'ACTIVE', 601, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4258, '2020-01-19 11:55:16', '2020-01-19 11:55:17', 'INF3165', '', '-1799723792', 'VALIDE', 'ACTIVE', 602, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4259, '2020-01-19 11:55:21', '2020-01-19 11:55:22', 'INF3165', '', '-1662189659', 'VALIDE', 'ACTIVE', 603, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4260, '2020-01-19 11:55:25', '2020-01-19 11:55:26', 'INF3165', '', '-849859417', 'VALIDE', 'ACTIVE', 604, 205, 1929, 205);
INSERT INTO `est_inscrit` VALUES (4261, '2020-01-19 11:56:38', '2020-01-19 11:56:39', 'INF3185', '', '539759897', 'VALIDE', 'ACTIVE', 552, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4262, '2020-01-19 11:56:42', '2020-01-19 11:56:43', 'INF3185', '', '1710699579', 'VALIDE', 'ACTIVE', 553, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4263, '2020-01-19 11:56:47', '2020-01-19 11:56:48', 'INF3185', '', '-925997691', 'VALIDE', 'ACTIVE', 554, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4264, '2020-01-19 11:56:51', '2020-01-19 11:56:52', 'INF3185', '', '1181376451', 'VALIDE', 'ACTIVE', 555, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4265, '2020-01-19 11:56:56', '2020-01-19 11:56:57', 'INF3185', '', '445667761', 'VALIDE', 'ACTIVE', 556, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4266, '2020-01-19 11:57:00', '2020-01-19 11:57:01', 'INF3185', '', '-1954506827', 'VALIDE', 'ACTIVE', 557, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4267, '2020-01-19 11:57:05', '2020-01-19 11:57:07', 'INF3185', '', '1555848878', 'VALIDE', 'ACTIVE', 558, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4268, '2020-01-19 11:57:11', '2020-01-19 11:57:11', 'INF3185', '', '951162540', 'VALIDE', 'ACTIVE', 559, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4269, '2020-01-19 11:57:15', '2020-01-19 11:57:16', 'INF3185', '', '-1229615162', 'VALIDE', 'ACTIVE', 560, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4270, '2020-01-19 11:57:20', '2020-01-19 11:57:20', 'INF3185', '', '1685715768', 'VALIDE', 'ACTIVE', 561, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4271, '2020-01-19 11:57:24', '2020-01-19 11:57:25', 'INF3185', '', '704324247', 'VALIDE', 'ACTIVE', 562, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4272, '2020-01-19 11:57:29', '2020-01-19 11:57:29', 'INF3185', '', '-1161909493', 'VALIDE', 'ACTIVE', 563, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4273, '2020-01-19 11:57:33', '2020-01-19 11:57:34', 'INF3185', '', '869061516', 'VALIDE', 'ACTIVE', 564, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4274, '2020-01-19 11:57:38', '2020-01-19 11:57:38', 'INF3185', '', '-901733123', 'VALIDE', 'ACTIVE', 565, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4275, '2020-01-19 11:57:42', '2020-01-19 11:57:43', 'INF3185', '', '429404254', 'VALIDE', 'ACTIVE', 566, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4276, '2020-01-19 11:57:47', '2020-01-19 11:57:48', 'INF3185', '', '-1226391742', 'VALIDE', 'ACTIVE', 567, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4277, '2020-01-19 11:57:51', '2020-01-19 11:57:52', 'INF3185', '', '-1284511076', 'VALIDE', 'ACTIVE', 568, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4278, '2020-01-19 11:57:56', '2020-01-19 11:57:56', 'INF3185', '', '115244145', 'VALIDE', 'ACTIVE', 569, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4279, '2020-01-19 11:58:00', '2020-01-19 11:58:01', 'INF3185', '', '2083229478', 'VALIDE', 'ACTIVE', 570, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4280, '2020-01-19 11:58:05', '2020-01-19 11:58:05', 'INF3185', '', '390790842', 'VALIDE', 'ACTIVE', 571, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4281, '2020-01-19 11:58:09', '2020-01-19 11:58:10', 'INF3185', '', '2095936317', 'VALIDE', 'ACTIVE', 572, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4282, '2020-01-19 11:58:14', '2020-01-19 11:58:16', 'INF3185', '', '-427003807', 'VALIDE', 'ACTIVE', 573, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4283, '2020-01-19 11:58:19', '2020-01-19 11:58:20', 'INF3185', '', '1360076802', 'VALIDE', 'ACTIVE', 574, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4284, '2020-01-19 11:58:24', '2020-01-19 11:58:25', 'INF3185', '', '-50839116', 'VALIDE', 'ACTIVE', 575, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4285, '2020-01-19 11:58:28', '2020-01-19 11:58:29', 'INF3185', '', '56197667', 'VALIDE', 'ACTIVE', 576, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4286, '2020-01-19 11:58:33', '2020-01-19 11:58:34', 'INF3185', '', '-369732482', 'VALIDE', 'ACTIVE', 577, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4287, '2020-01-19 11:58:37', '2020-01-19 11:58:38', 'INF3185', '', '-634116258', 'VALIDE', 'ACTIVE', 578, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4288, '2020-01-19 11:58:42', '2020-01-19 11:58:43', 'INF3185', '', '-562172365', 'VALIDE', 'ACTIVE', 579, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4289, '2020-01-19 11:58:46', '2020-01-19 11:58:47', 'INF3185', '', '1977076096', 'VALIDE', 'ACTIVE', 580, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4290, '2020-01-19 11:58:51', '2020-01-19 11:58:51', 'INF3185', '', '630317834', 'VALIDE', 'ACTIVE', 581, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4291, '2020-01-19 11:58:55', '2020-01-19 11:58:56', 'INF3185', '', '1172241863', 'VALIDE', 'ACTIVE', 582, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4292, '2020-01-19 11:58:59', '2020-01-19 11:59:00', 'INF3185', '', '1033185111', 'VALIDE', 'ACTIVE', 583, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4293, '2020-01-19 11:59:04', '2020-01-19 11:59:05', 'INF3185', '', '-716344185', 'VALIDE', 'ACTIVE', 584, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4294, '2020-01-19 11:59:08', '2020-01-19 11:59:09', 'INF3185', '', '1421515016', 'VALIDE', 'ACTIVE', 585, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4295, '2020-01-19 11:59:13', '2020-01-19 11:59:14', 'INF3185', '', '-1748990805', 'VALIDE', 'ACTIVE', 586, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4296, '2020-01-19 11:59:18', '2020-01-19 11:59:19', 'INF3185', '', '-631816898', 'VALIDE', 'ACTIVE', 587, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4297, '2020-01-19 11:59:22', '2020-01-19 11:59:23', 'INF3185', '', '-814282097', 'VALIDE', 'ACTIVE', 588, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4298, '2020-01-19 11:59:27', '2020-01-19 11:59:28', 'INF3185', '', '-2102034716', 'VALIDE', 'ACTIVE', 589, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4299, '2020-01-19 11:59:32', '2020-01-19 11:59:33', 'INF3185', '', '-647646577', 'VALIDE', 'ACTIVE', 590, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4300, '2020-01-19 11:59:36', '2020-01-19 11:59:37', 'INF3185', '', '-1382853256', 'VALIDE', 'ACTIVE', 591, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4301, '2020-01-19 11:59:41', '2020-01-19 11:59:43', 'INF3185', '', '-1071772823', 'VALIDE', 'ACTIVE', 592, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4302, '2020-01-19 11:59:46', '2020-01-19 11:59:47', 'INF3185', '', '-698166286', 'VALIDE', 'ACTIVE', 593, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4303, '2020-01-19 11:59:51', '2020-01-19 11:59:52', 'INF3185', '', '-301276451', 'VALIDE', 'ACTIVE', 594, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4304, '2020-01-19 11:59:55', '2020-01-19 11:59:56', 'INF3185', '', '751218568', 'VALIDE', 'ACTIVE', 595, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4305, '2020-01-19 12:00:00', '2020-01-19 12:00:00', 'INF3185', '', '588349616', 'VALIDE', 'ACTIVE', 596, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4306, '2020-01-19 12:00:04', '2020-01-19 12:00:05', 'INF3185', '', '-334911622', 'VALIDE', 'ACTIVE', 597, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4307, '2020-01-19 12:00:09', '2020-01-19 12:00:10', 'INF3185', '', '-2029196618', 'VALIDE', 'ACTIVE', 598, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4308, '2020-01-19 12:00:13', '2020-01-19 12:00:14', 'INF3185', '', '-966036528', 'VALIDE', 'ACTIVE', 599, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4309, '2020-01-19 12:00:18', '2020-01-19 12:00:19', 'INF3185', '', '775794166', 'VALIDE', 'ACTIVE', 600, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4310, '2020-01-19 12:00:23', '2020-01-19 12:00:24', 'INF3185', '', '-904223516', 'VALIDE', 'ACTIVE', 601, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4311, '2020-01-19 12:00:27', '2020-01-19 12:00:28', 'INF3185', '', '-1182436502', 'VALIDE', 'ACTIVE', 602, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4312, '2020-01-19 12:00:32', '2020-01-19 12:00:33', 'INF3185', '', '-999957569', 'VALIDE', 'ACTIVE', 603, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4313, '2020-01-19 12:00:37', '2020-01-19 12:00:38', 'INF3185', '', '-901476487', 'VALIDE', 'ACTIVE', 604, 205, 1930, 205);
INSERT INTO `est_inscrit` VALUES (4314, '2020-01-19 12:01:32', '2020-01-19 12:01:33', 'INF3195', '', '-1962871651', 'VALIDE', 'ACTIVE', 552, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4315, '2020-01-19 12:01:37', '2020-01-19 12:01:38', 'INF3195', '', '1128337513', 'VALIDE', 'ACTIVE', 553, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4316, '2020-01-19 12:01:41', '2020-01-19 12:01:42', 'INF3195', '', '-417945334', 'VALIDE', 'ACTIVE', 554, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4317, '2020-01-19 12:01:46', '2020-01-19 12:01:47', 'INF3195', '', '-662627322', 'VALIDE', 'ACTIVE', 555, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4318, '2020-01-19 12:01:50', '2020-01-19 12:01:51', 'INF3195', '', '266791155', 'VALIDE', 'ACTIVE', 556, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4319, '2020-01-19 12:01:55', '2020-01-19 12:01:56', 'INF3195', '', '1508454722', 'VALIDE', 'ACTIVE', 557, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4320, '2020-01-19 12:01:59', '2020-01-19 12:02:00', 'INF3195', '', '-1599339297', 'VALIDE', 'ACTIVE', 558, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4321, '2020-01-19 12:02:04', '2020-01-19 12:02:05', 'INF3195', '', '726094301', 'VALIDE', 'ACTIVE', 559, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4322, '2020-01-19 12:02:10', '2020-01-19 12:02:11', 'INF3195', '', '-830328443', 'VALIDE', 'ACTIVE', 560, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4323, '2020-01-19 12:02:15', '2020-01-19 12:02:16', 'INF3195', '', '1036730938', 'VALIDE', 'ACTIVE', 561, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4324, '2020-01-19 12:02:20', '2020-01-19 12:02:20', 'INF3195', '', '-1803627189', 'VALIDE', 'ACTIVE', 562, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4325, '2020-01-19 12:02:24', '2020-01-19 12:02:25', 'INF3195', '', '-207650072', 'VALIDE', 'ACTIVE', 563, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4326, '2020-01-19 12:02:28', '2020-01-19 12:02:29', 'INF3195', '', '1544911065', 'VALIDE', 'ACTIVE', 564, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4327, '2020-01-19 12:02:33', '2020-01-19 12:02:34', 'INF3195', '', '-1647205834', 'VALIDE', 'ACTIVE', 565, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4328, '2020-01-19 12:02:38', '2020-01-19 12:02:38', 'INF3195', '', '1758798970', 'VALIDE', 'ACTIVE', 566, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4329, '2020-01-19 12:02:42', '2020-01-19 12:02:43', 'INF3195', '', '1427540229', 'VALIDE', 'ACTIVE', 567, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4330, '2020-01-19 12:02:47', '2020-01-19 12:02:47', 'INF3195', '', '-1525673661', 'VALIDE', 'ACTIVE', 568, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4331, '2020-01-19 12:02:51', '2020-01-19 12:02:52', 'INF3195', '', '187244304', 'VALIDE', 'ACTIVE', 569, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4332, '2020-01-19 12:02:56', '2020-01-19 12:02:56', 'INF3195', '', '1086921970', 'VALIDE', 'ACTIVE', 570, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4333, '2020-01-19 12:03:00', '2020-01-19 12:03:01', 'INF3195', '', '1900499621', 'VALIDE', 'ACTIVE', 571, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4334, '2020-01-19 12:03:05', '2020-01-19 12:03:05', 'INF3195', '', '-1863533014', 'VALIDE', 'ACTIVE', 572, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4335, '2020-01-19 12:03:09', '2020-01-19 12:03:10', 'INF3195', '', '-120594559', 'VALIDE', 'ACTIVE', 573, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4336, '2020-01-19 12:03:13', '2020-01-19 12:03:14', 'INF3195', '', '-1219852310', 'VALIDE', 'ACTIVE', 574, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4337, '2020-01-19 12:03:18', '2020-01-19 12:03:19', 'INF3195', '', '633117712', 'VALIDE', 'ACTIVE', 575, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4338, '2020-01-19 12:03:26', '2020-01-19 12:03:28', 'INF3195', '', '1794772633', 'VALIDE', 'ACTIVE', 576, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4339, '2020-01-19 12:03:33', '2020-01-19 12:03:34', 'INF3195', '', '-1425792890', 'VALIDE', 'ACTIVE', 577, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4340, '2020-01-19 12:03:38', '2020-01-19 12:03:38', 'INF3195', '', '-2056137643', 'VALIDE', 'ACTIVE', 578, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4341, '2020-01-19 12:03:42', '2020-01-19 12:03:43', 'INF3195', '', '793810778', 'VALIDE', 'ACTIVE', 579, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4342, '2020-01-19 12:03:47', '2020-01-19 12:03:48', 'INF3195', '', '438615172', 'VALIDE', 'ACTIVE', 580, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4343, '2020-01-19 12:03:53', '2020-01-19 12:03:55', 'INF3195', '', '-137093638', 'VALIDE', 'ACTIVE', 581, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4344, '2020-01-19 12:04:00', '2020-01-19 12:04:01', 'INF3195', '', '-1598791958', 'VALIDE', 'ACTIVE', 582, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4345, '2020-01-19 12:04:06', '2020-01-19 12:04:07', 'INF3195', '', '-1610409225', 'VALIDE', 'ACTIVE', 583, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4346, '2020-01-19 12:04:10', '2020-01-19 12:04:11', 'INF3195', '', '1073973220', 'VALIDE', 'ACTIVE', 584, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4347, '2020-01-19 12:04:15', '2020-01-19 12:04:16', 'INF3195', '', '-599160873', 'VALIDE', 'ACTIVE', 585, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4348, '2020-01-19 12:04:19', '2020-01-19 12:04:20', 'INF3195', '', '-797745531', 'VALIDE', 'ACTIVE', 586, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4349, '2020-01-19 12:04:24', '2020-01-19 12:04:25', 'INF3195', '', '-1430163547', 'VALIDE', 'ACTIVE', 587, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4350, '2020-01-19 12:04:28', '2020-01-19 12:04:29', 'INF3195', '', '1608815362', 'VALIDE', 'ACTIVE', 588, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4351, '2020-01-19 12:04:33', '2020-01-19 12:04:35', 'INF3195', '', '264049509', 'VALIDE', 'ACTIVE', 589, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4352, '2020-01-19 12:04:38', '2020-01-19 12:04:39', 'INF3195', '', '-581702850', 'VALIDE', 'ACTIVE', 590, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4353, '2020-01-19 12:04:43', '2020-01-19 12:04:43', 'INF3195', '', '-251920840', 'VALIDE', 'ACTIVE', 591, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4354, '2020-01-19 12:04:47', '2020-01-19 12:04:48', 'INF3195', '', '1642473665', 'VALIDE', 'ACTIVE', 592, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4355, '2020-01-19 12:04:52', '2020-01-19 12:04:52', 'INF3195', '', '-143031791', 'VALIDE', 'ACTIVE', 593, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4356, '2020-01-19 12:04:56', '2020-01-19 12:04:57', 'INF3195', '', '-1281098226', 'VALIDE', 'ACTIVE', 594, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4357, '2020-01-19 12:05:01', '2020-01-19 12:05:02', 'INF3195', '', '1648671639', 'VALIDE', 'ACTIVE', 595, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4358, '2020-01-19 12:05:05', '2020-01-19 12:05:06', 'INF3195', '', '-1454062574', 'VALIDE', 'ACTIVE', 596, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4359, '2020-01-19 12:05:10', '2020-01-19 12:05:11', 'INF3195', '', '-409594909', 'VALIDE', 'ACTIVE', 597, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4360, '2020-01-19 12:05:14', '2020-01-19 12:05:15', 'INF3195', '', '-245611717', 'VALIDE', 'ACTIVE', 598, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4361, '2020-01-19 12:05:19', '2020-01-19 12:05:20', 'INF3195', '', '-536572131', 'VALIDE', 'ACTIVE', 599, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4362, '2020-01-19 12:05:23', '2020-01-19 12:05:24', 'INF3195', '', '-1631917900', 'VALIDE', 'ACTIVE', 600, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4363, '2020-01-19 12:05:28', '2020-01-19 12:05:29', 'INF3195', '', '-2046075468', 'VALIDE', 'ACTIVE', 601, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4364, '2020-01-19 12:05:33', '2020-01-19 12:05:34', 'INF3195', '', '-567951064', 'VALIDE', 'ACTIVE', 602, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4365, '2020-01-19 12:05:38', '2020-01-19 12:05:39', 'INF3195', '', '280137867', 'VALIDE', 'ACTIVE', 603, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4366, '2020-01-19 12:05:42', '2020-01-19 12:05:43', 'INF3195', '', '-145292083', 'VALIDE', 'ACTIVE', 604, 205, 1931, 205);
INSERT INTO `est_inscrit` VALUES (4367, '2020-01-19 12:06:50', '2020-01-19 12:06:51', 'LAC3165', '', '-1100619576', 'VALIDE', 'ACTIVE', 552, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4368, '2020-01-19 12:06:55', '2020-01-19 12:06:55', 'LAC3165', '', '1716064199', 'VALIDE', 'ACTIVE', 553, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4369, '2020-01-19 12:06:59', '2020-01-19 12:07:00', 'LAC3165', '', '-1276492541', 'VALIDE', 'ACTIVE', 554, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4370, '2020-01-19 12:07:04', '2020-01-19 12:07:04', 'LAC3165', '', '213431997', 'VALIDE', 'ACTIVE', 555, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4371, '2020-01-19 12:07:08', '2020-01-19 12:07:09', 'LAC3165', '', '1024197565', 'VALIDE', 'ACTIVE', 556, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4372, '2020-01-19 12:07:13', '2020-01-19 12:07:14', 'LAC3165', '', '-1840599838', 'VALIDE', 'ACTIVE', 557, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4373, '2020-01-19 12:07:17', '2020-01-19 12:07:18', 'LAC3165', '', '892671805', 'VALIDE', 'ACTIVE', 558, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4374, '2020-01-19 12:07:22', '2020-01-19 12:07:23', 'LAC3165', '', '869249611', 'VALIDE', 'ACTIVE', 559, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4375, '2020-01-19 12:07:26', '2020-01-19 12:07:27', 'LAC3165', '', '-331529726', 'VALIDE', 'ACTIVE', 560, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4376, '2020-01-19 12:07:31', '2020-01-19 12:07:32', 'LAC3165', '', '1378131094', 'VALIDE', 'ACTIVE', 561, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4377, '2020-01-19 12:07:35', '2020-01-19 12:07:36', 'LAC3165', '', '-1819709490', 'VALIDE', 'ACTIVE', 562, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4378, '2020-01-19 12:07:40', '2020-01-19 12:07:40', 'LAC3165', '', '914126412', 'VALIDE', 'ACTIVE', 563, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4379, '2020-01-19 12:07:45', '2020-01-19 12:07:46', 'LAC3165', '', '222298236', 'VALIDE', 'ACTIVE', 564, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4380, '2020-01-19 12:07:50', '2020-01-19 12:07:50', 'LAC3165', '', '-1516677257', 'VALIDE', 'ACTIVE', 565, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4381, '2020-01-19 12:07:54', '2020-01-19 12:07:55', 'LAC3165', '', '-1565745647', 'VALIDE', 'ACTIVE', 566, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4382, '2020-01-19 12:07:59', '2020-01-19 12:07:59', 'LAC3165', '', '518989189', 'VALIDE', 'ACTIVE', 567, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4383, '2020-01-19 12:08:03', '2020-01-19 12:08:04', 'LAC3165', '', '832937201', 'VALIDE', 'ACTIVE', 568, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4384, '2020-01-19 12:08:07', '2020-01-19 12:08:08', 'LAC3165', '', '353331682', 'VALIDE', 'ACTIVE', 569, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4385, '2020-01-19 12:08:12', '2020-01-19 12:08:13', 'LAC3165', '', '24529675', 'VALIDE', 'ACTIVE', 570, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4386, '2020-01-19 12:08:16', '2020-01-19 12:08:17', 'LAC3165', '', '-647599508', 'VALIDE', 'ACTIVE', 571, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4387, '2020-01-19 12:08:21', '2020-01-19 12:08:22', 'LAC3165', '', '-25033423', 'VALIDE', 'ACTIVE', 572, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4388, '2020-01-19 12:08:25', '2020-01-19 12:08:26', 'LAC3165', '', '550636045', 'VALIDE', 'ACTIVE', 573, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4389, '2020-01-19 12:08:30', '2020-01-19 12:08:31', 'LAC3165', '', '-291231579', 'VALIDE', 'ACTIVE', 574, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4390, '2020-01-19 12:08:34', '2020-01-19 12:08:35', 'LAC3165', '', '-2062089644', 'VALIDE', 'ACTIVE', 575, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4391, '2020-01-19 12:08:39', '2020-01-19 12:08:40', 'LAC3165', '', '-1150674282', 'VALIDE', 'ACTIVE', 576, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4392, '2020-01-19 12:08:43', '2020-01-19 12:08:44', 'LAC3165', '', '-1482304518', 'VALIDE', 'ACTIVE', 577, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4393, '2020-01-19 12:08:48', '2020-01-19 12:08:49', 'LAC3165', '', '2078008598', 'VALIDE', 'ACTIVE', 578, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4394, '2020-01-19 12:08:52', '2020-01-19 12:08:53', 'LAC3165', '', '-1730417826', 'VALIDE', 'ACTIVE', 579, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4395, '2020-01-19 12:08:57', '2020-01-19 12:08:58', 'LAC3165', '', '-1081553037', 'VALIDE', 'ACTIVE', 580, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4396, '2020-01-19 12:09:01', '2020-01-19 12:09:02', 'LAC3165', '', '-241952980', 'VALIDE', 'ACTIVE', 581, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4397, '2020-01-19 12:09:06', '2020-01-19 12:09:07', 'LAC3165', '', '1531446388', 'VALIDE', 'ACTIVE', 582, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4398, '2020-01-19 12:09:10', '2020-01-19 12:09:11', 'LAC3165', '', '457021333', 'VALIDE', 'ACTIVE', 583, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4399, '2020-01-19 12:09:15', '2020-01-19 12:09:16', 'LAC3165', '', '1711561292', 'VALIDE', 'ACTIVE', 584, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4400, '2020-01-19 12:09:19', '2020-01-19 12:09:20', 'LAC3165', '', '15381404', 'VALIDE', 'ACTIVE', 585, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4401, '2020-01-19 12:09:24', '2020-01-19 12:09:26', 'LAC3165', '', '-1280744473', 'VALIDE', 'ACTIVE', 586, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4402, '2020-01-19 12:09:29', '2020-01-19 12:09:30', 'LAC3165', '', '1409271085', 'VALIDE', 'ACTIVE', 587, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4403, '2020-01-19 12:09:34', '2020-01-19 12:09:35', 'LAC3165', '', '-851996049', 'VALIDE', 'ACTIVE', 588, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4404, '2020-01-19 12:09:38', '2020-01-19 12:09:39', 'LAC3165', '', '-623695410', 'VALIDE', 'ACTIVE', 589, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4405, '2020-01-19 12:09:43', '2020-01-19 12:09:44', 'LAC3165', '', '985100013', 'VALIDE', 'ACTIVE', 590, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4406, '2020-01-19 12:09:48', '2020-01-19 12:09:49', 'LAC3165', '', '1240244170', 'VALIDE', 'ACTIVE', 591, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4407, '2020-01-19 12:09:53', '2020-01-19 12:09:54', 'LAC3165', '', '260399129', 'VALIDE', 'ACTIVE', 592, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4408, '2020-01-19 12:09:57', '2020-01-19 12:09:58', 'LAC3165', '', '1594159557', 'VALIDE', 'ACTIVE', 593, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4409, '2020-01-19 12:10:02', '2020-01-19 12:10:03', 'LAC3165', '', '-1452122658', 'VALIDE', 'ACTIVE', 594, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4410, '2020-01-19 12:10:06', '2020-01-19 12:10:07', 'LAC3165', '', '-1781500916', 'VALIDE', 'ACTIVE', 595, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4411, '2020-01-19 12:10:11', '2020-01-19 12:10:12', 'LAC3165', '', '-2004644332', 'VALIDE', 'ACTIVE', 596, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4412, '2020-01-19 12:10:15', '2020-01-19 12:10:16', 'LAC3165', '', '-1172147434', 'VALIDE', 'ACTIVE', 597, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4413, '2020-01-19 12:10:20', '2020-01-19 12:10:21', 'LAC3165', '', '255634856', 'VALIDE', 'ACTIVE', 598, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4414, '2020-01-19 12:10:24', '2020-01-19 12:10:25', 'LAC3165', '', '262599253', 'VALIDE', 'ACTIVE', 599, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4415, '2020-01-19 12:10:29', '2020-01-19 12:10:30', 'LAC3165', '', '274415886', 'VALIDE', 'ACTIVE', 600, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4416, '2020-01-19 12:10:33', '2020-01-19 12:10:34', 'LAC3165', '', '71137947', 'VALIDE', 'ACTIVE', 601, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4417, '2020-01-19 12:10:38', '2020-01-19 12:10:39', 'LAC3165', '', '-1656418453', 'VALIDE', 'ACTIVE', 602, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4418, '2020-01-19 12:10:42', '2020-01-19 12:10:43', 'LAC3165', '', '112603109', 'VALIDE', 'ACTIVE', 603, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4419, '2020-01-19 12:10:47', '2020-01-19 12:10:48', 'LAC3165', '', '1200037470', 'VALIDE', 'ACTIVE', 604, 205, 1932, 205);
INSERT INTO `est_inscrit` VALUES (4420, '2020-01-19 12:12:48', '2020-01-19 12:12:49', 'HUM3165', '', '1492351352', 'VALIDE', 'ACTIVE', 552, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4421, '2020-01-19 12:12:52', '2020-01-19 12:12:53', 'HUM3165', '', '838036973', 'VALIDE', 'ACTIVE', 553, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4422, '2020-01-19 12:12:57', '2020-01-19 12:12:58', 'HUM3165', '', '232857360', 'VALIDE', 'ACTIVE', 554, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4423, '2020-01-19 12:13:01', '2020-01-19 12:13:02', 'HUM3165', '', '1507969071', 'VALIDE', 'ACTIVE', 555, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4424, '2020-01-19 12:13:06', '2020-01-19 12:13:07', 'HUM3165', '', '-1267704171', 'VALIDE', 'ACTIVE', 556, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4425, '2020-01-19 12:13:11', '2020-01-19 12:13:12', 'HUM3165', '', '878739606', 'VALIDE', 'ACTIVE', 557, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4426, '2020-01-19 12:13:16', '2020-01-19 12:13:17', 'HUM3165', '', '1144992167', 'VALIDE', 'ACTIVE', 558, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4427, '2020-01-19 12:13:21', '2020-01-19 12:13:22', 'HUM3165', '', '509705035', 'VALIDE', 'ACTIVE', 559, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4428, '2020-01-19 12:13:26', '2020-01-19 12:13:27', 'HUM3165', '', '-1343279136', 'VALIDE', 'ACTIVE', 560, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4429, '2020-01-19 12:13:31', '2020-01-19 12:13:32', 'HUM3165', '', '-108686381', 'VALIDE', 'ACTIVE', 561, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4430, '2020-01-19 12:13:35', '2020-01-19 12:13:36', 'HUM3165', '', '536212144', 'VALIDE', 'ACTIVE', 562, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4431, '2020-01-19 12:13:40', '2020-01-19 12:13:41', 'HUM3165', '', '1079430662', 'VALIDE', 'ACTIVE', 563, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4432, '2020-01-19 12:13:45', '2020-01-19 12:13:45', 'HUM3165', '', '-222234895', 'VALIDE', 'ACTIVE', 564, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4433, '2020-01-19 12:13:49', '2020-01-19 12:13:50', 'HUM3165', '', '774698147', 'VALIDE', 'ACTIVE', 565, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4434, '2020-01-19 12:13:54', '2020-01-19 12:13:55', 'HUM3165', '', '2021519461', 'VALIDE', 'ACTIVE', 566, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4435, '2020-01-19 12:13:59', '2020-01-19 12:13:59', 'HUM3165', '', '-1889249488', 'VALIDE', 'ACTIVE', 567, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4436, '2020-01-19 12:14:03', '2020-01-19 12:14:04', 'HUM3165', '', '1390153206', 'VALIDE', 'ACTIVE', 568, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4437, '2020-01-19 12:14:08', '2020-01-19 12:14:08', 'HUM3165', '', '225448152', 'VALIDE', 'ACTIVE', 569, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4438, '2020-01-19 12:14:12', '2020-01-19 12:14:13', 'HUM3165', '', '755965813', 'VALIDE', 'ACTIVE', 570, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4439, '2020-01-19 12:14:17', '2020-01-19 12:14:18', 'HUM3165', '', '1272956431', 'VALIDE', 'ACTIVE', 571, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4440, '2020-01-19 12:14:22', '2020-01-19 12:14:23', 'HUM3165', '', '-1324105389', 'VALIDE', 'ACTIVE', 572, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4441, '2020-01-19 12:14:26', '2020-01-19 12:14:27', 'HUM3165', '', '1872288162', 'VALIDE', 'ACTIVE', 573, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4442, '2020-01-19 12:14:31', '2020-01-19 12:14:32', 'HUM3165', '', '1072414457', 'VALIDE', 'ACTIVE', 574, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4443, '2020-01-19 12:14:35', '2020-01-19 12:14:36', 'HUM3165', '', '941819465', 'VALIDE', 'ACTIVE', 575, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4444, '2020-01-19 12:14:40', '2020-01-19 12:14:41', 'HUM3165', '', '358961148', 'VALIDE', 'ACTIVE', 576, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4445, '2020-01-19 12:14:45', '2020-01-19 12:14:46', 'HUM3165', '', '398176565', 'VALIDE', 'ACTIVE', 577, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4446, '2020-01-19 12:14:49', '2020-01-19 12:14:50', 'HUM3165', '', '1869618912', 'VALIDE', 'ACTIVE', 578, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4447, '2020-01-19 12:14:54', '2020-01-19 12:14:55', 'HUM3165', '', '389011445', 'VALIDE', 'ACTIVE', 579, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4448, '2020-01-19 12:14:58', '2020-01-19 12:14:59', 'HUM3165', '', '-873050789', 'VALIDE', 'ACTIVE', 580, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4449, '2020-01-19 12:15:03', '2020-01-19 12:15:04', 'HUM3165', '', '2107160002', 'VALIDE', 'ACTIVE', 581, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4450, '2020-01-19 12:15:07', '2020-01-19 12:15:08', 'HUM3165', '', '1899510025', 'VALIDE', 'ACTIVE', 582, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4451, '2020-01-19 12:15:12', '2020-01-19 12:15:14', 'HUM3165', '', '677945380', 'VALIDE', 'ACTIVE', 583, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4452, '2020-01-19 12:15:17', '2020-01-19 12:15:18', 'HUM3165', '', '-1458949825', 'VALIDE', 'ACTIVE', 584, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4453, '2020-01-19 12:15:22', '2020-01-19 12:15:23', 'HUM3165', '', '-865730541', 'VALIDE', 'ACTIVE', 585, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4454, '2020-01-19 12:15:27', '2020-01-19 12:15:28', 'HUM3165', '', '1183026869', 'VALIDE', 'ACTIVE', 586, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4455, '2020-01-19 12:15:32', '2020-01-19 12:15:33', 'HUM3165', '', '-1101528128', 'VALIDE', 'ACTIVE', 587, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4456, '2020-01-19 12:15:36', '2020-01-19 12:15:37', 'HUM3165', '', '-533139356', 'VALIDE', 'ACTIVE', 588, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4457, '2020-01-19 12:15:41', '2020-01-19 12:15:42', 'HUM3165', '', '-1292898004', 'VALIDE', 'ACTIVE', 589, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4458, '2020-01-19 12:15:45', '2020-01-19 12:15:46', 'HUM3165', '', '-332851135', 'VALIDE', 'ACTIVE', 590, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4459, '2020-01-19 12:15:50', '2020-01-19 12:15:51', 'HUM3165', '', '-1437444232', 'VALIDE', 'ACTIVE', 591, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4460, '2020-01-19 12:15:54', '2020-01-19 12:15:55', 'HUM3165', '', '-1461347304', 'VALIDE', 'ACTIVE', 592, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4461, '2020-01-19 12:15:59', '2020-01-19 12:16:00', 'HUM3165', '', '-2105013634', 'VALIDE', 'ACTIVE', 593, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4462, '2020-01-19 12:16:04', '2020-01-19 12:16:04', 'HUM3165', '', '1710067089', 'VALIDE', 'ACTIVE', 594, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4463, '2020-01-19 12:16:08', '2020-01-19 12:16:09', 'HUM3165', '', '-790177644', 'VALIDE', 'ACTIVE', 595, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4464, '2020-01-19 12:16:13', '2020-01-19 12:16:14', 'HUM3165', '', '-553690956', 'VALIDE', 'ACTIVE', 596, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4465, '2020-01-19 12:16:17', '2020-01-19 12:16:18', 'HUM3165', '', '-1921166340', 'VALIDE', 'ACTIVE', 597, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4466, '2020-01-19 12:16:22', '2020-01-19 12:16:23', 'HUM3165', '', '-1769415072', 'VALIDE', 'ACTIVE', 598, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4467, '2020-01-19 12:16:26', '2020-01-19 12:16:27', 'HUM3165', '', '-924629242', 'VALIDE', 'ACTIVE', 599, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4468, '2020-01-19 12:16:31', '2020-01-19 12:16:32', 'HUM3165', '', '596608123', 'VALIDE', 'ACTIVE', 600, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4469, '2020-01-19 12:16:35', '2020-01-19 12:16:36', 'HUM3165', '', '1500893356', 'VALIDE', 'ACTIVE', 601, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4470, '2020-01-19 12:16:40', '2020-01-19 12:16:41', 'HUM3165', '', '-60203368', 'VALIDE', 'ACTIVE', 602, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4471, '2020-01-19 12:16:44', '2020-01-19 12:16:45', 'HUM3165', '', '-1691450427', 'VALIDE', 'ACTIVE', 603, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4472, '2020-01-19 12:16:49', '2020-01-19 12:16:50', 'HUM3165', '', '1962631653', 'VALIDE', 'ACTIVE', 604, 205, 1933, 205);
INSERT INTO `est_inscrit` VALUES (4473, '2020-01-19 12:29:10', '2020-01-19 12:29:11', 'HUM3175', '', '1706025725', 'VALIDE', 'ACTIVE', 552, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4474, '2020-01-19 12:29:15', '2020-01-19 12:29:16', 'HUM3175', '', '2146850361', 'VALIDE', 'ACTIVE', 553, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4475, '2020-01-19 12:29:19', '2020-01-19 12:29:20', 'HUM3175', '', '833677190', 'VALIDE', 'ACTIVE', 554, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4476, '2020-01-19 12:29:24', '2020-01-19 12:29:25', 'HUM3175', '', '750552326', 'VALIDE', 'ACTIVE', 555, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4477, '2020-01-19 12:29:28', '2020-01-19 12:29:29', 'HUM3175', '', '-2083248594', 'VALIDE', 'ACTIVE', 556, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4478, '2020-01-19 12:29:33', '2020-01-19 12:29:34', 'HUM3175', '', '-1049753675', 'VALIDE', 'ACTIVE', 557, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4479, '2020-01-19 12:29:39', '2020-01-19 12:29:40', 'HUM3175', '', '411696051', 'VALIDE', 'ACTIVE', 558, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4480, '2020-01-19 12:29:43', '2020-01-19 12:29:44', 'HUM3175', '', '-387814139', 'VALIDE', 'ACTIVE', 559, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4481, '2020-01-19 12:29:48', '2020-01-19 12:29:49', 'HUM3175', '', '1899552117', 'VALIDE', 'ACTIVE', 560, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4482, '2020-01-19 12:29:52', '2020-01-19 12:29:53', 'HUM3175', '', '857587193', 'VALIDE', 'ACTIVE', 561, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4483, '2020-01-19 12:29:57', '2020-01-19 12:29:57', 'HUM3175', '', '-699645003', 'VALIDE', 'ACTIVE', 562, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4484, '2020-01-19 12:30:01', '2020-01-19 12:30:02', 'HUM3175', '', '-932962656', 'VALIDE', 'ACTIVE', 563, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4485, '2020-01-19 12:30:06', '2020-01-19 12:30:06', 'HUM3175', '', '1325947096', 'VALIDE', 'ACTIVE', 564, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4486, '2020-01-19 12:30:10', '2020-01-19 12:30:11', 'HUM3175', '', '-639102484', 'VALIDE', 'ACTIVE', 565, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4487, '2020-01-19 12:30:15', '2020-01-19 12:30:15', 'HUM3175', '', '-1716332450', 'VALIDE', 'ACTIVE', 566, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4488, '2020-01-19 12:30:19', '2020-01-19 12:30:20', 'HUM3175', '', '-986492422', 'VALIDE', 'ACTIVE', 567, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4489, '2020-01-19 12:30:23', '2020-01-19 12:30:24', 'HUM3175', '', '3778433', 'VALIDE', 'ACTIVE', 568, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4490, '2020-01-19 12:30:28', '2020-01-19 12:30:29', 'HUM3175', '', '1230012725', 'VALIDE', 'ACTIVE', 569, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4491, '2020-01-19 12:30:32', '2020-01-19 12:30:33', 'HUM3175', '', '-1568323771', 'VALIDE', 'ACTIVE', 570, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4492, '2020-01-19 12:30:37', '2020-01-19 12:30:38', 'HUM3175', '', '-653371467', 'VALIDE', 'ACTIVE', 571, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4493, '2020-01-19 12:30:42', '2020-01-19 12:30:43', 'HUM3175', '', '-2131997186', 'VALIDE', 'ACTIVE', 572, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4494, '2020-01-19 12:30:47', '2020-01-19 12:30:48', 'HUM3175', '', '1966074184', 'VALIDE', 'ACTIVE', 573, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4495, '2020-01-19 12:30:52', '2020-01-19 12:30:53', 'HUM3175', '', '427892908', 'VALIDE', 'ACTIVE', 574, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4496, '2020-01-19 12:30:57', '2020-01-19 12:30:57', 'HUM3175', '', '1544563795', 'VALIDE', 'ACTIVE', 575, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4497, '2020-01-19 12:31:01', '2020-01-19 12:31:02', 'HUM3175', '', '1343845523', 'VALIDE', 'ACTIVE', 576, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4498, '2020-01-19 12:31:06', '2020-01-19 12:31:07', 'HUM3175', '', '758651371', 'VALIDE', 'ACTIVE', 577, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4499, '2020-01-19 12:31:10', '2020-01-19 12:31:11', 'HUM3175', '', '-2131330821', 'VALIDE', 'ACTIVE', 578, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4500, '2020-01-19 12:31:15', '2020-01-19 12:31:15', 'HUM3175', '', '251702450', 'VALIDE', 'ACTIVE', 579, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4501, '2020-01-19 12:31:19', '2020-01-19 12:31:21', 'HUM3175', '', '557188626', 'VALIDE', 'ACTIVE', 580, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4502, '2020-01-19 12:31:25', '2020-01-19 12:31:26', 'HUM3175', '', '1152032298', 'VALIDE', 'ACTIVE', 581, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4503, '2020-01-19 12:31:29', '2020-01-19 12:31:30', 'HUM3175', '', '-586507379', 'VALIDE', 'ACTIVE', 582, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4504, '2020-01-19 12:31:34', '2020-01-19 12:31:35', 'HUM3175', '', '223045911', 'VALIDE', 'ACTIVE', 583, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4505, '2020-01-19 12:31:38', '2020-01-19 12:31:39', 'HUM3175', '', '-2013061643', 'VALIDE', 'ACTIVE', 584, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4506, '2020-01-19 12:31:43', '2020-01-19 12:31:44', 'HUM3175', '', '-1952335033', 'VALIDE', 'ACTIVE', 585, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4507, '2020-01-19 12:31:48', '2020-01-19 12:31:49', 'HUM3175', '', '-898471488', 'VALIDE', 'ACTIVE', 586, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4508, '2020-01-19 12:31:52', '2020-01-19 12:31:53', 'HUM3175', '', '1057923505', 'VALIDE', 'ACTIVE', 587, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4509, '2020-01-19 12:31:57', '2020-01-19 12:31:58', 'HUM3175', '', '1611281309', 'VALIDE', 'ACTIVE', 588, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4510, '2020-01-19 12:32:02', '2020-01-19 12:32:02', 'HUM3175', '', '-31704907', 'VALIDE', 'ACTIVE', 589, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4511, '2020-01-19 12:32:06', '2020-01-19 12:32:07', 'HUM3175', '', '-318238200', 'VALIDE', 'ACTIVE', 590, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4512, '2020-01-19 12:32:11', '2020-01-19 12:32:12', 'HUM3175', '', '860103228', 'VALIDE', 'ACTIVE', 591, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4513, '2020-01-19 12:32:15', '2020-01-19 12:32:16', 'HUM3175', '', '400028794', 'VALIDE', 'ACTIVE', 592, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4514, '2020-01-19 12:32:20', '2020-01-19 12:32:21', 'HUM3175', '', '-1139229679', 'VALIDE', 'ACTIVE', 593, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4515, '2020-01-19 12:32:25', '2020-01-19 12:32:26', 'HUM3175', '', '-1862580495', 'VALIDE', 'ACTIVE', 594, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4516, '2020-01-19 12:32:29', '2020-01-19 12:32:30', 'HUM3175', '', '1601469504', 'VALIDE', 'ACTIVE', 595, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4517, '2020-01-19 12:32:34', '2020-01-19 12:32:35', 'HUM3175', '', '2016244205', 'VALIDE', 'ACTIVE', 596, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4518, '2020-01-19 12:32:38', '2020-01-19 12:32:39', 'HUM3175', '', '-1719463822', 'VALIDE', 'ACTIVE', 597, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4519, '2020-01-19 12:32:43', '2020-01-19 12:32:44', 'HUM3175', '', '1889551163', 'VALIDE', 'ACTIVE', 598, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4520, '2020-01-19 12:32:48', '2020-01-19 12:32:49', 'HUM3175', '', '929579926', 'VALIDE', 'ACTIVE', 599, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4521, '2020-01-19 12:32:53', '2020-01-19 12:32:54', 'HUM3175', '', '-1231721855', 'VALIDE', 'ACTIVE', 600, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4522, '2020-01-19 12:32:58', '2020-01-19 12:32:58', 'HUM3175', '', '1116050928', 'VALIDE', 'ACTIVE', 601, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4523, '2020-01-19 12:33:02', '2020-01-19 12:33:03', 'HUM3175', '', '-1351022297', 'VALIDE', 'ACTIVE', 602, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4524, '2020-01-19 12:33:07', '2020-01-19 12:33:08', 'HUM3175', '', '823349381', 'VALIDE', 'ACTIVE', 603, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4525, '2020-01-19 12:33:11', '2020-01-19 12:33:12', 'HUM3175', '', '1668425107', 'VALIDE', 'ACTIVE', 604, 205, 1934, 205);
INSERT INTO `est_inscrit` VALUES (4526, '2020-01-19 12:39:37', '2020-01-19 12:39:38', 'RES3175', '', '-149727122', 'VALIDE', 'ACTIVE', 552, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4527, '2020-01-19 12:39:42', '2020-01-19 12:39:43', 'RES3175', '', '-2027277958', 'VALIDE', 'ACTIVE', 553, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4528, '2020-01-19 12:39:46', '2020-01-19 12:39:47', 'RES3175', '', '110868661', 'VALIDE', 'ACTIVE', 554, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4529, '2020-01-19 12:39:51', '2020-01-19 12:39:52', 'RES3175', '', '2004664370', 'VALIDE', 'ACTIVE', 555, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4530, '2020-01-19 12:39:55', '2020-01-19 12:39:56', 'RES3175', '', '-952394363', 'VALIDE', 'ACTIVE', 556, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4531, '2020-01-19 12:40:00', '2020-01-19 12:40:01', 'RES3175', '', '-1432329784', 'VALIDE', 'ACTIVE', 557, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4532, '2020-01-19 12:40:04', '2020-01-19 12:40:05', 'RES3175', '', '2072799795', 'VALIDE', 'ACTIVE', 558, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4533, '2020-01-19 12:40:09', '2020-01-19 12:40:10', 'RES3175', '', '-205207807', 'VALIDE', 'ACTIVE', 559, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4534, '2020-01-19 12:40:13', '2020-01-19 12:40:14', 'RES3175', '', '-581066000', 'VALIDE', 'ACTIVE', 560, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4535, '2020-01-19 12:40:18', '2020-01-19 12:40:19', 'RES3175', '', '574320012', 'VALIDE', 'ACTIVE', 561, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4536, '2020-01-19 12:40:24', '2020-01-19 12:40:25', 'RES3175', '', '-1330375243', 'VALIDE', 'ACTIVE', 562, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4537, '2020-01-19 12:40:28', '2020-01-19 12:40:29', 'RES3175', '', '475407717', 'VALIDE', 'ACTIVE', 563, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4538, '2020-01-19 12:40:33', '2020-01-19 12:40:34', 'RES3175', '', '-507015374', 'VALIDE', 'ACTIVE', 564, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4539, '2020-01-19 12:40:37', '2020-01-19 12:40:38', 'RES3175', '', '-807742668', 'VALIDE', 'ACTIVE', 565, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4540, '2020-01-19 12:40:42', '2020-01-19 12:40:43', 'RES3175', '', '2002338986', 'VALIDE', 'ACTIVE', 566, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4541, '2020-01-19 12:40:46', '2020-01-19 12:40:47', 'RES3175', '', '-99204770', 'VALIDE', 'ACTIVE', 567, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4542, '2020-01-19 12:40:51', '2020-01-19 12:40:52', 'RES3175', '', '-623346572', 'VALIDE', 'ACTIVE', 568, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4543, '2020-01-19 12:40:55', '2020-01-19 12:40:56', 'RES3175', '', '-1595148933', 'VALIDE', 'ACTIVE', 569, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4544, '2020-01-19 12:41:00', '2020-01-19 12:41:01', 'RES3175', '', '-1431724307', 'VALIDE', 'ACTIVE', 570, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4545, '2020-01-19 12:41:04', '2020-01-19 12:41:05', 'RES3175', '', '-395689981', 'VALIDE', 'ACTIVE', 571, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4546, '2020-01-19 12:41:09', '2020-01-19 12:41:09', 'RES3175', '', '-577949078', 'VALIDE', 'ACTIVE', 572, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4547, '2020-01-19 12:41:13', '2020-01-19 12:41:14', 'RES3175', '', '-376790080', 'VALIDE', 'ACTIVE', 573, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4548, '2020-01-19 12:41:17', '2020-01-19 12:41:18', 'RES3175', '', '-1291146216', 'VALIDE', 'ACTIVE', 574, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4549, '2020-01-19 12:41:22', '2020-01-19 12:41:23', 'RES3175', '', '694078239', 'VALIDE', 'ACTIVE', 575, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4550, '2020-01-19 12:41:27', '2020-01-19 12:41:27', 'RES3175', '', '209720104', 'VALIDE', 'ACTIVE', 576, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4551, '2020-01-19 12:41:31', '2020-01-19 12:41:33', 'RES3175', '', '-1027100676', 'VALIDE', 'ACTIVE', 577, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4552, '2020-01-19 12:41:37', '2020-01-19 12:41:38', 'RES3175', '', '917677731', 'VALIDE', 'ACTIVE', 578, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4553, '2020-01-19 12:41:41', '2020-01-19 12:41:42', 'RES3175', '', '-1145727232', 'VALIDE', 'ACTIVE', 579, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4554, '2020-01-19 12:41:46', '2020-01-19 12:41:47', 'RES3175', '', '1717188543', 'VALIDE', 'ACTIVE', 580, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4555, '2020-01-19 12:41:50', '2020-01-19 12:41:51', 'RES3175', '', '203719052', 'VALIDE', 'ACTIVE', 581, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4556, '2020-01-19 12:41:55', '2020-01-19 12:41:56', 'RES3175', '', '239218056', 'VALIDE', 'ACTIVE', 582, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4557, '2020-01-19 12:41:59', '2020-01-19 12:42:00', 'RES3175', '', '1329385228', 'VALIDE', 'ACTIVE', 583, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4558, '2020-01-19 12:42:04', '2020-01-19 12:42:05', 'RES3175', '', '996174090', 'VALIDE', 'ACTIVE', 584, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4559, '2020-01-19 12:42:08', '2020-01-19 12:42:09', 'RES3175', '', '199267990', 'VALIDE', 'ACTIVE', 585, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4560, '2020-01-19 12:42:13', '2020-01-19 12:42:14', 'RES3175', '', '-480133610', 'VALIDE', 'ACTIVE', 586, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4561, '2020-01-19 12:42:17', '2020-01-19 12:42:18', 'RES3175', '', '-1902242718', 'VALIDE', 'ACTIVE', 587, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4562, '2020-01-19 12:42:22', '2020-01-19 12:42:23', 'RES3175', '', '-578099978', 'VALIDE', 'ACTIVE', 588, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4563, '2020-01-19 12:42:27', '2020-01-19 12:42:28', 'RES3175', '', '-1332868732', 'VALIDE', 'ACTIVE', 589, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4564, '2020-01-19 12:42:32', '2020-01-19 12:42:33', 'RES3175', '', '-446877383', 'VALIDE', 'ACTIVE', 590, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4565, '2020-01-19 12:42:37', '2020-01-19 12:42:38', 'RES3175', '', '1274787942', 'VALIDE', 'ACTIVE', 591, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4566, '2020-01-19 12:42:41', '2020-01-19 12:42:42', 'RES3175', '', '2097227315', 'VALIDE', 'ACTIVE', 592, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4567, '2020-01-19 12:42:46', '2020-01-19 12:42:46', 'RES3175', '', '-1532689649', 'VALIDE', 'ACTIVE', 593, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4568, '2020-01-19 12:42:50', '2020-01-19 12:42:51', 'RES3175', '', '-1429390395', 'VALIDE', 'ACTIVE', 594, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4569, '2020-01-19 12:42:55', '2020-01-19 12:42:55', 'RES3175', '', '1942164503', 'VALIDE', 'ACTIVE', 595, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4570, '2020-01-19 12:42:59', '2020-01-19 12:43:00', 'RES3175', '', '1502017737', 'VALIDE', 'ACTIVE', 596, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4571, '2020-01-19 12:43:03', '2020-01-19 12:43:04', 'RES3175', '', '-1336430899', 'VALIDE', 'ACTIVE', 597, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4572, '2020-01-19 12:43:08', '2020-01-19 12:43:09', 'RES3175', '', '-1295604232', 'VALIDE', 'ACTIVE', 598, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4573, '2020-01-19 12:43:12', '2020-01-19 12:43:13', 'RES3175', '', '-671427511', 'VALIDE', 'ACTIVE', 599, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4574, '2020-01-19 12:43:17', '2020-01-19 12:43:18', 'RES3175', '', '-1734980584', 'VALIDE', 'ACTIVE', 600, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4575, '2020-01-19 12:43:21', '2020-01-19 12:43:22', 'RES3175', '', '933241561', 'VALIDE', 'ACTIVE', 601, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4576, '2020-01-19 12:43:26', '2020-01-19 12:43:27', 'RES3175', '', '2024240153', 'VALIDE', 'ACTIVE', 602, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4577, '2020-01-19 12:43:30', '2020-01-19 12:43:31', 'RES3175', '', '1263216530', 'VALIDE', 'ACTIVE', 603, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4578, '2020-01-19 12:43:37', '2020-01-19 12:43:37', 'RES3175', '', '-1472548401', 'VALIDE', 'ACTIVE', 604, 205, 1935, 205);
INSERT INTO `est_inscrit` VALUES (4602, '2020-01-20 08:28:49', '2020-01-20 08:28:52', 'ECP1011', '', '661023781', 'VALIDE', 'ACTIVE', 753, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4603, '2020-01-20 08:29:00', '2020-01-20 08:29:02', 'ECP1011', '', '-1540320656', 'VALIDE', 'ACTIVE', 754, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4604, '2020-01-20 08:29:08', '2020-01-20 08:29:10', 'ECP1011', '', '-969279271', 'VALIDE', 'ACTIVE', 755, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4605, '2020-01-20 08:29:16', '2020-01-20 08:29:18', 'ECP1011', '', '1031684322', 'VALIDE', 'ACTIVE', 756, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4606, '2020-01-20 08:29:24', '2020-01-20 08:29:26', 'ECP1011', '', '-493531286', 'VALIDE', 'ACTIVE', 757, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4607, '2020-01-20 08:29:32', '2020-01-20 08:29:34', 'ECP1011', '', '-777656483', 'VALIDE', 'ACTIVE', 758, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4608, '2020-01-20 08:29:41', '2020-01-20 08:29:43', 'ECP1011', '', '-686838346', 'VALIDE', 'ACTIVE', 759, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4609, '2020-01-20 08:29:48', '2020-01-20 08:29:50', 'ECP1011', '', '-2010538228', 'VALIDE', 'ACTIVE', 760, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4610, '2020-01-20 08:29:56', '2020-01-20 08:29:58', 'ECP1011', '', '514820651', 'VALIDE', 'ACTIVE', 761, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4611, '2020-01-20 08:30:03', '2020-01-20 08:30:05', 'ECP1011', '', '-1534163821', 'VALIDE', 'ACTIVE', 762, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4612, '2020-01-20 08:30:10', '2020-01-20 08:30:12', 'ECP1011', '', '-790297724', 'VALIDE', 'ACTIVE', 763, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4613, '2020-01-20 08:30:18', '2020-01-20 08:30:20', 'ECP1011', '', '7208446', 'VALIDE', 'ACTIVE', 764, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4614, '2020-01-20 08:30:25', '2020-01-20 08:30:28', 'ECP1011', '', '-1890199237', 'VALIDE', 'ACTIVE', 765, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4615, '2020-01-20 08:30:33', '2020-01-20 08:30:35', 'ECP1011', '', '2081420631', 'VALIDE', 'ACTIVE', 766, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4616, '2020-01-20 08:30:41', '2020-01-20 08:30:43', 'ECP1011', '', '2124957654', 'VALIDE', 'ACTIVE', 767, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4617, '2020-01-20 08:30:48', '2020-01-20 08:30:50', 'ECP1011', '', '81499542', 'VALIDE', 'ACTIVE', 768, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4618, '2020-01-20 08:30:55', '2020-01-20 08:30:57', 'ECP1011', '', '-278051295', 'VALIDE', 'ACTIVE', 769, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4619, '2020-01-20 08:31:02', '2020-01-20 08:31:04', 'ECP1011', '', '-1396170264', 'VALIDE', 'ACTIVE', 770, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4620, '2020-01-20 08:31:10', '2020-01-20 08:31:12', 'ECP1011', '', '-1552480694', 'VALIDE', 'ACTIVE', 771, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4621, '2020-01-20 08:31:17', '2020-01-20 08:31:19', 'ECP1011', '', '826406880', 'VALIDE', 'ACTIVE', 772, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4622, '2020-01-20 08:31:25', '2020-01-20 08:31:27', 'ECP1011', '', '-206999823', 'VALIDE', 'ACTIVE', 773, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4623, '2020-01-20 08:31:33', '2020-01-20 08:31:35', 'ECP1011', '', '-2123537730', 'VALIDE', 'ACTIVE', 774, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4624, '2020-01-20 08:31:41', '2020-01-20 08:31:44', 'ECP1011', '', '1867303140', 'VALIDE', 'ACTIVE', 775, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4625, '2020-01-20 08:31:49', '2020-01-20 08:31:52', 'ECP1011', '', '407841404', 'VALIDE', 'ACTIVE', 776, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4626, '2020-01-20 08:31:57', '2020-01-20 08:32:02', 'ECP1011', '', '1268616297', 'VALIDE', 'ACTIVE', 777, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4627, '2020-01-20 08:32:11', '2020-01-20 08:32:14', 'ECP1011', '', '-1100571073', 'VALIDE', 'ACTIVE', 778, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4628, '2020-01-20 08:32:20', '2020-01-20 08:32:23', 'ECP1011', '', '974571994', 'VALIDE', 'ACTIVE', 779, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4629, '2020-01-20 08:32:30', '2020-01-20 08:32:33', 'ECP1011', '', '1397135954', 'VALIDE', 'ACTIVE', 780, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (4630, '2020-01-20 08:32:40', '2020-01-20 08:32:44', 'ECP1011', '', '-864215475', 'VALIDE', 'ACTIVE', 781, 205, 4580, 205);
INSERT INTO `est_inscrit` VALUES (9002, '2020-01-22 09:46:07', '2020-01-22 09:46:11', 'MAT1011', '', '-762550002', 'VALIDE', 'ACTIVE', 730, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (9003, '2020-01-22 09:46:23', '2020-01-22 09:46:30', 'MAT1011', '', '851798335', 'VALIDE', 'ACTIVE', 728, 205, 1261, 205);
INSERT INTO `est_inscrit` VALUES (9004, '2020-01-22 09:48:13', '2020-01-22 09:48:16', 'MAT1021', '', '-1405105346', 'VALIDE', 'ACTIVE', 730, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (9005, '2020-01-22 09:48:41', '2020-01-22 09:48:45', 'MAT1021', '', '-1502409749', 'VALIDE', 'ACTIVE', 728, 205, 1260, 205);
INSERT INTO `est_inscrit` VALUES (10452, '2020-01-24 07:49:28', '2020-01-24 07:49:28', 'LAC1011', '', '845825842', 'VALIDE', 'ACTIVE', 8461, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10453, '2020-01-24 07:49:28', '2020-01-24 07:49:28', 'LAC1011', '', '2076128448', 'VALIDE', 'ACTIVE', 8463, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10454, '2020-01-24 07:49:28', '2020-01-24 07:49:28', 'LAC1011', '', '1459788998', 'VALIDE', 'ACTIVE', 8464, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10455, '2020-01-24 07:49:28', '2020-01-24 07:49:29', 'LAC1011', '', '1303335966', 'VALIDE', 'ACTIVE', 8465, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10456, '2020-01-24 07:49:29', '2020-01-24 07:49:29', 'LAC1011', '', '485534521', 'VALIDE', 'ACTIVE', 8466, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10457, '2020-01-24 07:49:29', '2020-01-24 07:49:29', 'LAC1011', '', '1696338530', 'VALIDE', 'ACTIVE', 8467, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10458, '2020-01-24 07:49:29', '2020-01-24 07:49:29', 'LAC1011', '', '-317697582', 'VALIDE', 'ACTIVE', 8468, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10459, '2020-01-24 07:49:29', '2020-01-24 07:49:29', 'LAC1011', '', '-1710554837', 'VALIDE', 'ACTIVE', 8469, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10460, '2020-01-24 07:49:29', '2020-01-24 07:49:29', 'LAC1011', '', '1420930716', 'VALIDE', 'ACTIVE', 8470, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10461, '2020-01-24 07:49:29', '2020-01-24 07:49:30', 'LAC1011', '', '1045325357', 'VALIDE', 'ACTIVE', 8471, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10462, '2020-01-24 07:49:30', '2020-01-24 07:49:30', 'LAC1011', '', '-526036673', 'VALIDE', 'ACTIVE', 8472, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10463, '2020-01-24 07:49:30', '2020-01-24 07:49:30', 'LAC1011', '', '2051267453', 'VALIDE', 'ACTIVE', 8473, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10464, '2020-01-24 07:49:30', '2020-01-24 07:49:30', 'LAC1011', '', '2025162183', 'VALIDE', 'ACTIVE', 8474, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10465, '2020-01-24 07:49:30', '2020-01-24 07:49:30', 'LAC1011', '', '710855816', 'VALIDE', 'ACTIVE', 8475, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10466, '2020-01-24 07:49:30', '2020-01-24 07:49:30', 'LAC1011', '', '-1633146445', 'VALIDE', 'ACTIVE', 8476, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10467, '2020-01-24 07:49:30', '2020-01-24 07:49:30', 'LAC1011', '', '1443820877', 'VALIDE', 'ACTIVE', 8477, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10468, '2020-01-24 07:49:30', '2020-01-24 07:49:30', 'LAC1011', '', '-1912446910', 'VALIDE', 'ACTIVE', 8478, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10469, '2020-01-24 07:49:30', '2020-01-24 07:49:30', 'LAC1011', '', '821461899', 'VALIDE', 'ACTIVE', 8479, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10470, '2020-01-24 07:49:30', '2020-01-24 07:49:30', 'LAC1011', '', '1297056679', 'VALIDE', 'ACTIVE', 8480, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10471, '2020-01-24 07:49:30', '2020-01-24 07:49:30', 'LAC1011', '', '410852852', 'VALIDE', 'ACTIVE', 8481, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10472, '2020-01-24 07:49:30', '2020-01-24 07:49:30', 'LAC1011', '', '739185464', 'VALIDE', 'ACTIVE', 8482, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10473, '2020-01-24 07:49:30', '2020-01-24 07:49:30', 'LAC1011', '', '-2005008796', 'VALIDE', 'ACTIVE', 8483, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10474, '2020-01-24 07:49:30', '2020-01-24 07:49:30', 'LAC1011', '', '-1316169424', 'VALIDE', 'ACTIVE', 8484, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10475, '2020-01-24 07:49:31', '2020-01-24 07:49:31', 'LAC1011', '', '1829315171', 'VALIDE', 'ACTIVE', 8485, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10476, '2020-01-24 07:49:31', '2020-01-24 07:49:31', 'LAC1011', '', '1004842586', 'VALIDE', 'ACTIVE', 8486, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10477, '2020-01-24 07:49:31', '2020-01-24 07:49:31', 'LAC1011', '', '655058397', 'VALIDE', 'ACTIVE', 8487, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10478, '2020-01-24 07:49:31', '2020-01-24 07:49:31', 'LAC1011', '', '1739515584', 'VALIDE', 'ACTIVE', 8488, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10479, '2020-01-24 07:49:31', '2020-01-24 07:49:31', 'LAC1011', '', '-258355833', 'VALIDE', 'ACTIVE', 8489, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10480, '2020-01-24 07:49:31', '2020-01-24 07:49:31', 'LAC1011', '', '1152754050', 'VALIDE', 'ACTIVE', 8490, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10481, '2020-01-24 07:49:31', '2020-01-24 07:49:31', 'LAC1011', '', '329737691', 'VALIDE', 'ACTIVE', 8491, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10482, '2020-01-24 07:49:31', '2020-01-24 07:49:31', 'LAC1011', '', '-647558846', 'VALIDE', 'ACTIVE', 8492, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10483, '2020-01-24 07:49:31', '2020-01-24 07:49:31', 'LAC1011', '', '-774491071', 'VALIDE', 'ACTIVE', 8493, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10484, '2020-01-24 07:49:31', '2020-01-24 07:49:31', 'LAC1011', '', '-2048562045', 'VALIDE', 'ACTIVE', 8494, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10485, '2020-01-24 07:49:31', '2020-01-24 07:49:31', 'LAC1011', '', '40344639', 'VALIDE', 'ACTIVE', 8495, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10486, '2020-01-24 07:49:31', '2020-01-24 07:49:31', 'LAC1011', '', '-172396736', 'VALIDE', 'ACTIVE', 8496, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10487, '2020-01-24 07:49:32', '2020-01-24 07:49:32', 'LAC1011', '', '10788357', 'VALIDE', 'ACTIVE', 8497, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10488, '2020-01-24 07:49:32', '2020-01-24 07:49:32', 'LAC1011', '', '1739712859', 'VALIDE', 'ACTIVE', 8498, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10489, '2020-01-24 07:49:32', '2020-01-24 07:49:32', 'LAC1011', '', '-1220223780', 'VALIDE', 'ACTIVE', 8499, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10490, '2020-01-24 07:49:32', '2020-01-24 07:49:32', 'LAC1011', '', '-830130518', 'VALIDE', 'ACTIVE', 8500, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10491, '2020-01-24 07:49:32', '2020-01-24 07:49:32', 'LAC1011', '', '-1814311106', 'VALIDE', 'ACTIVE', 8501, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10492, '2020-01-24 07:49:32', '2020-01-24 07:49:32', 'LAC1011', '', '-1553087718', 'VALIDE', 'ACTIVE', 8502, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10493, '2020-01-24 07:49:32', '2020-01-24 07:49:32', 'LAC1011', '', '1419559661', 'VALIDE', 'ACTIVE', 8503, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10494, '2020-01-24 07:49:32', '2020-01-24 07:49:32', 'LAC1011', '', '1246343244', 'VALIDE', 'ACTIVE', 8504, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10495, '2020-01-24 07:49:32', '2020-01-24 07:49:32', 'LAC1011', '', '1741675085', 'VALIDE', 'ACTIVE', 8505, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10496, '2020-01-24 07:49:32', '2020-01-24 07:49:32', 'LAC1011', '', '1896236466', 'VALIDE', 'ACTIVE', 8506, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10497, '2020-01-24 07:49:32', '2020-01-24 07:49:32', 'LAC1011', '', '-1120729967', 'VALIDE', 'ACTIVE', 8507, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10498, '2020-01-24 07:49:32', '2020-01-24 07:49:32', 'LAC1011', '', '-2068456741', 'VALIDE', 'ACTIVE', 8508, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10499, '2020-01-24 07:49:32', '2020-01-24 07:49:32', 'LAC1011', '', '-2023254644', 'VALIDE', 'ACTIVE', 8509, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10500, '2020-01-24 07:49:32', '2020-01-24 07:49:32', 'LAC1011', '', '1906143823', 'VALIDE', 'ACTIVE', 8510, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10501, '2020-01-24 07:49:32', '2020-01-24 07:49:32', 'LAC1011', '', '-1629547179', 'VALIDE', 'ACTIVE', 8511, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10502, '2020-01-24 07:49:33', '2020-01-24 07:49:33', 'LAC1011', '', '-1253210202', 'VALIDE', 'ACTIVE', 8512, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10503, '2020-01-24 07:49:33', '2020-01-24 07:49:33', 'LAC1011', '', '1238808075', 'VALIDE', 'ACTIVE', 8513, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10504, '2020-01-24 07:49:33', '2020-01-24 07:49:33', 'LAC1011', '', '1900344114', 'VALIDE', 'ACTIVE', 8514, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10505, '2020-01-24 07:49:33', '2020-01-24 07:49:33', 'LAC1011', '', '800180796', 'VALIDE', 'ACTIVE', 8515, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10506, '2020-01-24 07:49:33', '2020-01-24 07:49:33', 'LAC1011', '', '1556188103', 'VALIDE', 'ACTIVE', 8516, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10507, '2020-01-24 07:49:33', '2020-01-24 07:49:33', 'LAC1011', '', '-1400405645', 'VALIDE', 'ACTIVE', 8517, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10508, '2020-01-24 07:49:33', '2020-01-24 07:49:33', 'LAC1011', '', '-567612795', 'VALIDE', 'ACTIVE', 8518, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10509, '2020-01-24 07:49:33', '2020-01-24 07:49:33', 'LAC1011', '', '-136374253', 'VALIDE', 'ACTIVE', 8519, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10510, '2020-01-24 07:49:33', '2020-01-24 07:49:33', 'LAC1011', '', '-1915725242', 'VALIDE', 'ACTIVE', 8520, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10511, '2020-01-24 07:49:33', '2020-01-24 07:49:33', 'LAC1011', '', '473539982', 'VALIDE', 'ACTIVE', 8521, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10512, '2020-01-24 07:49:33', '2020-01-24 07:49:33', 'LAC1011', '', '317332944', 'VALIDE', 'ACTIVE', 8522, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10513, '2020-01-24 07:49:33', '2020-01-24 07:49:33', 'LAC1011', '', '679532953', 'VALIDE', 'ACTIVE', 8523, 101, 1917, 101);
INSERT INTO `est_inscrit` VALUES (10514, '2020-01-24 07:49:33', '2020-01-24 07:49:34', 'LAC1011', '', '-1900658245', 'VALIDE', 'ACTIVE', 8524, 101, 1917, 101);

-- ----------------------------
-- Table structure for etudiant
-- ----------------------------
DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE `etudiant`  (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `code_authentification` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `matricule` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `matricule`(`matricule`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10526 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of etudiant
-- ----------------------------
INSERT INTO `etudiant` VALUES (8461, '7333', '1920i001');
INSERT INTO `etudiant` VALUES (8463, '8155', '1920i002');
INSERT INTO `etudiant` VALUES (8464, '7328', '1920i003');
INSERT INTO `etudiant` VALUES (8465, '4702', '1920i004');
INSERT INTO `etudiant` VALUES (8466, '3020', '1920i005');
INSERT INTO `etudiant` VALUES (8467, '3205', '1920i009');
INSERT INTO `etudiant` VALUES (8468, '4557', '1920i010');
INSERT INTO `etudiant` VALUES (8469, '7370', '1819i015');
INSERT INTO `etudiant` VALUES (8470, '1906', '1920i011');
INSERT INTO `etudiant` VALUES (8471, '8972', '1920i014');
INSERT INTO `etudiant` VALUES (8472, '4981', '1819i052');
INSERT INTO `etudiant` VALUES (8473, '6557', '1920i016');
INSERT INTO `etudiant` VALUES (8474, '1875', '1920i017');
INSERT INTO `etudiant` VALUES (8475, '9052', '1920i018');
INSERT INTO `etudiant` VALUES (8476, '9412', '1920i019');
INSERT INTO `etudiant` VALUES (8477, '3634', '1920i023');
INSERT INTO `etudiant` VALUES (8478, '5169', '1819i039');
INSERT INTO `etudiant` VALUES (8479, '6041', '1920i026');
INSERT INTO `etudiant` VALUES (8480, '6322', '1920i027');
INSERT INTO `etudiant` VALUES (8481, '6089', '1920i028');
INSERT INTO `etudiant` VALUES (8482, '7852', '1819i014');
INSERT INTO `etudiant` VALUES (8483, '3433', '1920i036');
INSERT INTO `etudiant` VALUES (8484, '8015', '1920i039');
INSERT INTO `etudiant` VALUES (8485, '4738', '1920i040');
INSERT INTO `etudiant` VALUES (8486, '2274', '1920i043');
INSERT INTO `etudiant` VALUES (8487, '8543', '1819i029');
INSERT INTO `etudiant` VALUES (8488, '5607', '1920i044');
INSERT INTO `etudiant` VALUES (8489, '3942', '1920i045');
INSERT INTO `etudiant` VALUES (8490, '4907', '1920i046');
INSERT INTO `etudiant` VALUES (8491, '3121', '1920i047');
INSERT INTO `etudiant` VALUES (8492, '7034', '1920i050');
INSERT INTO `etudiant` VALUES (8493, '7194', '1920i052');
INSERT INTO `etudiant` VALUES (8494, '6506', '1920i053');
INSERT INTO `etudiant` VALUES (8495, '6102', '1819i017');
INSERT INTO `etudiant` VALUES (8496, '5172', '1920i056');
INSERT INTO `etudiant` VALUES (8497, '9665', '1920i057');
INSERT INTO `etudiant` VALUES (8498, '8923', '1920i059');
INSERT INTO `etudiant` VALUES (8499, '7925', '1920i060');
INSERT INTO `etudiant` VALUES (8500, '1446', '1920i061');
INSERT INTO `etudiant` VALUES (8501, '4211', '1920i062');
INSERT INTO `etudiant` VALUES (8502, '1324', '1920i063');
INSERT INTO `etudiant` VALUES (8503, '1901', '1920i064');
INSERT INTO `etudiant` VALUES (8504, '3967', '1920i068');
INSERT INTO `etudiant` VALUES (8505, '1913', '1920i069');
INSERT INTO `etudiant` VALUES (8506, '7746', '1920i070');
INSERT INTO `etudiant` VALUES (8507, '9427', '1920i071');
INSERT INTO `etudiant` VALUES (8508, '2310', '1920i072');
INSERT INTO `etudiant` VALUES (8509, '3427', '1920i073');
INSERT INTO `etudiant` VALUES (8510, '2164', '1920i074');
INSERT INTO `etudiant` VALUES (8511, '8247', '1920i076');
INSERT INTO `etudiant` VALUES (8512, '5561', '1920i077');
INSERT INTO `etudiant` VALUES (8513, '3283', '1920i078');
INSERT INTO `etudiant` VALUES (8514, '3211', '1920i079');
INSERT INTO `etudiant` VALUES (8515, '8502', '1920i081');
INSERT INTO `etudiant` VALUES (8516, '1138', '1920i082');
INSERT INTO `etudiant` VALUES (8517, '6822', '1920i083');
INSERT INTO `etudiant` VALUES (8518, '3781', '1920i085');
INSERT INTO `etudiant` VALUES (8519, '1107', '1920i086');
INSERT INTO `etudiant` VALUES (8520, '4175', '1920i087');
INSERT INTO `etudiant` VALUES (8521, '3639', '1920i088');
INSERT INTO `etudiant` VALUES (8522, '8524', '1920i089');
INSERT INTO `etudiant` VALUES (8523, '7803', '1920i090');
INSERT INTO `etudiant` VALUES (8524, '6036', '1920i091');
INSERT INTO `etudiant` VALUES (552, '', '1920i110');
INSERT INTO `etudiant` VALUES (553, '', '1718i023');
INSERT INTO `etudiant` VALUES (554, '', '1718i084');
INSERT INTO `etudiant` VALUES (555, '', '1718i040');
INSERT INTO `etudiant` VALUES (556, '', '1718i087');
INSERT INTO `etudiant` VALUES (557, '', '1920i111');
INSERT INTO `etudiant` VALUES (558, '4735', '1920i112');
INSERT INTO `etudiant` VALUES (559, '', '1718i035');
INSERT INTO `etudiant` VALUES (560, '', '1718i059');
INSERT INTO `etudiant` VALUES (561, '', '1718i054');
INSERT INTO `etudiant` VALUES (562, '', '1718i074');
INSERT INTO `etudiant` VALUES (563, '', '1920i113');
INSERT INTO `etudiant` VALUES (564, '', '1718i003');
INSERT INTO `etudiant` VALUES (565, '', '1718i062');
INSERT INTO `etudiant` VALUES (566, '', '1718i024');
INSERT INTO `etudiant` VALUES (567, '', '1920i123');
INSERT INTO `etudiant` VALUES (568, '', '1718i061');
INSERT INTO `etudiant` VALUES (569, '', '1920i114');
INSERT INTO `etudiant` VALUES (570, '', '1718i005');
INSERT INTO `etudiant` VALUES (571, '', '1718i046');
INSERT INTO `etudiant` VALUES (572, '', '1718i047');
INSERT INTO `etudiant` VALUES (573, '', '1920i115');
INSERT INTO `etudiant` VALUES (574, '', '1718i029');
INSERT INTO `etudiant` VALUES (575, '', '1718i048');
INSERT INTO `etudiant` VALUES (576, '', '1920i116');
INSERT INTO `etudiant` VALUES (577, '', '1718i014');
INSERT INTO `etudiant` VALUES (578, '', '1920i117');
INSERT INTO `etudiant` VALUES (579, '', '1718i022');
INSERT INTO `etudiant` VALUES (580, '', '1718i089');
INSERT INTO `etudiant` VALUES (581, '', '1718i083');
INSERT INTO `etudiant` VALUES (582, '', '1920i118');
INSERT INTO `etudiant` VALUES (583, '', '1920i122');
INSERT INTO `etudiant` VALUES (584, '', '1920i119');
INSERT INTO `etudiant` VALUES (585, '', '1718i034');
INSERT INTO `etudiant` VALUES (586, '', '1718i032');
INSERT INTO `etudiant` VALUES (587, '', '1718i016');
INSERT INTO `etudiant` VALUES (588, '', '1718i041');
INSERT INTO `etudiant` VALUES (589, '', '1920i120');
INSERT INTO `etudiant` VALUES (590, '', '1718i075');
INSERT INTO `etudiant` VALUES (591, '', '1718i067');
INSERT INTO `etudiant` VALUES (592, '', '1718i056');
INSERT INTO `etudiant` VALUES (593, '', '1718i031');
INSERT INTO `etudiant` VALUES (594, '', '1718i026');
INSERT INTO `etudiant` VALUES (595, '', '1718i042');
INSERT INTO `etudiant` VALUES (596, '', '1819I108');
INSERT INTO `etudiant` VALUES (597, '', '1718i009');
INSERT INTO `etudiant` VALUES (598, '', '1718i051');
INSERT INTO `etudiant` VALUES (599, '', '1718i072');
INSERT INTO `etudiant` VALUES (600, '', '1920i121');
INSERT INTO `etudiant` VALUES (601, '', '1718i039');
INSERT INTO `etudiant` VALUES (602, '', '1718i018');
INSERT INTO `etudiant` VALUES (603, '', '1718i008');
INSERT INTO `etudiant` VALUES (604, '', '1718i088');
INSERT INTO `etudiant` VALUES (702, '1650', '1819i007');
INSERT INTO `etudiant` VALUES (703, '1287', '1819i051');
INSERT INTO `etudiant` VALUES (704, '4041', '1819i038');
INSERT INTO `etudiant` VALUES (705, '9544', '1819i030');
INSERT INTO `etudiant` VALUES (706, '6778', '1819i067');
INSERT INTO `etudiant` VALUES (707, '3592', '1819i045');
INSERT INTO `etudiant` VALUES (708, '4609', '1718i038');
INSERT INTO `etudiant` VALUES (709, '8253', '1819i008');
INSERT INTO `etudiant` VALUES (710, '9365', '1819i009');
INSERT INTO `etudiant` VALUES (711, '4616', '1819i053');
INSERT INTO `etudiant` VALUES (712, '2498', '1819i058');
INSERT INTO `etudiant` VALUES (713, '1877', '1819i019');
INSERT INTO `etudiant` VALUES (714, '7520', '1819i035');
INSERT INTO `etudiant` VALUES (715, '6458', '1819i024');
INSERT INTO `etudiant` VALUES (716, '8761', '1819i066');
INSERT INTO `etudiant` VALUES (717, '7099', '1718i070');
INSERT INTO `etudiant` VALUES (719, '6071', '1819i049');
INSERT INTO `etudiant` VALUES (720, '6396', '1819i005');
INSERT INTO `etudiant` VALUES (721, '9132', '1819i010');
INSERT INTO `etudiant` VALUES (722, '3223', '1819i020');
INSERT INTO `etudiant` VALUES (723, '7277', '1819i032');
INSERT INTO `etudiant` VALUES (724, '1623', '1718i021');
INSERT INTO `etudiant` VALUES (725, '2756', '1819i054');
INSERT INTO `etudiant` VALUES (726, '3815', '1819i040');
INSERT INTO `etudiant` VALUES (727, '7138', '1819i036');
INSERT INTO `etudiant` VALUES (728, '9115', '1819i081');
INSERT INTO `etudiant` VALUES (729, '6460', '1819i025');
INSERT INTO `etudiant` VALUES (730, '5193', '1819i011');
INSERT INTO `etudiant` VALUES (731, '1564', '1819i041');
INSERT INTO `etudiant` VALUES (732, '7562', '1819i002');
INSERT INTO `etudiant` VALUES (733, '6873', '1819i026');
INSERT INTO `etudiant` VALUES (734, '7720', '1819i033');
INSERT INTO `etudiant` VALUES (735, '5737', '1819i047');
INSERT INTO `etudiant` VALUES (736, '6021', '1819i056');
INSERT INTO `etudiant` VALUES (737, '3643', '1819i018');
INSERT INTO `etudiant` VALUES (738, '4247', '1819i012');
INSERT INTO `etudiant` VALUES (739, '4445', '1819i027');
INSERT INTO `etudiant` VALUES (740, '4630', '1819i003');
INSERT INTO `etudiant` VALUES (741, '7245', '1819i073');
INSERT INTO `etudiant` VALUES (742, '8184', '1819i037');
INSERT INTO `etudiant` VALUES (743, '4699', '1819i028');
INSERT INTO `etudiant` VALUES (744, '3370', '1718i020');
INSERT INTO `etudiant` VALUES (745, '1673', '1819i048');
INSERT INTO `etudiant` VALUES (746, '1189', '1819i034');
INSERT INTO `etudiant` VALUES (747, '4059', '1819i100');
INSERT INTO `etudiant` VALUES (748, '4744', '1819i042');
INSERT INTO `etudiant` VALUES (749, '7868', '1819i021');
INSERT INTO `etudiant` VALUES (750, '2225', '1819i044');
INSERT INTO `etudiant` VALUES (751, '8960', '1819i013');
INSERT INTO `etudiant` VALUES (752, '7433', '1819i043');
INSERT INTO `etudiant` VALUES (753, '', '1920L019');
INSERT INTO `etudiant` VALUES (754, '4862', '1920L034');
INSERT INTO `etudiant` VALUES (755, '4942', '1920L001');
INSERT INTO `etudiant` VALUES (756, '1207', '1920L002');
INSERT INTO `etudiant` VALUES (757, '4518', '1920L003');
INSERT INTO `etudiant` VALUES (758, '4282', '1920L004');
INSERT INTO `etudiant` VALUES (759, '3078', '1920L018');
INSERT INTO `etudiant` VALUES (760, '2632', '1920L021');
INSERT INTO `etudiant` VALUES (761, '1204', '1920L006');
INSERT INTO `etudiant` VALUES (762, '2613', '1819L004');
INSERT INTO `etudiant` VALUES (763, '1136', '1920L007');
INSERT INTO `etudiant` VALUES (764, '9432', '1920L008');
INSERT INTO `etudiant` VALUES (765, '6124', '1920L009');
INSERT INTO `etudiant` VALUES (766, '9897', '1920L032');
INSERT INTO `etudiant` VALUES (767, '1908', '1920L010');
INSERT INTO `etudiant` VALUES (768, '1635', '1920L011');
INSERT INTO `etudiant` VALUES (769, '8718', '1920L030');
INSERT INTO `etudiant` VALUES (770, '9218', '1920L026');
INSERT INTO `etudiant` VALUES (771, '8961', '1920L031');
INSERT INTO `etudiant` VALUES (772, '6011', '1920L012');
INSERT INTO `etudiant` VALUES (773, '7494', '1920L013');
INSERT INTO `etudiant` VALUES (774, '6224', '1920L014');
INSERT INTO `etudiant` VALUES (775, '8543', '1920L028');
INSERT INTO `etudiant` VALUES (776, '9727', '1920L015');
INSERT INTO `etudiant` VALUES (777, '3246', '1920L016');
INSERT INTO `etudiant` VALUES (778, '5604', '1920L033');
INSERT INTO `etudiant` VALUES (779, '3714', '1920L035');
INSERT INTO `etudiant` VALUES (780, '5485', '1920L029');
INSERT INTO `etudiant` VALUES (781, '1163', '1920L017');
INSERT INTO `etudiant` VALUES (782, '3839', '1819L030');
INSERT INTO `etudiant` VALUES (783, '3875', '1819L019');
INSERT INTO `etudiant` VALUES (784, '8916', '1819L036');
INSERT INTO `etudiant` VALUES (785, '6787', '1819L001');
INSERT INTO `etudiant` VALUES (786, '3912', '1819L002');
INSERT INTO `etudiant` VALUES (787, '2725', '1819L003');
INSERT INTO `etudiant` VALUES (788, '3476', '1819L021');
INSERT INTO `etudiant` VALUES (789, '1387', '1819L037');
INSERT INTO `etudiant` VALUES (790, '3520', '1819L031');
INSERT INTO `etudiant` VALUES (791, '4341', '1819L041');
INSERT INTO `etudiant` VALUES (792, '6541', '1819L039');
INSERT INTO `etudiant` VALUES (793, '9247', '1819L005');
INSERT INTO `etudiant` VALUES (794, '9730', '1819L006');
INSERT INTO `etudiant` VALUES (795, '8525', '1819L007');
INSERT INTO `etudiant` VALUES (796, '3035', '1819L009');
INSERT INTO `etudiant` VALUES (797, '1608', '1718L005');
INSERT INTO `etudiant` VALUES (798, '2955', '1819L011');
INSERT INTO `etudiant` VALUES (799, '1753', '1819L012');
INSERT INTO `etudiant` VALUES (800, '6392', '1819L013');
INSERT INTO `etudiant` VALUES (801, '4416', '1819L014');
INSERT INTO `etudiant` VALUES (802, '5575', '1819L015');
INSERT INTO `etudiant` VALUES (803, '5095', '1819L038');
INSERT INTO `etudiant` VALUES (804, '1343', '1819L016');
INSERT INTO `etudiant` VALUES (805, '4877', '1819L106');
INSERT INTO `etudiant` VALUES (806, '6557', '1718L001');
INSERT INTO `etudiant` VALUES (807, '6253', '1718L014');
INSERT INTO `etudiant` VALUES (808, '5591', '1718L016');
INSERT INTO `etudiant` VALUES (809, '9794', '1617L13');
INSERT INTO `etudiant` VALUES (810, '9901', '1718L019');
INSERT INTO `etudiant` VALUES (811, '4387', '1819L107');
INSERT INTO `etudiant` VALUES (812, '5145', '1718L003');
INSERT INTO `etudiant` VALUES (813, '8051', '1718L020');
INSERT INTO `etudiant` VALUES (814, '3836', '1718L030');
INSERT INTO `etudiant` VALUES (815, '1799', '1718L021');
INSERT INTO `etudiant` VALUES (816, '5740', '1718L033');
INSERT INTO `etudiant` VALUES (817, '6171', '1718L037');
INSERT INTO `etudiant` VALUES (818, '7253', '1819L108');
INSERT INTO `etudiant` VALUES (819, '7640', '1718L035');
INSERT INTO `etudiant` VALUES (820, '1548', '1718L023');
INSERT INTO `etudiant` VALUES (821, '2797', '1718L024');
INSERT INTO `etudiant` VALUES (822, '1009', '1718L032');
INSERT INTO `etudiant` VALUES (823, '3719', '1718L025');
INSERT INTO `etudiant` VALUES (824, '2081', '1718L031');
INSERT INTO `etudiant` VALUES (825, '5115', '1718L006');
INSERT INTO `etudiant` VALUES (826, '6330', '1718L011');

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
) ENGINE = MyISAM AUTO_INCREMENT = 8948 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of evaluation
-- ----------------------------
INSERT INTO `evaluation` VALUES (8802, '2020-01-20 16:36:26', '2019-12-31 23:00:00', '2020-01-20 16:36:27', 'CC INF3185', 'CC Principe de la programmation orientée objet ING3', '1255248445', 'ACTIVE', 'ACTIVE', 101, 101, 8602);
INSERT INTO `evaluation` VALUES (8803, '2020-01-20 16:36:29', '2020-01-01 23:00:00', '2020-01-20 16:36:29', 'TP INF3185', 'TP Principe de la programmation orientée objet ING3', '-1259099043', 'ACTIVE', 'ACTIVE', 101, 101, 8603);
INSERT INTO `evaluation` VALUES (8804, '2020-01-20 16:36:32', '2020-01-02 23:00:00', '2020-01-20 16:36:32', 'SN INF3185', 'SN Principe de la programmation orientée objet ING3', '-1877176392', 'ACTIVE', 'ACTIVE', 101, 101, 8604);
INSERT INTO `evaluation` VALUES (8775, '2020-01-20 17:07:17', '2020-10-31 23:00:00', '2020-01-20 17:07:19', 'CC INF3195', 'CC Conduite et gestion de projets informatiques Ing3', '-988855451', 'ACTIVE', 'ACTIVE', 205, 205, 8652);
INSERT INTO `evaluation` VALUES (8776, '2020-01-20 17:07:25', '2020-01-06 23:00:00', '2020-01-20 17:07:27', 'SN INF3195', 'SN Conduite et gestion de projets informatiques Ing3', '-2083578721', 'ACTIVE', 'ACTIVE', 205, 205, 8653);
INSERT INTO `evaluation` VALUES (8777, '2020-01-20 17:07:32', '2019-11-15 23:00:00', '2020-01-20 17:07:34', 'CC LAC3165', 'CC Anglais Ing3', '-91420581', 'ACTIVE', 'ACTIVE', 205, 205, 8654);
INSERT INTO `evaluation` VALUES (8778, '2020-01-20 17:07:40', '2020-01-07 23:00:00', '2020-01-20 17:07:42', 'SN LAC3165', 'SN Anglais Ing3', '649791535', 'ACTIVE', 'ACTIVE', 205, 205, 8655);
INSERT INTO `evaluation` VALUES (8779, '2020-01-20 17:07:47', '2019-11-15 23:00:00', '2020-01-20 17:07:48', 'CC HUM3165', 'CC Technologies du Web', '-1868110817', 'ACTIVE', 'ACTIVE', 205, 205, 8656);
INSERT INTO `evaluation` VALUES (8780, '2020-01-20 17:07:55', '2020-01-07 23:00:00', '2020-01-20 17:07:57', 'TP HUM3165', 'TP Technologies du Web', '-639294602', 'ACTIVE', 'ACTIVE', 205, 205, 8657);
INSERT INTO `evaluation` VALUES (8781, '2020-01-20 17:08:02', '2019-11-15 23:00:00', '2020-01-20 17:08:04', 'SN HUM3165', 'SN Technologies du Web', '571887281', 'ACTIVE', 'ACTIVE', 205, 205, 8658);
INSERT INTO `evaluation` VALUES (8782, '2020-01-20 17:08:10', '2020-12-08 23:00:00', '2020-01-20 17:08:12', 'CC HUM3175', 'CC Sagesse et sciences ING3', '490915617', 'ACTIVE', 'ACTIVE', 205, 205, 8659);
INSERT INTO `evaluation` VALUES (8783, '2020-01-20 17:08:21', '2020-01-07 23:00:00', '2020-01-20 17:08:22', 'SN HUM3175', 'SN Sagesse et sciences ING3', '-693701795', 'ACTIVE', 'ACTIVE', 205, 205, 8660);
INSERT INTO `evaluation` VALUES (8784, '2020-01-20 17:08:34', '2019-11-15 23:00:00', '2020-01-20 17:08:36', 'CC RES3175', 'CC Introduction à la sécurité et à l’administration des réseaux', '1589613352', 'ACTIVE', 'ACTIVE', 205, 205, 8661);
INSERT INTO `evaluation` VALUES (8785, '2020-01-20 17:08:43', '2020-01-07 23:00:00', '2020-01-20 17:08:45', 'TP RES3175', 'TP Introduction à la sécurité et à l’administration des réseaux', '1733240910', 'ACTIVE', 'ACTIVE', 205, 205, 8662);
INSERT INTO `evaluation` VALUES (8786, '2020-01-20 17:08:51', '2019-11-15 23:00:00', '2020-01-20 17:08:53', 'SN RES3175', 'SN Introduction à la sécurité et à l’administration des réseaux', '2019340325', 'ACTIVE', 'ACTIVE', 205, 205, 8663);
INSERT INTO `evaluation` VALUES (8787, '2020-01-20 17:09:00', '2020-12-08 23:00:00', '2020-01-20 17:09:02', 'CC INF3165', 'CC Modélisation pour la conception des Systèmes d\'Information', '1748626498', 'ACTIVE', 'ACTIVE', 205, 205, 8664);
INSERT INTO `evaluation` VALUES (8788, '2020-01-20 17:09:12', '2020-01-07 23:00:00', '2020-01-20 17:09:14', 'SN INF3165', 'SN Modélisation pour la conception des Systèmes d\'Information', '-1258523266', 'ACTIVE', 'ACTIVE', 205, 205, 8665);
INSERT INTO `evaluation` VALUES (8789, '2020-01-20 17:09:20', '2019-11-15 23:00:00', '2020-01-20 17:09:21', 'CC INF3175', 'CC Base de données', '794994608', 'ACTIVE', 'ACTIVE', 205, 205, 8666);
INSERT INTO `evaluation` VALUES (8790, '2020-01-20 17:09:29', '2020-01-07 23:00:00', '2020-01-20 17:09:30', 'TP INF3175', 'TP Base de données', '676710734', 'ACTIVE', 'ACTIVE', 205, 205, 8667);
INSERT INTO `evaluation` VALUES (8791, '2020-01-20 17:09:36', '2019-11-15 23:00:00', '2020-01-20 17:09:38', 'SN INF3175', 'SN Base de données', '1774067584', 'ACTIVE', 'ACTIVE', 205, 205, 8668);
INSERT INTO `evaluation` VALUES (8792, '2020-01-20 17:09:42', '2020-12-08 23:00:00', '2020-01-20 17:09:43', 'CC RES3165', 'CC Théorie et codage de l’information', '-1421903115', 'ACTIVE', 'ACTIVE', 205, 205, 8669);
INSERT INTO `evaluation` VALUES (8793, '2020-01-20 17:09:48', '2020-01-07 23:00:00', '2020-01-20 17:09:49', 'SN RES3165', 'SN Théorie et codage de l’information', '491022802', 'ACTIVE', 'ACTIVE', 205, 205, 8670);
INSERT INTO `evaluation` VALUES (8794, '2020-01-20 17:09:58', '2019-11-15 23:00:00', '2020-01-20 17:09:59', 'CC INF3195', 'CC Programmation et administration des bases de Données Oracle', '1826412985', 'ACTIVE', 'ACTIVE', 205, 205, 8652);
INSERT INTO `evaluation` VALUES (8795, '2020-01-20 17:10:07', '2020-01-07 23:00:00', '2020-01-20 17:10:08', 'SN INF3195', 'SN Programmation et administration des bases de Données Oracle', '1231985156', 'ACTIVE', 'ACTIVE', 205, 205, 8653);
INSERT INTO `evaluation` VALUES (8796, '2020-01-20 17:10:14', '2019-11-15 23:00:00', '2020-01-20 17:10:15', 'CC INP3256', 'CC Technologie .NET', '-649044076', 'ACTIVE', 'ACTIVE', 205, 205, 8673);
INSERT INTO `evaluation` VALUES (8797, '2020-01-20 17:10:20', '2020-01-07 23:00:00', '2020-01-20 17:10:21', 'TP INP3256', 'TP Technologie .NET', '-879693707', 'ACTIVE', 'ACTIVE', 205, 205, 8674);
INSERT INTO `evaluation` VALUES (8798, '2020-01-20 17:10:26', '2019-11-15 23:00:00', '2020-01-20 17:10:28', 'SN INP3256', 'SN Technologie .NET', '1301289776', 'ACTIVE', 'ACTIVE', 205, 205, 8675);
INSERT INTO `evaluation` VALUES (8799, '2020-01-20 17:10:33', '2020-12-08 23:00:00', '2020-01-20 17:10:34', 'CC INP3205', 'CC Ingénierie du Génie Logiciel', '-351284295', 'ACTIVE', 'ACTIVE', 205, 205, 8676);
INSERT INTO `evaluation` VALUES (8800, '2020-01-20 17:10:40', '2020-01-07 23:00:00', '2020-01-20 17:10:41', 'TP INP3205', 'TP Ingénierie du Génie Logiciel', '478553185', 'ACTIVE', 'ACTIVE', 205, 205, 8677);
INSERT INTO `evaluation` VALUES (8851, '2020-01-20 17:10:47', '2019-11-15 23:00:00', '2020-01-20 17:10:50', 'SN INP3205', 'SN Ingénierie du Génie Logiciel', '-430712900', 'ACTIVE', 'ACTIVE', 205, 205, 8678);
INSERT INTO `evaluation` VALUES (8852, '2020-01-20 17:10:54', '2020-12-08 23:00:00', '2020-01-20 17:10:56', 'CC INP3215', 'CC Introduction au Big Data', '-1361509129', 'ACTIVE', 'ACTIVE', 205, 205, 8679);
INSERT INTO `evaluation` VALUES (8853, '2020-01-20 17:11:01', '2020-01-07 23:00:00', '2020-01-20 17:11:02', 'TP INP3215', 'TP Introduction au Big Data', '-2136165320', 'ACTIVE', 'ACTIVE', 205, 205, 8680);
INSERT INTO `evaluation` VALUES (8854, '2020-01-20 17:11:07', '2019-11-15 23:00:00', '2020-01-20 17:11:08', 'SN INP3215', 'SN Introduction au Big Data', '-751536222', 'ACTIVE', 'ACTIVE', 205, 205, 8681);
INSERT INTO `evaluation` VALUES (8855, '2020-01-20 17:11:13', '2020-12-08 23:00:00', '2020-01-20 17:11:15', 'CC INP3225', 'CC Sécurité avancée des réseaux et systèmes', '-1751971588', 'ACTIVE', 'ACTIVE', 205, 205, 8682);
INSERT INTO `evaluation` VALUES (8856, '2020-01-20 17:11:20', '2020-01-07 23:00:00', '2020-01-20 17:11:22', 'TP INP3225', 'TP Sécurité avancée des réseaux et systèmes', '257558908', 'ACTIVE', 'ACTIVE', 205, 205, 8683);
INSERT INTO `evaluation` VALUES (8857, '2020-01-20 17:11:28', '2019-11-15 23:00:00', '2020-01-20 17:11:29', 'SN INP3225', 'SN Sécurité avancée des réseaux et systèmes', '-23336725', 'ACTIVE', 'ACTIVE', 205, 205, 8684);
INSERT INTO `evaluation` VALUES (8858, '2020-01-20 17:11:35', '2020-12-08 23:00:00', '2020-01-20 17:11:37', 'CC INP3286', 'CC Conception et Développement d’applications pour mobiles', '-1501751494', 'ACTIVE', 'ACTIVE', 205, 205, 8685);
INSERT INTO `evaluation` VALUES (8859, '2020-01-20 17:11:44', '2020-01-07 23:00:00', '2020-01-20 17:11:45', 'TP INP3286', 'TP Conception et Développement d’applications pour mobiles', '1363798593', 'ACTIVE', 'ACTIVE', 205, 205, 8686);
INSERT INTO `evaluation` VALUES (8860, '2020-01-20 17:11:50', '2019-11-15 23:00:00', '2020-01-20 17:11:52', 'SN INP3286', 'SN Conception et Développement d’applications pour mobiles', '475714317', 'ACTIVE', 'ACTIVE', 205, 205, 8687);
INSERT INTO `evaluation` VALUES (8861, '2020-01-20 17:11:57', '2020-12-08 23:00:00', '2020-01-20 17:11:58', 'CC MAP3065', 'CC Recherche opérationnelle et aide à la décision', '171531928', 'ACTIVE', 'ACTIVE', 205, 205, 8688);
INSERT INTO `evaluation` VALUES (8862, '2020-01-20 17:12:04', '2020-01-07 23:00:00', '2020-01-20 17:12:05', 'SN MAP3065', 'SN Recherche opérationnelle et aide à la décision', '-1822780039', 'ACTIVE', 'ACTIVE', 205, 205, 8689);
INSERT INTO `evaluation` VALUES (8863, '2020-01-20 17:12:11', '2019-11-15 23:00:00', '2020-01-20 17:12:13', 'CC COP3025', 'CC Fondamentaux de la communication', '-826117107', 'ACTIVE', 'ACTIVE', 205, 205, 8690);
INSERT INTO `evaluation` VALUES (8864, '2020-01-20 17:12:19', '2020-01-07 23:00:00', '2020-01-20 17:12:20', 'SN COP3025', 'SN Fondamentaux de la communication', '-1488890557', 'ACTIVE', 'ACTIVE', 205, 205, 8691);
INSERT INTO `evaluation` VALUES (8865, '2020-01-20 17:12:26', '2019-11-15 23:00:00', '2020-01-20 17:12:27', 'CC LAP3045', 'CC Anglais pratique', '-437140824', 'ACTIVE', 'ACTIVE', 205, 205, 8692);
INSERT INTO `evaluation` VALUES (8866, '2020-01-20 17:12:32', '2020-01-07 23:00:00', '2020-01-20 17:12:33', 'SN LAP3045', 'SN Anglais pratique', '-1415333398', 'ACTIVE', 'ACTIVE', 205, 205, 8693);
INSERT INTO `evaluation` VALUES (8867, '2020-01-20 17:12:38', '2019-11-15 23:00:00', '2020-01-20 17:12:39', 'CC HUP3055', 'CC Sagesse et science1', '-1221530378', 'ACTIVE', 'ACTIVE', 205, 205, 8694);
INSERT INTO `evaluation` VALUES (8868, '2020-01-20 17:12:45', '2020-01-07 23:00:00', '2020-01-20 17:12:47', 'SN HUP3055', 'SN Sagesse et science1', '-1725654914', 'ACTIVE', 'ACTIVE', 205, 205, 8695);
INSERT INTO `evaluation` VALUES (8869, '2020-01-20 17:12:52', '2019-11-15 23:00:00', '2020-01-20 17:12:53', 'CC MAT2033', 'CC Analyse Avancée', '-1995394421', 'ACTIVE', 'ACTIVE', 205, 205, 8696);
INSERT INTO `evaluation` VALUES (8870, '2020-01-20 17:12:58', '2020-01-07 23:00:00', '2020-01-20 17:13:00', 'SN MAT2033', 'SN Analyse Avancée', '264124413', 'ACTIVE', 'ACTIVE', 205, 205, 8697);
INSERT INTO `evaluation` VALUES (8871, '2020-01-20 17:13:05', '2019-11-15 23:00:00', '2020-01-20 17:13:06', 'CC MAT2043', 'CC Probabilité et Statistique', '-81911682', 'ACTIVE', 'ACTIVE', 205, 205, 8698);
INSERT INTO `evaluation` VALUES (8872, '2020-01-20 17:13:11', '2020-01-07 23:00:00', '2020-01-20 17:13:12', 'SN MAT2043', 'SN Probabilité et Statistique', '1136153751', 'ACTIVE', 'ACTIVE', 205, 205, 8699);
INSERT INTO `evaluation` VALUES (8873, '2020-01-20 17:13:16', '2019-11-15 23:00:00', '2020-01-20 17:13:17', 'CC INF2023', 'CC Langage C', '1225855878', 'ACTIVE', 'ACTIVE', 205, 205, 8700);
INSERT INTO `evaluation` VALUES (8874, '2020-01-20 17:13:22', '2020-01-07 23:00:00', '2020-01-20 17:13:23', 'TP INF2023', 'TP Langage C', '-1336644623', 'ACTIVE', 'ACTIVE', 205, 205, 8701);
INSERT INTO `evaluation` VALUES (8875, '2020-01-20 17:13:28', '2019-11-15 23:00:00', '2020-01-20 17:13:29', 'SN INF2023', 'SN Langage C', '-1271268863', 'ACTIVE', 'ACTIVE', 205, 205, 8702);
INSERT INTO `evaluation` VALUES (8876, '2020-01-20 17:13:34', '2020-12-08 23:00:00', '2020-01-20 17:13:36', 'CC INF2033', 'CC Réseaux Ing2', '-1047136445', 'ACTIVE', 'ACTIVE', 205, 205, 8703);
INSERT INTO `evaluation` VALUES (8877, '2020-01-20 17:13:40', '2020-01-07 23:00:00', '2020-01-20 17:13:42', 'SN INF2033', 'SN Réseaux Ing2', '-584706602', 'ACTIVE', 'ACTIVE', 205, 205, 8704);
INSERT INTO `evaluation` VALUES (8878, '2020-01-20 17:13:46', '2019-11-15 23:00:00', '2020-01-20 17:13:47', 'CC LAC2033', 'CC Anglais Ing2', '-464247713', 'ACTIVE', 'ACTIVE', 205, 205, 8705);
INSERT INTO `evaluation` VALUES (8879, '2020-01-20 17:13:52', '2020-01-07 23:00:00', '2020-01-20 17:13:54', 'SN LAC2033', 'SN Anglais Ing2', '1607910007', 'ACTIVE', 'ACTIVE', 205, 205, 8706);
INSERT INTO `evaluation` VALUES (8880, '2020-01-20 17:13:59', '2019-11-15 23:00:00', '2020-01-20 17:14:00', 'CC ECO2013', 'CC Économie générale', '1838884568', 'ACTIVE', 'ACTIVE', 205, 205, 8707);
INSERT INTO `evaluation` VALUES (8881, '2020-01-20 17:14:05', '2020-01-07 23:00:00', '2020-01-20 17:14:06', 'SN ECO2013', 'SN Économie générale', '1681265021', 'ACTIVE', 'ACTIVE', 205, 205, 8708);
INSERT INTO `evaluation` VALUES (8882, '2020-01-20 17:14:10', '2019-11-15 23:00:00', '2020-01-20 17:14:12', 'CC HUM2033', 'CC Ethique et développement1 Ing2', '416023990', 'ACTIVE', 'ACTIVE', 205, 205, 8709);
INSERT INTO `evaluation` VALUES (8883, '2020-01-20 17:14:17', '2020-01-07 23:00:00', '2020-01-20 17:14:18', 'SN HUM2033', 'SN Ethique et développement1 Ing2', '1521457287', 'ACTIVE', 'ACTIVE', 205, 205, 8710);
INSERT INTO `evaluation` VALUES (8884, '2020-01-20 17:14:23', '2019-11-15 23:00:00', '2020-01-20 17:14:24', 'CC PHY2033', 'CC Base en électronique', '727913383', 'ACTIVE', 'ACTIVE', 205, 205, 8711);
INSERT INTO `evaluation` VALUES (8885, '2020-01-20 17:14:29', '2020-01-07 23:00:00', '2020-01-20 17:14:31', 'TP PHY2033', 'TP Base en électronique', '1106000849', 'ACTIVE', 'ACTIVE', 205, 205, 8712);
INSERT INTO `evaluation` VALUES (8886, '2020-01-20 17:14:36', '2019-11-15 23:00:00', '2020-01-20 17:14:37', 'SN PHY2033', 'SN Base en électronique', '-1916737675', 'ACTIVE', 'ACTIVE', 205, 205, 8713);
INSERT INTO `evaluation` VALUES (8887, '2020-01-20 17:14:46', '2020-12-08 23:00:00', '2020-01-20 17:14:47', 'CC INP2103', 'CC Algorithmique et Complexité', '-1177696039', 'ACTIVE', 'ACTIVE', 205, 205, 8714);
INSERT INTO `evaluation` VALUES (8888, '2020-01-20 17:14:51', '2020-01-07 23:00:00', '2020-01-20 17:14:53', 'TP INP2103', 'TP Algorithmique et Complexité', '942415593', 'ACTIVE', 'ACTIVE', 205, 205, 8715);
INSERT INTO `evaluation` VALUES (8889, '2020-01-20 17:14:58', '2019-11-15 23:00:00', '2020-01-20 17:14:59', 'SN INP2103', 'SN Algorithmique et Complexité', '767082708', 'ACTIVE', 'ACTIVE', 205, 205, 8716);
INSERT INTO `evaluation` VALUES (8890, '2020-01-20 17:15:05', '2020-12-08 23:00:00', '2020-01-20 17:15:06', 'CC INP2113', 'CC Modélisation des Systèmes d\'Information(UML)', '-1749105392', 'ACTIVE', 'ACTIVE', 205, 205, 8717);
INSERT INTO `evaluation` VALUES (8891, '2020-01-20 17:15:11', '2020-01-07 23:00:00', '2020-01-20 17:15:13', 'SN INP2113', 'SN Modélisation des Systèmes d\'Information(UML)', '-1679679712', 'ACTIVE', 'ACTIVE', 205, 205, 8718);
INSERT INTO `evaluation` VALUES (8892, '2020-01-20 17:15:19', '2019-11-15 23:00:00', '2020-01-20 17:15:21', 'CC MAP2043', 'CC Algèbre linaire I', '705652158', 'ACTIVE', 'ACTIVE', 205, 205, 8719);
INSERT INTO `evaluation` VALUES (8893, '2020-01-20 17:15:30', '2020-01-07 23:00:00', '2020-01-20 17:15:33', 'SN MAP2043', 'SN Algèbre linaire I', '-586399441', 'ACTIVE', 'ACTIVE', 205, 205, 8720);
INSERT INTO `evaluation` VALUES (8894, '2020-01-20 17:15:40', '2019-11-15 23:00:00', '2020-01-20 17:15:43', 'CC INP2123', 'CC Programmation Orientée Objet II', '-206181660', 'ACTIVE', 'ACTIVE', 205, 205, 8721);
INSERT INTO `evaluation` VALUES (8895, '2020-01-20 17:15:49', '2020-01-07 23:00:00', '2020-01-20 17:15:50', 'TP INP2123', 'TP Programmation Orientée Objet II', '1767239798', 'ACTIVE', 'ACTIVE', 205, 205, 8722);
INSERT INTO `evaluation` VALUES (8896, '2020-01-20 17:15:55', '2019-11-15 23:00:00', '2020-01-20 17:15:56', 'SN INP2123', 'SN Programmation Orientée Objet II', '1571030022', 'ACTIVE', 'ACTIVE', 205, 205, 8723);
INSERT INTO `evaluation` VALUES (8897, '2020-01-20 17:16:04', '2020-12-08 23:00:00', '2020-01-20 17:16:07', 'CC INP2133', 'CC Introduction aux Base de données', '879879074', 'ACTIVE', 'ACTIVE', 205, 205, 8724);
INSERT INTO `evaluation` VALUES (8898, '2020-01-20 17:16:15', '2020-01-07 23:00:00', '2020-01-20 17:16:17', 'TP INP2133', 'TP Introduction aux Base de données', '1465723582', 'ACTIVE', 'ACTIVE', 205, 205, 8725);
INSERT INTO `evaluation` VALUES (8899, '2020-01-20 17:16:22', '2019-11-15 23:00:00', '2020-01-20 17:16:24', 'SN INP2133', 'SN Introduction aux Base de données', '893530919', 'ACTIVE', 'ACTIVE', 205, 205, 8726);
INSERT INTO `evaluation` VALUES (8900, '2020-01-20 17:16:33', '2020-12-08 23:00:00', '2020-01-20 17:16:34', 'CC REP2013', 'CC Introduction aux Réseaux informatiques', '2090336550', 'ACTIVE', 'ACTIVE', 205, 205, 8727);
INSERT INTO `evaluation` VALUES (8901, '2020-01-20 17:16:38', '2020-01-07 23:00:00', '2020-01-20 17:16:41', 'TP REP2013', 'TP Introduction aux Réseaux informatiques', '33100960', 'ACTIVE', 'ACTIVE', 205, 205, 8728);
INSERT INTO `evaluation` VALUES (8902, '2020-01-20 17:16:51', '2019-11-15 23:00:00', '2020-01-20 17:16:52', 'SN REP2013', 'SN Introduction aux Réseaux informatiques', '-1164826997', 'ACTIVE', 'ACTIVE', 205, 205, 8729);
INSERT INTO `evaluation` VALUES (8903, '2020-01-20 17:16:56', '2020-12-08 23:00:00', '2020-01-20 17:16:57', 'CC INP2143', 'CC Systèmes d\'exploitation', '815117581', 'ACTIVE', 'ACTIVE', 205, 205, 8730);
INSERT INTO `evaluation` VALUES (8904, '2020-01-20 17:17:05', '2020-01-07 23:00:00', '2020-01-20 17:17:06', 'TP INP2143', 'TP Systèmes d\'exploitation', '538872966', 'ACTIVE', 'ACTIVE', 205, 205, 8731);
INSERT INTO `evaluation` VALUES (8905, '2020-01-20 17:17:13', '2019-11-15 23:00:00', '2020-01-20 17:17:14', 'SN INP2143', 'SN Systèmes d\'exploitation', '1697548789', 'ACTIVE', 'ACTIVE', 205, 205, 8732);
INSERT INTO `evaluation` VALUES (8906, '2020-01-20 17:17:21', '2020-12-08 23:00:00', '2020-01-20 17:17:22', 'CC LAP2033', 'CC Anglais niveau pratique B1/B2', '-419068338', 'ACTIVE', 'ACTIVE', 205, 205, 8733);
INSERT INTO `evaluation` VALUES (8907, '2020-01-20 17:17:28', '2020-01-07 23:00:00', '2020-01-20 17:17:31', 'SN LAP2033', 'SN Anglais niveau pratique B1/B2', '1934279860', 'ACTIVE', 'ACTIVE', 205, 205, 8734);
INSERT INTO `evaluation` VALUES (8908, '2020-01-20 17:17:36', '2019-11-15 23:00:00', '2020-01-20 17:17:38', 'CC HUP2033', 'CC Ethique et Développement I', '-1078465198', 'ACTIVE', 'ACTIVE', 205, 205, 8735);
INSERT INTO `evaluation` VALUES (8909, '2020-01-20 17:17:50', '2020-01-07 23:00:00', '2020-01-20 17:17:54', 'SN HUP2033', 'SN Ethique et Développement I', '1349426389', 'ACTIVE', 'ACTIVE', 205, 205, 8736);
INSERT INTO `evaluation` VALUES (8910, '2020-01-20 17:18:01', '2019-11-15 23:00:00', '2020-01-20 17:18:02', 'CC INP1011', 'CC Introduction aux systèmes d\'information', '-212018553', 'ACTIVE', 'ACTIVE', 205, 205, 8737);
INSERT INTO `evaluation` VALUES (8911, '2020-01-20 17:18:07', '2020-01-07 23:00:00', '2020-01-20 17:18:08', 'SN INP1011', 'SN Introduction aux systèmes d\'information', '-1092550160', 'ACTIVE', 'ACTIVE', 205, 205, 8738);
INSERT INTO `evaluation` VALUES (8912, '2020-01-20 17:22:59', '2019-11-15 23:00:00', '2020-01-20 17:23:00', 'CC INP1021', 'CC Architecture des ordinateurs', '1344162739', 'ACTIVE', 'ACTIVE', 205, 205, 8739);
INSERT INTO `evaluation` VALUES (8913, '2020-01-20 17:23:04', '2020-01-07 23:00:00', '2020-01-20 17:23:05', 'SN INP1021', 'SN Architecture des ordinateurs', '-1690785845', 'ACTIVE', 'ACTIVE', 205, 205, 8740);
INSERT INTO `evaluation` VALUES (8914, '2020-01-20 17:23:09', '2019-11-15 23:00:00', '2020-01-20 17:23:10', 'CC INP1031', 'CC Programmation Web I', '1810573077', 'ACTIVE', 'ACTIVE', 205, 205, 8741);
INSERT INTO `evaluation` VALUES (8915, '2020-01-20 17:23:13', '2020-01-07 23:00:00', '2020-01-20 17:23:14', 'SN INP1031', 'SN Programmation Web I', '-2033988708', 'ACTIVE', 'ACTIVE', 205, 205, 8742);
INSERT INTO `evaluation` VALUES (8916, '2020-01-20 17:23:18', '2019-11-15 23:00:00', '2020-01-20 17:23:19', 'CC INP1041', 'CC Introduction aux algorithmes L1', '1849572955', 'ACTIVE', 'ACTIVE', 205, 205, 8743);
INSERT INTO `evaluation` VALUES (8917, '2020-01-20 17:23:23', '2020-01-07 23:00:00', '2020-01-20 17:23:24', 'TP INP1041', 'TP Introduction aux algorithmes L1', '-660031061', 'ACTIVE', 'ACTIVE', 205, 205, 8744);
INSERT INTO `evaluation` VALUES (8918, '2020-01-20 17:23:29', '2019-11-15 23:00:00', '2020-01-20 17:23:30', 'SN INP1041', 'SN Introduction aux algorithmes L1', '-1180712126', 'ACTIVE', 'ACTIVE', 205, 205, 8745);
INSERT INTO `evaluation` VALUES (8919, '2020-01-20 17:23:33', '2020-12-08 23:00:00', '2020-01-20 17:23:34', 'CC MAP1011', 'CC Mathématiques pour l\'informatique', '-6245197', 'ACTIVE', 'ACTIVE', 205, 205, 8746);
INSERT INTO `evaluation` VALUES (8920, '2020-01-20 17:23:38', '2020-01-07 23:00:00', '2020-01-20 17:23:39', 'SN MAP1011', 'SN Mathématiques pour l\'informatique', '-1073074342', 'ACTIVE', 'ACTIVE', 205, 205, 8747);
INSERT INTO `evaluation` VALUES (8921, '2020-01-20 17:23:42', '2019-11-15 23:00:00', '2020-01-20 17:23:43', 'CC MAP1021', 'CC Mathématiques discrètes I', '1293497935', 'ACTIVE', 'ACTIVE', 205, 205, 8748);
INSERT INTO `evaluation` VALUES (8922, '2020-01-20 17:23:47', '2020-01-07 23:00:00', '2020-01-20 17:23:48', 'SN MAP1021', 'SN Mathématiques discrètes I', '567720448', 'ACTIVE', 'ACTIVE', 205, 205, 8749);
INSERT INTO `evaluation` VALUES (8923, '2020-01-20 17:23:52', '2019-11-15 23:00:00', '2020-01-20 17:23:53', 'CC LAP1011', 'CC Anglais Remise à niveau A2 L1', '104338703', 'ACTIVE', 'ACTIVE', 205, 205, 8750);
INSERT INTO `evaluation` VALUES (8924, '2020-01-20 17:23:57', '2020-01-07 23:00:00', '2020-01-20 17:23:58', 'SN LAP1011', 'SN Anglais Remise à niveau A2 L1', '-2107797243', 'ACTIVE', 'ACTIVE', 205, 205, 8751);
INSERT INTO `evaluation` VALUES (8925, '2020-01-20 17:24:02', '2019-11-15 23:00:00', '2020-01-20 17:24:02', 'CC HUP1011', 'CC Réflexion Humaine1 L1', '1752240597', 'ACTIVE', 'ACTIVE', 205, 205, 8752);
INSERT INTO `evaluation` VALUES (8926, '2020-01-20 17:24:07', '2020-01-07 23:00:00', '2020-01-20 17:24:08', 'SN HUP1011', 'SN Réflexion Humaine1 L1', '112418389', 'ACTIVE', 'ACTIVE', 205, 205, 8753);
INSERT INTO `evaluation` VALUES (8927, '2020-01-20 17:24:11', '2019-11-15 23:00:00', '2020-01-20 17:24:12', 'CC ECP1011', 'CC Enjeux Economie Numérique', '1191753502', 'ACTIVE', 'ACTIVE', 205, 205, 8754);
INSERT INTO `evaluation` VALUES (8928, '2020-01-20 17:24:16', '2020-01-07 23:00:00', '2020-01-20 17:24:17', 'SN ECP1011', 'SN Enjeux Economie Numérique', '-2032680562', 'ACTIVE', 'ACTIVE', 205, 205, 8755);
INSERT INTO `evaluation` VALUES (8929, '2020-01-20 17:24:21', '2019-11-15 23:00:00', '2020-01-20 17:24:21', 'CC MAT1021', 'CC Analyse ING1', '-716879733', 'ACTIVE', 'ACTIVE', 205, 205, 8756);
INSERT INTO `evaluation` VALUES (8930, '2020-01-20 17:24:25', '2020-01-07 23:00:00', '2020-01-20 17:24:26', 'SN MAT1021', 'SN Analyse ING1', '-728506514', 'ACTIVE', 'ACTIVE', 205, 205, 8757);
INSERT INTO `evaluation` VALUES (8931, '2020-01-20 17:24:30', '2019-11-15 23:00:00', '2020-01-20 17:24:31', 'CC MAT1011', 'CC ALGEBRE ING1', '2140566719', 'ACTIVE', 'ACTIVE', 205, 205, 8758);
INSERT INTO `evaluation` VALUES (8932, '2020-01-20 17:24:35', '2020-01-07 23:00:00', '2020-01-20 17:24:35', 'SN MAT1011', 'SN ALGEBRE ING1', '-1023482183', 'ACTIVE', 'ACTIVE', 205, 205, 8759);
INSERT INTO `evaluation` VALUES (8933, '2020-01-20 17:24:39', '2019-11-15 23:00:00', '2020-01-20 17:24:40', 'CC PHY1011', 'CC Mecanique', '-733187533', 'ACTIVE', 'ACTIVE', 205, 205, 8760);
INSERT INTO `evaluation` VALUES (8934, '2020-01-20 17:24:44', '2020-01-07 23:00:00', '2020-01-20 17:24:45', 'SN PHY1011', 'SN Mecanique', '-1956203400', 'ACTIVE', 'ACTIVE', 205, 205, 8761);
INSERT INTO `evaluation` VALUES (8935, '2020-01-20 17:24:49', '2019-11-15 23:00:00', '2020-01-20 17:24:50', 'CC PHY1021', 'CC Electrocinétique', '-1760032687', 'ACTIVE', 'ACTIVE', 205, 205, 8762);
INSERT INTO `evaluation` VALUES (8936, '2020-01-20 17:24:54', '2020-01-07 23:00:00', '2020-01-20 17:24:55', 'SN PHY1021', 'SN Electrocinétique', '301234328', 'ACTIVE', 'ACTIVE', 205, 205, 8763);
INSERT INTO `evaluation` VALUES (8937, '2020-01-20 17:24:59', '2019-11-15 23:00:00', '2020-01-20 17:25:00', 'CC ING1011', 'CC Projet Arduno', '1477575809', 'ACTIVE', 'ACTIVE', 205, 205, 8764);
INSERT INTO `evaluation` VALUES (8938, '2020-01-20 17:25:04', '2020-01-07 23:00:00', '2020-01-20 17:25:05', 'SN ING1011', 'SN Projet Arduno', '-2103462610', 'ACTIVE', 'ACTIVE', 205, 205, 8765);
INSERT INTO `evaluation` VALUES (8939, '2020-01-20 17:25:09', '2019-11-15 23:00:00', '2020-01-20 17:25:10', 'CC PHY1031', 'CC MESURE', '-1088499787', 'ACTIVE', 'ACTIVE', 205, 205, 8766);
INSERT INTO `evaluation` VALUES (8940, '2020-01-20 17:25:14', '2020-01-07 23:00:00', '2020-01-20 17:25:14', 'TP PHY1031', 'TP MESURE', '1787583552', 'ACTIVE', 'ACTIVE', 205, 205, 8767);
INSERT INTO `evaluation` VALUES (8941, '2020-01-20 17:25:18', '2019-11-15 23:00:00', '2020-01-20 17:25:19', 'SN PHY1031', 'SN MESURE', '1840977794', 'ACTIVE', 'ACTIVE', 205, 205, 8768);
INSERT INTO `evaluation` VALUES (8942, '2020-01-20 17:25:23', '2020-12-08 23:00:00', '2020-01-20 17:25:24', 'CC LAC1011', 'CC Anglais ING1', '-878495990', 'ACTIVE', 'ACTIVE', 205, 205, 8769);
INSERT INTO `evaluation` VALUES (8943, '2020-01-20 17:25:28', '2020-01-07 23:00:00', '2020-01-20 17:25:29', 'SN LAC1011', 'SN Anglais ING1', '778261604', 'ACTIVE', 'ACTIVE', 205, 205, 8770);
INSERT INTO `evaluation` VALUES (8944, '2020-01-20 17:25:33', '2019-11-15 23:00:00', '2020-01-20 17:25:34', 'CC COM1011', 'CC Communication Ing1', '-642998175', 'ACTIVE', 'ACTIVE', 205, 205, 8771);
INSERT INTO `evaluation` VALUES (8945, '2020-01-20 17:25:38', '2020-01-07 23:00:00', '2020-01-20 17:25:39', 'SN COM1011', 'SN Communication Ing1', '-1324367573', 'ACTIVE', 'ACTIVE', 205, 205, 8772);
INSERT INTO `evaluation` VALUES (8946, '2020-01-20 17:25:43', '2019-11-15 23:00:00', '2020-01-20 17:25:44', 'CC HUM1011', 'CC Reflexion Humaine ing1', '455383984', 'ACTIVE', 'ACTIVE', 205, 205, 8773);
INSERT INTO `evaluation` VALUES (8947, '2020-01-20 17:25:48', '2020-01-07 23:00:00', '2020-01-20 17:25:49', 'SN HUM1011', 'SN Reflexion Humaine ing1', '766958616', 'ACTIVE', 'ACTIVE', 205, 205, 8774);

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
INSERT INTO `filiere` VALUES (52, '2019-08-27 19:10:39', '2020-01-10 12:18:39', 'Licence en Informatique', 'Licence Professionnelle', '-279441950', 'ACTIVE', 1, 205);

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
  UNIQUE INDEX `code_module`(`code_module`) USING BTREE,
  INDEX `FK_Module_modificateur`(`modificateur`) USING BTREE,
  INDEX `FK_Module_createur`(`createur`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES (1904, 'LP213', '2020-01-17 14:13:00', '2020-01-17 14:13:01', '', 'Reseaux et Systèmes d\'exploitation', '-340170089', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (1128, 'LP114', '2020-01-16 09:15:44', '2020-01-16 09:15:45', '', 'Communication Bilingue et Réflexion Humaine', '-565162779', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (1127, 'LP113', '2020-01-16 09:15:20', '2020-01-16 09:15:21', '', 'Mathématiques appliquées pour l’informatique', '-735770394', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (1126, 'LP112', '2020-01-16 09:14:50', '2020-01-16 09:14:51', '', 'Economie Numérique, Algorithmique et Programmation Web1', '1970613078', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (1125, 'LP111', '2020-01-16 09:14:22', '2020-01-16 09:14:23', '', 'Systèmes d\'Information et Architecture', '1054236145', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (1115, 'ING125', '2020-01-16 09:02:14', '2020-01-16 09:02:17', '', 'Langue, Ethique et Stage', '-25319864', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (1114, 'ING124', '2020-01-16 09:00:38', '2020-01-16 09:00:40', 'Economie générale', 'Économie générale pour l’ingénieur', '731970697', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (1113, 'ING123', '2020-01-16 08:59:26', '2020-01-16 08:59:28', '', 'Base de l\'électronique', '2093703102', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (1111, 'ING121', '2020-01-16 08:56:33', '2020-01-16 08:56:34', 'Math\nproba\nstat', 'Mathématique', '-1193270494', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (1112, 'ING122', '2020-01-16 08:58:19', '2020-01-16 08:58:23', '', 'Programmation et Réseaux', '-362892538', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (852, 'ING111', '2020-01-15 15:07:47', '2020-01-16 08:45:33', '', 'Bases mathématiques pour l’ingénieur', '549561658', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (853, 'ING112', '2020-01-15 15:08:34', '2020-01-15 15:08:35', '', 'Bases de physique pour l’ingénieur', '-951211051', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (854, 'ING113', '2020-01-15 15:09:57', '2020-01-16 08:46:05', 'Mesure physique et Arduno', 'projet mécatronique', '936533181', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (855, 'ING114', '2020-01-15 15:11:19', '2020-01-16 08:36:51', 'Réflexion humaine\nAnglais\nCommunication', 'Communication et Réflexion humaine', '-1996885742', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (1911, 'LP315', '2020-01-17 14:19:54', '2020-01-17 14:19:55', '', 'Communication et Sagesse', '-675159258', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (1910, 'LP314', '2020-01-17 14:18:53', '2020-01-17 14:18:54', '', 'Outils de management', '-1051113879', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (1909, 'LP313', '2020-01-17 14:18:05', '2020-01-17 14:18:06', '', 'Conception, développement et Sécurité', '1267568091', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (1908, 'LP312', '2020-01-17 14:17:19', '2020-01-17 14:17:20', '', 'Ingénierie du Logiciel et Big Data', '1161261283', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (1907, 'LP311', '2020-01-17 14:16:19', '2020-01-17 14:16:20', '', 'Administration de Base de données et Technologie.Net', '-1522752342', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (1906, 'LP214', '2020-01-17 14:14:15', '2020-01-17 14:14:16', '', 'Communication et Réflexion Humaine', '-1570233002', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (1903, 'LP211', '2020-01-17 14:09:27', '2020-01-17 14:09:28', '', 'Algèbre, POO et Base de Données', '-1114351919', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (1902, 'LP212', '2020-01-17 14:08:31', '2020-01-17 19:09:07', '', 'Complexité et modélisation UML', '1604744439', 'ACTIVE', 205, 101);
INSERT INTO `module` VALUES (1452, 'ING351', '2020-01-17 11:34:55', '2020-01-17 11:39:30', '', 'Théorie et codage de l’information', '-1292601241', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (1457, 'ING355', '2020-01-17 11:42:26', '2020-01-17 11:42:27', '', 'Conduite et gestion de projets informatiques', '951576204', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (1454, 'ING352', '2020-01-17 11:36:07', '2020-01-17 11:41:14', '', 'Base de données', '1906998586', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (1455, 'ING353', '2020-01-17 11:36:44', '2020-01-17 11:41:27', '', 'Modélisation pour la conception des Systèmes d\'Information', '-145052350', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (1456, 'ING354', '2020-01-17 11:37:22', '2020-01-17 11:38:05', '', 'Principe de la programmation orientée objet', '-2055882428', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (1458, 'ING356', '2020-01-17 11:42:51', '2020-01-17 11:42:53', '', 'Anglais', '1335968245', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (1459, 'ING357', '2020-01-17 11:43:31', '2020-01-17 11:44:26', '', 'Technologies du Web', '639108751', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (1460, 'ING358', '2020-01-17 11:44:11', '2020-01-17 11:44:12', '', 'Sagesse et sciences', '1323325109', 'ACTIVE', 205, 205);
INSERT INTO `module` VALUES (1461, 'ING359', '2020-01-17 11:45:11', '2020-01-17 11:45:12', '', 'Introduction à la sécurité et à l’administration des réseaux', '1537978414', 'ACTIVE', 205, 205);

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
  `est_inscrit` bigint(20) NOT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `signature`(`signature`) USING BTREE,
  INDEX `FK_note_est_inscrit`(`est_inscrit`) USING BTREE,
  INDEX `FK_note_createur`(`createur`) USING BTREE,
  INDEX `FK_note_modificateur`(`modificateur`) USING BTREE,
  INDEX `FK_note_evaluation`(`evaluation`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10627 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of note
-- ----------------------------
INSERT INTO `note` VALUES (8603, '2020-01-22 11:19:41', '2020-01-22 11:19:41', 'CC', 'ALGEBRE ING1', 0, '-305840605', 'ACTIVE', 8.5, 101, 8931, 101, 2251);
INSERT INTO `note` VALUES (8604, '2020-01-22 11:19:41', '2020-01-22 11:19:41', 'SN', 'ALGEBRE ING1', 0, '1801824113', 'ACTIVE', 10, 101, 8932, 101, 2251);
INSERT INTO `note` VALUES (8605, '2020-01-22 11:19:41', '2020-01-22 11:19:41', 'CC', 'ANALYSE ING1', 0, '336854806', 'ACTIVE', 10, 101, 8929, 101, 1936);
INSERT INTO `note` VALUES (8606, '2020-01-22 11:19:41', '2020-01-22 11:19:41', 'SN', 'ANALYSE ING1', 0, '1339446687', 'ACTIVE', 9.5, 101, 8930, 101, 1936);
INSERT INTO `note` VALUES (8607, '2020-01-22 11:19:41', '2020-01-22 11:19:41', 'CC', 'MECANIQUE', 0, '989307601', 'ACTIVE', 9.5, 101, 8933, 101, 2390);
INSERT INTO `note` VALUES (8608, '2020-01-22 11:19:41', '2020-01-22 11:19:41', 'SN', 'MECANIQUE', 0, '226199841', 'ACTIVE', 7, 101, 8934, 101, 2390);
INSERT INTO `note` VALUES (8609, '2020-01-22 11:19:41', '2020-01-22 11:19:42', 'CC', 'ELECTROCINÉTIQUE', 0, '-1039487045', 'ACTIVE', 11, 101, 8935, 101, 2453);
INSERT INTO `note` VALUES (8610, '2020-01-22 11:19:42', '2020-01-22 11:19:42', 'SN', 'ELECTROCINÉTIQUE', 0, '338008934', 'ACTIVE', 12.5, 101, 8936, 101, 2453);
INSERT INTO `note` VALUES (8611, '2020-01-22 11:19:42', '2020-01-22 11:19:42', 'CC', 'MESURE', 0, '-909068701', 'ACTIVE', 9, 101, 8939, 101, 2579);
INSERT INTO `note` VALUES (8612, '2020-01-22 11:19:42', '2020-01-22 11:19:42', 'TP', 'MESURE', 0, '1555877035', 'ACTIVE', 15.88, 101, 8940, 101, 2579);
INSERT INTO `note` VALUES (8613, '2020-01-22 11:19:42', '2020-01-22 11:19:42', 'SN', 'MESURE', 0, '151821175', 'ACTIVE', 13.75, 101, 8941, 101, 2579);
INSERT INTO `note` VALUES (8614, '2020-01-22 11:19:42', '2020-01-22 11:19:42', 'CC', 'PROJET ARDUNO', 0, '-1544561680', 'ACTIVE', 16.33, 101, 8937, 101, 2516);
INSERT INTO `note` VALUES (8615, '2020-01-22 11:19:42', '2020-01-22 11:19:42', 'SN', 'PROJET ARDUNO', 0, '-784359775', 'ACTIVE', 17.5, 101, 8938, 101, 2516);
INSERT INTO `note` VALUES (8616, '2020-01-22 11:19:42', '2020-01-22 11:19:42', 'CC', 'COMMUNICATION ING1', 0, '-1343406918', 'ACTIVE', 17, 101, 8944, 101, 2642);
INSERT INTO `note` VALUES (8617, '2020-01-22 11:19:42', '2020-01-22 11:19:42', 'SN', 'COMMUNICATION ING1', 0, '19302250', 'ACTIVE', 11.5, 101, 8945, 101, 2642);
INSERT INTO `note` VALUES (8618, '2020-01-22 11:19:42', '2020-01-22 11:19:43', 'CC', 'REFLEXION HUMAINE ING1', 0, '822297217', 'ACTIVE', 10.5, 101, 8946, 101, 2705);
INSERT INTO `note` VALUES (8619, '2020-01-22 11:19:43', '2020-01-22 11:19:43', 'SN', 'REFLEXION HUMAINE ING1', 0, '-461225129', 'ACTIVE', 12, 101, 8947, 101, 2705);
INSERT INTO `note` VALUES (8620, '2020-01-22 11:19:43', '2020-01-22 11:19:43', 'CC', 'ALGEBRE ING1', 0, '1492864038', 'ACTIVE', 5.875, 101, 8931, 101, 2252);
INSERT INTO `note` VALUES (8621, '2020-01-22 11:19:43', '2020-01-22 11:19:43', 'SN', 'ALGEBRE ING1', 0, '1521585189', 'ACTIVE', 9.5, 101, 8932, 101, 2252);
INSERT INTO `note` VALUES (8622, '2020-01-22 11:19:43', '2020-01-22 11:19:43', 'CC', 'ANALYSE ING1', 0, '1321141651', 'ACTIVE', 10.25, 101, 8929, 101, 1937);
INSERT INTO `note` VALUES (8623, '2020-01-22 11:19:43', '2020-01-22 11:19:43', 'SN', 'ANALYSE ING1', 0, '-2020424991', 'ACTIVE', 8.5, 101, 8930, 101, 1937);
INSERT INTO `note` VALUES (8624, '2020-01-22 11:19:43', '2020-01-22 11:19:43', 'CC', 'MECANIQUE', 0, '-966763169', 'ACTIVE', 11, 101, 8933, 101, 2391);
INSERT INTO `note` VALUES (8625, '2020-01-22 11:19:43', '2020-01-22 11:19:43', 'SN', 'MECANIQUE', 0, '-1571816175', 'ACTIVE', 12, 101, 8934, 101, 2391);
INSERT INTO `note` VALUES (8626, '2020-01-22 11:19:43', '2020-01-22 11:19:43', 'CC', 'ELECTROCINÉTIQUE', 0, '566421663', 'ACTIVE', 9, 101, 8935, 101, 2454);
INSERT INTO `note` VALUES (8627, '2020-01-22 11:19:43', '2020-01-22 11:19:43', 'SN', 'ELECTROCINÉTIQUE', 0, '-1026008501', 'ACTIVE', 15, 101, 8936, 101, 2454);
INSERT INTO `note` VALUES (8628, '2020-01-22 11:19:44', '2020-01-22 11:19:44', 'CC', 'MESURE', 0, '11070672', 'ACTIVE', 9, 101, 8939, 101, 2580);
INSERT INTO `note` VALUES (8629, '2020-01-22 11:19:44', '2020-01-22 11:19:44', 'TP', 'MESURE', 0, '926564348', 'ACTIVE', 15.88, 101, 8940, 101, 2580);
INSERT INTO `note` VALUES (8630, '2020-01-22 11:19:44', '2020-01-22 11:19:44', 'SN', 'MESURE', 0, '-407129535', 'ACTIVE', 11.5, 101, 8941, 101, 2580);
INSERT INTO `note` VALUES (8631, '2020-01-22 11:19:44', '2020-01-22 11:19:44', 'CC', 'PROJET ARDUNO', 0, '475267191', 'ACTIVE', 15.33, 101, 8937, 101, 2517);
INSERT INTO `note` VALUES (8632, '2020-01-22 11:19:44', '2020-01-22 11:19:44', 'SN', 'PROJET ARDUNO', 0, '2119940505', 'ACTIVE', 16, 101, 8938, 101, 2517);
INSERT INTO `note` VALUES (8633, '2020-01-22 11:19:44', '2020-01-22 11:19:44', 'CC', 'COMMUNICATION ING1', 0, '1713913852', 'ACTIVE', 18, 101, 8944, 101, 2643);
INSERT INTO `note` VALUES (8634, '2020-01-22 11:19:44', '2020-01-22 11:19:44', 'SN', 'COMMUNICATION ING1', 0, '-815395575', 'ACTIVE', 17, 101, 8945, 101, 2643);
INSERT INTO `note` VALUES (8635, '2020-01-22 11:19:44', '2020-01-22 11:19:44', 'CC', 'REFLEXION HUMAINE ING1', 0, '1190341040', 'ACTIVE', 13, 101, 8946, 101, 2706);
INSERT INTO `note` VALUES (8636, '2020-01-22 11:19:44', '2020-01-22 11:19:44', 'SN', 'REFLEXION HUMAINE ING1', 0, '1807537718', 'ACTIVE', 12, 101, 8947, 101, 2706);
INSERT INTO `note` VALUES (8637, '2020-01-22 11:19:44', '2020-01-22 11:19:44', 'CC', 'ALGEBRE ING1', 0, '80310009', 'ACTIVE', 6, 101, 8931, 101, 2253);
INSERT INTO `note` VALUES (8638, '2020-01-22 11:19:44', '2020-01-22 11:19:44', 'SN', 'ALGEBRE ING1', 0, '1870267548', 'ACTIVE', 5.5, 101, 8932, 101, 2253);
INSERT INTO `note` VALUES (8639, '2020-01-22 11:19:45', '2020-01-22 11:19:45', 'CC', 'ANALYSE ING1', 0, '693112914', 'ACTIVE', 6, 101, 8929, 101, 1938);
INSERT INTO `note` VALUES (8640, '2020-01-22 11:19:45', '2020-01-22 11:19:45', 'SN', 'ANALYSE ING1', 0, '-1453769946', 'ACTIVE', 3.5, 101, 8930, 101, 1938);
INSERT INTO `note` VALUES (8641, '2020-01-22 11:19:45', '2020-01-22 11:19:45', 'CC', 'MECANIQUE', 0, '-700321069', 'ACTIVE', 6, 101, 8933, 101, 2392);
INSERT INTO `note` VALUES (8642, '2020-01-22 11:19:45', '2020-01-22 11:19:45', 'SN', 'MECANIQUE', 0, '1788834845', 'ACTIVE', 3.5, 101, 8934, 101, 2392);
INSERT INTO `note` VALUES (8643, '2020-01-22 11:19:45', '2020-01-22 11:19:45', 'CC', 'ELECTROCINÉTIQUE', 0, '97405935', 'ACTIVE', 6.25, 101, 8935, 101, 2455);
INSERT INTO `note` VALUES (8644, '2020-01-22 11:19:45', '2020-01-22 11:19:45', 'SN', 'ELECTROCINÉTIQUE', 0, '1441639527', 'ACTIVE', 11, 101, 8936, 101, 2455);
INSERT INTO `note` VALUES (8645, '2020-01-22 11:19:45', '2020-01-22 11:19:45', 'CC', 'MESURE', 0, '889416669', 'ACTIVE', 8.5, 101, 8939, 101, 2581);
INSERT INTO `note` VALUES (8646, '2020-01-22 11:19:45', '2020-01-22 11:19:45', 'TP', 'MESURE', 0, '764185879', 'ACTIVE', 15.88, 101, 8940, 101, 2581);
INSERT INTO `note` VALUES (8647, '2020-01-22 11:19:45', '2020-01-22 11:19:45', 'SN', 'MESURE', 0, '1619230547', 'ACTIVE', 6.75, 101, 8941, 101, 2581);
INSERT INTO `note` VALUES (8648, '2020-01-22 11:19:45', '2020-01-22 11:19:45', 'CC', 'PROJET ARDUNO', 0, '-1858980872', 'ACTIVE', 16.33, 101, 8937, 101, 2518);
INSERT INTO `note` VALUES (8649, '2020-01-22 11:19:46', '2020-01-22 11:19:46', 'SN', 'PROJET ARDUNO', 0, '627830453', 'ACTIVE', 17, 101, 8938, 101, 2518);
INSERT INTO `note` VALUES (8650, '2020-01-22 11:19:46', '2020-01-22 11:19:46', 'CC', 'COMMUNICATION ING1', 0, '-931753747', 'ACTIVE', 15.5, 101, 8944, 101, 2644);
INSERT INTO `note` VALUES (8651, '2020-01-22 11:19:46', '2020-01-22 11:19:46', 'SN', 'COMMUNICATION ING1', 0, '1148831045', 'ACTIVE', 13.5, 101, 8945, 101, 2644);
INSERT INTO `note` VALUES (8652, '2020-01-22 11:19:46', '2020-01-22 11:19:46', 'CC', 'REFLEXION HUMAINE ING1', 0, '1928934152', 'ACTIVE', 11, 101, 8946, 101, 2707);
INSERT INTO `note` VALUES (8653, '2020-01-22 11:19:46', '2020-01-22 11:19:46', 'SN', 'REFLEXION HUMAINE ING1', 0, '-32582772', 'ACTIVE', 11, 101, 8947, 101, 2707);
INSERT INTO `note` VALUES (8654, '2020-01-22 11:19:46', '2020-01-22 11:19:46', 'CC', 'ALGEBRE ING1', 0, '-1648399330', 'ACTIVE', 5, 101, 8931, 101, 2254);
INSERT INTO `note` VALUES (8655, '2020-01-22 11:19:46', '2020-01-22 11:19:46', 'SN', 'ALGEBRE ING1', 0, '-833017316', 'ACTIVE', 8, 101, 8932, 101, 2254);
INSERT INTO `note` VALUES (8656, '2020-01-22 11:19:46', '2020-01-22 11:19:46', 'CC', 'ANALYSE ING1', 0, '37942315', 'ACTIVE', 6.75, 101, 8929, 101, 1939);
INSERT INTO `note` VALUES (8657, '2020-01-22 11:19:46', '2020-01-22 11:19:46', 'SN', 'ANALYSE ING1', 0, '1030229261', 'ACTIVE', 11, 101, 8930, 101, 1939);
INSERT INTO `note` VALUES (8658, '2020-01-22 11:19:46', '2020-01-22 11:19:46', 'CC', 'MECANIQUE', 0, '-407703832', 'ACTIVE', 8, 101, 8933, 101, 2393);
INSERT INTO `note` VALUES (8659, '2020-01-22 11:19:46', '2020-01-22 11:19:46', 'SN', 'MECANIQUE', 0, '1829483242', 'ACTIVE', 5, 101, 8934, 101, 2393);
INSERT INTO `note` VALUES (8660, '2020-01-22 11:19:46', '2020-01-22 11:19:47', 'CC', 'ELECTROCINÉTIQUE', 0, '42119621', 'ACTIVE', 6, 101, 8935, 101, 2456);
INSERT INTO `note` VALUES (8661, '2020-01-22 11:19:47', '2020-01-22 11:19:47', 'SN', 'ELECTROCINÉTIQUE', 0, '-382540142', 'ACTIVE', 11, 101, 8936, 101, 2456);
INSERT INTO `note` VALUES (8662, '2020-01-22 11:19:47', '2020-01-22 11:19:47', 'CC', 'MESURE', 0, '-599180263', 'ACTIVE', 7, 101, 8939, 101, 2582);
INSERT INTO `note` VALUES (8663, '2020-01-22 11:19:47', '2020-01-22 11:19:47', 'TP', 'MESURE', 0, '1430302214', 'ACTIVE', 15.13, 101, 8940, 101, 2582);
INSERT INTO `note` VALUES (8664, '2020-01-22 11:19:47', '2020-01-22 11:19:47', 'SN', 'MESURE', 0, '1330151492', 'ACTIVE', 8.75, 101, 8941, 101, 2582);
INSERT INTO `note` VALUES (8665, '2020-01-22 11:19:47', '2020-01-22 11:19:47', 'CC', 'PROJET ARDUNO', 0, '-1335601772', 'ACTIVE', 15, 101, 8937, 101, 2519);
INSERT INTO `note` VALUES (8666, '2020-01-22 11:19:47', '2020-01-22 11:19:47', 'SN', 'PROJET ARDUNO', 0, '1925395950', 'ACTIVE', 17, 101, 8938, 101, 2519);
INSERT INTO `note` VALUES (8667, '2020-01-22 11:19:47', '2020-01-22 11:19:47', 'CC', 'COMMUNICATION ING1', 0, '1045132038', 'ACTIVE', 17, 101, 8944, 101, 2645);
INSERT INTO `note` VALUES (8668, '2020-01-22 11:19:47', '2020-01-22 11:19:47', 'SN', 'COMMUNICATION ING1', 0, '-1493259917', 'ACTIVE', 13.5, 101, 8945, 101, 2645);
INSERT INTO `note` VALUES (8669, '2020-01-22 11:19:47', '2020-01-22 11:19:47', 'CC', 'REFLEXION HUMAINE ING1', 0, '1864640904', 'ACTIVE', 14.5, 101, 8946, 101, 2708);
INSERT INTO `note` VALUES (8670, '2020-01-22 11:19:47', '2020-01-22 11:19:47', 'SN', 'REFLEXION HUMAINE ING1', 0, '-1039055157', 'ACTIVE', 11.5, 101, 8947, 101, 2708);
INSERT INTO `note` VALUES (8671, '2020-01-22 11:19:47', '2020-01-22 11:19:47', 'CC', 'ALGEBRE ING1', 0, '1279994280', 'ACTIVE', 8.25, 101, 8931, 101, 2255);
INSERT INTO `note` VALUES (8672, '2020-01-22 11:19:48', '2020-01-22 11:19:48', 'SN', 'ALGEBRE ING1', 0, '1847527023', 'ACTIVE', 8.5, 101, 8932, 101, 2255);
INSERT INTO `note` VALUES (8673, '2020-01-22 11:19:48', '2020-01-22 11:19:48', 'CC', 'ANALYSE ING1', 0, '389549667', 'ACTIVE', 9, 101, 8929, 101, 1940);
INSERT INTO `note` VALUES (8674, '2020-01-22 11:19:48', '2020-01-22 11:19:48', 'SN', 'ANALYSE ING1', 0, '1704849017', 'ACTIVE', 9, 101, 8930, 101, 1940);
INSERT INTO `note` VALUES (8675, '2020-01-22 11:19:48', '2020-01-22 11:19:48', 'CC', 'MECANIQUE', 0, '595273356', 'ACTIVE', 9, 101, 8933, 101, 2394);
INSERT INTO `note` VALUES (8676, '2020-01-22 11:19:48', '2020-01-22 11:19:48', 'SN', 'MECANIQUE', 0, '-1176191020', 'ACTIVE', 5.5, 101, 8934, 101, 2394);
INSERT INTO `note` VALUES (8677, '2020-01-22 11:19:48', '2020-01-22 11:19:48', 'CC', 'ELECTROCINÉTIQUE', 0, '-835369901', 'ACTIVE', 7.5, 101, 8935, 101, 2457);
INSERT INTO `note` VALUES (8678, '2020-01-22 11:19:48', '2020-01-22 11:19:48', 'SN', 'ELECTROCINÉTIQUE', 0, '2096473285', 'ACTIVE', 8, 101, 8936, 101, 2457);
INSERT INTO `note` VALUES (8679, '2020-01-22 11:19:48', '2020-01-22 11:19:48', 'CC', 'MESURE', 0, '-296234360', 'ACTIVE', 6.5, 101, 8939, 101, 2583);
INSERT INTO `note` VALUES (8680, '2020-01-22 11:19:48', '2020-01-22 11:19:48', 'TP', 'MESURE', 0, '-1345612044', 'ACTIVE', 15.13, 101, 8940, 101, 2583);
INSERT INTO `note` VALUES (8681, '2020-01-22 11:19:48', '2020-01-22 11:19:48', 'SN', 'MESURE', 0, '-1548036864', 'ACTIVE', 6.5, 101, 8941, 101, 2583);
INSERT INTO `note` VALUES (8682, '2020-01-22 11:19:48', '2020-01-22 11:19:48', 'CC', 'PROJET ARDUNO', 0, '500500555', 'ACTIVE', 14.67, 101, 8937, 101, 2520);
INSERT INTO `note` VALUES (8683, '2020-01-22 11:19:48', '2020-01-22 11:19:48', 'SN', 'PROJET ARDUNO', 0, '2009134496', 'ACTIVE', 17, 101, 8938, 101, 2520);
INSERT INTO `note` VALUES (8684, '2020-01-22 11:19:49', '2020-01-22 11:19:49', 'CC', 'COMMUNICATION ING1', 0, '-744932503', 'ACTIVE', 17, 101, 8944, 101, 2646);
INSERT INTO `note` VALUES (8685, '2020-01-22 11:19:49', '2020-01-22 11:19:49', 'SN', 'COMMUNICATION ING1', 0, '-1550124586', 'ACTIVE', 16, 101, 8945, 101, 2646);
INSERT INTO `note` VALUES (8686, '2020-01-22 11:19:49', '2020-01-22 11:19:49', 'CC', 'REFLEXION HUMAINE ING1', 0, '2512371', 'ACTIVE', 12, 101, 8946, 101, 2709);
INSERT INTO `note` VALUES (8687, '2020-01-22 11:19:49', '2020-01-22 11:19:49', 'SN', 'REFLEXION HUMAINE ING1', 0, '1982896537', 'ACTIVE', 12, 101, 8947, 101, 2709);
INSERT INTO `note` VALUES (8688, '2020-01-22 11:19:49', '2020-01-22 11:19:49', 'CC', 'ALGEBRE ING1', 0, '-410800633', 'ACTIVE', 7.5, 101, 8931, 101, 2256);
INSERT INTO `note` VALUES (8689, '2020-01-22 11:19:49', '2020-01-22 11:19:49', 'SN', 'ALGEBRE ING1', 0, '1003771714', 'ACTIVE', 7.5, 101, 8932, 101, 2256);
INSERT INTO `note` VALUES (8690, '2020-01-22 11:19:49', '2020-01-22 11:19:49', 'CC', 'ANALYSE ING1', 0, '1840686934', 'ACTIVE', 6.75, 101, 8929, 101, 1941);
INSERT INTO `note` VALUES (8691, '2020-01-22 11:19:49', '2020-01-22 11:19:49', 'SN', 'ANALYSE ING1', 0, '-298062640', 'ACTIVE', 5.5, 101, 8930, 101, 1941);
INSERT INTO `note` VALUES (8692, '2020-01-22 11:19:49', '2020-01-22 11:19:49', 'CC', 'MECANIQUE', 0, '1582420084', 'ACTIVE', 9.75, 101, 8933, 101, 2395);
INSERT INTO `note` VALUES (8693, '2020-01-22 11:19:49', '2020-01-22 11:19:49', 'SN', 'MECANIQUE', 0, '344696785', 'ACTIVE', 8.5, 101, 8934, 101, 2395);
INSERT INTO `note` VALUES (8694, '2020-01-22 11:19:49', '2020-01-22 11:19:49', 'CC', 'ELECTROCINÉTIQUE', 0, '-1069738176', 'ACTIVE', 10.25, 101, 8935, 101, 2458);
INSERT INTO `note` VALUES (8695, '2020-01-22 11:19:49', '2020-01-22 11:19:49', 'SN', 'ELECTROCINÉTIQUE', 0, '-1652413822', 'ACTIVE', 12, 101, 8936, 101, 2458);
INSERT INTO `note` VALUES (8696, '2020-01-22 11:19:49', '2020-01-22 11:19:49', 'CC', 'MESURE', 0, '977308549', 'ACTIVE', 12, 101, 8939, 101, 2584);
INSERT INTO `note` VALUES (8697, '2020-01-22 11:19:50', '2020-01-22 11:19:50', 'TP', 'MESURE', 0, '-1543073768', 'ACTIVE', 15.13, 101, 8940, 101, 2584);
INSERT INTO `note` VALUES (8698, '2020-01-22 11:19:50', '2020-01-22 11:19:50', 'SN', 'MESURE', 0, '-217432498', 'ACTIVE', 7.75, 101, 8941, 101, 2584);
INSERT INTO `note` VALUES (8699, '2020-01-22 11:19:50', '2020-01-22 11:19:50', 'CC', 'PROJET ARDUNO', 0, '653496042', 'ACTIVE', 0, 101, 8937, 101, 2521);
INSERT INTO `note` VALUES (8700, '2020-01-22 11:19:50', '2020-01-22 11:19:50', 'CC', 'COMMUNICATION ING1', 0, '-1751453032', 'ACTIVE', 17, 101, 8944, 101, 2647);
INSERT INTO `note` VALUES (8701, '2020-01-22 11:19:50', '2020-01-22 11:19:50', 'SN', 'COMMUNICATION ING1', 0, '832084585', 'ACTIVE', 15, 101, 8945, 101, 2647);
INSERT INTO `note` VALUES (8702, '2020-01-22 11:19:50', '2020-01-22 11:19:50', 'CC', 'REFLEXION HUMAINE ING1', 0, '-733596232', 'ACTIVE', 9, 101, 8946, 101, 2710);
INSERT INTO `note` VALUES (8703, '2020-01-22 11:19:50', '2020-01-22 11:19:50', 'SN', 'REFLEXION HUMAINE ING1', 0, '-626706885', 'ACTIVE', 11.5, 101, 8947, 101, 2710);
INSERT INTO `note` VALUES (8704, '2020-01-22 11:19:50', '2020-01-22 11:19:50', 'CC', 'ALGEBRE ING1', 0, '2001714133', 'ACTIVE', 6.5, 101, 8931, 101, 2257);
INSERT INTO `note` VALUES (8705, '2020-01-22 11:19:50', '2020-01-22 11:19:50', 'SN', 'ALGEBRE ING1', 0, '1674604241', 'ACTIVE', 7, 101, 8932, 101, 2257);
INSERT INTO `note` VALUES (8706, '2020-01-22 11:19:51', '2020-01-22 11:19:51', 'CC', 'ANALYSE ING1', 0, '-487323095', 'ACTIVE', 7, 101, 8929, 101, 1942);
INSERT INTO `note` VALUES (8707, '2020-01-22 11:19:51', '2020-01-22 11:19:51', 'SN', 'ANALYSE ING1', 0, '867721742', 'ACTIVE', 4, 101, 8930, 101, 1942);
INSERT INTO `note` VALUES (8708, '2020-01-22 11:19:51', '2020-01-22 11:19:51', 'CC', 'MECANIQUE', 0, '-106009074', 'ACTIVE', 6, 101, 8933, 101, 2396);
INSERT INTO `note` VALUES (8709, '2020-01-22 11:19:51', '2020-01-22 11:19:51', 'SN', 'MECANIQUE', 0, '63120165', 'ACTIVE', 7, 101, 8934, 101, 2396);
INSERT INTO `note` VALUES (8710, '2020-01-22 11:19:51', '2020-01-22 11:19:51', 'CC', 'ELECTROCINÉTIQUE', 0, '-1910702968', 'ACTIVE', 5.5, 101, 8935, 101, 2459);
INSERT INTO `note` VALUES (8711, '2020-01-22 11:19:51', '2020-01-22 11:19:51', 'SN', 'ELECTROCINÉTIQUE', 0, '-1631952926', 'ACTIVE', 12.5, 101, 8936, 101, 2459);
INSERT INTO `note` VALUES (8712, '2020-01-22 11:19:51', '2020-01-22 11:19:51', 'CC', 'MESURE', 0, '-2042618938', 'ACTIVE', 10, 101, 8939, 101, 2585);
INSERT INTO `note` VALUES (8713, '2020-01-22 11:19:51', '2020-01-22 11:19:51', 'TP', 'MESURE', 0, '-1448186162', 'ACTIVE', 16.06, 101, 8940, 101, 2585);
INSERT INTO `note` VALUES (8714, '2020-01-22 11:19:51', '2020-01-22 11:19:51', 'SN', 'MESURE', 0, '-1378743393', 'ACTIVE', 10.25, 101, 8941, 101, 2585);
INSERT INTO `note` VALUES (8715, '2020-01-22 11:19:51', '2020-01-22 11:19:51', 'CC', 'PROJET ARDUNO', 0, '-488555219', 'ACTIVE', 14.67, 101, 8937, 101, 2522);
INSERT INTO `note` VALUES (8716, '2020-01-22 11:19:51', '2020-01-22 11:19:51', 'SN', 'PROJET ARDUNO', 0, '872475847', 'ACTIVE', 17, 101, 8938, 101, 2522);
INSERT INTO `note` VALUES (8717, '2020-01-22 11:19:51', '2020-01-22 11:19:51', 'CC', 'COMMUNICATION ING1', 0, '492935858', 'ACTIVE', 15.5, 101, 8944, 101, 2648);
INSERT INTO `note` VALUES (8718, '2020-01-22 11:19:52', '2020-01-22 11:19:52', 'SN', 'COMMUNICATION ING1', 0, '-903005945', 'ACTIVE', 13.5, 101, 8945, 101, 2648);
INSERT INTO `note` VALUES (8719, '2020-01-22 11:19:52', '2020-01-22 11:19:52', 'CC', 'REFLEXION HUMAINE ING1', 0, '-1555366086', 'ACTIVE', 8, 101, 8946, 101, 2711);
INSERT INTO `note` VALUES (8720, '2020-01-22 11:19:52', '2020-01-22 11:19:52', 'SN', 'REFLEXION HUMAINE ING1', 0, '-2085184423', 'ACTIVE', 13, 101, 8947, 101, 2711);
INSERT INTO `note` VALUES (8721, '2020-01-22 11:19:52', '2020-01-22 11:19:52', 'CC', 'ALGEBRE ING1', 0, '2072893913', 'ACTIVE', 7, 101, 8931, 101, 2258);
INSERT INTO `note` VALUES (8722, '2020-01-22 11:19:52', '2020-01-22 11:19:52', 'SN', 'ALGEBRE ING1', 0, '-2130961515', 'ACTIVE', 10, 101, 8932, 101, 2258);
INSERT INTO `note` VALUES (8723, '2020-01-22 11:19:52', '2020-01-22 11:19:52', 'CC', 'ANALYSE ING1', 0, '829392537', 'ACTIVE', 10, 101, 8929, 101, 1943);
INSERT INTO `note` VALUES (8724, '2020-01-22 11:19:52', '2020-01-22 11:19:52', 'SN', 'ANALYSE ING1', 0, '-305193293', 'ACTIVE', 3, 101, 8930, 101, 1943);
INSERT INTO `note` VALUES (8725, '2020-01-22 11:19:52', '2020-01-22 11:19:52', 'CC', 'MECANIQUE', 0, '-1641177902', 'ACTIVE', 10, 101, 8933, 101, 2397);
INSERT INTO `note` VALUES (8726, '2020-01-22 11:19:52', '2020-01-22 11:19:52', 'SN', 'MECANIQUE', 0, '-1978626152', 'ACTIVE', 7, 101, 8934, 101, 2397);
INSERT INTO `note` VALUES (8727, '2020-01-22 11:19:52', '2020-01-22 11:19:52', 'CC', 'ELECTROCINÉTIQUE', 0, '-1347948003', 'ACTIVE', 7.5, 101, 8935, 101, 2460);
INSERT INTO `note` VALUES (8728, '2020-01-22 11:19:52', '2020-01-22 11:19:52', 'SN', 'ELECTROCINÉTIQUE', 0, '654795740', 'ACTIVE', 11, 101, 8936, 101, 2460);
INSERT INTO `note` VALUES (8729, '2020-01-22 11:19:54', '2020-01-22 11:19:54', 'CC', 'ALGEBRE ING1', 0, '-616401408', 'ACTIVE', 11.75, 101, 8931, 101, 2259);
INSERT INTO `note` VALUES (8730, '2020-01-22 11:19:54', '2020-01-22 11:19:54', 'SN', 'ALGEBRE ING1', 0, '2083223130', 'ACTIVE', 15, 101, 8932, 101, 2259);
INSERT INTO `note` VALUES (8731, '2020-01-22 11:19:54', '2020-01-22 11:19:54', 'CC', 'ANALYSE ING1', 0, '-1397686977', 'ACTIVE', 9.25, 101, 8929, 101, 1944);
INSERT INTO `note` VALUES (8732, '2020-01-22 11:19:54', '2020-01-22 11:19:54', 'SN', 'ANALYSE ING1', 0, '499837881', 'ACTIVE', 9.5, 101, 8930, 101, 1944);
INSERT INTO `note` VALUES (8733, '2020-01-22 11:19:54', '2020-01-22 11:19:54', 'CC', 'MECANIQUE', 0, '-277183324', 'ACTIVE', 12.25, 101, 8933, 101, 2398);
INSERT INTO `note` VALUES (8734, '2020-01-22 11:19:54', '2020-01-22 11:19:54', 'SN', 'MECANIQUE', 0, '75253671', 'ACTIVE', 12.5, 101, 8934, 101, 2398);
INSERT INTO `note` VALUES (8735, '2020-01-22 11:19:54', '2020-01-22 11:19:54', 'CC', 'ELECTROCINÉTIQUE', 0, '1053302989', 'ACTIVE', 7.75, 101, 8935, 101, 2461);
INSERT INTO `note` VALUES (8736, '2020-01-22 11:19:55', '2020-01-22 11:19:55', 'SN', 'ELECTROCINÉTIQUE', 0, '193478551', 'ACTIVE', 13, 101, 8936, 101, 2461);
INSERT INTO `note` VALUES (8737, '2020-01-22 11:19:55', '2020-01-22 11:19:55', 'CC', 'MESURE', 0, '-947597158', 'ACTIVE', 9.5, 101, 8939, 101, 2587);
INSERT INTO `note` VALUES (8738, '2020-01-22 11:19:55', '2020-01-22 11:19:55', 'TP', 'MESURE', 0, '-1106419314', 'ACTIVE', 16.25, 101, 8940, 101, 2587);
INSERT INTO `note` VALUES (8739, '2020-01-22 11:19:55', '2020-01-22 11:19:55', 'SN', 'MESURE', 0, '-1693537531', 'ACTIVE', 11.5, 101, 8941, 101, 2587);
INSERT INTO `note` VALUES (8740, '2020-01-22 11:19:55', '2020-01-22 11:19:55', 'CC', 'PROJET ARDUNO', 0, '25791505', 'ACTIVE', 11.67, 101, 8937, 101, 2524);
INSERT INTO `note` VALUES (8741, '2020-01-22 11:19:55', '2020-01-22 11:19:55', 'SN', 'PROJET ARDUNO', 0, '437658155', 'ACTIVE', 12, 101, 8938, 101, 2524);
INSERT INTO `note` VALUES (8742, '2020-01-22 11:19:55', '2020-01-22 11:19:55', 'CC', 'COMMUNICATION ING1', 0, '-693659679', 'ACTIVE', 15, 101, 8944, 101, 2650);
INSERT INTO `note` VALUES (8743, '2020-01-22 11:19:55', '2020-01-22 11:19:55', 'SN', 'COMMUNICATION ING1', 0, '1949858943', 'ACTIVE', 16, 101, 8945, 101, 2650);
INSERT INTO `note` VALUES (8744, '2020-01-22 11:19:55', '2020-01-22 11:19:55', 'CC', 'REFLEXION HUMAINE ING1', 0, '1258787992', 'ACTIVE', 9.5, 101, 8946, 101, 2713);
INSERT INTO `note` VALUES (8745, '2020-01-22 11:19:55', '2020-01-22 11:19:55', 'SN', 'REFLEXION HUMAINE ING1', 0, '257434173', 'ACTIVE', 13, 101, 8947, 101, 2713);
INSERT INTO `note` VALUES (8746, '2020-01-22 11:19:55', '2020-01-22 11:19:55', 'CC', 'ALGEBRE ING1', 0, '779635253', 'ACTIVE', 11, 101, 8931, 101, 2260);
INSERT INTO `note` VALUES (8747, '2020-01-22 11:19:56', '2020-01-22 11:19:56', 'SN', 'ALGEBRE ING1', 0, '2132602762', 'ACTIVE', 18, 101, 8932, 101, 2260);
INSERT INTO `note` VALUES (8748, '2020-01-22 11:19:56', '2020-01-22 11:19:56', 'CC', 'ANALYSE ING1', 0, '-1193952032', 'ACTIVE', 11.75, 101, 8929, 101, 1945);
INSERT INTO `note` VALUES (8749, '2020-01-22 11:19:56', '2020-01-22 11:19:56', 'SN', 'ANALYSE ING1', 0, '-963849771', 'ACTIVE', 15.5, 101, 8930, 101, 1945);
INSERT INTO `note` VALUES (8750, '2020-01-22 11:19:56', '2020-01-22 11:19:56', 'CC', 'MECANIQUE', 0, '-631773597', 'ACTIVE', 17.5, 101, 8933, 101, 2399);
INSERT INTO `note` VALUES (8751, '2020-01-22 11:19:56', '2020-01-22 11:19:56', 'SN', 'MECANIQUE', 0, '-1913176848', 'ACTIVE', 14, 101, 8934, 101, 2399);
INSERT INTO `note` VALUES (8752, '2020-01-22 11:19:56', '2020-01-22 11:19:56', 'CC', 'ELECTROCINÉTIQUE', 0, '-674374066', 'ACTIVE', 12, 101, 8935, 101, 2462);
INSERT INTO `note` VALUES (8753, '2020-01-22 11:19:56', '2020-01-22 11:19:56', 'SN', 'ELECTROCINÉTIQUE', 0, '-461304677', 'ACTIVE', 13, 101, 8936, 101, 2462);
INSERT INTO `note` VALUES (8754, '2020-01-22 11:19:56', '2020-01-22 11:19:56', 'CC', 'MESURE', 0, '1756972455', 'ACTIVE', 12.5, 101, 8939, 101, 2588);
INSERT INTO `note` VALUES (8755, '2020-01-22 11:19:56', '2020-01-22 11:19:56', 'TP', 'MESURE', 0, '1140114569', 'ACTIVE', 16.06, 101, 8940, 101, 2588);
INSERT INTO `note` VALUES (8756, '2020-01-22 11:19:56', '2020-01-22 11:19:56', 'SN', 'MESURE', 0, '238702930', 'ACTIVE', 18, 101, 8941, 101, 2588);
INSERT INTO `note` VALUES (8757, '2020-01-22 11:19:56', '2020-01-22 11:19:56', 'CC', 'PROJET ARDUNO', 0, '-389399517', 'ACTIVE', 16.33, 101, 8937, 101, 2525);
INSERT INTO `note` VALUES (8758, '2020-01-22 11:19:56', '2020-01-22 11:19:57', 'SN', 'PROJET ARDUNO', 0, '-1656085603', 'ACTIVE', 17.5, 101, 8938, 101, 2525);
INSERT INTO `note` VALUES (8759, '2020-01-22 11:19:57', '2020-01-22 11:19:57', 'CC', 'COMMUNICATION ING1', 0, '-1042071054', 'ACTIVE', 16, 101, 8944, 101, 2651);
INSERT INTO `note` VALUES (8760, '2020-01-22 11:19:57', '2020-01-22 11:19:57', 'SN', 'COMMUNICATION ING1', 0, '-635265456', 'ACTIVE', 16.5, 101, 8945, 101, 2651);
INSERT INTO `note` VALUES (8761, '2020-01-22 11:19:57', '2020-01-22 11:19:57', 'CC', 'REFLEXION HUMAINE ING1', 0, '-1468842093', 'ACTIVE', 15.5, 101, 8946, 101, 2714);
INSERT INTO `note` VALUES (8762, '2020-01-22 11:19:57', '2020-01-22 11:19:57', 'SN', 'REFLEXION HUMAINE ING1', 0, '656337676', 'ACTIVE', 13.5, 101, 8947, 101, 2714);
INSERT INTO `note` VALUES (8763, '2020-01-22 11:19:57', '2020-01-22 11:19:57', 'CC', 'ALGEBRE ING1', 0, '-73996096', 'ACTIVE', 9, 101, 8931, 101, 2261);
INSERT INTO `note` VALUES (8764, '2020-01-22 11:19:57', '2020-01-22 11:19:57', 'SN', 'ALGEBRE ING1', 0, '2113600007', 'ACTIVE', 11, 101, 8932, 101, 2261);
INSERT INTO `note` VALUES (8765, '2020-01-22 11:19:57', '2020-01-22 11:19:57', 'CC', 'ANALYSE ING1', 0, '479832949', 'ACTIVE', 9, 101, 8929, 101, 1946);
INSERT INTO `note` VALUES (8766, '2020-01-22 11:19:57', '2020-01-22 11:19:57', 'SN', 'ANALYSE ING1', 0, '683979881', 'ACTIVE', 2, 101, 8930, 101, 1946);
INSERT INTO `note` VALUES (8767, '2020-01-22 11:19:57', '2020-01-22 11:19:57', 'CC', 'MECANIQUE', 0, '-753219915', 'ACTIVE', 9, 101, 8933, 101, 2400);
INSERT INTO `note` VALUES (8768, '2020-01-22 11:19:57', '2020-01-22 11:19:57', 'SN', 'MECANIQUE', 0, '1227283026', 'ACTIVE', 6, 101, 8934, 101, 2400);
INSERT INTO `note` VALUES (8769, '2020-01-22 11:19:57', '2020-01-22 11:19:57', 'CC', 'ELECTROCINÉTIQUE', 0, '-1322940527', 'ACTIVE', 9, 101, 8935, 101, 2463);
INSERT INTO `note` VALUES (8770, '2020-01-22 11:19:58', '2020-01-22 11:19:58', 'SN', 'ELECTROCINÉTIQUE', 0, '369593597', 'ACTIVE', 10, 101, 8936, 101, 2463);
INSERT INTO `note` VALUES (8771, '2020-01-22 11:19:59', '2020-01-22 11:19:59', 'CC', 'ALGEBRE ING1', 0, '298430338', 'ACTIVE', 8.25, 101, 8931, 101, 2262);
INSERT INTO `note` VALUES (8772, '2020-01-22 11:19:59', '2020-01-22 11:19:59', 'SN', 'ALGEBRE ING1', 0, '-1953717276', 'ACTIVE', 7.5, 101, 8932, 101, 2262);
INSERT INTO `note` VALUES (8773, '2020-01-22 11:19:59', '2020-01-22 11:19:59', 'CC', 'ANALYSE ING1', 0, '698098093', 'ACTIVE', 9.75, 101, 8929, 101, 1947);
INSERT INTO `note` VALUES (8774, '2020-01-22 11:19:59', '2020-01-22 11:19:59', 'SN', 'ANALYSE ING1', 0, '1641385088', 'ACTIVE', 6.5, 101, 8930, 101, 1947);
INSERT INTO `note` VALUES (8775, '2020-01-22 11:19:59', '2020-01-22 11:19:59', 'CC', 'MECANIQUE', 0, '-1299352118', 'ACTIVE', 7.5, 101, 8933, 101, 2401);
INSERT INTO `note` VALUES (8776, '2020-01-22 11:20:00', '2020-01-22 11:20:00', 'SN', 'MECANIQUE', 0, '562988073', 'ACTIVE', 5, 101, 8934, 101, 2401);
INSERT INTO `note` VALUES (8777, '2020-01-22 11:20:00', '2020-01-22 11:20:00', 'CC', 'ELECTROCINÉTIQUE', 0, '1898803923', 'ACTIVE', 9.25, 101, 8935, 101, 2464);
INSERT INTO `note` VALUES (8778, '2020-01-22 11:20:00', '2020-01-22 11:20:00', 'CC', 'MESURE', 0, '-472596380', 'ACTIVE', 9.5, 101, 8939, 101, 2590);
INSERT INTO `note` VALUES (8779, '2020-01-22 11:20:00', '2020-01-22 11:20:00', 'TP', 'MESURE', 0, '1397694623', 'ACTIVE', 14.75, 101, 8940, 101, 2590);
INSERT INTO `note` VALUES (8780, '2020-01-22 11:20:00', '2020-01-22 11:20:00', 'SN', 'MESURE', 0, '-345952047', 'ACTIVE', 16.5, 101, 8941, 101, 2590);
INSERT INTO `note` VALUES (8781, '2020-01-22 11:20:00', '2020-01-22 11:20:00', 'CC', 'PROJET ARDUNO', 0, '1351784365', 'ACTIVE', 15, 101, 8937, 101, 2527);
INSERT INTO `note` VALUES (8782, '2020-01-22 11:20:00', '2020-01-22 11:20:00', 'SN', 'PROJET ARDUNO', 0, '-2011548279', 'ACTIVE', 15, 101, 8938, 101, 2527);
INSERT INTO `note` VALUES (8783, '2020-01-22 11:20:00', '2020-01-22 11:20:00', 'CC', 'COMMUNICATION ING1', 0, '72583851', 'ACTIVE', 16, 101, 8944, 101, 2653);
INSERT INTO `note` VALUES (8784, '2020-01-22 11:20:00', '2020-01-22 11:20:00', 'SN', 'COMMUNICATION ING1', 0, '477374197', 'ACTIVE', 16.5, 101, 8945, 101, 2653);
INSERT INTO `note` VALUES (8785, '2020-01-22 11:20:00', '2020-01-22 11:20:00', 'CC', 'REFLEXION HUMAINE ING1', 0, '1300603407', 'ACTIVE', 11.5, 101, 8946, 101, 2716);
INSERT INTO `note` VALUES (8786, '2020-01-22 11:20:00', '2020-01-22 11:20:00', 'SN', 'REFLEXION HUMAINE ING1', 0, '-1476930057', 'ACTIVE', 10, 101, 8947, 101, 2716);
INSERT INTO `note` VALUES (8787, '2020-01-22 11:20:01', '2020-01-22 11:20:01', 'CC', 'ALGEBRE ING1', 0, '437820846', 'ACTIVE', 9, 101, 8931, 101, 2263);
INSERT INTO `note` VALUES (8788, '2020-01-22 11:20:01', '2020-01-22 11:20:01', 'SN', 'ALGEBRE ING1', 0, '1342681538', 'ACTIVE', 9, 101, 8932, 101, 2263);
INSERT INTO `note` VALUES (8789, '2020-01-22 11:20:01', '2020-01-22 11:20:01', 'CC', 'ANALYSE ING1', 0, '514846342', 'ACTIVE', 8.25, 101, 8929, 101, 1948);
INSERT INTO `note` VALUES (8790, '2020-01-22 11:20:01', '2020-01-22 11:20:01', 'SN', 'ANALYSE ING1', 0, '-1921329321', 'ACTIVE', 7.5, 101, 8930, 101, 1948);
INSERT INTO `note` VALUES (8791, '2020-01-22 11:20:01', '2020-01-22 11:20:01', 'CC', 'MECANIQUE', 0, '-4805954', 'ACTIVE', 9.75, 101, 8933, 101, 2402);
INSERT INTO `note` VALUES (8792, '2020-01-22 11:20:01', '2020-01-22 11:20:01', 'SN', 'MECANIQUE', 0, '-427281722', 'ACTIVE', 9, 101, 8934, 101, 2402);
INSERT INTO `note` VALUES (8793, '2020-01-22 11:20:01', '2020-01-22 11:20:01', 'CC', 'ELECTROCINÉTIQUE', 0, '-319182998', 'ACTIVE', 7.75, 101, 8935, 101, 2465);
INSERT INTO `note` VALUES (8794, '2020-01-22 11:20:01', '2020-01-22 11:20:01', 'SN', 'ELECTROCINÉTIQUE', 0, '953474767', 'ACTIVE', 13, 101, 8936, 101, 2465);
INSERT INTO `note` VALUES (8795, '2020-01-22 11:20:01', '2020-01-22 11:20:01', 'CC', 'MESURE', 0, '-1236567557', 'ACTIVE', 6.5, 101, 8939, 101, 2591);
INSERT INTO `note` VALUES (8796, '2020-01-22 11:20:01', '2020-01-22 11:20:01', 'TP', 'MESURE', 0, '-72082783', 'ACTIVE', 14.75, 101, 8940, 101, 2591);
INSERT INTO `note` VALUES (8797, '2020-01-22 11:20:01', '2020-01-22 11:20:01', 'SN', 'MESURE', 0, '273629495', 'ACTIVE', 9.5, 101, 8941, 101, 2591);
INSERT INTO `note` VALUES (8798, '2020-01-22 11:20:01', '2020-01-22 11:20:01', 'CC', 'PROJET ARDUNO', 0, '-625262313', 'ACTIVE', 13, 101, 8937, 101, 2528);
INSERT INTO `note` VALUES (8799, '2020-01-22 11:20:01', '2020-01-22 11:20:02', 'SN', 'PROJET ARDUNO', 0, '-2019185347', 'ACTIVE', 15, 101, 8938, 101, 2528);
INSERT INTO `note` VALUES (8800, '2020-01-22 11:20:02', '2020-01-22 11:20:02', 'CC', 'COMMUNICATION ING1', 0, '-1152336953', 'ACTIVE', 16, 101, 8944, 101, 2654);
INSERT INTO `note` VALUES (8801, '2020-01-22 11:20:02', '2020-01-22 11:20:02', 'SN', 'COMMUNICATION ING1', 0, '-53556164', 'ACTIVE', 14.5, 101, 8945, 101, 2654);
INSERT INTO `note` VALUES (8802, '2020-01-22 11:20:02', '2020-01-22 11:20:02', 'CC', 'REFLEXION HUMAINE ING1', 0, '-1127079791', 'ACTIVE', 8.5, 101, 8946, 101, 2717);
INSERT INTO `note` VALUES (8803, '2020-01-22 11:20:02', '2020-01-22 11:20:02', 'SN', 'REFLEXION HUMAINE ING1', 0, '873484104', 'ACTIVE', 12, 101, 8947, 101, 2717);
INSERT INTO `note` VALUES (8804, '2020-01-22 11:20:02', '2020-01-22 11:20:02', 'CC', 'ALGEBRE ING1', 0, '-498052985', 'ACTIVE', 8, 101, 8931, 101, 2264);
INSERT INTO `note` VALUES (8805, '2020-01-22 11:20:02', '2020-01-22 11:20:02', 'SN', 'ALGEBRE ING1', 0, '1298025190', 'ACTIVE', 7, 101, 8932, 101, 2264);
INSERT INTO `note` VALUES (8806, '2020-01-22 11:20:02', '2020-01-22 11:20:02', 'CC', 'ANALYSE ING1', 0, '-990669905', 'ACTIVE', 8.25, 101, 8929, 101, 1949);
INSERT INTO `note` VALUES (8807, '2020-01-22 11:20:02', '2020-01-22 11:20:02', 'SN', 'ANALYSE ING1', 0, '757895173', 'ACTIVE', 4.5, 101, 8930, 101, 1949);
INSERT INTO `note` VALUES (8808, '2020-01-22 11:20:02', '2020-01-22 11:20:02', 'CC', 'MECANIQUE', 0, '1157144281', 'ACTIVE', 7, 101, 8933, 101, 2403);
INSERT INTO `note` VALUES (8809, '2020-01-22 11:20:02', '2020-01-22 11:20:02', 'SN', 'MECANIQUE', 0, '259775432', 'ACTIVE', 8, 101, 8934, 101, 2403);
INSERT INTO `note` VALUES (8810, '2020-01-22 11:20:02', '2020-01-22 11:20:02', 'CC', 'ELECTROCINÉTIQUE', 0, '1540997839', 'ACTIVE', 8, 101, 8935, 101, 2466);
INSERT INTO `note` VALUES (8811, '2020-01-22 11:20:02', '2020-01-22 11:20:02', 'SN', 'ELECTROCINÉTIQUE', 0, '-610863184', 'ACTIVE', 12.5, 101, 8936, 101, 2466);
INSERT INTO `note` VALUES (8812, '2020-01-22 11:20:02', '2020-01-22 11:20:02', 'CC', 'MESURE', 0, '-850558834', 'ACTIVE', 8, 101, 8939, 101, 2592);
INSERT INTO `note` VALUES (8813, '2020-01-22 11:20:03', '2020-01-22 11:20:03', 'TP', 'MESURE', 0, '540056898', 'ACTIVE', 14.75, 101, 8940, 101, 2592);
INSERT INTO `note` VALUES (8814, '2020-01-22 11:20:03', '2020-01-22 11:20:03', 'SN', 'MESURE', 0, '-648917428', 'ACTIVE', 9, 101, 8941, 101, 2592);
INSERT INTO `note` VALUES (8815, '2020-01-22 11:20:03', '2020-01-22 11:20:03', 'CC', 'PROJET ARDUNO', 0, '-783574465', 'ACTIVE', 16.67, 101, 8937, 101, 2529);
INSERT INTO `note` VALUES (8816, '2020-01-22 11:20:03', '2020-01-22 11:20:03', 'SN', 'PROJET ARDUNO', 0, '-166896444', 'ACTIVE', 16.5, 101, 8938, 101, 2529);
INSERT INTO `note` VALUES (8817, '2020-01-22 11:20:03', '2020-01-22 11:20:03', 'CC', 'COMMUNICATION ING1', 0, '-1514324877', 'ACTIVE', 17, 101, 8944, 101, 2655);
INSERT INTO `note` VALUES (8818, '2020-01-22 11:20:03', '2020-01-22 11:20:03', 'SN', 'COMMUNICATION ING1', 0, '-1704090472', 'ACTIVE', 13.5, 101, 8945, 101, 2655);
INSERT INTO `note` VALUES (8819, '2020-01-22 11:20:03', '2020-01-22 11:20:03', 'CC', 'REFLEXION HUMAINE ING1', 0, '-481210236', 'ACTIVE', 6.5, 101, 8946, 101, 2718);
INSERT INTO `note` VALUES (8820, '2020-01-22 11:20:03', '2020-01-22 11:20:03', 'SN', 'REFLEXION HUMAINE ING1', 0, '730192249', 'ACTIVE', 11, 101, 8947, 101, 2718);
INSERT INTO `note` VALUES (8821, '2020-01-22 11:20:03', '2020-01-22 11:20:03', 'CC', 'ALGEBRE ING1', 0, '829193126', 'ACTIVE', 6, 101, 8931, 101, 2265);
INSERT INTO `note` VALUES (8822, '2020-01-22 11:20:03', '2020-01-22 11:20:03', 'SN', 'ALGEBRE ING1', 0, '-535967080', 'ACTIVE', 5.5, 101, 8932, 101, 2265);
INSERT INTO `note` VALUES (8823, '2020-01-22 11:20:03', '2020-01-22 11:20:03', 'CC', 'ANALYSE ING1', 0, '-1998199320', 'ACTIVE', 4.75, 101, 8929, 101, 1950);
INSERT INTO `note` VALUES (8824, '2020-01-22 11:20:03', '2020-01-22 11:20:03', 'SN', 'ANALYSE ING1', 0, '2141913772', 'ACTIVE', 2, 101, 8930, 101, 1950);
INSERT INTO `note` VALUES (8825, '2020-01-22 11:20:03', '2020-01-22 11:20:03', 'CC', 'MECANIQUE', 0, '1452192729', 'ACTIVE', 6.5, 101, 8933, 101, 2404);
INSERT INTO `note` VALUES (8826, '2020-01-22 11:20:04', '2020-01-22 11:20:04', 'SN', 'MECANIQUE', 0, '-1319735888', 'ACTIVE', 4, 101, 8934, 101, 2404);
INSERT INTO `note` VALUES (8827, '2020-01-22 11:20:04', '2020-01-22 11:20:04', 'CC', 'ELECTROCINÉTIQUE', 0, '260117382', 'ACTIVE', 6.75, 101, 8935, 101, 2467);
INSERT INTO `note` VALUES (8828, '2020-01-22 11:20:04', '2020-01-22 11:20:04', 'SN', 'ELECTROCINÉTIQUE', 0, '-1930324425', 'ACTIVE', 11, 101, 8936, 101, 2467);
INSERT INTO `note` VALUES (8829, '2020-01-22 11:20:04', '2020-01-22 11:20:04', 'CC', 'MESURE', 0, '1859322944', 'ACTIVE', 6.5, 101, 8939, 101, 2593);
INSERT INTO `note` VALUES (8830, '2020-01-22 11:20:04', '2020-01-22 11:20:04', 'TP', 'MESURE', 0, '-497805544', 'ACTIVE', 12.5, 101, 8940, 101, 2593);
INSERT INTO `note` VALUES (8831, '2020-01-22 11:20:04', '2020-01-22 11:20:04', 'SN', 'MESURE', 0, '-1631771283', 'ACTIVE', 10.25, 101, 8941, 101, 2593);
INSERT INTO `note` VALUES (8832, '2020-01-22 11:20:04', '2020-01-22 11:20:04', 'CC', 'PROJET ARDUNO', 0, '380740344', 'ACTIVE', 15.67, 101, 8937, 101, 2530);
INSERT INTO `note` VALUES (8833, '2020-01-22 11:20:04', '2020-01-22 11:20:04', 'SN', 'PROJET ARDUNO', 0, '2048854431', 'ACTIVE', 15, 101, 8938, 101, 2530);
INSERT INTO `note` VALUES (8834, '2020-01-22 11:20:04', '2020-01-22 11:20:04', 'CC', 'COMMUNICATION ING1', 0, '1480424090', 'ACTIVE', 16, 101, 8944, 101, 2656);
INSERT INTO `note` VALUES (8835, '2020-01-22 11:20:04', '2020-01-22 11:20:04', 'SN', 'COMMUNICATION ING1', 0, '-325652770', 'ACTIVE', 13.5, 101, 8945, 101, 2656);
INSERT INTO `note` VALUES (8836, '2020-01-22 11:20:04', '2020-01-22 11:20:04', 'CC', 'REFLEXION HUMAINE ING1', 0, '2046071006', 'ACTIVE', 10, 101, 8946, 101, 2719);
INSERT INTO `note` VALUES (8837, '2020-01-22 11:20:04', '2020-01-22 11:20:04', 'SN', 'REFLEXION HUMAINE ING1', 0, '-1837013946', 'ACTIVE', 13.5, 101, 8947, 101, 2719);
INSERT INTO `note` VALUES (8838, '2020-01-22 11:20:04', '2020-01-22 11:20:04', 'CC', 'ALGEBRE ING1', 0, '611215196', 'ACTIVE', 6.25, 101, 8931, 101, 2266);
INSERT INTO `note` VALUES (8839, '2020-01-22 11:20:05', '2020-01-22 11:20:05', 'SN', 'ALGEBRE ING1', 0, '586831012', 'ACTIVE', 4.5, 101, 8932, 101, 2266);
INSERT INTO `note` VALUES (8840, '2020-01-22 11:20:05', '2020-01-22 11:20:05', 'CC', 'ANALYSE ING1', 0, '2023508228', 'ACTIVE', 5.75, 101, 8929, 101, 2201);
INSERT INTO `note` VALUES (8841, '2020-01-22 11:20:05', '2020-01-22 11:20:05', 'SN', 'ANALYSE ING1', 0, '257491351', 'ACTIVE', 11, 101, 8930, 101, 2201);
INSERT INTO `note` VALUES (8842, '2020-01-22 11:20:05', '2020-01-22 11:20:05', 'CC', 'MECANIQUE', 0, '-450423625', 'ACTIVE', 10.25, 101, 8933, 101, 2405);
INSERT INTO `note` VALUES (8843, '2020-01-22 11:20:05', '2020-01-22 11:20:05', 'SN', 'MECANIQUE', 0, '62948428', 'ACTIVE', 12, 101, 8934, 101, 2405);
INSERT INTO `note` VALUES (8844, '2020-01-22 11:20:05', '2020-01-22 11:20:05', 'CC', 'ELECTROCINÉTIQUE', 0, '-1964099196', 'ACTIVE', 8, 101, 8935, 101, 2468);
INSERT INTO `note` VALUES (8845, '2020-01-22 11:20:05', '2020-01-22 11:20:05', 'SN', 'ELECTROCINÉTIQUE', 0, '-1206015823', 'ACTIVE', 11.5, 101, 8936, 101, 2468);
INSERT INTO `note` VALUES (8846, '2020-01-22 11:20:05', '2020-01-22 11:20:05', 'CC', 'MESURE', 0, '313930778', 'ACTIVE', 3.5, 101, 8939, 101, 2594);
INSERT INTO `note` VALUES (8847, '2020-01-22 11:20:05', '2020-01-22 11:20:05', 'TP', 'MESURE', 0, '320169517', 'ACTIVE', 12.5, 101, 8940, 101, 2594);
INSERT INTO `note` VALUES (8848, '2020-01-22 11:20:05', '2020-01-22 11:20:05', 'SN', 'MESURE', 0, '1271113198', 'ACTIVE', 11, 101, 8941, 101, 2594);
INSERT INTO `note` VALUES (8849, '2020-01-22 11:20:05', '2020-01-22 11:20:05', 'CC', 'PROJET ARDUNO', 0, '-1347960736', 'ACTIVE', 14.33, 101, 8937, 101, 2531);
INSERT INTO `note` VALUES (8850, '2020-01-22 11:20:05', '2020-01-22 11:20:06', 'SN', 'PROJET ARDUNO', 0, '1699852332', 'ACTIVE', 15.5, 101, 8938, 101, 2531);
INSERT INTO `note` VALUES (8851, '2020-01-22 11:20:06', '2020-01-22 11:20:06', 'CC', 'COMMUNICATION ING1', 0, '2053867972', 'ACTIVE', 18, 101, 8944, 101, 2657);
INSERT INTO `note` VALUES (8852, '2020-01-22 11:20:06', '2020-01-22 11:20:06', 'SN', 'COMMUNICATION ING1', 0, '581079412', 'ACTIVE', 11, 101, 8945, 101, 2657);
INSERT INTO `note` VALUES (8853, '2020-01-22 11:20:06', '2020-01-22 11:20:06', 'CC', 'REFLEXION HUMAINE ING1', 0, '836894950', 'ACTIVE', 12.5, 101, 8946, 101, 2720);
INSERT INTO `note` VALUES (8854, '2020-01-22 11:20:06', '2020-01-22 11:20:06', 'SN', 'REFLEXION HUMAINE ING1', 0, '-245150321', 'ACTIVE', 11, 101, 8947, 101, 2720);
INSERT INTO `note` VALUES (8855, '2020-01-22 11:20:06', '2020-01-22 11:20:07', 'CC', 'MECANIQUE', 0, '-1844763044', 'ACTIVE', 10, 101, 8933, 101, 2406);
INSERT INTO `note` VALUES (8856, '2020-01-22 11:20:07', '2020-01-22 11:20:07', 'SN', 'MECANIQUE', 0, '1147779019', 'ACTIVE', 12, 101, 8934, 101, 2406);
INSERT INTO `note` VALUES (8857, '2020-01-22 11:20:08', '2020-01-22 11:20:08', 'CC', 'REFLEXION HUMAINE ING1', 0, '1677008676', 'ACTIVE', 8, 101, 8946, 101, 2721);
INSERT INTO `note` VALUES (8858, '2020-01-22 11:20:08', '2020-01-22 11:20:08', 'SN', 'REFLEXION HUMAINE ING1', 0, '-1413189070', 'ACTIVE', 11.5, 101, 8947, 101, 2721);
INSERT INTO `note` VALUES (8859, '2020-01-22 11:20:08', '2020-01-22 11:20:09', 'CC', 'ALGEBRE ING1', 0, '-1943050423', 'ACTIVE', 10.5, 101, 8931, 101, 2268);
INSERT INTO `note` VALUES (8860, '2020-01-22 11:20:09', '2020-01-22 11:20:09', 'SN', 'ALGEBRE ING1', 0, '1094387528', 'ACTIVE', 14, 101, 8932, 101, 2268);
INSERT INTO `note` VALUES (8861, '2020-01-22 11:20:09', '2020-01-22 11:20:09', 'CC', 'ANALYSE ING1', 0, '1742770255', 'ACTIVE', 9, 101, 8929, 101, 2203);
INSERT INTO `note` VALUES (8862, '2020-01-22 11:20:09', '2020-01-22 11:20:09', 'SN', 'ANALYSE ING1', 0, '-2001208332', 'ACTIVE', 7.5, 101, 8930, 101, 2203);
INSERT INTO `note` VALUES (8863, '2020-01-22 11:20:09', '2020-01-22 11:20:09', 'CC', 'MECANIQUE', 0, '1781627621', 'ACTIVE', 11, 101, 8933, 101, 2407);
INSERT INTO `note` VALUES (8864, '2020-01-22 11:20:09', '2020-01-22 11:20:09', 'SN', 'MECANIQUE', 0, '1829546138', 'ACTIVE', 7, 101, 8934, 101, 2407);
INSERT INTO `note` VALUES (8865, '2020-01-22 11:20:09', '2020-01-22 11:20:09', 'CC', 'ELECTROCINÉTIQUE', 0, '1643024281', 'ACTIVE', 9.5, 101, 8935, 101, 2470);
INSERT INTO `note` VALUES (8866, '2020-01-22 11:20:09', '2020-01-22 11:20:09', 'SN', 'ELECTROCINÉTIQUE', 0, '594054689', 'ACTIVE', 12.5, 101, 8936, 101, 2470);
INSERT INTO `note` VALUES (8867, '2020-01-22 11:20:09', '2020-01-22 11:20:09', 'CC', 'MESURE', 0, '1108968023', 'ACTIVE', 9.5, 101, 8939, 101, 2596);
INSERT INTO `note` VALUES (8868, '2020-01-22 11:20:09', '2020-01-22 11:20:09', 'TP', 'MESURE', 0, '1618661639', 'ACTIVE', 12.5, 101, 8940, 101, 2596);
INSERT INTO `note` VALUES (8869, '2020-01-22 11:20:09', '2020-01-22 11:20:09', 'SN', 'MESURE', 0, '-1910497423', 'ACTIVE', 10.75, 101, 8941, 101, 2596);
INSERT INTO `note` VALUES (8870, '2020-01-22 11:20:09', '2020-01-22 11:20:09', 'CC', 'PROJET ARDUNO', 0, '-596376562', 'ACTIVE', 16, 101, 8937, 101, 2533);
INSERT INTO `note` VALUES (8871, '2020-01-22 11:20:09', '2020-01-22 11:20:09', 'SN', 'PROJET ARDUNO', 0, '-360498559', 'ACTIVE', 16, 101, 8938, 101, 2533);
INSERT INTO `note` VALUES (8872, '2020-01-22 11:20:09', '2020-01-22 11:20:09', 'CC', 'COMMUNICATION ING1', 0, '736637122', 'ACTIVE', 15, 101, 8944, 101, 2659);
INSERT INTO `note` VALUES (8873, '2020-01-22 11:20:09', '2020-01-22 11:20:09', 'SN', 'COMMUNICATION ING1', 0, '-440152554', 'ACTIVE', 15, 101, 8945, 101, 2659);
INSERT INTO `note` VALUES (8874, '2020-01-22 11:20:09', '2020-01-22 11:20:09', 'CC', 'REFLEXION HUMAINE ING1', 0, '-1920781689', 'ACTIVE', 9, 101, 8946, 101, 2722);
INSERT INTO `note` VALUES (8875, '2020-01-22 11:20:09', '2020-01-22 11:20:10', 'SN', 'REFLEXION HUMAINE ING1', 0, '-400193756', 'ACTIVE', 11, 101, 8947, 101, 2722);
INSERT INTO `note` VALUES (8876, '2020-01-22 11:20:10', '2020-01-22 11:20:10', 'CC', 'ALGEBRE ING1', 0, '1055945476', 'ACTIVE', 9.5, 101, 8931, 101, 2269);
INSERT INTO `note` VALUES (8877, '2020-01-22 11:20:10', '2020-01-22 11:20:10', 'SN', 'ALGEBRE ING1', 0, '-844477990', 'ACTIVE', 10, 101, 8932, 101, 2269);
INSERT INTO `note` VALUES (8878, '2020-01-22 11:20:10', '2020-01-22 11:20:10', 'CC', 'ANALYSE ING1', 0, '-496706074', 'ACTIVE', 12.75, 101, 8929, 101, 2204);
INSERT INTO `note` VALUES (8879, '2020-01-22 11:20:10', '2020-01-22 11:20:10', 'SN', 'ANALYSE ING1', 0, '-2025846148', 'ACTIVE', 15.5, 101, 8930, 101, 2204);
INSERT INTO `note` VALUES (8880, '2020-01-22 11:20:10', '2020-01-22 11:20:10', 'CC', 'MECANIQUE', 0, '552111207', 'ACTIVE', 13, 101, 8933, 101, 2408);
INSERT INTO `note` VALUES (8881, '2020-01-22 11:20:10', '2020-01-22 11:20:10', 'SN', 'MECANIQUE', 0, '-502129329', 'ACTIVE', 11, 101, 8934, 101, 2408);
INSERT INTO `note` VALUES (8882, '2020-01-22 11:20:10', '2020-01-22 11:20:10', 'CC', 'ELECTROCINÉTIQUE', 0, '-369182194', 'ACTIVE', 15, 101, 8935, 101, 2471);
INSERT INTO `note` VALUES (8883, '2020-01-22 11:20:10', '2020-01-22 11:20:10', 'SN', 'ELECTROCINÉTIQUE', 0, '-979588432', 'ACTIVE', 13.5, 101, 8936, 101, 2471);
INSERT INTO `note` VALUES (8884, '2020-01-22 11:20:10', '2020-01-22 11:20:10', 'CC', 'MESURE', 0, '568890669', 'ACTIVE', 14, 101, 8939, 101, 2597);
INSERT INTO `note` VALUES (8885, '2020-01-22 11:20:10', '2020-01-22 11:20:10', 'TP', 'MESURE', 0, '1253154406', 'ACTIVE', 16.69, 101, 8940, 101, 2597);
INSERT INTO `note` VALUES (8886, '2020-01-22 11:20:10', '2020-01-22 11:20:10', 'SN', 'MESURE', 0, '1316074765', 'ACTIVE', 13.5, 101, 8941, 101, 2597);
INSERT INTO `note` VALUES (8887, '2020-01-22 11:20:10', '2020-01-22 11:20:10', 'CC', 'PROJET ARDUNO', 0, '-1962117200', 'ACTIVE', 17.33, 101, 8937, 101, 2534);
INSERT INTO `note` VALUES (8888, '2020-01-22 11:20:10', '2020-01-22 11:20:10', 'SN', 'PROJET ARDUNO', 0, '-718005650', 'ACTIVE', 18, 101, 8938, 101, 2534);
INSERT INTO `note` VALUES (8889, '2020-01-22 11:20:10', '2020-01-22 11:20:10', 'CC', 'COMMUNICATION ING1', 0, '1002173049', 'ACTIVE', 16, 101, 8944, 101, 2660);
INSERT INTO `note` VALUES (8890, '2020-01-22 11:20:10', '2020-01-22 11:20:10', 'SN', 'COMMUNICATION ING1', 0, '1083565196', 'ACTIVE', 17.5, 101, 8945, 101, 2660);
INSERT INTO `note` VALUES (8891, '2020-01-22 11:20:11', '2020-01-22 11:20:11', 'CC', 'REFLEXION HUMAINE ING1', 0, '51452936', 'ACTIVE', 13.5, 101, 8946, 101, 2723);
INSERT INTO `note` VALUES (8892, '2020-01-22 11:20:11', '2020-01-22 11:20:11', 'SN', 'REFLEXION HUMAINE ING1', 0, '-993807362', 'ACTIVE', 14, 101, 8947, 101, 2723);
INSERT INTO `note` VALUES (8893, '2020-01-22 11:20:11', '2020-01-22 11:20:11', 'CC', 'ALGEBRE ING1', 0, '1110972171', 'ACTIVE', 7.25, 101, 8931, 101, 2270);
INSERT INTO `note` VALUES (8894, '2020-01-22 11:20:11', '2020-01-22 11:20:11', 'SN', 'ALGEBRE ING1', 0, '-1514609', 'ACTIVE', 11.5, 101, 8932, 101, 2270);
INSERT INTO `note` VALUES (8895, '2020-01-22 11:20:11', '2020-01-22 11:20:11', 'CC', 'ANALYSE ING1', 0, '1248735760', 'ACTIVE', 10.25, 101, 8929, 101, 2205);
INSERT INTO `note` VALUES (8896, '2020-01-22 11:20:11', '2020-01-22 11:20:11', 'SN', 'ANALYSE ING1', 0, '-1020542442', 'ACTIVE', 4.5, 101, 8930, 101, 2205);
INSERT INTO `note` VALUES (8897, '2020-01-22 11:20:11', '2020-01-22 11:20:11', 'CC', 'MECANIQUE', 0, '1216393362', 'ACTIVE', 10.75, 101, 8933, 101, 2409);
INSERT INTO `note` VALUES (8898, '2020-01-22 11:20:11', '2020-01-22 11:20:11', 'SN', 'MECANIQUE', 0, '-776872595', 'ACTIVE', 4.5, 101, 8934, 101, 2409);
INSERT INTO `note` VALUES (8899, '2020-01-22 11:20:11', '2020-01-22 11:20:11', 'CC', 'ELECTROCINÉTIQUE', 0, '1406741808', 'ACTIVE', 9.5, 101, 8935, 101, 2472);
INSERT INTO `note` VALUES (8900, '2020-01-22 11:20:11', '2020-01-22 11:20:11', 'SN', 'ELECTROCINÉTIQUE', 0, '998459756', 'ACTIVE', 12, 101, 8936, 101, 2472);
INSERT INTO `note` VALUES (8901, '2020-01-22 11:20:11', '2020-01-22 11:20:11', 'CC', 'MESURE', 0, '-1644963033', 'ACTIVE', 10.5, 101, 8939, 101, 2598);
INSERT INTO `note` VALUES (8902, '2020-01-22 11:20:11', '2020-01-22 11:20:11', 'TP', 'MESURE', 0, '-942407279', 'ACTIVE', 16.69, 101, 8940, 101, 2598);
INSERT INTO `note` VALUES (8903, '2020-01-22 11:20:11', '2020-01-22 11:20:11', 'SN', 'MESURE', 0, '-1280166399', 'ACTIVE', 8.5, 101, 8941, 101, 2598);
INSERT INTO `note` VALUES (8904, '2020-01-22 11:20:12', '2020-01-22 11:20:12', 'CC', 'PROJET ARDUNO', 0, '418453348', 'ACTIVE', 15.33, 101, 8937, 101, 2535);
INSERT INTO `note` VALUES (8905, '2020-01-22 11:20:12', '2020-01-22 11:20:12', 'SN', 'PROJET ARDUNO', 0, '507229811', 'ACTIVE', 17, 101, 8938, 101, 2535);
INSERT INTO `note` VALUES (8906, '2020-01-22 11:20:12', '2020-01-22 11:20:12', 'CC', 'COMMUNICATION ING1', 0, '452167397', 'ACTIVE', 17, 101, 8944, 101, 2661);
INSERT INTO `note` VALUES (8907, '2020-01-22 11:20:12', '2020-01-22 11:20:12', 'SN', 'COMMUNICATION ING1', 0, '-492620676', 'ACTIVE', 13.5, 101, 8945, 101, 2661);
INSERT INTO `note` VALUES (8908, '2020-01-22 11:20:12', '2020-01-22 11:20:12', 'CC', 'REFLEXION HUMAINE ING1', 0, '-1682253967', 'ACTIVE', 15, 101, 8946, 101, 2724);
INSERT INTO `note` VALUES (8909, '2020-01-22 11:20:12', '2020-01-22 11:20:12', 'SN', 'REFLEXION HUMAINE ING1', 0, '-1037791973', 'ACTIVE', 13, 101, 8947, 101, 2724);
INSERT INTO `note` VALUES (8910, '2020-01-22 11:20:12', '2020-01-22 11:20:12', 'CC', 'ALGEBRE ING1', 0, '-445603620', 'ACTIVE', 9, 101, 8931, 101, 2271);
INSERT INTO `note` VALUES (8911, '2020-01-22 11:20:12', '2020-01-22 11:20:12', 'SN', 'ALGEBRE ING1', 0, '957321060', 'ACTIVE', 11, 101, 8932, 101, 2271);
INSERT INTO `note` VALUES (8912, '2020-01-22 11:20:12', '2020-01-22 11:20:12', 'CC', 'ANALYSE ING1', 0, '762194548', 'ACTIVE', 9, 101, 8929, 101, 2206);
INSERT INTO `note` VALUES (8913, '2020-01-22 11:20:12', '2020-01-22 11:20:12', 'SN', 'ANALYSE ING1', 0, '-409221327', 'ACTIVE', 3, 101, 8930, 101, 2206);
INSERT INTO `note` VALUES (8914, '2020-01-22 11:20:12', '2020-01-22 11:20:12', 'CC', 'MECANIQUE', 0, '1043682163', 'ACTIVE', 9, 101, 8933, 101, 2410);
INSERT INTO `note` VALUES (8915, '2020-01-22 11:20:12', '2020-01-22 11:20:12', 'SN', 'MECANIQUE', 0, '872656843', 'ACTIVE', 9.5, 101, 8934, 101, 2410);
INSERT INTO `note` VALUES (8916, '2020-01-22 11:20:12', '2020-01-22 11:20:12', 'CC', 'ELECTROCINÉTIQUE', 0, '-1858722826', 'ACTIVE', 10.5, 101, 8935, 101, 2473);
INSERT INTO `note` VALUES (8917, '2020-01-22 11:20:13', '2020-01-22 11:20:13', 'SN', 'ELECTROCINÉTIQUE', 0, '-469778126', 'ACTIVE', 9, 101, 8936, 101, 2473);
INSERT INTO `note` VALUES (8918, '2020-01-22 11:20:13', '2020-01-22 11:20:13', 'CC', 'MESURE', 0, '2075892355', 'ACTIVE', 9, 101, 8939, 101, 2599);
INSERT INTO `note` VALUES (8919, '2020-01-22 11:20:13', '2020-01-22 11:20:13', 'TP', 'MESURE', 0, '-1942084176', 'ACTIVE', 16.69, 101, 8940, 101, 2599);
INSERT INTO `note` VALUES (8920, '2020-01-22 11:20:13', '2020-01-22 11:20:13', 'SN', 'MESURE', 0, '-343544004', 'ACTIVE', 8, 101, 8941, 101, 2599);
INSERT INTO `note` VALUES (8921, '2020-01-22 11:20:13', '2020-01-22 11:20:13', 'CC', 'COMMUNICATION ING1', 0, '341077023', 'ACTIVE', 2, 101, 8944, 101, 2662);
INSERT INTO `note` VALUES (8922, '2020-01-22 11:20:13', '2020-01-22 11:20:13', 'SN', 'COMMUNICATION ING1', 0, '206627497', 'ACTIVE', 15.5, 101, 8945, 101, 2662);
INSERT INTO `note` VALUES (8923, '2020-01-22 11:20:13', '2020-01-22 11:20:13', 'CC', 'REFLEXION HUMAINE ING1', 0, '1911739217', 'ACTIVE', 12.5, 101, 8946, 101, 2725);
INSERT INTO `note` VALUES (8924, '2020-01-22 11:20:13', '2020-01-22 11:20:14', 'SN', 'REFLEXION HUMAINE ING1', 0, '579866361', 'ACTIVE', 10.5, 101, 8947, 101, 2725);
INSERT INTO `note` VALUES (8925, '2020-01-22 11:20:14', '2020-01-22 11:20:14', 'CC', 'ALGEBRE ING1', 0, '1879318913', 'ACTIVE', 11.75, 101, 8931, 101, 2272);
INSERT INTO `note` VALUES (8926, '2020-01-22 11:20:14', '2020-01-22 11:20:14', 'SN', 'ALGEBRE ING1', 0, '-2096387133', 'ACTIVE', 15, 101, 8932, 101, 2272);
INSERT INTO `note` VALUES (8927, '2020-01-22 11:20:14', '2020-01-22 11:20:14', 'CC', 'ANALYSE ING1', 0, '-2021262897', 'ACTIVE', 13, 101, 8929, 101, 2207);
INSERT INTO `note` VALUES (8928, '2020-01-22 11:20:14', '2020-01-22 11:20:14', 'SN', 'ANALYSE ING1', 0, '-608233991', 'ACTIVE', 12.5, 101, 8930, 101, 2207);
INSERT INTO `note` VALUES (8929, '2020-01-22 11:20:14', '2020-01-22 11:20:14', 'CC', 'MECANIQUE', 0, '-761844321', 'ACTIVE', 11.5, 101, 8933, 101, 2411);
INSERT INTO `note` VALUES (8930, '2020-01-22 11:20:14', '2020-01-22 11:20:14', 'SN', 'MECANIQUE', 0, '-721807294', 'ACTIVE', 13.5, 101, 8934, 101, 2411);
INSERT INTO `note` VALUES (8931, '2020-01-22 11:20:14', '2020-01-22 11:20:14', 'CC', 'ELECTROCINÉTIQUE', 0, '-1699342333', 'ACTIVE', 11.25, 101, 8935, 101, 2474);
INSERT INTO `note` VALUES (8932, '2020-01-22 11:20:14', '2020-01-22 11:20:14', 'SN', 'ELECTROCINÉTIQUE', 0, '-974475576', 'ACTIVE', 12.5, 101, 8936, 101, 2474);
INSERT INTO `note` VALUES (8933, '2020-01-22 11:20:14', '2020-01-22 11:20:14', 'CC', 'MESURE', 0, '278453203', 'ACTIVE', 13.5, 101, 8939, 101, 2600);
INSERT INTO `note` VALUES (8934, '2020-01-22 11:20:14', '2020-01-22 11:20:14', 'TP', 'MESURE', 0, '-1502418565', 'ACTIVE', 14.63, 101, 8940, 101, 2600);
INSERT INTO `note` VALUES (8935, '2020-01-22 11:20:14', '2020-01-22 11:20:14', 'SN', 'MESURE', 0, '1332745800', 'ACTIVE', 14.5, 101, 8941, 101, 2600);
INSERT INTO `note` VALUES (8936, '2020-01-22 11:20:14', '2020-01-22 11:20:14', 'CC', 'PROJET ARDUNO', 0, '1366324437', 'ACTIVE', 17.33, 101, 8937, 101, 2537);
INSERT INTO `note` VALUES (8937, '2020-01-22 11:20:14', '2020-01-22 11:20:14', 'SN', 'PROJET ARDUNO', 0, '-652171895', 'ACTIVE', 16.5, 101, 8938, 101, 2537);
INSERT INTO `note` VALUES (8938, '2020-01-22 11:20:15', '2020-01-22 11:20:15', 'CC', 'COMMUNICATION ING1', 0, '-1332642993', 'ACTIVE', 17, 101, 8944, 101, 2663);
INSERT INTO `note` VALUES (8939, '2020-01-22 11:20:15', '2020-01-22 11:20:15', 'SN', 'COMMUNICATION ING1', 0, '-1553883791', 'ACTIVE', 13, 101, 8945, 101, 2663);
INSERT INTO `note` VALUES (8940, '2020-01-22 11:20:15', '2020-01-22 11:20:15', 'CC', 'REFLEXION HUMAINE ING1', 0, '-1950652167', 'ACTIVE', 11.5, 101, 8946, 101, 2726);
INSERT INTO `note` VALUES (8941, '2020-01-22 11:20:15', '2020-01-22 11:20:15', 'SN', 'REFLEXION HUMAINE ING1', 0, '-492391365', 'ACTIVE', 12, 101, 8947, 101, 2726);
INSERT INTO `note` VALUES (8942, '2020-01-22 11:20:15', '2020-01-22 11:20:15', 'CC', 'ALGEBRE ING1', 0, '1496449217', 'ACTIVE', 8, 101, 8931, 101, 2273);
INSERT INTO `note` VALUES (8943, '2020-01-22 11:20:15', '2020-01-22 11:20:15', 'CC', 'ANALYSE ING1', 0, '662097123', 'ACTIVE', 5.75, 101, 8929, 101, 2208);
INSERT INTO `note` VALUES (8944, '2020-01-22 11:20:15', '2020-01-22 11:20:15', 'CC', 'MECANIQUE', 0, '-1623095328', 'ACTIVE', 3.5, 101, 8933, 101, 2412);
INSERT INTO `note` VALUES (8945, '2020-01-22 11:20:15', '2020-01-22 11:20:15', 'CC', 'ELECTROCINÉTIQUE', 0, '599957437', 'ACTIVE', 6, 101, 8935, 101, 2475);
INSERT INTO `note` VALUES (8946, '2020-01-22 11:20:16', '2020-01-22 11:20:16', 'CC', 'MESURE', 0, '1681516425', 'ACTIVE', 5.5, 101, 8939, 101, 2601);
INSERT INTO `note` VALUES (8947, '2020-01-22 11:20:16', '2020-01-22 11:20:16', 'TP', 'MESURE', 0, '-314532373', 'ACTIVE', 9.67, 101, 8940, 101, 2601);
INSERT INTO `note` VALUES (8948, '2020-01-22 11:20:16', '2020-01-22 11:20:16', 'CC', 'PROJET ARDUNO', 0, '1522948313', 'ACTIVE', 15.67, 101, 8937, 101, 2538);
INSERT INTO `note` VALUES (8949, '2020-01-22 11:20:16', '2020-01-22 11:20:16', 'SN', 'PROJET ARDUNO', 0, '-966081862', 'ACTIVE', 17, 101, 8938, 101, 2538);
INSERT INTO `note` VALUES (8950, '2020-01-22 11:20:16', '2020-01-22 11:20:16', 'CC', 'COMMUNICATION ING1', 0, '646309517', 'ACTIVE', 15, 101, 8944, 101, 2664);
INSERT INTO `note` VALUES (8951, '2020-01-22 11:20:16', '2020-01-22 11:20:16', 'CC', 'REFLEXION HUMAINE ING1', 0, '-1980678249', 'ACTIVE', 9, 101, 8946, 101, 2727);
INSERT INTO `note` VALUES (8952, '2020-01-22 11:20:17', '2020-01-22 11:20:17', 'CC', 'ALGEBRE ING1', 0, '1039190829', 'ACTIVE', 10.75, 101, 8931, 101, 2274);
INSERT INTO `note` VALUES (8953, '2020-01-22 11:20:17', '2020-01-22 11:20:17', 'SN', 'ALGEBRE ING1', 0, '1325865397', 'ACTIVE', 15.5, 101, 8932, 101, 2274);
INSERT INTO `note` VALUES (8954, '2020-01-22 11:20:17', '2020-01-22 11:20:17', 'CC', 'ANALYSE ING1', 0, '745748838', 'ACTIVE', 12.5, 101, 8929, 101, 2209);
INSERT INTO `note` VALUES (8955, '2020-01-22 11:20:17', '2020-01-22 11:20:17', 'SN', 'ANALYSE ING1', 0, '-1699074843', 'ACTIVE', 12, 101, 8930, 101, 2209);
INSERT INTO `note` VALUES (8956, '2020-01-22 11:20:17', '2020-01-22 11:20:17', 'CC', 'MECANIQUE', 0, '-168377533', 'ACTIVE', 9, 101, 8933, 101, 2413);
INSERT INTO `note` VALUES (8957, '2020-01-22 11:20:17', '2020-01-22 11:20:17', 'SN', 'MECANIQUE', 0, '1145524093', 'ACTIVE', 13.5, 101, 8934, 101, 2413);
INSERT INTO `note` VALUES (8958, '2020-01-22 11:20:17', '2020-01-22 11:20:17', 'CC', 'ELECTROCINÉTIQUE', 0, '333273144', 'ACTIVE', 12.75, 101, 8935, 101, 2476);
INSERT INTO `note` VALUES (8959, '2020-01-22 11:20:17', '2020-01-22 11:20:17', 'SN', 'ELECTROCINÉTIQUE', 0, '590396239', 'ACTIVE', 14, 101, 8936, 101, 2476);
INSERT INTO `note` VALUES (8960, '2020-01-22 11:20:17', '2020-01-22 11:20:17', 'CC', 'MESURE', 0, '664646092', 'ACTIVE', 11.5, 101, 8939, 101, 2602);
INSERT INTO `note` VALUES (8961, '2020-01-22 11:20:17', '2020-01-22 11:20:17', 'TP', 'MESURE', 0, '958031811', 'ACTIVE', 14.63, 101, 8940, 101, 2602);
INSERT INTO `note` VALUES (8962, '2020-01-22 11:20:17', '2020-01-22 11:20:17', 'SN', 'MESURE', 0, '158301432', 'ACTIVE', 15.75, 101, 8941, 101, 2602);
INSERT INTO `note` VALUES (8963, '2020-01-22 11:20:17', '2020-01-22 11:20:17', 'CC', 'PROJET ARDUNO', 0, '-1284258889', 'ACTIVE', 15, 101, 8937, 101, 2539);
INSERT INTO `note` VALUES (8964, '2020-01-22 11:20:17', '2020-01-22 11:20:17', 'SN', 'PROJET ARDUNO', 0, '-855553900', 'ACTIVE', 16.5, 101, 8938, 101, 2539);
INSERT INTO `note` VALUES (8965, '2020-01-22 11:20:17', '2020-01-22 11:20:17', 'CC', 'COMMUNICATION ING1', 0, '-844134810', 'ACTIVE', 17, 101, 8944, 101, 2665);
INSERT INTO `note` VALUES (8966, '2020-01-22 11:20:18', '2020-01-22 11:20:18', 'SN', 'COMMUNICATION ING1', 0, '-1956782193', 'ACTIVE', 13, 101, 8945, 101, 2665);
INSERT INTO `note` VALUES (8967, '2020-01-22 11:20:18', '2020-01-22 11:20:18', 'CC', 'REFLEXION HUMAINE ING1', 0, '592320566', 'ACTIVE', 11, 101, 8946, 101, 2728);
INSERT INTO `note` VALUES (8968, '2020-01-22 11:20:18', '2020-01-22 11:20:18', 'SN', 'REFLEXION HUMAINE ING1', 0, '-1554288847', 'ACTIVE', 13, 101, 8947, 101, 2728);
INSERT INTO `note` VALUES (8969, '2020-01-22 11:20:18', '2020-01-22 11:20:18', 'CC', 'ALGEBRE ING1', 0, '432605090', 'ACTIVE', 9.5, 101, 8931, 101, 2275);
INSERT INTO `note` VALUES (8970, '2020-01-22 11:20:18', '2020-01-22 11:20:18', 'SN', 'ALGEBRE ING1', 0, '75357971', 'ACTIVE', 9.5, 101, 8932, 101, 2275);
INSERT INTO `note` VALUES (8971, '2020-01-22 11:20:18', '2020-01-22 11:20:18', 'CC', 'ANALYSE ING1', 0, '-657165158', 'ACTIVE', 9, 101, 8929, 101, 2210);
INSERT INTO `note` VALUES (8972, '2020-01-22 11:20:18', '2020-01-22 11:20:18', 'SN', 'ANALYSE ING1', 0, '589734767', 'ACTIVE', 3, 101, 8930, 101, 2210);
INSERT INTO `note` VALUES (8973, '2020-01-22 11:20:18', '2020-01-22 11:20:18', 'CC', 'MECANIQUE', 0, '576592551', 'ACTIVE', 11, 101, 8933, 101, 2414);
INSERT INTO `note` VALUES (8974, '2020-01-22 11:20:18', '2020-01-22 11:20:18', 'SN', 'MECANIQUE', 0, '-341535103', 'ACTIVE', 3.5, 101, 8934, 101, 2414);
INSERT INTO `note` VALUES (8975, '2020-01-22 11:20:18', '2020-01-22 11:20:18', 'CC', 'ELECTROCINÉTIQUE', 0, '-822724215', 'ACTIVE', 8, 101, 8935, 101, 2477);
INSERT INTO `note` VALUES (8976, '2020-01-22 11:20:18', '2020-01-22 11:20:18', 'SN', 'ELECTROCINÉTIQUE', 0, '1824825541', 'ACTIVE', 10, 101, 8936, 101, 2477);
INSERT INTO `note` VALUES (8977, '2020-01-22 11:20:18', '2020-01-22 11:20:18', 'CC', 'MESURE', 0, '-549130948', 'ACTIVE', 9, 101, 8939, 101, 2603);
INSERT INTO `note` VALUES (8978, '2020-01-22 11:20:18', '2020-01-22 11:20:18', 'TP', 'MESURE', 0, '-1856802207', 'ACTIVE', 14.63, 101, 8940, 101, 2603);
INSERT INTO `note` VALUES (8979, '2020-01-22 11:20:19', '2020-01-22 11:20:19', 'SN', 'MESURE', 0, '1950195870', 'ACTIVE', 5, 101, 8941, 101, 2603);
INSERT INTO `note` VALUES (8980, '2020-01-22 11:20:19', '2020-01-22 11:20:19', 'CC', 'PROJET ARDUNO', 0, '2079147240', 'ACTIVE', 17, 101, 8937, 101, 2540);
INSERT INTO `note` VALUES (8981, '2020-01-22 11:20:19', '2020-01-22 11:20:19', 'SN', 'PROJET ARDUNO', 0, '-1121709920', 'ACTIVE', 17, 101, 8938, 101, 2540);
INSERT INTO `note` VALUES (8982, '2020-01-22 11:20:19', '2020-01-22 11:20:19', 'CC', 'COMMUNICATION ING1', 0, '928998457', 'ACTIVE', 18, 101, 8944, 101, 2666);
INSERT INTO `note` VALUES (8983, '2020-01-22 11:20:19', '2020-01-22 11:20:19', 'SN', 'COMMUNICATION ING1', 0, '-880502640', 'ACTIVE', 14, 101, 8945, 101, 2666);
INSERT INTO `note` VALUES (8984, '2020-01-22 11:20:19', '2020-01-22 11:20:19', 'CC', 'REFLEXION HUMAINE ING1', 0, '858668601', 'ACTIVE', 10.5, 101, 8946, 101, 2729);
INSERT INTO `note` VALUES (8985, '2020-01-22 11:20:19', '2020-01-22 11:20:19', 'SN', 'REFLEXION HUMAINE ING1', 0, '712204778', 'ACTIVE', 10, 101, 8947, 101, 2729);
INSERT INTO `note` VALUES (8986, '2020-01-22 11:20:19', '2020-01-22 11:20:19', 'CC', 'ALGEBRE ING1', 0, '-1067331233', 'ACTIVE', 4.5, 101, 8931, 101, 2276);
INSERT INTO `note` VALUES (8987, '2020-01-22 11:20:19', '2020-01-22 11:20:19', 'SN', 'ALGEBRE ING1', 0, '-26833648', 'ACTIVE', 11, 101, 8932, 101, 2276);
INSERT INTO `note` VALUES (8988, '2020-01-22 11:20:19', '2020-01-22 11:20:19', 'CC', 'ANALYSE ING1', 0, '122280166', 'ACTIVE', 3, 101, 8929, 101, 2211);
INSERT INTO `note` VALUES (8989, '2020-01-22 11:20:19', '2020-01-22 11:20:19', 'SN', 'ANALYSE ING1', 0, '1658291799', 'ACTIVE', 2, 101, 8930, 101, 2211);
INSERT INTO `note` VALUES (8990, '2020-01-22 11:20:19', '2020-01-22 11:20:19', 'CC', 'MECANIQUE', 0, '622292452', 'ACTIVE', 8, 101, 8933, 101, 2415);
INSERT INTO `note` VALUES (8991, '2020-01-22 11:20:19', '2020-01-22 11:20:19', 'SN', 'MECANIQUE', 0, '147772337', 'ACTIVE', 9.5, 101, 8934, 101, 2415);
INSERT INTO `note` VALUES (8992, '2020-01-22 11:20:20', '2020-01-22 11:20:20', 'CC', 'ELECTROCINÉTIQUE', 0, '1484031976', 'ACTIVE', 9.5, 101, 8935, 101, 2478);
INSERT INTO `note` VALUES (8993, '2020-01-22 11:20:20', '2020-01-22 11:20:20', 'SN', 'ELECTROCINÉTIQUE', 0, '997037201', 'ACTIVE', 10, 101, 8936, 101, 2478);
INSERT INTO `note` VALUES (8994, '2020-01-22 11:20:21', '2020-01-22 11:20:21', 'CC', 'ALGEBRE ING1', 0, '-1828962286', 'ACTIVE', 8.5, 101, 8931, 101, 2277);
INSERT INTO `note` VALUES (8995, '2020-01-22 11:20:21', '2020-01-22 11:20:21', 'SN', 'ALGEBRE ING1', 0, '-1166205363', 'ACTIVE', 14, 101, 8932, 101, 2277);
INSERT INTO `note` VALUES (8996, '2020-01-22 11:20:21', '2020-01-22 11:20:21', 'CC', 'ANALYSE ING1', 0, '-1468335449', 'ACTIVE', 6.25, 101, 8929, 101, 2212);
INSERT INTO `note` VALUES (8997, '2020-01-22 11:20:21', '2020-01-22 11:20:21', 'SN', 'ANALYSE ING1', 0, '334446551', 'ACTIVE', 7.5, 101, 8930, 101, 2212);
INSERT INTO `note` VALUES (8998, '2020-01-22 11:20:21', '2020-01-22 11:20:21', 'CC', 'MECANIQUE', 0, '-625980501', 'ACTIVE', 10.75, 101, 8933, 101, 2416);
INSERT INTO `note` VALUES (8999, '2020-01-22 11:20:21', '2020-01-22 11:20:22', 'SN', 'MECANIQUE', 0, '342335717', 'ACTIVE', 14, 101, 8934, 101, 2416);
INSERT INTO `note` VALUES (9000, '2020-01-22 11:20:22', '2020-01-22 11:20:22', 'CC', 'ELECTROCINÉTIQUE', 0, '404591031', 'ACTIVE', 8.75, 101, 8935, 101, 2479);
INSERT INTO `note` VALUES (9001, '2020-01-22 11:20:22', '2020-01-22 11:20:22', 'SN', 'ELECTROCINÉTIQUE', 0, '-1660906431', 'ACTIVE', 15.5, 101, 8936, 101, 2479);
INSERT INTO `note` VALUES (9002, '2020-01-22 11:20:22', '2020-01-22 11:20:22', 'CC', 'MESURE', 0, '348055511', 'ACTIVE', 13, 101, 8939, 101, 2605);
INSERT INTO `note` VALUES (9003, '2020-01-22 11:20:22', '2020-01-22 11:20:22', 'TP', 'MESURE', 0, '265343433', 'ACTIVE', 16.06, 101, 8940, 101, 2605);
INSERT INTO `note` VALUES (9004, '2020-01-22 11:20:22', '2020-01-22 11:20:22', 'SN', 'MESURE', 0, '1331745876', 'ACTIVE', 17.25, 101, 8941, 101, 2605);
INSERT INTO `note` VALUES (9005, '2020-01-22 11:20:22', '2020-01-22 11:20:22', 'CC', 'PROJET ARDUNO', 0, '-1966178671', 'ACTIVE', 17, 101, 8937, 101, 2542);
INSERT INTO `note` VALUES (9006, '2020-01-22 11:20:22', '2020-01-22 11:20:22', 'SN', 'PROJET ARDUNO', 0, '-1053779745', 'ACTIVE', 17.5, 101, 8938, 101, 2542);
INSERT INTO `note` VALUES (9007, '2020-01-22 11:20:22', '2020-01-22 11:20:22', 'CC', 'COMMUNICATION ING1', 0, '399607651', 'ACTIVE', 15.5, 101, 8944, 101, 2668);
INSERT INTO `note` VALUES (9008, '2020-01-22 11:20:22', '2020-01-22 11:20:22', 'SN', 'COMMUNICATION ING1', 0, '-636156344', 'ACTIVE', 15.5, 101, 8945, 101, 2668);
INSERT INTO `note` VALUES (9009, '2020-01-22 11:20:22', '2020-01-22 11:20:22', 'CC', 'REFLEXION HUMAINE ING1', 0, '-937981504', 'ACTIVE', 11, 101, 8946, 101, 2731);
INSERT INTO `note` VALUES (9010, '2020-01-22 11:20:22', '2020-01-22 11:20:22', 'SN', 'REFLEXION HUMAINE ING1', 0, '1752622510', 'ACTIVE', 13.5, 101, 8947, 101, 2731);
INSERT INTO `note` VALUES (9011, '2020-01-22 11:20:22', '2020-01-22 11:20:22', 'CC', 'ALGEBRE ING1', 0, '-713636952', 'ACTIVE', 6.75, 101, 8931, 101, 2278);
INSERT INTO `note` VALUES (9012, '2020-01-22 11:20:22', '2020-01-22 11:20:22', 'SN', 'ALGEBRE ING1', 0, '1283159747', 'ACTIVE', 10, 101, 8932, 101, 2278);
INSERT INTO `note` VALUES (9013, '2020-01-22 11:20:22', '2020-01-22 11:20:22', 'CC', 'ANALYSE ING1', 0, '820150108', 'ACTIVE', 11.25, 101, 8929, 101, 2213);
INSERT INTO `note` VALUES (9014, '2020-01-22 11:20:23', '2020-01-22 11:20:23', 'SN', 'ANALYSE ING1', 0, '-1193393637', 'ACTIVE', 14.5, 101, 8930, 101, 2213);
INSERT INTO `note` VALUES (9015, '2020-01-22 11:20:23', '2020-01-22 11:20:23', 'CC', 'MECANIQUE', 0, '784859034', 'ACTIVE', 11.75, 101, 8933, 101, 2417);
INSERT INTO `note` VALUES (9016, '2020-01-22 11:20:23', '2020-01-22 11:20:23', 'SN', 'MECANIQUE', 0, '-504160556', 'ACTIVE', 11, 101, 8934, 101, 2417);
INSERT INTO `note` VALUES (9017, '2020-01-22 11:20:23', '2020-01-22 11:20:23', 'CC', 'ELECTROCINÉTIQUE', 0, '-1219410063', 'ACTIVE', 11.5, 101, 8935, 101, 2480);
INSERT INTO `note` VALUES (9018, '2020-01-22 11:20:23', '2020-01-22 11:20:23', 'SN', 'ELECTROCINÉTIQUE', 0, '1149464660', 'ACTIVE', 14, 101, 8936, 101, 2480);
INSERT INTO `note` VALUES (9019, '2020-01-22 11:20:23', '2020-01-22 11:20:23', 'CC', 'MESURE', 0, '293735553', 'ACTIVE', 9.5, 101, 8939, 101, 2606);
INSERT INTO `note` VALUES (9020, '2020-01-22 11:20:23', '2020-01-22 11:20:23', 'TP', 'MESURE', 0, '-1210799450', 'ACTIVE', 16.06, 101, 8940, 101, 2606);
INSERT INTO `note` VALUES (9021, '2020-01-22 11:20:23', '2020-01-22 11:20:23', 'SN', 'MESURE', 0, '1320391428', 'ACTIVE', 15, 101, 8941, 101, 2606);
INSERT INTO `note` VALUES (9022, '2020-01-22 11:20:23', '2020-01-22 11:20:23', 'CC', 'PROJET ARDUNO', 0, '-1586409744', 'ACTIVE', 16.67, 101, 8937, 101, 2543);
INSERT INTO `note` VALUES (9023, '2020-01-22 11:20:23', '2020-01-22 11:20:23', 'SN', 'PROJET ARDUNO', 0, '-627840110', 'ACTIVE', 15, 101, 8938, 101, 2543);
INSERT INTO `note` VALUES (9024, '2020-01-22 11:20:23', '2020-01-22 11:20:23', 'CC', 'COMMUNICATION ING1', 0, '1443502866', 'ACTIVE', 16, 101, 8944, 101, 2669);
INSERT INTO `note` VALUES (9025, '2020-01-22 11:20:23', '2020-01-22 11:20:23', 'SN', 'COMMUNICATION ING1', 0, '2017150431', 'ACTIVE', 11.5, 101, 8945, 101, 2669);
INSERT INTO `note` VALUES (9026, '2020-01-22 11:20:23', '2020-01-22 11:20:23', 'CC', 'REFLEXION HUMAINE ING1', 0, '1931491362', 'ACTIVE', 10, 101, 8946, 101, 2732);
INSERT INTO `note` VALUES (9027, '2020-01-22 11:20:24', '2020-01-22 11:20:24', 'SN', 'REFLEXION HUMAINE ING1', 0, '-1907058736', 'ACTIVE', 8, 101, 8947, 101, 2732);
INSERT INTO `note` VALUES (9028, '2020-01-22 11:20:24', '2020-01-22 11:20:24', 'CC', 'ALGEBRE ING1', 0, '-251413480', 'ACTIVE', 11.25, 101, 8931, 101, 2279);
INSERT INTO `note` VALUES (9029, '2020-01-22 11:20:24', '2020-01-22 11:20:24', 'SN', 'ALGEBRE ING1', 0, '-958251903', 'ACTIVE', 11.5, 101, 8932, 101, 2279);
INSERT INTO `note` VALUES (9030, '2020-01-22 11:20:24', '2020-01-22 11:20:24', 'CC', 'ANALYSE ING1', 0, '246722551', 'ACTIVE', 8, 101, 8929, 101, 2214);
INSERT INTO `note` VALUES (9031, '2020-01-22 11:20:24', '2020-01-22 11:20:24', 'SN', 'ANALYSE ING1', 0, '-1895017876', 'ACTIVE', 12.5, 101, 8930, 101, 2214);
INSERT INTO `note` VALUES (9032, '2020-01-22 11:20:24', '2020-01-22 11:20:24', 'CC', 'MECANIQUE', 0, '1554318682', 'ACTIVE', 11, 101, 8933, 101, 2418);
INSERT INTO `note` VALUES (9033, '2020-01-22 11:20:24', '2020-01-22 11:20:24', 'SN', 'MECANIQUE', 0, '1893414487', 'ACTIVE', 9, 101, 8934, 101, 2418);
INSERT INTO `note` VALUES (9034, '2020-01-22 11:20:24', '2020-01-22 11:20:24', 'CC', 'ELECTROCINÉTIQUE', 0, '-1033118701', 'ACTIVE', 7.25, 101, 8935, 101, 2481);
INSERT INTO `note` VALUES (9035, '2020-01-22 11:20:24', '2020-01-22 11:20:24', 'SN', 'ELECTROCINÉTIQUE', 0, '1524834785', 'ACTIVE', 12.5, 101, 8936, 101, 2481);
INSERT INTO `note` VALUES (9036, '2020-01-22 11:20:24', '2020-01-22 11:20:24', 'CC', 'MESURE', 0, '1936310241', 'ACTIVE', 11, 101, 8939, 101, 2607);
INSERT INTO `note` VALUES (9037, '2020-01-22 11:20:24', '2020-01-22 11:20:24', 'TP', 'MESURE', 0, '1777608752', 'ACTIVE', 16.06, 101, 8940, 101, 2607);
INSERT INTO `note` VALUES (9038, '2020-01-22 11:20:24', '2020-01-22 11:20:24', 'SN', 'MESURE', 0, '-923463421', 'ACTIVE', 10.25, 101, 8941, 101, 2607);
INSERT INTO `note` VALUES (9039, '2020-01-22 11:20:24', '2020-01-22 11:20:24', 'CC', 'PROJET ARDUNO', 0, '-1041270086', 'ACTIVE', 16.33, 101, 8937, 101, 2544);
INSERT INTO `note` VALUES (9040, '2020-01-22 11:20:24', '2020-01-22 11:20:24', 'SN', 'PROJET ARDUNO', 0, '-2101502044', 'ACTIVE', 17, 101, 8938, 101, 2544);
INSERT INTO `note` VALUES (9041, '2020-01-22 11:20:24', '2020-01-22 11:20:24', 'CC', 'COMMUNICATION ING1', 0, '1553755898', 'ACTIVE', 17, 101, 8944, 101, 2670);
INSERT INTO `note` VALUES (9042, '2020-01-22 11:20:25', '2020-01-22 11:20:25', 'SN', 'COMMUNICATION ING1', 0, '-1079932264', 'ACTIVE', 14, 101, 8945, 101, 2670);
INSERT INTO `note` VALUES (9043, '2020-01-22 11:20:25', '2020-01-22 11:20:25', 'CC', 'REFLEXION HUMAINE ING1', 0, '-484473099', 'ACTIVE', 12.5, 101, 8946, 101, 2733);
INSERT INTO `note` VALUES (9044, '2020-01-22 11:20:25', '2020-01-22 11:20:25', 'SN', 'REFLEXION HUMAINE ING1', 0, '1166742565', 'ACTIVE', 13.5, 101, 8947, 101, 2733);
INSERT INTO `note` VALUES (9045, '2020-01-22 11:20:25', '2020-01-22 11:20:25', 'CC', 'ALGEBRE ING1', 0, '64109571', 'ACTIVE', 4, 101, 8931, 101, 2280);
INSERT INTO `note` VALUES (9046, '2020-01-22 11:20:25', '2020-01-22 11:20:25', 'SN', 'ALGEBRE ING1', 0, '-925245274', 'ACTIVE', 4.5, 101, 8932, 101, 2280);
INSERT INTO `note` VALUES (9047, '2020-01-22 11:20:25', '2020-01-22 11:20:25', 'CC', 'ANALYSE ING1', 0, '1802248022', 'ACTIVE', 4.5, 101, 8929, 101, 2215);
INSERT INTO `note` VALUES (9048, '2020-01-22 11:20:25', '2020-01-22 11:20:25', 'SN', 'ANALYSE ING1', 0, '1872911345', 'ACTIVE', 1.5, 101, 8930, 101, 2215);
INSERT INTO `note` VALUES (9049, '2020-01-22 11:20:25', '2020-01-22 11:20:25', 'CC', 'MECANIQUE', 0, '1860054825', 'ACTIVE', 4.75, 101, 8933, 101, 2419);
INSERT INTO `note` VALUES (9050, '2020-01-22 11:20:25', '2020-01-22 11:20:25', 'SN', 'MECANIQUE', 0, '-1551539786', 'ACTIVE', 3, 101, 8934, 101, 2419);
INSERT INTO `note` VALUES (9051, '2020-01-22 11:20:25', '2020-01-22 11:20:25', 'CC', 'ELECTROCINÉTIQUE', 0, '-945724828', 'ACTIVE', 6.25, 101, 8935, 101, 2482);
INSERT INTO `note` VALUES (9052, '2020-01-22 11:20:25', '2020-01-22 11:20:25', 'SN', 'ELECTROCINÉTIQUE', 0, '507212535', 'ACTIVE', 10, 101, 8936, 101, 2482);
INSERT INTO `note` VALUES (9053, '2020-01-22 11:20:25', '2020-01-22 11:20:25', 'CC', 'MESURE', 0, '-1390056835', 'ACTIVE', 5.5, 101, 8939, 101, 2608);
INSERT INTO `note` VALUES (9054, '2020-01-22 11:20:25', '2020-01-22 11:20:25', 'TP', 'MESURE', 0, '-1671495384', 'ACTIVE', 16.06, 101, 8940, 101, 2608);
INSERT INTO `note` VALUES (9055, '2020-01-22 11:20:26', '2020-01-22 11:20:26', 'SN', 'MESURE', 0, '-981151483', 'ACTIVE', 8, 101, 8941, 101, 2608);
INSERT INTO `note` VALUES (9056, '2020-01-22 11:20:26', '2020-01-22 11:20:26', 'CC', 'PROJET ARDUNO', 0, '280290084', 'ACTIVE', 17, 101, 8937, 101, 2545);
INSERT INTO `note` VALUES (9057, '2020-01-22 11:20:26', '2020-01-22 11:20:26', 'SN', 'PROJET ARDUNO', 0, '-1811887208', 'ACTIVE', 16, 101, 8938, 101, 2545);
INSERT INTO `note` VALUES (9058, '2020-01-22 11:20:26', '2020-01-22 11:20:26', 'CC', 'COMMUNICATION ING1', 0, '-174342847', 'ACTIVE', 15, 101, 8944, 101, 2671);
INSERT INTO `note` VALUES (9059, '2020-01-22 11:20:26', '2020-01-22 11:20:26', 'SN', 'COMMUNICATION ING1', 0, '-1198014321', 'ACTIVE', 13.5, 101, 8945, 101, 2671);
INSERT INTO `note` VALUES (9060, '2020-01-22 11:20:26', '2020-01-22 11:20:26', 'CC', 'REFLEXION HUMAINE ING1', 0, '1348216893', 'ACTIVE', 12, 101, 8946, 101, 2734);
INSERT INTO `note` VALUES (9061, '2020-01-22 11:20:26', '2020-01-22 11:20:26', 'SN', 'REFLEXION HUMAINE ING1', 0, '301752239', 'ACTIVE', 10, 101, 8947, 101, 2734);
INSERT INTO `note` VALUES (9062, '2020-01-22 11:20:26', '2020-01-22 11:20:26', 'CC', 'ALGEBRE ING1', 0, '-1758884737', 'ACTIVE', 9, 101, 8931, 101, 2281);
INSERT INTO `note` VALUES (9063, '2020-01-22 11:20:26', '2020-01-22 11:20:26', 'SN', 'ALGEBRE ING1', 0, '1633605', 'ACTIVE', 7.5, 101, 8932, 101, 2281);
INSERT INTO `note` VALUES (9064, '2020-01-22 11:20:26', '2020-01-22 11:20:26', 'CC', 'ANALYSE ING1', 0, '1513813648', 'ACTIVE', 10.75, 101, 8929, 101, 2216);
INSERT INTO `note` VALUES (9065, '2020-01-22 11:20:26', '2020-01-22 11:20:26', 'SN', 'ANALYSE ING1', 0, '769391200', 'ACTIVE', 16.5, 101, 8930, 101, 2216);
INSERT INTO `note` VALUES (9066, '2020-01-22 11:20:26', '2020-01-22 11:20:26', 'CC', 'MECANIQUE', 0, '1316602089', 'ACTIVE', 10.25, 101, 8933, 101, 2420);
INSERT INTO `note` VALUES (9067, '2020-01-22 11:20:26', '2020-01-22 11:20:26', 'SN', 'MECANIQUE', 0, '1833228706', 'ACTIVE', 11, 101, 8934, 101, 2420);
INSERT INTO `note` VALUES (9068, '2020-01-22 11:20:26', '2020-01-22 11:20:27', 'CC', 'ELECTROCINÉTIQUE', 0, '998552792', 'ACTIVE', 7.5, 101, 8935, 101, 2483);
INSERT INTO `note` VALUES (9069, '2020-01-22 11:20:27', '2020-01-22 11:20:27', 'SN', 'ELECTROCINÉTIQUE', 0, '-832843181', 'ACTIVE', 14.5, 101, 8936, 101, 2483);
INSERT INTO `note` VALUES (9070, '2020-01-22 11:20:27', '2020-01-22 11:20:27', 'CC', 'MESURE', 0, '1074998907', 'ACTIVE', 7.5, 101, 8939, 101, 2609);
INSERT INTO `note` VALUES (9071, '2020-01-22 11:20:27', '2020-01-22 11:20:27', 'TP', 'MESURE', 0, '-1960934597', 'ACTIVE', 16.5, 101, 8940, 101, 2609);
INSERT INTO `note` VALUES (9072, '2020-01-22 11:20:27', '2020-01-22 11:20:27', 'SN', 'MESURE', 0, '-993504054', 'ACTIVE', 14.75, 101, 8941, 101, 2609);
INSERT INTO `note` VALUES (9073, '2020-01-22 11:20:27', '2020-01-22 11:20:27', 'CC', 'PROJET ARDUNO', 0, '858398857', 'ACTIVE', 17, 101, 8937, 101, 2546);
INSERT INTO `note` VALUES (9074, '2020-01-22 11:20:27', '2020-01-22 11:20:27', 'SN', 'PROJET ARDUNO', 0, '502747053', 'ACTIVE', 17.5, 101, 8938, 101, 2546);
INSERT INTO `note` VALUES (9075, '2020-01-22 11:20:27', '2020-01-22 11:20:27', 'CC', 'COMMUNICATION ING1', 0, '260023420', 'ACTIVE', 16, 101, 8944, 101, 2672);
INSERT INTO `note` VALUES (9076, '2020-01-22 11:20:27', '2020-01-22 11:20:27', 'SN', 'COMMUNICATION ING1', 0, '-771484261', 'ACTIVE', 13.5, 101, 8945, 101, 2672);
INSERT INTO `note` VALUES (9077, '2020-01-22 11:20:27', '2020-01-22 11:20:27', 'CC', 'REFLEXION HUMAINE ING1', 0, '1746437242', 'ACTIVE', 13.5, 101, 8946, 101, 2735);
INSERT INTO `note` VALUES (9078, '2020-01-22 11:20:27', '2020-01-22 11:20:27', 'SN', 'REFLEXION HUMAINE ING1', 0, '1206910068', 'ACTIVE', 11, 101, 8947, 101, 2735);
INSERT INTO `note` VALUES (9079, '2020-01-22 11:20:27', '2020-01-22 11:20:27', 'CC', 'ALGEBRE ING1', 0, '104903609', 'ACTIVE', 0, 101, 8931, 101, 2282);
INSERT INTO `note` VALUES (9080, '2020-01-22 11:20:28', '2020-01-22 11:20:28', 'CC', 'ANALYSE ING1', 0, '122188895', 'ACTIVE', 0, 101, 8929, 101, 2217);
INSERT INTO `note` VALUES (9081, '2020-01-22 11:20:28', '2020-01-22 11:20:28', 'CC', 'MECANIQUE', 0, '-162160801', 'ACTIVE', 0, 101, 8933, 101, 2421);
INSERT INTO `note` VALUES (9082, '2020-01-22 11:20:28', '2020-01-22 11:20:28', 'CC', 'ELECTROCINÉTIQUE', 0, '2089503236', 'ACTIVE', 0, 101, 8935, 101, 2484);
INSERT INTO `note` VALUES (9083, '2020-01-22 11:20:28', '2020-01-22 11:20:28', 'CC', 'MESURE', 0, '-1342257001', 'ACTIVE', 0, 101, 8939, 101, 2610);
INSERT INTO `note` VALUES (9084, '2020-01-22 11:20:28', '2020-01-22 11:20:29', 'CC', 'PROJET ARDUNO', 0, '-2120066628', 'ACTIVE', 16.33, 101, 8937, 101, 2547);
INSERT INTO `note` VALUES (9085, '2020-01-22 11:20:29', '2020-01-22 11:20:29', 'SN', 'PROJET ARDUNO', 0, '1923265768', 'ACTIVE', 16.5, 101, 8938, 101, 2547);
INSERT INTO `note` VALUES (9086, '2020-01-22 11:20:29', '2020-01-22 11:20:29', 'CC', 'COMMUNICATION ING1', 0, '1419534737', 'ACTIVE', 15.5, 101, 8944, 101, 2673);
INSERT INTO `note` VALUES (9087, '2020-01-22 11:20:29', '2020-01-22 11:20:30', 'CC', 'ALGEBRE ING1', 0, '-621233701', 'ACTIVE', 9, 101, 8931, 101, 2283);
INSERT INTO `note` VALUES (9088, '2020-01-22 11:20:30', '2020-01-22 11:20:30', 'SN', 'ALGEBRE ING1', 0, '1873438842', 'ACTIVE', 12.5, 101, 8932, 101, 2283);
INSERT INTO `note` VALUES (9089, '2020-01-22 11:20:30', '2020-01-22 11:20:30', 'CC', 'ANALYSE ING1', 0, '1779263842', 'ACTIVE', 10.25, 101, 8929, 101, 2218);
INSERT INTO `note` VALUES (9090, '2020-01-22 11:20:30', '2020-01-22 11:20:30', 'SN', 'ANALYSE ING1', 0, '-578595695', 'ACTIVE', 8, 101, 8930, 101, 2218);
INSERT INTO `note` VALUES (9091, '2020-01-22 11:20:30', '2020-01-22 11:20:30', 'CC', 'MECANIQUE', 0, '-1961009111', 'ACTIVE', 15.25, 101, 8933, 101, 2422);
INSERT INTO `note` VALUES (9092, '2020-01-22 11:20:30', '2020-01-22 11:20:30', 'SN', 'MECANIQUE', 0, '1046424346', 'ACTIVE', 12, 101, 8934, 101, 2422);
INSERT INTO `note` VALUES (9093, '2020-01-22 11:20:30', '2020-01-22 11:20:30', 'CC', 'ELECTROCINÉTIQUE', 0, '1016382421', 'ACTIVE', 9, 101, 8935, 101, 2485);
INSERT INTO `note` VALUES (9094, '2020-01-22 11:20:30', '2020-01-22 11:20:30', 'SN', 'ELECTROCINÉTIQUE', 0, '485316937', 'ACTIVE', 13.5, 101, 8936, 101, 2485);
INSERT INTO `note` VALUES (9095, '2020-01-22 11:20:30', '2020-01-22 11:20:30', 'CC', 'MESURE', 0, '-1663647465', 'ACTIVE', 15.5, 101, 8939, 101, 2611);
INSERT INTO `note` VALUES (9096, '2020-01-22 11:20:30', '2020-01-22 11:20:30', 'TP', 'MESURE', 0, '-45683119', 'ACTIVE', 16.5, 101, 8940, 101, 2611);
INSERT INTO `note` VALUES (9097, '2020-01-22 11:20:30', '2020-01-22 11:20:30', 'SN', 'MESURE', 0, '1665328707', 'ACTIVE', 14.5, 101, 8941, 101, 2611);
INSERT INTO `note` VALUES (9098, '2020-01-22 11:20:30', '2020-01-22 11:20:30', 'CC', 'PROJET ARDUNO', 0, '-455476079', 'ACTIVE', 16.67, 101, 8937, 101, 2548);
INSERT INTO `note` VALUES (9099, '2020-01-22 11:20:30', '2020-01-22 11:20:30', 'SN', 'PROJET ARDUNO', 0, '-374830357', 'ACTIVE', 17.5, 101, 8938, 101, 2548);
INSERT INTO `note` VALUES (9100, '2020-01-22 11:20:30', '2020-01-22 11:20:30', 'CC', 'COMMUNICATION ING1', 0, '-2046471523', 'ACTIVE', 17, 101, 8944, 101, 2674);
INSERT INTO `note` VALUES (9101, '2020-01-22 11:20:31', '2020-01-22 11:20:31', 'SN', 'COMMUNICATION ING1', 0, '1914907376', 'ACTIVE', 16.5, 101, 8945, 101, 2674);
INSERT INTO `note` VALUES (9102, '2020-01-22 11:20:31', '2020-01-22 11:20:31', 'CC', 'REFLEXION HUMAINE ING1', 0, '794645349', 'ACTIVE', 12.5, 101, 8946, 101, 2737);
INSERT INTO `note` VALUES (9103, '2020-01-22 11:20:31', '2020-01-22 11:20:31', 'SN', 'REFLEXION HUMAINE ING1', 0, '623538842', 'ACTIVE', 10, 101, 8947, 101, 2737);
INSERT INTO `note` VALUES (9104, '2020-01-22 11:20:31', '2020-01-22 11:20:31', 'CC', 'ALGEBRE ING1', 0, '-340051542', 'ACTIVE', 8.75, 101, 8931, 101, 2284);
INSERT INTO `note` VALUES (9105, '2020-01-22 11:20:31', '2020-01-22 11:20:31', 'SN', 'ALGEBRE ING1', 0, '-1914172746', 'ACTIVE', 11.5, 101, 8932, 101, 2284);
INSERT INTO `note` VALUES (9106, '2020-01-22 11:20:31', '2020-01-22 11:20:31', 'CC', 'ANALYSE ING1', 0, '670296010', 'ACTIVE', 8.5, 101, 8929, 101, 2219);
INSERT INTO `note` VALUES (9107, '2020-01-22 11:20:31', '2020-01-22 11:20:31', 'SN', 'ANALYSE ING1', 0, '1551714280', 'ACTIVE', 13, 101, 8930, 101, 2219);
INSERT INTO `note` VALUES (9108, '2020-01-22 11:20:31', '2020-01-22 11:20:31', 'CC', 'MECANIQUE', 0, '-553068894', 'ACTIVE', 7.75, 101, 8933, 101, 2423);
INSERT INTO `note` VALUES (9109, '2020-01-22 11:20:31', '2020-01-22 11:20:31', 'SN', 'MECANIQUE', 0, '-2037424549', 'ACTIVE', 10, 101, 8934, 101, 2423);
INSERT INTO `note` VALUES (9110, '2020-01-22 11:20:31', '2020-01-22 11:20:31', 'CC', 'ELECTROCINÉTIQUE', 0, '-1547675915', 'ACTIVE', 9.5, 101, 8935, 101, 2486);
INSERT INTO `note` VALUES (9111, '2020-01-22 11:20:31', '2020-01-22 11:20:31', 'SN', 'ELECTROCINÉTIQUE', 0, '-1725200060', 'ACTIVE', 15.5, 101, 8936, 101, 2486);
INSERT INTO `note` VALUES (9112, '2020-01-22 11:20:34', '2020-01-22 11:20:34', 'CC', 'ALGEBRE ING1', 0, '-1745496407', 'ACTIVE', 6.75, 101, 8931, 101, 2285);
INSERT INTO `note` VALUES (9113, '2020-01-22 11:20:34', '2020-01-22 11:20:34', 'SN', 'ALGEBRE ING1', 0, '-1804212949', 'ACTIVE', 8, 101, 8932, 101, 2285);
INSERT INTO `note` VALUES (9114, '2020-01-22 11:20:34', '2020-01-22 11:20:34', 'CC', 'ANALYSE ING1', 0, '652389873', 'ACTIVE', 9, 101, 8929, 101, 2220);
INSERT INTO `note` VALUES (9115, '2020-01-22 11:20:34', '2020-01-22 11:20:34', 'SN', 'ANALYSE ING1', 0, '1514702973', 'ACTIVE', 11, 101, 8930, 101, 2220);
INSERT INTO `note` VALUES (9116, '2020-01-22 11:20:34', '2020-01-22 11:20:34', 'CC', 'MECANIQUE', 0, '1644032955', 'ACTIVE', 11.75, 101, 8933, 101, 2424);
INSERT INTO `note` VALUES (9117, '2020-01-22 11:20:34', '2020-01-22 11:20:34', 'SN', 'MECANIQUE', 0, '-2051481332', 'ACTIVE', 7, 101, 8934, 101, 2424);
INSERT INTO `note` VALUES (9118, '2020-01-22 11:20:34', '2020-01-22 11:20:34', 'CC', 'ELECTROCINÉTIQUE', 0, '-1554804579', 'ACTIVE', 12.75, 101, 8935, 101, 2487);
INSERT INTO `note` VALUES (9119, '2020-01-22 11:20:34', '2020-01-22 11:20:34', 'SN', 'ELECTROCINÉTIQUE', 0, '-106262183', 'ACTIVE', 13.5, 101, 8936, 101, 2487);
INSERT INTO `note` VALUES (9120, '2020-01-22 11:20:34', '2020-01-22 11:20:34', 'CC', 'MESURE', 0, '39503447', 'ACTIVE', 10, 101, 8939, 101, 2613);
INSERT INTO `note` VALUES (9121, '2020-01-22 11:20:34', '2020-01-22 11:20:34', 'TP', 'MESURE', 0, '480471129', 'ACTIVE', 16.5, 101, 8940, 101, 2613);
INSERT INTO `note` VALUES (9122, '2020-01-22 11:20:34', '2020-01-22 11:20:34', 'SN', 'MESURE', 0, '-728180454', 'ACTIVE', 13.25, 101, 8941, 101, 2613);
INSERT INTO `note` VALUES (9123, '2020-01-22 11:20:35', '2020-01-22 11:20:35', 'CC', 'PROJET ARDUNO', 0, '-1926684265', 'ACTIVE', 16.67, 101, 8937, 101, 2550);
INSERT INTO `note` VALUES (9124, '2020-01-22 11:20:35', '2020-01-22 11:20:35', 'SN', 'PROJET ARDUNO', 0, '1939962047', 'ACTIVE', 18, 101, 8938, 101, 2550);
INSERT INTO `note` VALUES (9125, '2020-01-22 11:20:35', '2020-01-22 11:20:35', 'CC', 'COMMUNICATION ING1', 0, '931630303', 'ACTIVE', 15.5, 101, 8944, 101, 2676);
INSERT INTO `note` VALUES (9126, '2020-01-22 11:20:35', '2020-01-22 11:20:35', 'SN', 'COMMUNICATION ING1', 0, '204481452', 'ACTIVE', 17, 101, 8945, 101, 2676);
INSERT INTO `note` VALUES (9127, '2020-01-22 11:20:35', '2020-01-22 11:20:35', 'CC', 'REFLEXION HUMAINE ING1', 0, '690101806', 'ACTIVE', 14.5, 101, 8946, 101, 2739);
INSERT INTO `note` VALUES (9128, '2020-01-22 11:20:35', '2020-01-22 11:20:35', 'SN', 'REFLEXION HUMAINE ING1', 0, '1340914467', 'ACTIVE', 11, 101, 8947, 101, 2739);
INSERT INTO `note` VALUES (9129, '2020-01-22 11:20:35', '2020-01-22 11:20:35', 'CC', 'ALGEBRE ING1', 0, '1389682457', 'ACTIVE', 7, 101, 8931, 101, 2286);
INSERT INTO `note` VALUES (9130, '2020-01-22 11:20:35', '2020-01-22 11:20:35', 'SN', 'ALGEBRE ING1', 0, '-1833679501', 'ACTIVE', 8, 101, 8932, 101, 2286);
INSERT INTO `note` VALUES (9131, '2020-01-22 11:20:35', '2020-01-22 11:20:35', 'CC', 'ANALYSE ING1', 0, '2050652646', 'ACTIVE', 10, 101, 8929, 101, 2221);
INSERT INTO `note` VALUES (9132, '2020-01-22 11:20:35', '2020-01-22 11:20:35', 'SN', 'ANALYSE ING1', 0, '511922086', 'ACTIVE', 5.5, 101, 8930, 101, 2221);
INSERT INTO `note` VALUES (9133, '2020-01-22 11:20:35', '2020-01-22 11:20:35', 'CC', 'MECANIQUE', 0, '-1129839357', 'ACTIVE', 7.25, 101, 8933, 101, 2425);
INSERT INTO `note` VALUES (9134, '2020-01-22 11:20:35', '2020-01-22 11:20:35', 'SN', 'MECANIQUE', 0, '-1235236874', 'ACTIVE', 7, 101, 8934, 101, 2425);
INSERT INTO `note` VALUES (9135, '2020-01-22 11:20:35', '2020-01-22 11:20:36', 'CC', 'ELECTROCINÉTIQUE', 0, '-524101010', 'ACTIVE', 6.5, 101, 8935, 101, 2488);
INSERT INTO `note` VALUES (9136, '2020-01-22 11:20:36', '2020-01-22 11:20:36', 'SN', 'ELECTROCINÉTIQUE', 0, '-1870913476', 'ACTIVE', 10, 101, 8936, 101, 2488);
INSERT INTO `note` VALUES (9137, '2020-01-22 11:20:36', '2020-01-22 11:20:36', 'CC', 'MESURE', 0, '920840066', 'ACTIVE', 9, 101, 8939, 101, 2614);
INSERT INTO `note` VALUES (9138, '2020-01-22 11:20:36', '2020-01-22 11:20:36', 'TP', 'MESURE', 0, '1959303359', 'ACTIVE', 14.17, 101, 8940, 101, 2614);
INSERT INTO `note` VALUES (9139, '2020-01-22 11:20:36', '2020-01-22 11:20:36', 'SN', 'MESURE', 0, '136793994', 'ACTIVE', 11, 101, 8941, 101, 2614);
INSERT INTO `note` VALUES (9140, '2020-01-22 11:20:36', '2020-01-22 11:20:36', 'CC', 'PROJET ARDUNO', 0, '1242938734', 'ACTIVE', 16.67, 101, 8937, 101, 2551);
INSERT INTO `note` VALUES (9141, '2020-01-22 11:20:36', '2020-01-22 11:20:36', 'SN', 'PROJET ARDUNO', 0, '-1247481631', 'ACTIVE', 15, 101, 8938, 101, 2551);
INSERT INTO `note` VALUES (9142, '2020-01-22 11:20:36', '2020-01-22 11:20:36', 'CC', 'COMMUNICATION ING1', 0, '-399583340', 'ACTIVE', 18, 101, 8944, 101, 2677);
INSERT INTO `note` VALUES (9143, '2020-01-22 11:20:36', '2020-01-22 11:20:36', 'SN', 'COMMUNICATION ING1', 0, '-1995456277', 'ACTIVE', 17.5, 101, 8945, 101, 2677);
INSERT INTO `note` VALUES (9144, '2020-01-22 11:20:36', '2020-01-22 11:20:36', 'CC', 'REFLEXION HUMAINE ING1', 0, '1359494429', 'ACTIVE', 7, 101, 8946, 101, 2740);
INSERT INTO `note` VALUES (9145, '2020-01-22 11:20:36', '2020-01-22 11:20:36', 'SN', 'REFLEXION HUMAINE ING1', 0, '1223298488', 'ACTIVE', 10, 101, 8947, 101, 2740);
INSERT INTO `note` VALUES (9146, '2020-01-22 11:20:36', '2020-01-22 11:20:36', 'CC', 'ALGEBRE ING1', 0, '-2006769092', 'ACTIVE', 5.25, 101, 8931, 101, 2287);
INSERT INTO `note` VALUES (9147, '2020-01-22 11:20:36', '2020-01-22 11:20:36', 'SN', 'ALGEBRE ING1', 0, '-1817580977', 'ACTIVE', 6.5, 101, 8932, 101, 2287);
INSERT INTO `note` VALUES (9148, '2020-01-22 11:20:37', '2020-01-22 11:20:37', 'CC', 'ANALYSE ING1', 0, '2052464384', 'ACTIVE', 7.25, 101, 8929, 101, 2222);
INSERT INTO `note` VALUES (9149, '2020-01-22 11:20:37', '2020-01-22 11:20:37', 'SN', 'ANALYSE ING1', 0, '1405169953', 'ACTIVE', 2.5, 101, 8930, 101, 2222);
INSERT INTO `note` VALUES (9150, '2020-01-22 11:20:37', '2020-01-22 11:20:37', 'CC', 'MECANIQUE', 0, '1492858161', 'ACTIVE', 6.75, 101, 8933, 101, 2426);
INSERT INTO `note` VALUES (9151, '2020-01-22 11:20:37', '2020-01-22 11:20:37', 'SN', 'MECANIQUE', 0, '-274127197', 'ACTIVE', 5.5, 101, 8934, 101, 2426);
INSERT INTO `note` VALUES (9152, '2020-01-22 11:20:37', '2020-01-22 11:20:37', 'CC', 'ELECTROCINÉTIQUE', 0, '-486272114', 'ACTIVE', 5.25, 101, 8935, 101, 2489);
INSERT INTO `note` VALUES (9153, '2020-01-22 11:20:37', '2020-01-22 11:20:37', 'SN', 'ELECTROCINÉTIQUE', 0, '1679994277', 'ACTIVE', 12, 101, 8936, 101, 2489);
INSERT INTO `note` VALUES (9154, '2020-01-22 11:20:37', '2020-01-22 11:20:37', 'CC', 'MESURE', 0, '-639159444', 'ACTIVE', 7.5, 101, 8939, 101, 2615);
INSERT INTO `note` VALUES (9155, '2020-01-22 11:20:37', '2020-01-22 11:20:37', 'TP', 'MESURE', 0, '1924247881', 'ACTIVE', 5.42, 101, 8940, 101, 2615);
INSERT INTO `note` VALUES (9156, '2020-01-22 11:20:37', '2020-01-22 11:20:37', 'SN', 'MESURE', 0, '131207306', 'ACTIVE', 10, 101, 8941, 101, 2615);
INSERT INTO `note` VALUES (9157, '2020-01-22 11:20:37', '2020-01-22 11:20:37', 'CC', 'PROJET ARDUNO', 0, '2096836691', 'ACTIVE', 17, 101, 8937, 101, 2552);
INSERT INTO `note` VALUES (9158, '2020-01-22 11:20:37', '2020-01-22 11:20:37', 'SN', 'PROJET ARDUNO', 0, '566913299', 'ACTIVE', 18, 101, 8938, 101, 2552);
INSERT INTO `note` VALUES (9159, '2020-01-22 11:20:37', '2020-01-22 11:20:38', 'CC', 'COMMUNICATION ING1', 0, '914505128', 'ACTIVE', 15, 101, 8944, 101, 2678);
INSERT INTO `note` VALUES (9160, '2020-01-22 11:20:38', '2020-01-22 11:20:38', 'SN', 'COMMUNICATION ING1', 0, '-1285470267', 'ACTIVE', 15.5, 101, 8945, 101, 2678);
INSERT INTO `note` VALUES (9161, '2020-01-22 11:20:38', '2020-01-22 11:20:38', 'CC', 'REFLEXION HUMAINE ING1', 0, '957700545', 'ACTIVE', 10.25, 101, 8946, 101, 2741);
INSERT INTO `note` VALUES (9162, '2020-01-22 11:20:38', '2020-01-22 11:20:38', 'SN', 'REFLEXION HUMAINE ING1', 0, '-699678332', 'ACTIVE', 10, 101, 8947, 101, 2741);
INSERT INTO `note` VALUES (9163, '2020-01-22 11:20:38', '2020-01-22 11:20:38', 'CC', 'ALGEBRE ING1', 0, '1094902459', 'ACTIVE', 5.25, 101, 8931, 101, 2288);
INSERT INTO `note` VALUES (9164, '2020-01-22 11:20:38', '2020-01-22 11:20:38', 'SN', 'ALGEBRE ING1', 0, '-1334044944', 'ACTIVE', 4.5, 101, 8932, 101, 2288);
INSERT INTO `note` VALUES (9165, '2020-01-22 11:20:38', '2020-01-22 11:20:38', 'CC', 'ANALYSE ING1', 0, '730913126', 'ACTIVE', 7, 101, 8929, 101, 2223);
INSERT INTO `note` VALUES (9166, '2020-01-22 11:20:38', '2020-01-22 11:20:38', 'SN', 'ANALYSE ING1', 0, '962255748', 'ACTIVE', 8.5, 101, 8930, 101, 2223);
INSERT INTO `note` VALUES (9167, '2020-01-22 11:20:38', '2020-01-22 11:20:38', 'CC', 'MECANIQUE', 0, '141749219', 'ACTIVE', 7, 101, 8933, 101, 2427);
INSERT INTO `note` VALUES (9168, '2020-01-22 11:20:38', '2020-01-22 11:20:38', 'SN', 'MECANIQUE', 0, '1578067284', 'ACTIVE', 4, 101, 8934, 101, 2427);
INSERT INTO `note` VALUES (9169, '2020-01-22 11:20:38', '2020-01-22 11:20:38', 'CC', 'ELECTROCINÉTIQUE', 0, '-1682964477', 'ACTIVE', 6.5, 101, 8935, 101, 2490);
INSERT INTO `note` VALUES (9170, '2020-01-22 11:20:38', '2020-01-22 11:20:38', 'SN', 'ELECTROCINÉTIQUE', 0, '1726563919', 'ACTIVE', 11, 101, 8936, 101, 2490);
INSERT INTO `note` VALUES (9171, '2020-01-22 11:20:38', '2020-01-22 11:20:38', 'CC', 'MESURE', 0, '-429403289', 'ACTIVE', 5, 101, 8939, 101, 2616);
INSERT INTO `note` VALUES (9172, '2020-01-22 11:20:38', '2020-01-22 11:20:38', 'TP', 'MESURE', 0, '284980844', 'ACTIVE', 14.17, 101, 8940, 101, 2616);
INSERT INTO `note` VALUES (9173, '2020-01-22 11:20:38', '2020-01-22 11:20:39', 'SN', 'MESURE', 0, '-23389410', 'ACTIVE', 12, 101, 8941, 101, 2616);
INSERT INTO `note` VALUES (9174, '2020-01-22 11:20:39', '2020-01-22 11:20:39', 'CC', 'PROJET ARDUNO', 0, '-1484396133', 'ACTIVE', 16.17, 101, 8937, 101, 2553);
INSERT INTO `note` VALUES (9175, '2020-01-22 11:20:39', '2020-01-22 11:20:39', 'SN', 'PROJET ARDUNO', 0, '-285152205', 'ACTIVE', 17.5, 101, 8938, 101, 2553);
INSERT INTO `note` VALUES (9176, '2020-01-22 11:20:39', '2020-01-22 11:20:39', 'CC', 'COMMUNICATION ING1', 0, '1550791776', 'ACTIVE', 17, 101, 8944, 101, 2679);
INSERT INTO `note` VALUES (9177, '2020-01-22 11:20:39', '2020-01-22 11:20:39', 'SN', 'COMMUNICATION ING1', 0, '29610897', 'ACTIVE', 13, 101, 8945, 101, 2679);
INSERT INTO `note` VALUES (9178, '2020-01-22 11:20:39', '2020-01-22 11:20:39', 'CC', 'REFLEXION HUMAINE ING1', 0, '-1150919895', 'ACTIVE', 11, 101, 8946, 101, 2742);
INSERT INTO `note` VALUES (9179, '2020-01-22 11:20:39', '2020-01-22 11:20:39', 'SN', 'REFLEXION HUMAINE ING1', 0, '1978261905', 'ACTIVE', 10, 101, 8947, 101, 2742);
INSERT INTO `note` VALUES (9180, '2020-01-22 11:20:39', '2020-01-22 11:20:39', 'CC', 'ALGEBRE ING1', 0, '-1087479121', 'ACTIVE', 6, 101, 8931, 101, 2289);
INSERT INTO `note` VALUES (9181, '2020-01-22 11:20:39', '2020-01-22 11:20:39', 'SN', 'ALGEBRE ING1', 0, '1025593043', 'ACTIVE', 8.5, 101, 8932, 101, 2289);
INSERT INTO `note` VALUES (9182, '2020-01-22 11:20:39', '2020-01-22 11:20:39', 'CC', 'ANALYSE ING1', 0, '-993604308', 'ACTIVE', 7, 101, 8929, 101, 2224);
INSERT INTO `note` VALUES (9183, '2020-01-22 11:20:39', '2020-01-22 11:20:39', 'SN', 'ANALYSE ING1', 0, '1891960908', 'ACTIVE', 7.5, 101, 8930, 101, 2224);
INSERT INTO `note` VALUES (9184, '2020-01-22 11:20:39', '2020-01-22 11:20:39', 'CC', 'MECANIQUE', 0, '722204130', 'ACTIVE', 10.5, 101, 8933, 101, 2428);
INSERT INTO `note` VALUES (9185, '2020-01-22 11:20:39', '2020-01-22 11:20:39', 'SN', 'MECANIQUE', 0, '-1627222444', 'ACTIVE', 7, 101, 8934, 101, 2428);
INSERT INTO `note` VALUES (9186, '2020-01-22 11:20:39', '2020-01-22 11:20:40', 'CC', 'ELECTROCINÉTIQUE', 0, '241424073', 'ACTIVE', 11.5, 101, 8935, 101, 2491);
INSERT INTO `note` VALUES (9187, '2020-01-22 11:20:40', '2020-01-22 11:20:40', 'SN', 'ELECTROCINÉTIQUE', 0, '-1209185547', 'ACTIVE', 10, 101, 8936, 101, 2491);
INSERT INTO `note` VALUES (9188, '2020-01-22 11:20:40', '2020-01-22 11:20:40', 'CC', 'MESURE', 0, '1454047932', 'ACTIVE', 8, 101, 8939, 101, 2617);
INSERT INTO `note` VALUES (9189, '2020-01-22 11:20:40', '2020-01-22 11:20:40', 'TP', 'MESURE', 0, '1723080421', 'ACTIVE', 14.17, 101, 8940, 101, 2617);
INSERT INTO `note` VALUES (9190, '2020-01-22 11:20:40', '2020-01-22 11:20:40', 'SN', 'MESURE', 0, '1775923417', 'ACTIVE', 10.75, 101, 8941, 101, 2617);
INSERT INTO `note` VALUES (9191, '2020-01-22 11:20:40', '2020-01-22 11:20:40', 'CC', 'PROJET ARDUNO', 0, '65921474', 'ACTIVE', 17.33, 101, 8937, 101, 2554);
INSERT INTO `note` VALUES (9192, '2020-01-22 11:20:40', '2020-01-22 11:20:40', 'SN', 'PROJET ARDUNO', 0, '945570833', 'ACTIVE', 16.5, 101, 8938, 101, 2554);
INSERT INTO `note` VALUES (9193, '2020-01-22 11:20:40', '2020-01-22 11:20:40', 'CC', 'COMMUNICATION ING1', 0, '434478118', 'ACTIVE', 16, 101, 8944, 101, 2680);
INSERT INTO `note` VALUES (9194, '2020-01-22 11:20:40', '2020-01-22 11:20:40', 'SN', 'COMMUNICATION ING1', 0, '-1218742295', 'ACTIVE', 12.5, 101, 8945, 101, 2680);
INSERT INTO `note` VALUES (9195, '2020-01-22 11:20:40', '2020-01-22 11:20:40', 'CC', 'REFLEXION HUMAINE ING1', 0, '-1768114301', 'ACTIVE', 15, 101, 8946, 101, 2743);
INSERT INTO `note` VALUES (9196, '2020-01-22 11:20:40', '2020-01-22 11:20:40', 'SN', 'REFLEXION HUMAINE ING1', 0, '-929136145', 'ACTIVE', 11.5, 101, 8947, 101, 2743);
INSERT INTO `note` VALUES (9197, '2020-01-22 11:20:40', '2020-01-22 11:20:40', 'CC', 'ALGEBRE ING1', 0, '310552118', 'ACTIVE', 7.5, 101, 8931, 101, 2290);
INSERT INTO `note` VALUES (9198, '2020-01-22 11:20:40', '2020-01-22 11:20:40', 'SN', 'ALGEBRE ING1', 0, '1868647677', 'ACTIVE', 7.5, 101, 8932, 101, 2290);
INSERT INTO `note` VALUES (9199, '2020-01-22 11:20:40', '2020-01-22 11:20:40', 'CC', 'ANALYSE ING1', 0, '587216648', 'ACTIVE', 5.75, 101, 8929, 101, 2225);
INSERT INTO `note` VALUES (9200, '2020-01-22 11:20:40', '2020-01-22 11:20:41', 'SN', 'ANALYSE ING1', 0, '1368176259', 'ACTIVE', 6.5, 101, 8930, 101, 2225);
INSERT INTO `note` VALUES (9201, '2020-01-22 11:20:41', '2020-01-22 11:20:41', 'CC', 'MECANIQUE', 0, '-720206515', 'ACTIVE', 6, 101, 8933, 101, 2429);
INSERT INTO `note` VALUES (9202, '2020-01-22 11:20:41', '2020-01-22 11:20:41', 'SN', 'MECANIQUE', 0, '-1961802897', 'ACTIVE', 5.5, 101, 8934, 101, 2429);
INSERT INTO `note` VALUES (9203, '2020-01-22 11:20:41', '2020-01-22 11:20:41', 'CC', 'ELECTROCINÉTIQUE', 0, '-699046146', 'ACTIVE', 8.5, 101, 8935, 101, 2492);
INSERT INTO `note` VALUES (9204, '2020-01-22 11:20:41', '2020-01-22 11:20:41', 'SN', 'ELECTROCINÉTIQUE', 0, '-1152249853', 'ACTIVE', 10, 101, 8936, 101, 2492);
INSERT INTO `note` VALUES (9205, '2020-01-22 11:20:41', '2020-01-22 11:20:41', 'CC', 'MESURE', 0, '-1820390926', 'ACTIVE', 8.5, 101, 8939, 101, 2618);
INSERT INTO `note` VALUES (9206, '2020-01-22 11:20:41', '2020-01-22 11:20:41', 'TP', 'MESURE', 0, '1564590548', 'ACTIVE', 16.08, 101, 8940, 101, 2618);
INSERT INTO `note` VALUES (9207, '2020-01-22 11:20:41', '2020-01-22 11:20:41', 'SN', 'MESURE', 0, '853587405', 'ACTIVE', 8, 101, 8941, 101, 2618);
INSERT INTO `note` VALUES (9208, '2020-01-22 11:20:41', '2020-01-22 11:20:41', 'CC', 'PROJET ARDUNO', 0, '-2031200533', 'ACTIVE', 12, 101, 8937, 101, 2555);
INSERT INTO `note` VALUES (9209, '2020-01-22 11:20:41', '2020-01-22 11:20:41', 'SN', 'PROJET ARDUNO', 0, '475977556', 'ACTIVE', 12, 101, 8938, 101, 2555);
INSERT INTO `note` VALUES (9210, '2020-01-22 11:20:41', '2020-01-22 11:20:41', 'CC', 'COMMUNICATION ING1', 0, '-401960488', 'ACTIVE', 15.5, 101, 8944, 101, 2681);
INSERT INTO `note` VALUES (9211, '2020-01-22 11:20:41', '2020-01-22 11:20:41', 'SN', 'COMMUNICATION ING1', 0, '2041039989', 'ACTIVE', 12.5, 101, 8945, 101, 2681);
INSERT INTO `note` VALUES (9212, '2020-01-22 11:20:41', '2020-01-22 11:20:42', 'CC', 'REFLEXION HUMAINE ING1', 0, '2044060062', 'ACTIVE', 8, 101, 8946, 101, 2744);
INSERT INTO `note` VALUES (9213, '2020-01-22 11:20:42', '2020-01-22 11:20:42', 'SN', 'REFLEXION HUMAINE ING1', 0, '571726488', 'ACTIVE', 14, 101, 8947, 101, 2744);
INSERT INTO `note` VALUES (9214, '2020-01-22 11:20:42', '2020-01-22 11:20:42', 'CC', 'ALGEBRE ING1', 0, '882221821', 'ACTIVE', 8.5, 101, 8931, 101, 2291);
INSERT INTO `note` VALUES (9215, '2020-01-22 11:20:42', '2020-01-22 11:20:42', 'SN', 'ALGEBRE ING1', 0, '1117292092', 'ACTIVE', 9, 101, 8932, 101, 2291);
INSERT INTO `note` VALUES (9216, '2020-01-22 11:20:42', '2020-01-22 11:20:42', 'CC', 'ANALYSE ING1', 0, '-1307918157', 'ACTIVE', 12.25, 101, 8929, 101, 2226);
INSERT INTO `note` VALUES (9217, '2020-01-22 11:20:42', '2020-01-22 11:20:42', 'SN', 'ANALYSE ING1', 0, '-1156186895', 'ACTIVE', 13.5, 101, 8930, 101, 2226);
INSERT INTO `note` VALUES (9218, '2020-01-22 11:20:42', '2020-01-22 11:20:42', 'CC', 'MECANIQUE', 0, '1361223111', 'ACTIVE', 11.5, 101, 8933, 101, 2430);
INSERT INTO `note` VALUES (9219, '2020-01-22 11:20:42', '2020-01-22 11:20:42', 'SN', 'MECANIQUE', 0, '-1465500361', 'ACTIVE', 12.5, 101, 8934, 101, 2430);
INSERT INTO `note` VALUES (9220, '2020-01-22 11:20:42', '2020-01-22 11:20:42', 'CC', 'ELECTROCINÉTIQUE', 0, '-1136172740', 'ACTIVE', 13.5, 101, 8935, 101, 2493);
INSERT INTO `note` VALUES (9221, '2020-01-22 11:20:42', '2020-01-22 11:20:42', 'SN', 'ELECTROCINÉTIQUE', 0, '-1194825593', 'ACTIVE', 13.5, 101, 8936, 101, 2493);
INSERT INTO `note` VALUES (9222, '2020-01-22 11:20:42', '2020-01-22 11:20:42', 'CC', 'MESURE', 0, '1506532082', 'ACTIVE', 11.5, 101, 8939, 101, 2619);
INSERT INTO `note` VALUES (9223, '2020-01-22 11:20:42', '2020-01-22 11:20:42', 'TP', 'MESURE', 0, '523183412', 'ACTIVE', 16.08, 101, 8940, 101, 2619);
INSERT INTO `note` VALUES (9224, '2020-01-22 11:20:42', '2020-01-22 11:20:42', 'SN', 'MESURE', 0, '197926708', 'ACTIVE', 17.5, 101, 8941, 101, 2619);
INSERT INTO `note` VALUES (9225, '2020-01-22 11:20:42', '2020-01-22 11:20:43', 'CC', 'PROJET ARDUNO', 0, '45957217', 'ACTIVE', 17.17, 101, 8937, 101, 2556);
INSERT INTO `note` VALUES (9226, '2020-01-22 11:20:43', '2020-01-22 11:20:43', 'SN', 'PROJET ARDUNO', 0, '-863794015', 'ACTIVE', 15, 101, 8938, 101, 2556);
INSERT INTO `note` VALUES (9227, '2020-01-22 11:20:43', '2020-01-22 11:20:43', 'CC', 'COMMUNICATION ING1', 0, '-265358996', 'ACTIVE', 15, 101, 8944, 101, 2682);
INSERT INTO `note` VALUES (9228, '2020-01-22 11:20:43', '2020-01-22 11:20:43', 'SN', 'COMMUNICATION ING1', 0, '814567546', 'ACTIVE', 12.5, 101, 8945, 101, 2682);
INSERT INTO `note` VALUES (9229, '2020-01-22 11:20:43', '2020-01-22 11:20:43', 'CC', 'REFLEXION HUMAINE ING1', 0, '-1325513542', 'ACTIVE', 10, 101, 8946, 101, 2745);
INSERT INTO `note` VALUES (9230, '2020-01-22 11:20:43', '2020-01-22 11:20:43', 'SN', 'REFLEXION HUMAINE ING1', 0, '1002064830', 'ACTIVE', 11, 101, 8947, 101, 2745);
INSERT INTO `note` VALUES (9231, '2020-01-22 11:20:43', '2020-01-22 11:20:43', 'CC', 'ALGEBRE ING1', 0, '-1212104216', 'ACTIVE', 9.75, 101, 8931, 101, 2292);
INSERT INTO `note` VALUES (9232, '2020-01-22 11:20:43', '2020-01-22 11:20:43', 'SN', 'ALGEBRE ING1', 0, '469200766', 'ACTIVE', 11, 101, 8932, 101, 2292);
INSERT INTO `note` VALUES (9233, '2020-01-22 11:20:43', '2020-01-22 11:20:43', 'CC', 'ANALYSE ING1', 0, '-22776425', 'ACTIVE', 10.5, 101, 8929, 101, 2227);
INSERT INTO `note` VALUES (9234, '2020-01-22 11:20:43', '2020-01-22 11:20:43', 'SN', 'ANALYSE ING1', 0, '-904856244', 'ACTIVE', 9, 101, 8930, 101, 2227);
INSERT INTO `note` VALUES (9235, '2020-01-22 11:20:43', '2020-01-22 11:20:43', 'CC', 'MECANIQUE', 0, '1729266407', 'ACTIVE', 14, 101, 8933, 101, 2431);
INSERT INTO `note` VALUES (9236, '2020-01-22 11:20:43', '2020-01-22 11:20:43', 'SN', 'MECANIQUE', 0, '393532470', 'ACTIVE', 6.5, 101, 8934, 101, 2431);
INSERT INTO `note` VALUES (9237, '2020-01-22 11:20:43', '2020-01-22 11:20:43', 'CC', 'ELECTROCINÉTIQUE', 0, '-1634042655', 'ACTIVE', 12, 101, 8935, 101, 2494);
INSERT INTO `note` VALUES (9238, '2020-01-22 11:20:43', '2020-01-22 11:20:43', 'SN', 'ELECTROCINÉTIQUE', 0, '219137618', 'ACTIVE', 14.5, 101, 8936, 101, 2494);
INSERT INTO `note` VALUES (9239, '2020-01-22 11:20:43', '2020-01-22 11:20:44', 'CC', 'MESURE', 0, '1452252410', 'ACTIVE', 12, 101, 8939, 101, 2620);
INSERT INTO `note` VALUES (9240, '2020-01-22 11:20:44', '2020-01-22 11:20:44', 'TP', 'MESURE', 0, '-758065520', 'ACTIVE', 16.08, 101, 8940, 101, 2620);
INSERT INTO `note` VALUES (9241, '2020-01-22 11:20:44', '2020-01-22 11:20:44', 'SN', 'MESURE', 0, '1465028172', 'ACTIVE', 14, 101, 8941, 101, 2620);
INSERT INTO `note` VALUES (9242, '2020-01-22 11:20:44', '2020-01-22 11:20:44', 'CC', 'PROJET ARDUNO', 0, '-1276008283', 'ACTIVE', 17.33, 101, 8937, 101, 2557);
INSERT INTO `note` VALUES (9243, '2020-01-22 11:20:44', '2020-01-22 11:20:44', 'SN', 'PROJET ARDUNO', 0, '1388302173', 'ACTIVE', 18, 101, 8938, 101, 2557);
INSERT INTO `note` VALUES (9244, '2020-01-22 11:20:44', '2020-01-22 11:20:44', 'CC', 'COMMUNICATION ING1', 0, '1733139398', 'ACTIVE', 17, 101, 8944, 101, 2683);
INSERT INTO `note` VALUES (9245, '2020-01-22 11:20:44', '2020-01-22 11:20:44', 'SN', 'COMMUNICATION ING1', 0, '2031739731', 'ACTIVE', 16, 101, 8945, 101, 2683);
INSERT INTO `note` VALUES (9246, '2020-01-22 11:20:44', '2020-01-22 11:20:44', 'CC', 'REFLEXION HUMAINE ING1', 0, '-485113900', 'ACTIVE', 13, 101, 8946, 101, 2746);
INSERT INTO `note` VALUES (9247, '2020-01-22 11:20:44', '2020-01-22 11:20:44', 'SN', 'REFLEXION HUMAINE ING1', 0, '628315252', 'ACTIVE', 17, 101, 8947, 101, 2746);
INSERT INTO `note` VALUES (9248, '2020-01-22 11:20:44', '2020-01-22 11:20:44', 'CC', 'ALGEBRE ING1', 0, '1118773642', 'ACTIVE', 5.5, 101, 8931, 101, 2293);
INSERT INTO `note` VALUES (9249, '2020-01-22 11:20:44', '2020-01-22 11:20:44', 'SN', 'ALGEBRE ING1', 0, '-1354921897', 'ACTIVE', 10, 101, 8932, 101, 2293);
INSERT INTO `note` VALUES (9250, '2020-01-22 11:20:44', '2020-01-22 11:20:44', 'CC', 'ANALYSE ING1', 0, '1661496278', 'ACTIVE', 10.5, 101, 8929, 101, 2228);
INSERT INTO `note` VALUES (9251, '2020-01-22 11:20:44', '2020-01-22 11:20:44', 'SN', 'ANALYSE ING1', 0, '436223242', 'ACTIVE', 7.5, 101, 8930, 101, 2228);
INSERT INTO `note` VALUES (9252, '2020-01-22 11:20:45', '2020-01-22 11:20:45', 'CC', 'MECANIQUE', 0, '-1334921693', 'ACTIVE', 9.75, 101, 8933, 101, 2432);
INSERT INTO `note` VALUES (9253, '2020-01-22 11:20:45', '2020-01-22 11:20:45', 'SN', 'MECANIQUE', 0, '-1299104548', 'ACTIVE', 10.5, 101, 8934, 101, 2432);
INSERT INTO `note` VALUES (9254, '2020-01-22 11:20:45', '2020-01-22 11:20:45', 'CC', 'ELECTROCINÉTIQUE', 0, '953598816', 'ACTIVE', 12.75, 101, 8935, 101, 2495);
INSERT INTO `note` VALUES (9255, '2020-01-22 11:20:45', '2020-01-22 11:20:45', 'SN', 'ELECTROCINÉTIQUE', 0, '-1658285196', 'ACTIVE', 14.5, 101, 8936, 101, 2495);
INSERT INTO `note` VALUES (9256, '2020-01-22 11:20:45', '2020-01-22 11:20:45', 'CC', 'MESURE', 0, '-1728709608', 'ACTIVE', 15, 101, 8939, 101, 2621);
INSERT INTO `note` VALUES (9257, '2020-01-22 11:20:45', '2020-01-22 11:20:45', 'TP', 'MESURE', 0, '-2017721235', 'ACTIVE', 16.08, 101, 8940, 101, 2621);
INSERT INTO `note` VALUES (9258, '2020-01-22 11:20:45', '2020-01-22 11:20:45', 'SN', 'MESURE', 0, '2021550692', 'ACTIVE', 18.25, 101, 8941, 101, 2621);
INSERT INTO `note` VALUES (9259, '2020-01-22 11:20:45', '2020-01-22 11:20:45', 'CC', 'PROJET ARDUNO', 0, '-212657901', 'ACTIVE', 16.83, 101, 8937, 101, 2558);
INSERT INTO `note` VALUES (9260, '2020-01-22 11:20:45', '2020-01-22 11:20:45', 'SN', 'PROJET ARDUNO', 0, '1363827573', 'ACTIVE', 18, 101, 8938, 101, 2558);
INSERT INTO `note` VALUES (9261, '2020-01-22 11:20:45', '2020-01-22 11:20:45', 'CC', 'COMMUNICATION ING1', 0, '-1101856194', 'ACTIVE', 16, 101, 8944, 101, 2684);
INSERT INTO `note` VALUES (9262, '2020-01-22 11:20:45', '2020-01-22 11:20:45', 'SN', 'COMMUNICATION ING1', 0, '-1979583907', 'ACTIVE', 12.5, 101, 8945, 101, 2684);
INSERT INTO `note` VALUES (9263, '2020-01-22 11:20:45', '2020-01-22 11:20:45', 'CC', 'REFLEXION HUMAINE ING1', 0, '827199862', 'ACTIVE', 15.5, 101, 8946, 101, 2747);
INSERT INTO `note` VALUES (9264, '2020-01-22 11:20:46', '2020-01-22 11:20:46', 'SN', 'REFLEXION HUMAINE ING1', 0, '917719645', 'ACTIVE', 12.5, 101, 8947, 101, 2747);
INSERT INTO `note` VALUES (9265, '2020-01-22 11:20:46', '2020-01-22 11:20:46', 'CC', 'ALGEBRE ING1', 0, '917051937', 'ACTIVE', 5.5, 101, 8931, 101, 2294);
INSERT INTO `note` VALUES (9266, '2020-01-22 11:20:46', '2020-01-22 11:20:46', 'SN', 'ALGEBRE ING1', 0, '195338743', 'ACTIVE', 7, 101, 8932, 101, 2294);
INSERT INTO `note` VALUES (9267, '2020-01-22 11:20:46', '2020-01-22 11:20:46', 'CC', 'ANALYSE ING1', 0, '-1168076019', 'ACTIVE', 9.25, 101, 8929, 101, 2229);
INSERT INTO `note` VALUES (9268, '2020-01-22 11:20:46', '2020-01-22 11:20:46', 'SN', 'ANALYSE ING1', 0, '-264571220', 'ACTIVE', 8.5, 101, 8930, 101, 2229);
INSERT INTO `note` VALUES (9269, '2020-01-22 11:20:46', '2020-01-22 11:20:46', 'CC', 'MECANIQUE', 0, '-652860503', 'ACTIVE', 9.75, 101, 8933, 101, 2433);
INSERT INTO `note` VALUES (9270, '2020-01-22 11:20:46', '2020-01-22 11:20:46', 'SN', 'MECANIQUE', 0, '-938692088', 'ACTIVE', 5, 101, 8934, 101, 2433);
INSERT INTO `note` VALUES (9271, '2020-01-22 11:20:46', '2020-01-22 11:20:46', 'CC', 'ELECTROCINÉTIQUE', 0, '-1743846186', 'ACTIVE', 13.75, 101, 8935, 101, 2496);
INSERT INTO `note` VALUES (9272, '2020-01-22 11:20:46', '2020-01-22 11:20:46', 'SN', 'ELECTROCINÉTIQUE', 0, '-492987052', 'ACTIVE', 13, 101, 8936, 101, 2496);
INSERT INTO `note` VALUES (9273, '2020-01-22 11:20:46', '2020-01-22 11:20:46', 'CC', 'MESURE', 0, '2118832020', 'ACTIVE', 11.5, 101, 8939, 101, 2622);
INSERT INTO `note` VALUES (9274, '2020-01-22 11:20:46', '2020-01-22 11:20:46', 'TP', 'MESURE', 0, '2071965165', 'ACTIVE', 16.75, 101, 8940, 101, 2622);
INSERT INTO `note` VALUES (9275, '2020-01-22 11:20:47', '2020-01-22 11:20:47', 'SN', 'MESURE', 0, '2126429940', 'ACTIVE', 10, 101, 8941, 101, 2622);
INSERT INTO `note` VALUES (9276, '2020-01-22 11:20:47', '2020-01-22 11:20:47', 'CC', 'PROJET ARDUNO', 0, '-325155941', 'ACTIVE', 16.67, 101, 8937, 101, 2559);
INSERT INTO `note` VALUES (9277, '2020-01-22 11:20:47', '2020-01-22 11:20:47', 'SN', 'PROJET ARDUNO', 0, '318044704', 'ACTIVE', 17, 101, 8938, 101, 2559);
INSERT INTO `note` VALUES (9278, '2020-01-22 11:20:47', '2020-01-22 11:20:47', 'CC', 'COMMUNICATION ING1', 0, '487960955', 'ACTIVE', 16, 101, 8944, 101, 2685);
INSERT INTO `note` VALUES (9279, '2020-01-22 11:20:47', '2020-01-22 11:20:47', 'SN', 'COMMUNICATION ING1', 0, '-1512892847', 'ACTIVE', 16.5, 101, 8945, 101, 2685);
INSERT INTO `note` VALUES (9280, '2020-01-22 11:20:47', '2020-01-22 11:20:47', 'CC', 'REFLEXION HUMAINE ING1', 0, '-1691663140', 'ACTIVE', 13, 101, 8946, 101, 2748);
INSERT INTO `note` VALUES (9281, '2020-01-22 11:20:47', '2020-01-22 11:20:47', 'SN', 'REFLEXION HUMAINE ING1', 0, '1127747284', 'ACTIVE', 13.5, 101, 8947, 101, 2748);
INSERT INTO `note` VALUES (9282, '2020-01-22 11:20:47', '2020-01-22 11:20:47', 'CC', 'ALGEBRE ING1', 0, '-377990572', 'ACTIVE', 4.5, 101, 8931, 101, 2295);
INSERT INTO `note` VALUES (9283, '2020-01-22 11:20:47', '2020-01-22 11:20:47', 'SN', 'ALGEBRE ING1', 0, '1264651219', 'ACTIVE', 4.5, 101, 8932, 101, 2295);
INSERT INTO `note` VALUES (9284, '2020-01-22 11:20:47', '2020-01-22 11:20:47', 'CC', 'ANALYSE ING1', 0, '-977162674', 'ACTIVE', 4.5, 101, 8929, 101, 2230);
INSERT INTO `note` VALUES (9285, '2020-01-22 11:20:47', '2020-01-22 11:20:47', 'SN', 'ANALYSE ING1', 0, '-1687642672', 'ACTIVE', 3, 101, 8930, 101, 2230);
INSERT INTO `note` VALUES (9286, '2020-01-22 11:20:47', '2020-01-22 11:20:47', 'CC', 'MECANIQUE', 0, '-1604986694', 'ACTIVE', 5.25, 101, 8933, 101, 2434);
INSERT INTO `note` VALUES (9287, '2020-01-22 11:20:47', '2020-01-22 11:20:47', 'SN', 'MECANIQUE', 0, '-236042475', 'ACTIVE', 5, 101, 8934, 101, 2434);
INSERT INTO `note` VALUES (9288, '2020-01-22 11:20:47', '2020-01-22 11:20:47', 'CC', 'ELECTROCINÉTIQUE', 0, '-835933740', 'ACTIVE', 4.75, 101, 8935, 101, 2497);
INSERT INTO `note` VALUES (9289, '2020-01-22 11:20:48', '2020-01-22 11:20:48', 'SN', 'ELECTROCINÉTIQUE', 0, '993417875', 'ACTIVE', 10, 101, 8936, 101, 2497);
INSERT INTO `note` VALUES (9290, '2020-01-22 11:20:48', '2020-01-22 11:20:48', 'CC', 'MESURE', 0, '2133611391', 'ACTIVE', 11.5, 101, 8939, 101, 2623);
INSERT INTO `note` VALUES (9291, '2020-01-22 11:20:48', '2020-01-22 11:20:48', 'TP', 'MESURE', 0, '-438170307', 'ACTIVE', 16.75, 101, 8940, 101, 2623);
INSERT INTO `note` VALUES (9292, '2020-01-22 11:20:48', '2020-01-22 11:20:48', 'SN', 'MESURE', 0, '723983207', 'ACTIVE', 14, 101, 8941, 101, 2623);
INSERT INTO `note` VALUES (9293, '2020-01-22 11:20:48', '2020-01-22 11:20:48', 'CC', 'PROJET ARDUNO', 0, '-1187061252', 'ACTIVE', 16.67, 101, 8937, 101, 2560);
INSERT INTO `note` VALUES (9294, '2020-01-22 11:20:48', '2020-01-22 11:20:48', 'SN', 'PROJET ARDUNO', 0, '728125605', 'ACTIVE', 17, 101, 8938, 101, 2560);
INSERT INTO `note` VALUES (9295, '2020-01-22 11:20:48', '2020-01-22 11:20:48', 'CC', 'COMMUNICATION ING1', 0, '153829925', 'ACTIVE', 18, 101, 8944, 101, 2686);
INSERT INTO `note` VALUES (9296, '2020-01-22 11:20:48', '2020-01-22 11:20:48', 'SN', 'COMMUNICATION ING1', 0, '1709096828', 'ACTIVE', 18, 101, 8945, 101, 2686);
INSERT INTO `note` VALUES (9297, '2020-01-22 11:20:48', '2020-01-22 11:20:48', 'CC', 'REFLEXION HUMAINE ING1', 0, '1522398496', 'ACTIVE', 13.5, 101, 8946, 101, 2749);
INSERT INTO `note` VALUES (9298, '2020-01-22 11:20:48', '2020-01-22 11:20:48', 'SN', 'REFLEXION HUMAINE ING1', 0, '-933285804', 'ACTIVE', 13, 101, 8947, 101, 2749);
INSERT INTO `note` VALUES (9299, '2020-01-22 11:20:48', '2020-01-22 11:20:48', 'CC', 'ALGEBRE ING1', 0, '-795937610', 'ACTIVE', 8.25, 101, 8931, 101, 2296);
INSERT INTO `note` VALUES (9300, '2020-01-22 11:20:48', '2020-01-22 11:20:48', 'SN', 'ALGEBRE ING1', 0, '-1903565007', 'ACTIVE', 11.5, 101, 8932, 101, 2296);
INSERT INTO `note` VALUES (9301, '2020-01-22 11:20:48', '2020-01-22 11:20:48', 'CC', 'ANALYSE ING1', 0, '459286344', 'ACTIVE', 15.25, 101, 8929, 101, 2231);
INSERT INTO `note` VALUES (9302, '2020-01-22 11:20:49', '2020-01-22 11:20:49', 'SN', 'ANALYSE ING1', 0, '-371607353', 'ACTIVE', 15.5, 101, 8930, 101, 2231);
INSERT INTO `note` VALUES (9303, '2020-01-22 11:20:49', '2020-01-22 11:20:49', 'CC', 'MECANIQUE', 0, '2094709299', 'ACTIVE', 15, 101, 8933, 101, 2435);
INSERT INTO `note` VALUES (9304, '2020-01-22 11:20:49', '2020-01-22 11:20:49', 'SN', 'MECANIQUE', 0, '-725257143', 'ACTIVE', 14, 101, 8934, 101, 2435);
INSERT INTO `note` VALUES (9305, '2020-01-22 11:20:49', '2020-01-22 11:20:49', 'CC', 'ELECTROCINÉTIQUE', 0, '-448289978', 'ACTIVE', 16.25, 101, 8935, 101, 2498);
INSERT INTO `note` VALUES (9306, '2020-01-22 11:20:49', '2020-01-22 11:20:49', 'SN', 'ELECTROCINÉTIQUE', 0, '1318662913', 'ACTIVE', 13.5, 101, 8936, 101, 2498);
INSERT INTO `note` VALUES (9307, '2020-01-22 11:20:49', '2020-01-22 11:20:49', 'CC', 'MESURE', 0, '-1919254088', 'ACTIVE', 11, 101, 8939, 101, 2624);
INSERT INTO `note` VALUES (9308, '2020-01-22 11:20:49', '2020-01-22 11:20:49', 'TP', 'MESURE', 0, '-93064043', 'ACTIVE', 16.75, 101, 8940, 101, 2624);
INSERT INTO `note` VALUES (9309, '2020-01-22 11:20:49', '2020-01-22 11:20:49', 'SN', 'MESURE', 0, '1718539087', 'ACTIVE', 17.5, 101, 8941, 101, 2624);
INSERT INTO `note` VALUES (9310, '2020-01-22 11:20:49', '2020-01-22 11:20:49', 'CC', 'PROJET ARDUNO', 0, '1009569665', 'ACTIVE', 17.33, 101, 8937, 101, 2561);
INSERT INTO `note` VALUES (9311, '2020-01-22 11:20:49', '2020-01-22 11:20:49', 'SN', 'PROJET ARDUNO', 0, '552793867', 'ACTIVE', 18.5, 101, 8938, 101, 2561);
INSERT INTO `note` VALUES (9312, '2020-01-22 11:20:49', '2020-01-22 11:20:49', 'CC', 'COMMUNICATION ING1', 0, '-33626208', 'ACTIVE', 17, 101, 8944, 101, 2687);
INSERT INTO `note` VALUES (9313, '2020-01-22 11:20:49', '2020-01-22 11:20:49', 'SN', 'COMMUNICATION ING1', 0, '270245404', 'ACTIVE', 17, 101, 8945, 101, 2687);
INSERT INTO `note` VALUES (9314, '2020-01-22 11:20:49', '2020-01-22 11:20:49', 'CC', 'REFLEXION HUMAINE ING1', 0, '75880685', 'ACTIVE', 13.5, 101, 8946, 101, 2750);
INSERT INTO `note` VALUES (9315, '2020-01-22 11:20:49', '2020-01-22 11:20:50', 'SN', 'REFLEXION HUMAINE ING1', 0, '2062153095', 'ACTIVE', 12.5, 101, 8947, 101, 2750);
INSERT INTO `note` VALUES (9316, '2020-01-22 11:20:50', '2020-01-22 11:20:50', 'CC', 'ALGEBRE ING1', 0, '-1864239974', 'ACTIVE', 9.5, 101, 8931, 101, 2297);
INSERT INTO `note` VALUES (9317, '2020-01-22 11:20:50', '2020-01-22 11:20:50', 'SN', 'ALGEBRE ING1', 0, '1957948423', 'ACTIVE', 11.5, 101, 8932, 101, 2297);
INSERT INTO `note` VALUES (9318, '2020-01-22 11:20:50', '2020-01-22 11:20:50', 'CC', 'ANALYSE ING1', 0, '-164376253', 'ACTIVE', 10.5, 101, 8929, 101, 2232);
INSERT INTO `note` VALUES (9319, '2020-01-22 11:20:50', '2020-01-22 11:20:50', 'SN', 'ANALYSE ING1', 0, '666445689', 'ACTIVE', 9.5, 101, 8930, 101, 2232);
INSERT INTO `note` VALUES (9320, '2020-01-22 11:20:50', '2020-01-22 11:20:50', 'CC', 'MECANIQUE', 0, '-1828644654', 'ACTIVE', 10.75, 101, 8933, 101, 2436);
INSERT INTO `note` VALUES (9321, '2020-01-22 11:20:50', '2020-01-22 11:20:50', 'SN', 'MECANIQUE', 0, '1440308705', 'ACTIVE', 13, 101, 8934, 101, 2436);
INSERT INTO `note` VALUES (9322, '2020-01-22 11:20:50', '2020-01-22 11:20:50', 'CC', 'ELECTROCINÉTIQUE', 0, '-481982458', 'ACTIVE', 12.5, 101, 8935, 101, 2499);
INSERT INTO `note` VALUES (9323, '2020-01-22 11:20:50', '2020-01-22 11:20:50', 'SN', 'ELECTROCINÉTIQUE', 0, '-1992646664', 'ACTIVE', 12, 101, 8936, 101, 2499);
INSERT INTO `note` VALUES (9324, '2020-01-22 11:20:50', '2020-01-22 11:20:50', 'CC', 'MESURE', 0, '1665906884', 'ACTIVE', 12, 101, 8939, 101, 2625);
INSERT INTO `note` VALUES (9325, '2020-01-22 11:20:50', '2020-01-22 11:20:50', 'TP', 'MESURE', 0, '2137140217', 'ACTIVE', 16.75, 101, 8940, 101, 2625);
INSERT INTO `note` VALUES (9326, '2020-01-22 11:20:50', '2020-01-22 11:20:50', 'SN', 'MESURE', 0, '1965016976', 'ACTIVE', 17.25, 101, 8941, 101, 2625);
INSERT INTO `note` VALUES (9327, '2020-01-22 11:20:50', '2020-01-22 11:20:50', 'CC', 'PROJET ARDUNO', 0, '-313351478', 'ACTIVE', 17.33, 101, 8937, 101, 2562);
INSERT INTO `note` VALUES (9328, '2020-01-22 11:20:50', '2020-01-22 11:20:50', 'SN', 'PROJET ARDUNO', 0, '-663945903', 'ACTIVE', 18.5, 101, 8938, 101, 2562);
INSERT INTO `note` VALUES (9329, '2020-01-22 11:20:51', '2020-01-22 11:20:51', 'CC', 'COMMUNICATION ING1', 0, '1951653292', 'ACTIVE', 17, 101, 8944, 101, 2688);
INSERT INTO `note` VALUES (9330, '2020-01-22 11:20:51', '2020-01-22 11:20:51', 'SN', 'COMMUNICATION ING1', 0, '1212251357', 'ACTIVE', 17, 101, 8945, 101, 2688);
INSERT INTO `note` VALUES (9331, '2020-01-22 11:20:51', '2020-01-22 11:20:51', 'CC', 'REFLEXION HUMAINE ING1', 0, '445696773', 'ACTIVE', 15.5, 101, 8946, 101, 2751);
INSERT INTO `note` VALUES (9332, '2020-01-22 11:20:51', '2020-01-22 11:20:51', 'SN', 'REFLEXION HUMAINE ING1', 0, '-1970748210', 'ACTIVE', 11.5, 101, 8947, 101, 2751);
INSERT INTO `note` VALUES (9333, '2020-01-22 11:20:51', '2020-01-22 11:20:51', 'CC', 'ALGEBRE ING1', 0, '-1732319750', 'ACTIVE', 5.75, 101, 8931, 101, 2298);
INSERT INTO `note` VALUES (9334, '2020-01-22 11:20:51', '2020-01-22 11:20:51', 'SN', 'ALGEBRE ING1', 0, '64500069', 'ACTIVE', 7.5, 101, 8932, 101, 2298);
INSERT INTO `note` VALUES (9335, '2020-01-22 11:20:51', '2020-01-22 11:20:51', 'CC', 'ANALYSE ING1', 0, '238507333', 'ACTIVE', 8.5, 101, 8929, 101, 2233);
INSERT INTO `note` VALUES (9336, '2020-01-22 11:20:51', '2020-01-22 11:20:51', 'SN', 'ANALYSE ING1', 0, '994138814', 'ACTIVE', 6.5, 101, 8930, 101, 2233);
INSERT INTO `note` VALUES (9337, '2020-01-22 11:20:51', '2020-01-22 11:20:51', 'CC', 'MECANIQUE', 0, '-615546113', 'ACTIVE', 7.75, 101, 8933, 101, 2437);
INSERT INTO `note` VALUES (9338, '2020-01-22 11:20:51', '2020-01-22 11:20:51', 'SN', 'MECANIQUE', 0, '1589645355', 'ACTIVE', 4, 101, 8934, 101, 2437);
INSERT INTO `note` VALUES (9339, '2020-01-22 11:20:51', '2020-01-22 11:20:51', 'CC', 'ELECTROCINÉTIQUE', 0, '-557882116', 'ACTIVE', 5.25, 101, 8935, 101, 2500);
INSERT INTO `note` VALUES (9340, '2020-01-22 11:20:52', '2020-01-22 11:20:52', 'SN', 'ELECTROCINÉTIQUE', 0, '-289928205', 'ACTIVE', 11.5, 101, 8936, 101, 2500);
INSERT INTO `note` VALUES (9341, '2020-01-22 11:20:52', '2020-01-22 11:20:52', 'CC', 'MESURE', 0, '1570828976', 'ACTIVE', 7, 101, 8939, 101, 2626);
INSERT INTO `note` VALUES (9342, '2020-01-22 11:20:52', '2020-01-22 11:20:53', 'TP', 'MESURE', 0, '1696568278', 'ACTIVE', 14.08, 101, 8940, 101, 2626);
INSERT INTO `note` VALUES (9343, '2020-01-22 11:20:53', '2020-01-22 11:20:53', 'SN', 'MESURE', 0, '-2004477135', 'ACTIVE', 8.25, 101, 8941, 101, 2626);
INSERT INTO `note` VALUES (9344, '2020-01-22 11:20:54', '2020-01-22 11:20:54', 'CC', 'PROJET ARDUNO', 0, '812820605', 'ACTIVE', 16.67, 101, 8937, 101, 2563);
INSERT INTO `note` VALUES (9345, '2020-01-22 11:20:54', '2020-01-22 11:20:54', 'SN', 'PROJET ARDUNO', 0, '-1782233423', 'ACTIVE', 14.5, 101, 8938, 101, 2563);
INSERT INTO `note` VALUES (9346, '2020-01-22 11:20:55', '2020-01-22 11:20:55', 'CC', 'COMMUNICATION ING1', 0, '1638105138', 'ACTIVE', 18, 101, 8944, 101, 2689);
INSERT INTO `note` VALUES (9347, '2020-01-22 11:20:55', '2020-01-22 11:20:55', 'SN', 'COMMUNICATION ING1', 0, '-202527151', 'ACTIVE', 14.5, 101, 8945, 101, 2689);
INSERT INTO `note` VALUES (9348, '2020-01-22 11:20:55', '2020-01-22 11:20:55', 'CC', 'REFLEXION HUMAINE ING1', 0, '512375301', 'ACTIVE', 8.5, 101, 8946, 101, 2752);
INSERT INTO `note` VALUES (9349, '2020-01-22 11:20:55', '2020-01-22 11:20:55', 'SN', 'REFLEXION HUMAINE ING1', 0, '474255685', 'ACTIVE', 13.5, 101, 8947, 101, 2752);
INSERT INTO `note` VALUES (9350, '2020-01-22 11:20:55', '2020-01-22 11:20:55', 'CC', 'ALGEBRE ING1', 0, '-1497764724', 'ACTIVE', 9.75, 101, 8931, 101, 2299);
INSERT INTO `note` VALUES (9351, '2020-01-22 11:20:55', '2020-01-22 11:20:55', 'SN', 'ALGEBRE ING1', 0, '830922187', 'ACTIVE', 12.5, 101, 8932, 101, 2299);
INSERT INTO `note` VALUES (9352, '2020-01-22 11:20:56', '2020-01-22 11:20:56', 'CC', 'ANALYSE ING1', 0, '-1624264919', 'ACTIVE', 8.75, 101, 8929, 101, 2234);
INSERT INTO `note` VALUES (9353, '2020-01-22 11:20:56', '2020-01-22 11:20:56', 'SN', 'ANALYSE ING1', 0, '277836084', 'ACTIVE', 12.5, 101, 8930, 101, 2234);
INSERT INTO `note` VALUES (9354, '2020-01-22 11:20:56', '2020-01-22 11:20:56', 'CC', 'MECANIQUE', 0, '97145388', 'ACTIVE', 15.75, 101, 8933, 101, 2438);
INSERT INTO `note` VALUES (9355, '2020-01-22 11:20:56', '2020-01-22 11:20:56', 'SN', 'MECANIQUE', 0, '-1380741387', 'ACTIVE', 12, 101, 8934, 101, 2438);
INSERT INTO `note` VALUES (9356, '2020-01-22 11:20:56', '2020-01-22 11:20:56', 'CC', 'ELECTROCINÉTIQUE', 0, '1141774002', 'ACTIVE', 14.75, 101, 8935, 101, 2501);
INSERT INTO `note` VALUES (9357, '2020-01-22 11:20:56', '2020-01-22 11:20:56', 'SN', 'ELECTROCINÉTIQUE', 0, '1235000285', 'ACTIVE', 13.5, 101, 8936, 101, 2501);
INSERT INTO `note` VALUES (9358, '2020-01-22 11:20:56', '2020-01-22 11:20:56', 'CC', 'MESURE', 0, '-1120692646', 'ACTIVE', 15, 101, 8939, 101, 2627);
INSERT INTO `note` VALUES (9359, '2020-01-22 11:20:56', '2020-01-22 11:20:56', 'TP', 'MESURE', 0, '-741283400', 'ACTIVE', 14.08, 101, 8940, 101, 2627);
INSERT INTO `note` VALUES (9360, '2020-01-22 11:20:56', '2020-01-22 11:20:56', 'SN', 'MESURE', 0, '1564310522', 'ACTIVE', 15.5, 101, 8941, 101, 2627);
INSERT INTO `note` VALUES (9361, '2020-01-22 11:20:56', '2020-01-22 11:20:56', 'CC', 'PROJET ARDUNO', 0, '-335563578', 'ACTIVE', 16.5, 101, 8937, 101, 2564);
INSERT INTO `note` VALUES (9362, '2020-01-22 11:20:56', '2020-01-22 11:20:56', 'SN', 'PROJET ARDUNO', 0, '1256017472', 'ACTIVE', 18.5, 101, 8938, 101, 2564);
INSERT INTO `note` VALUES (9363, '2020-01-22 11:20:56', '2020-01-22 11:20:57', 'CC', 'COMMUNICATION ING1', 0, '-1933413143', 'ACTIVE', 16, 101, 8944, 101, 2690);
INSERT INTO `note` VALUES (9364, '2020-01-22 11:20:57', '2020-01-22 11:20:57', 'SN', 'COMMUNICATION ING1', 0, '-1347152925', 'ACTIVE', 16, 101, 8945, 101, 2690);
INSERT INTO `note` VALUES (9365, '2020-01-22 11:20:57', '2020-01-22 11:20:57', 'CC', 'REFLEXION HUMAINE ING1', 0, '1433576443', 'ACTIVE', 14.5, 101, 8946, 101, 2753);
INSERT INTO `note` VALUES (9366, '2020-01-22 11:20:57', '2020-01-22 11:20:57', 'SN', 'REFLEXION HUMAINE ING1', 0, '-1861787362', 'ACTIVE', 13, 101, 8947, 101, 2753);
INSERT INTO `note` VALUES (9367, '2020-01-22 11:20:57', '2020-01-22 11:20:57', 'CC', 'ALGEBRE ING1', 0, '2073937674', 'ACTIVE', 9.5, 101, 8931, 101, 2300);
INSERT INTO `note` VALUES (9368, '2020-01-22 11:20:57', '2020-01-22 11:20:57', 'SN', 'ALGEBRE ING1', 0, '1012273377', 'ACTIVE', 11.5, 101, 8932, 101, 2300);
INSERT INTO `note` VALUES (9369, '2020-01-22 11:20:57', '2020-01-22 11:20:57', 'CC', 'ANALYSE ING1', 0, '402571295', 'ACTIVE', 15.25, 101, 8929, 101, 2235);
INSERT INTO `note` VALUES (9370, '2020-01-22 11:20:57', '2020-01-22 11:20:57', 'SN', 'ANALYSE ING1', 0, '34228288', 'ACTIVE', 16, 101, 8930, 101, 2235);
INSERT INTO `note` VALUES (9371, '2020-01-22 11:20:57', '2020-01-22 11:20:57', 'CC', 'MECANIQUE', 0, '1291471421', 'ACTIVE', 10, 101, 8933, 101, 2439);
INSERT INTO `note` VALUES (9372, '2020-01-22 11:20:57', '2020-01-22 11:20:57', 'SN', 'MECANIQUE', 0, '721984829', 'ACTIVE', 7.5, 101, 8934, 101, 2439);
INSERT INTO `note` VALUES (9373, '2020-01-22 11:20:57', '2020-01-22 11:20:57', 'CC', 'ELECTROCINÉTIQUE', 0, '-700949233', 'ACTIVE', 11.5, 101, 8935, 101, 2502);
INSERT INTO `note` VALUES (9374, '2020-01-22 11:20:57', '2020-01-22 11:20:58', 'SN', 'ELECTROCINÉTIQUE', 0, '849158774', 'ACTIVE', 12, 101, 8936, 101, 2502);
INSERT INTO `note` VALUES (9375, '2020-01-22 11:20:58', '2020-01-22 11:20:58', 'CC', 'MESURE', 0, '1624466542', 'ACTIVE', 14.5, 101, 8939, 101, 2628);
INSERT INTO `note` VALUES (9376, '2020-01-22 11:20:58', '2020-01-22 11:20:58', 'TP', 'MESURE', 0, '1143277733', 'ACTIVE', 14.08, 101, 8940, 101, 2628);
INSERT INTO `note` VALUES (9377, '2020-01-22 11:20:58', '2020-01-22 11:20:58', 'SN', 'MESURE', 0, '291898228', 'ACTIVE', 14.75, 101, 8941, 101, 2628);
INSERT INTO `note` VALUES (9378, '2020-01-22 11:20:58', '2020-01-22 11:20:58', 'CC', 'PROJET ARDUNO', 0, '1019849463', 'ACTIVE', 17.33, 101, 8937, 101, 2565);
INSERT INTO `note` VALUES (9379, '2020-01-22 11:20:58', '2020-01-22 11:20:58', 'SN', 'PROJET ARDUNO', 0, '-712992301', 'ACTIVE', 17, 101, 8938, 101, 2565);
INSERT INTO `note` VALUES (9380, '2020-01-22 11:20:58', '2020-01-22 11:20:58', 'CC', 'COMMUNICATION ING1', 0, '-566602160', 'ACTIVE', 17, 101, 8944, 101, 2691);
INSERT INTO `note` VALUES (9381, '2020-01-22 11:20:58', '2020-01-22 11:20:58', 'SN', 'COMMUNICATION ING1', 0, '1002993588', 'ACTIVE', 16.5, 101, 8945, 101, 2691);
INSERT INTO `note` VALUES (9382, '2020-01-22 11:20:58', '2020-01-22 11:20:58', 'CC', 'REFLEXION HUMAINE ING1', 0, '1565635077', 'ACTIVE', 15, 101, 8946, 101, 2754);
INSERT INTO `note` VALUES (9383, '2020-01-22 11:20:58', '2020-01-22 11:20:58', 'SN', 'REFLEXION HUMAINE ING1', 0, '-536348405', 'ACTIVE', 14.5, 101, 8947, 101, 2754);
INSERT INTO `note` VALUES (9384, '2020-01-22 11:20:58', '2020-01-22 11:20:58', 'CC', 'ALGEBRE ING1', 0, '-722962246', 'ACTIVE', 7.75, 101, 8931, 101, 2301);
INSERT INTO `note` VALUES (9385, '2020-01-22 11:20:58', '2020-01-22 11:20:59', 'SN', 'ALGEBRE ING1', 0, '-1660943637', 'ACTIVE', 6.5, 101, 8932, 101, 2301);
INSERT INTO `note` VALUES (9386, '2020-01-22 11:20:59', '2020-01-22 11:20:59', 'CC', 'ANALYSE ING1', 0, '-1492556108', 'ACTIVE', 12.25, 101, 8929, 101, 2236);
INSERT INTO `note` VALUES (9387, '2020-01-22 11:20:59', '2020-01-22 11:20:59', 'SN', 'ANALYSE ING1', 0, '-1694348827', 'ACTIVE', 16, 101, 8930, 101, 2236);
INSERT INTO `note` VALUES (9388, '2020-01-22 11:20:59', '2020-01-22 11:20:59', 'CC', 'MECANIQUE', 0, '1208629246', 'ACTIVE', 9.25, 101, 8933, 101, 2440);
INSERT INTO `note` VALUES (9389, '2020-01-22 11:20:59', '2020-01-22 11:20:59', 'SN', 'MECANIQUE', 0, '1293993376', 'ACTIVE', 11, 101, 8934, 101, 2440);
INSERT INTO `note` VALUES (9390, '2020-01-22 11:20:59', '2020-01-22 11:20:59', 'CC', 'ELECTROCINÉTIQUE', 0, '-1383758704', 'ACTIVE', 11.25, 101, 8935, 101, 2503);
INSERT INTO `note` VALUES (9391, '2020-01-22 11:20:59', '2020-01-22 11:20:59', 'SN', 'ELECTROCINÉTIQUE', 0, '-767745720', 'ACTIVE', 14, 101, 8936, 101, 2503);
INSERT INTO `note` VALUES (9392, '2020-01-22 11:20:59', '2020-01-22 11:20:59', 'CC', 'MESURE', 0, '1431643959', 'ACTIVE', 14, 101, 8939, 101, 2629);
INSERT INTO `note` VALUES (9393, '2020-01-22 11:20:59', '2020-01-22 11:20:59', 'TP', 'MESURE', 0, '578857130', 'ACTIVE', 14.08, 101, 8940, 101, 2629);
INSERT INTO `note` VALUES (9394, '2020-01-22 11:20:59', '2020-01-22 11:20:59', 'SN', 'MESURE', 0, '120738808', 'ACTIVE', 13.75, 101, 8941, 101, 2629);
INSERT INTO `note` VALUES (9395, '2020-01-22 11:20:59', '2020-01-22 11:20:59', 'CC', 'PROJET ARDUNO', 0, '1724760579', 'ACTIVE', 16.67, 101, 8937, 101, 2566);
INSERT INTO `note` VALUES (9396, '2020-01-22 11:20:59', '2020-01-22 11:21:00', 'SN', 'PROJET ARDUNO', 0, '-600219303', 'ACTIVE', 17, 101, 8938, 101, 2566);
INSERT INTO `note` VALUES (9397, '2020-01-22 11:21:00', '2020-01-22 11:21:00', 'CC', 'COMMUNICATION ING1', 0, '1248645201', 'ACTIVE', 16, 101, 8944, 101, 2692);
INSERT INTO `note` VALUES (9398, '2020-01-22 11:21:00', '2020-01-22 11:21:00', 'SN', 'COMMUNICATION ING1', 0, '1039084835', 'ACTIVE', 16.5, 101, 8945, 101, 2692);
INSERT INTO `note` VALUES (9399, '2020-01-22 11:21:00', '2020-01-22 11:21:00', 'CC', 'REFLEXION HUMAINE ING1', 0, '-1006825329', 'ACTIVE', 15, 101, 8946, 101, 2755);
INSERT INTO `note` VALUES (9400, '2020-01-22 11:21:00', '2020-01-22 11:21:00', 'SN', 'REFLEXION HUMAINE ING1', 0, '393008091', 'ACTIVE', 13.5, 101, 8947, 101, 2755);
INSERT INTO `note` VALUES (9401, '2020-01-22 11:21:00', '2020-01-22 11:21:00', 'CC', 'ALGEBRE ING1', 0, '-116391481', 'ACTIVE', 6.875, 101, 8931, 101, 2302);
INSERT INTO `note` VALUES (9402, '2020-01-22 11:21:00', '2020-01-22 11:21:00', 'SN', 'ALGEBRE ING1', 0, '264767707', 'ACTIVE', 6.5, 101, 8932, 101, 2302);
INSERT INTO `note` VALUES (9403, '2020-01-22 11:21:00', '2020-01-22 11:21:00', 'CC', 'ANALYSE ING1', 0, '844672277', 'ACTIVE', 8.5, 101, 8929, 101, 2237);
INSERT INTO `note` VALUES (9404, '2020-01-22 11:21:00', '2020-01-22 11:21:00', 'SN', 'ANALYSE ING1', 0, '1378382212', 'ACTIVE', 7.5, 101, 8930, 101, 2237);
INSERT INTO `note` VALUES (9405, '2020-01-22 11:21:00', '2020-01-22 11:21:00', 'CC', 'MECANIQUE', 0, '1197878153', 'ACTIVE', 11.75, 101, 8933, 101, 2441);
INSERT INTO `note` VALUES (9406, '2020-01-22 11:21:00', '2020-01-22 11:21:00', 'SN', 'MECANIQUE', 0, '303410850', 'ACTIVE', 11, 101, 8934, 101, 2441);
INSERT INTO `note` VALUES (9407, '2020-01-22 11:21:00', '2020-01-22 11:21:00', 'CC', 'ELECTROCINÉTIQUE', 0, '1415675233', 'ACTIVE', 11.25, 101, 8935, 101, 2504);
INSERT INTO `note` VALUES (9408, '2020-01-22 11:21:00', '2020-01-22 11:21:01', 'SN', 'ELECTROCINÉTIQUE', 0, '1475012074', 'ACTIVE', 12.5, 101, 8936, 101, 2504);
INSERT INTO `note` VALUES (9409, '2020-01-22 11:21:01', '2020-01-22 11:21:01', 'CC', 'MESURE', 0, '1576292398', 'ACTIVE', 12.5, 101, 8939, 101, 2630);
INSERT INTO `note` VALUES (9410, '2020-01-22 11:21:01', '2020-01-22 11:21:01', 'TP', 'MESURE', 0, '-90359065', 'ACTIVE', 14.58, 101, 8940, 101, 2630);
INSERT INTO `note` VALUES (9411, '2020-01-22 11:21:01', '2020-01-22 11:21:01', 'SN', 'MESURE', 0, '1373242805', 'ACTIVE', 7.25, 101, 8941, 101, 2630);
INSERT INTO `note` VALUES (9412, '2020-01-22 11:21:01', '2020-01-22 11:21:01', 'CC', 'PROJET ARDUNO', 0, '-1293712825', 'ACTIVE', 16.67, 101, 8937, 101, 2567);
INSERT INTO `note` VALUES (9413, '2020-01-22 11:21:01', '2020-01-22 11:21:01', 'SN', 'PROJET ARDUNO', 0, '-1988469382', 'ACTIVE', 17, 101, 8938, 101, 2567);
INSERT INTO `note` VALUES (9414, '2020-01-22 11:21:01', '2020-01-22 11:21:01', 'CC', 'COMMUNICATION ING1', 0, '-1285026549', 'ACTIVE', 15.5, 101, 8944, 101, 2693);
INSERT INTO `note` VALUES (9415, '2020-01-22 11:21:01', '2020-01-22 11:21:01', 'SN', 'COMMUNICATION ING1', 0, '-1748392008', 'ACTIVE', 15.5, 101, 8945, 101, 2693);
INSERT INTO `note` VALUES (9416, '2020-01-22 11:21:01', '2020-01-22 11:21:01', 'CC', 'REFLEXION HUMAINE ING1', 0, '216446117', 'ACTIVE', 13, 101, 8946, 101, 2756);
INSERT INTO `note` VALUES (9417, '2020-01-22 11:21:01', '2020-01-22 11:21:01', 'SN', 'REFLEXION HUMAINE ING1', 0, '-945872750', 'ACTIVE', 11.5, 101, 8947, 101, 2756);
INSERT INTO `note` VALUES (9418, '2020-01-22 11:21:01', '2020-01-22 11:21:01', 'CC', 'ALGEBRE ING1', 0, '-86188764', 'ACTIVE', 10.5, 101, 8931, 101, 2303);
INSERT INTO `note` VALUES (9419, '2020-01-22 11:21:01', '2020-01-22 11:21:02', 'SN', 'ALGEBRE ING1', 0, '-1942893221', 'ACTIVE', 17.5, 101, 8932, 101, 2303);
INSERT INTO `note` VALUES (9420, '2020-01-22 11:21:02', '2020-01-22 11:21:02', 'CC', 'ANALYSE ING1', 0, '-1170621842', 'ACTIVE', 14, 101, 8929, 101, 2238);
INSERT INTO `note` VALUES (9421, '2020-01-22 11:21:02', '2020-01-22 11:21:02', 'SN', 'ANALYSE ING1', 0, '-1839995041', 'ACTIVE', 19, 101, 8930, 101, 2238);
INSERT INTO `note` VALUES (9422, '2020-01-22 11:21:02', '2020-01-22 11:21:02', 'CC', 'MECANIQUE', 0, '-52135549', 'ACTIVE', 11, 101, 8933, 101, 2442);
INSERT INTO `note` VALUES (9423, '2020-01-22 11:21:02', '2020-01-22 11:21:02', 'SN', 'MECANIQUE', 0, '1357671127', 'ACTIVE', 13.5, 101, 8934, 101, 2442);
INSERT INTO `note` VALUES (9424, '2020-01-22 11:21:02', '2020-01-22 11:21:02', 'CC', 'ELECTROCINÉTIQUE', 0, '-300986368', 'ACTIVE', 14.5, 101, 8935, 101, 2505);
INSERT INTO `note` VALUES (9425, '2020-01-22 11:21:02', '2020-01-22 11:21:02', 'SN', 'ELECTROCINÉTIQUE', 0, '1725873557', 'ACTIVE', 13.5, 101, 8936, 101, 2505);
INSERT INTO `note` VALUES (9426, '2020-01-22 11:21:02', '2020-01-22 11:21:02', 'CC', 'MESURE', 0, '-330443062', 'ACTIVE', 13, 101, 8939, 101, 2631);
INSERT INTO `note` VALUES (9427, '2020-01-22 11:21:02', '2020-01-22 11:21:02', 'TP', 'MESURE', 0, '-363774333', 'ACTIVE', 14.58, 101, 8940, 101, 2631);
INSERT INTO `note` VALUES (9428, '2020-01-22 11:21:02', '2020-01-22 11:21:02', 'SN', 'MESURE', 0, '940304119', 'ACTIVE', 16.75, 101, 8941, 101, 2631);
INSERT INTO `note` VALUES (9429, '2020-01-22 11:21:02', '2020-01-22 11:21:02', 'CC', 'PROJET ARDUNO', 0, '507320799', 'ACTIVE', 15.33, 101, 8937, 101, 2568);
INSERT INTO `note` VALUES (9430, '2020-01-22 11:21:02', '2020-01-22 11:21:02', 'SN', 'PROJET ARDUNO', 0, '956649234', 'ACTIVE', 15.5, 101, 8938, 101, 2568);
INSERT INTO `note` VALUES (9431, '2020-01-22 11:21:02', '2020-01-22 11:21:03', 'CC', 'COMMUNICATION ING1', 0, '214394887', 'ACTIVE', 16, 101, 8944, 101, 2694);
INSERT INTO `note` VALUES (9432, '2020-01-22 11:21:03', '2020-01-22 11:21:03', 'SN', 'COMMUNICATION ING1', 0, '1275038283', 'ACTIVE', 14.5, 101, 8945, 101, 2694);
INSERT INTO `note` VALUES (9433, '2020-01-22 11:21:03', '2020-01-22 11:21:03', 'CC', 'REFLEXION HUMAINE ING1', 0, '216991591', 'ACTIVE', 11, 101, 8946, 101, 2757);
INSERT INTO `note` VALUES (9434, '2020-01-22 11:21:03', '2020-01-22 11:21:03', 'SN', 'REFLEXION HUMAINE ING1', 0, '1800840417', 'ACTIVE', 13.5, 101, 8947, 101, 2757);
INSERT INTO `note` VALUES (9435, '2020-01-22 11:21:03', '2020-01-22 11:21:03', 'CC', 'ALGEBRE ING1', 0, '970187381', 'ACTIVE', 7.25, 101, 8931, 101, 2304);
INSERT INTO `note` VALUES (9436, '2020-01-22 11:21:03', '2020-01-22 11:21:03', 'SN', 'ALGEBRE ING1', 0, '1875431978', 'ACTIVE', 10, 101, 8932, 101, 2304);
INSERT INTO `note` VALUES (9437, '2020-01-22 11:21:03', '2020-01-22 11:21:03', 'CC', 'ANALYSE ING1', 0, '-1715325228', 'ACTIVE', 7.25, 101, 8929, 101, 2239);
INSERT INTO `note` VALUES (9438, '2020-01-22 11:21:03', '2020-01-22 11:21:03', 'SN', 'ANALYSE ING1', 0, '205031704', 'ACTIVE', 6.5, 101, 8930, 101, 2239);
INSERT INTO `note` VALUES (9439, '2020-01-22 11:21:03', '2020-01-22 11:21:03', 'CC', 'MECANIQUE', 0, '-1248259964', 'ACTIVE', 12, 101, 8933, 101, 2443);
INSERT INTO `note` VALUES (9440, '2020-01-22 11:21:03', '2020-01-22 11:21:03', 'SN', 'MECANIQUE', 0, '-876580235', 'ACTIVE', 8, 101, 8934, 101, 2443);
INSERT INTO `note` VALUES (9441, '2020-01-22 11:21:03', '2020-01-22 11:21:03', 'CC', 'ELECTROCINÉTIQUE', 0, '-452540132', 'ACTIVE', 9, 101, 8935, 101, 2506);
INSERT INTO `note` VALUES (9442, '2020-01-22 11:21:03', '2020-01-22 11:21:03', 'SN', 'ELECTROCINÉTIQUE', 0, '-809121174', 'ACTIVE', 14, 101, 8936, 101, 2506);
INSERT INTO `note` VALUES (9443, '2020-01-22 11:21:04', '2020-01-22 11:21:04', 'CC', 'MESURE', 0, '-2095300709', 'ACTIVE', 11, 101, 8939, 101, 2632);
INSERT INTO `note` VALUES (9444, '2020-01-22 11:21:04', '2020-01-22 11:21:04', 'TP', 'MESURE', 0, '701434990', 'ACTIVE', 14.58, 101, 8940, 101, 2632);
INSERT INTO `note` VALUES (9445, '2020-01-22 11:21:04', '2020-01-22 11:21:04', 'SN', 'MESURE', 0, '-1992357910', 'ACTIVE', 14.75, 101, 8941, 101, 2632);
INSERT INTO `note` VALUES (9446, '2020-01-22 11:21:04', '2020-01-22 11:21:04', 'CC', 'PROJET ARDUNO', 0, '1897593169', 'ACTIVE', 17.33, 101, 8937, 101, 2569);
INSERT INTO `note` VALUES (9447, '2020-01-22 11:21:04', '2020-01-22 11:21:04', 'SN', 'PROJET ARDUNO', 0, '-1556717370', 'ACTIVE', 19, 101, 8938, 101, 2569);
INSERT INTO `note` VALUES (9448, '2020-01-22 11:21:04', '2020-01-22 11:21:04', 'CC', 'COMMUNICATION ING1', 0, '518849113', 'ACTIVE', 15.5, 101, 8944, 101, 2695);
INSERT INTO `note` VALUES (9449, '2020-01-22 11:21:04', '2020-01-22 11:21:04', 'SN', 'COMMUNICATION ING1', 0, '-1802287447', 'ACTIVE', 15.5, 101, 8945, 101, 2695);
INSERT INTO `note` VALUES (9450, '2020-01-22 11:21:04', '2020-01-22 11:21:04', 'CC', 'REFLEXION HUMAINE ING1', 0, '-494727822', 'ACTIVE', 13.5, 101, 8946, 101, 2758);
INSERT INTO `note` VALUES (9451, '2020-01-22 11:21:04', '2020-01-22 11:21:04', 'SN', 'REFLEXION HUMAINE ING1', 0, '668260579', 'ACTIVE', 11, 101, 8947, 101, 2758);
INSERT INTO `note` VALUES (9452, '2020-01-22 11:21:04', '2020-01-22 11:21:04', 'CC', 'ALGEBRE ING1', 0, '603052222', 'ACTIVE', 13, 101, 8931, 101, 2305);
INSERT INTO `note` VALUES (9453, '2020-01-22 11:21:05', '2020-01-22 11:21:05', 'SN', 'ALGEBRE ING1', 0, '2046356285', 'ACTIVE', 11.5, 101, 8932, 101, 2305);
INSERT INTO `note` VALUES (9454, '2020-01-22 11:21:05', '2020-01-22 11:21:05', 'CC', 'ANALYSE ING1', 0, '-1442863361', 'ACTIVE', 12.25, 101, 8929, 101, 2240);
INSERT INTO `note` VALUES (9455, '2020-01-22 11:21:05', '2020-01-22 11:21:05', 'SN', 'ANALYSE ING1', 0, '-484686050', 'ACTIVE', 9, 101, 8930, 101, 2240);
INSERT INTO `note` VALUES (9456, '2020-01-22 11:21:05', '2020-01-22 11:21:05', 'CC', 'MECANIQUE', 0, '86419214', 'ACTIVE', 8.5, 101, 8933, 101, 2444);
INSERT INTO `note` VALUES (9457, '2020-01-22 11:21:05', '2020-01-22 11:21:05', 'SN', 'MECANIQUE', 0, '1171172857', 'ACTIVE', 6.5, 101, 8934, 101, 2444);
INSERT INTO `note` VALUES (9458, '2020-01-22 11:21:05', '2020-01-22 11:21:05', 'CC', 'ELECTROCINÉTIQUE', 0, '648500951', 'ACTIVE', 8.25, 101, 8935, 101, 2507);
INSERT INTO `note` VALUES (9459, '2020-01-22 11:21:05', '2020-01-22 11:21:05', 'SN', 'ELECTROCINÉTIQUE', 0, '1258492360', 'ACTIVE', 12.5, 101, 8936, 101, 2507);
INSERT INTO `note` VALUES (9460, '2020-01-22 11:21:05', '2020-01-22 11:21:05', 'CC', 'MESURE', 0, '344689636', 'ACTIVE', 10, 101, 8939, 101, 2633);
INSERT INTO `note` VALUES (9461, '2020-01-22 11:21:05', '2020-01-22 11:21:05', 'TP', 'MESURE', 0, '-613179533', 'ACTIVE', 14.58, 101, 8940, 101, 2633);
INSERT INTO `note` VALUES (9462, '2020-01-22 11:21:05', '2020-01-22 11:21:05', 'SN', 'MESURE', 0, '739632841', 'ACTIVE', 15.5, 101, 8941, 101, 2633);
INSERT INTO `note` VALUES (9463, '2020-01-22 11:21:05', '2020-01-22 11:21:06', 'CC', 'PROJET ARDUNO', 0, '2097720506', 'ACTIVE', 16.67, 101, 8937, 101, 2570);
INSERT INTO `note` VALUES (9464, '2020-01-22 11:21:06', '2020-01-22 11:21:06', 'SN', 'PROJET ARDUNO', 0, '-599242548', 'ACTIVE', 18, 101, 8938, 101, 2570);
INSERT INTO `note` VALUES (9465, '2020-01-22 11:21:06', '2020-01-22 11:21:06', 'CC', 'COMMUNICATION ING1', 0, '-841213858', 'ACTIVE', 18, 101, 8944, 101, 2696);
INSERT INTO `note` VALUES (9466, '2020-01-22 11:21:06', '2020-01-22 11:21:06', 'SN', 'COMMUNICATION ING1', 0, '-177981571', 'ACTIVE', 13, 101, 8945, 101, 2696);
INSERT INTO `note` VALUES (9467, '2020-01-22 11:21:06', '2020-01-22 11:21:06', 'CC', 'REFLEXION HUMAINE ING1', 0, '435178369', 'ACTIVE', 13, 101, 8946, 101, 2759);
INSERT INTO `note` VALUES (9468, '2020-01-22 11:21:06', '2020-01-22 11:21:06', 'SN', 'REFLEXION HUMAINE ING1', 0, '-2062928225', 'ACTIVE', 13, 101, 8947, 101, 2759);
INSERT INTO `note` VALUES (9469, '2020-01-22 11:21:06', '2020-01-22 11:21:06', 'CC', 'ALGEBRE ING1', 0, '-466265347', 'ACTIVE', 7.75, 101, 8931, 101, 2306);
INSERT INTO `note` VALUES (9470, '2020-01-22 11:21:06', '2020-01-22 11:21:06', 'SN', 'ALGEBRE ING1', 0, '377438835', 'ACTIVE', 12, 101, 8932, 101, 2306);
INSERT INTO `note` VALUES (9471, '2020-01-22 11:21:06', '2020-01-22 11:21:06', 'CC', 'ANALYSE ING1', 0, '-1644977593', 'ACTIVE', 10.25, 101, 8929, 101, 2241);
INSERT INTO `note` VALUES (9472, '2020-01-22 11:21:06', '2020-01-22 11:21:06', 'SN', 'ANALYSE ING1', 0, '-1287047545', 'ACTIVE', 11, 101, 8930, 101, 2241);
INSERT INTO `note` VALUES (9473, '2020-01-22 11:21:06', '2020-01-22 11:21:06', 'CC', 'MECANIQUE', 0, '2002079149', 'ACTIVE', 12, 101, 8933, 101, 2445);
INSERT INTO `note` VALUES (9474, '2020-01-22 11:21:06', '2020-01-22 11:21:07', 'SN', 'MECANIQUE', 0, '-922521275', 'ACTIVE', 13, 101, 8934, 101, 2445);
INSERT INTO `note` VALUES (9475, '2020-01-22 11:21:07', '2020-01-22 11:21:07', 'CC', 'ELECTROCINÉTIQUE', 0, '156924210', 'ACTIVE', 14.5, 101, 8935, 101, 2508);
INSERT INTO `note` VALUES (9476, '2020-01-22 11:21:07', '2020-01-22 11:21:07', 'SN', 'ELECTROCINÉTIQUE', 0, '602765963', 'ACTIVE', 12.5, 101, 8936, 101, 2508);
INSERT INTO `note` VALUES (9477, '2020-01-22 11:21:07', '2020-01-22 11:21:07', 'CC', 'MESURE', 0, '-1351012286', 'ACTIVE', 14.5, 101, 8939, 101, 2634);
INSERT INTO `note` VALUES (9478, '2020-01-22 11:21:07', '2020-01-22 11:21:07', 'TP', 'MESURE', 0, '2090902677', 'ACTIVE', 16.17, 101, 8940, 101, 2634);
INSERT INTO `note` VALUES (9479, '2020-01-22 11:21:07', '2020-01-22 11:21:07', 'SN', 'MESURE', 0, '-419519624', 'ACTIVE', 18.25, 101, 8941, 101, 2634);
INSERT INTO `note` VALUES (9480, '2020-01-22 11:21:07', '2020-01-22 11:21:07', 'CC', 'PROJET ARDUNO', 0, '-1304087107', 'ACTIVE', 16, 101, 8937, 101, 2571);
INSERT INTO `note` VALUES (9481, '2020-01-22 11:21:07', '2020-01-22 11:21:07', 'SN', 'PROJET ARDUNO', 0, '1110030154', 'ACTIVE', 18, 101, 8938, 101, 2571);
INSERT INTO `note` VALUES (9482, '2020-01-22 11:21:07', '2020-01-22 11:21:07', 'CC', 'COMMUNICATION ING1', 0, '223472987', 'ACTIVE', 18, 101, 8944, 101, 2697);
INSERT INTO `note` VALUES (9483, '2020-01-22 11:21:07', '2020-01-22 11:21:07', 'SN', 'COMMUNICATION ING1', 0, '-176785224', 'ACTIVE', 17.5, 101, 8945, 101, 2697);
INSERT INTO `note` VALUES (9484, '2020-01-22 11:21:08', '2020-01-22 11:21:08', 'CC', 'REFLEXION HUMAINE ING1', 0, '-1540700064', 'ACTIVE', 13.5, 101, 8946, 101, 2760);
INSERT INTO `note` VALUES (9485, '2020-01-22 11:21:08', '2020-01-22 11:21:08', 'SN', 'REFLEXION HUMAINE ING1', 0, '-853584204', 'ACTIVE', 14.5, 101, 8947, 101, 2760);
INSERT INTO `note` VALUES (9486, '2020-01-22 11:21:08', '2020-01-22 11:21:08', 'CC', 'ALGEBRE ING1', 0, '-785840809', 'ACTIVE', 16.5, 101, 8931, 101, 2307);
INSERT INTO `note` VALUES (9487, '2020-01-22 11:21:08', '2020-01-22 11:21:08', 'SN', 'ALGEBRE ING1', 0, '-240487869', 'ACTIVE', 18.5, 101, 8932, 101, 2307);
INSERT INTO `note` VALUES (9488, '2020-01-22 11:21:08', '2020-01-22 11:21:08', 'CC', 'ANALYSE ING1', 0, '-1049781139', 'ACTIVE', 18, 101, 8929, 101, 2242);
INSERT INTO `note` VALUES (9489, '2020-01-22 11:21:08', '2020-01-22 11:21:08', 'SN', 'ANALYSE ING1', 0, '-878266365', 'ACTIVE', 18, 101, 8930, 101, 2242);
INSERT INTO `note` VALUES (9490, '2020-01-22 11:21:08', '2020-01-22 11:21:08', 'CC', 'MECANIQUE', 0, '224301017', 'ACTIVE', 19.75, 101, 8933, 101, 2446);
INSERT INTO `note` VALUES (9491, '2020-01-22 11:21:08', '2020-01-22 11:21:08', 'SN', 'MECANIQUE', 0, '-1794773285', 'ACTIVE', 15, 101, 8934, 101, 2446);
INSERT INTO `note` VALUES (9492, '2020-01-22 11:21:08', '2020-01-22 11:21:08', 'CC', 'ELECTROCINÉTIQUE', 0, '1492115675', 'ACTIVE', 16.75, 101, 8935, 101, 2509);
INSERT INTO `note` VALUES (9493, '2020-01-22 11:21:09', '2020-01-22 11:21:09', 'SN', 'ELECTROCINÉTIQUE', 0, '1274771066', 'ACTIVE', 15, 101, 8936, 101, 2509);
INSERT INTO `note` VALUES (9494, '2020-01-22 11:21:09', '2020-01-22 11:21:09', 'CC', 'MESURE', 0, '839769868', 'ACTIVE', 18, 101, 8939, 101, 2635);
INSERT INTO `note` VALUES (9495, '2020-01-22 11:21:09', '2020-01-22 11:21:09', 'TP', 'MESURE', 0, '-2037761184', 'ACTIVE', 16.17, 101, 8940, 101, 2635);
INSERT INTO `note` VALUES (9496, '2020-01-22 11:21:09', '2020-01-22 11:21:09', 'SN', 'MESURE', 0, '1199147996', 'ACTIVE', 18.5, 101, 8941, 101, 2635);
INSERT INTO `note` VALUES (9497, '2020-01-22 11:21:09', '2020-01-22 11:21:09', 'CC', 'PROJET ARDUNO', 0, '625210004', 'ACTIVE', 16.17, 101, 8937, 101, 2572);
INSERT INTO `note` VALUES (9498, '2020-01-22 11:21:09', '2020-01-22 11:21:09', 'SN', 'PROJET ARDUNO', 0, '-2091992844', 'ACTIVE', 16.5, 101, 8938, 101, 2572);
INSERT INTO `note` VALUES (9499, '2020-01-22 11:21:09', '2020-01-22 11:21:09', 'CC', 'COMMUNICATION ING1', 0, '-1913499863', 'ACTIVE', 18, 101, 8944, 101, 2698);
INSERT INTO `note` VALUES (9500, '2020-01-22 11:21:09', '2020-01-22 11:21:09', 'SN', 'COMMUNICATION ING1', 0, '1677744658', 'ACTIVE', 16.5, 101, 8945, 101, 2698);
INSERT INTO `note` VALUES (9501, '2020-01-22 11:21:09', '2020-01-22 11:21:09', 'CC', 'REFLEXION HUMAINE ING1', 0, '1536991996', 'ACTIVE', 11, 101, 8946, 101, 2761);
INSERT INTO `note` VALUES (9502, '2020-01-22 11:21:09', '2020-01-22 11:21:09', 'SN', 'REFLEXION HUMAINE ING1', 0, '1656192239', 'ACTIVE', 13.5, 101, 8947, 101, 2761);
INSERT INTO `note` VALUES (9503, '2020-01-22 11:21:09', '2020-01-22 11:21:09', 'CC', 'ALGEBRE ING1', 0, '1392461255', 'ACTIVE', 5.75, 101, 8931, 101, 2308);
INSERT INTO `note` VALUES (9504, '2020-01-22 11:21:10', '2020-01-22 11:21:10', 'SN', 'ALGEBRE ING1', 0, '-2025726179', 'ACTIVE', 6.5, 101, 8932, 101, 2308);
INSERT INTO `note` VALUES (9505, '2020-01-22 11:21:10', '2020-01-22 11:21:10', 'CC', 'ANALYSE ING1', 0, '1333093338', 'ACTIVE', 4.75, 101, 8929, 101, 2243);
INSERT INTO `note` VALUES (9506, '2020-01-22 11:21:10', '2020-01-22 11:21:10', 'SN', 'ANALYSE ING1', 0, '-1571529899', 'ACTIVE', 4, 101, 8930, 101, 2243);
INSERT INTO `note` VALUES (9507, '2020-01-22 11:21:10', '2020-01-22 11:21:10', 'CC', 'MECANIQUE', 0, '978214281', 'ACTIVE', 5.25, 101, 8933, 101, 2447);
INSERT INTO `note` VALUES (9508, '2020-01-22 11:21:10', '2020-01-22 11:21:10', 'SN', 'MECANIQUE', 0, '-1378783349', 'ACTIVE', 2, 101, 8934, 101, 2447);
INSERT INTO `note` VALUES (9509, '2020-01-22 11:21:10', '2020-01-22 11:21:10', 'CC', 'ELECTROCINÉTIQUE', 0, '-2137618231', 'ACTIVE', 5.75, 101, 8935, 101, 2510);
INSERT INTO `note` VALUES (9510, '2020-01-22 11:21:10', '2020-01-22 11:21:10', 'SN', 'ELECTROCINÉTIQUE', 0, '621932680', 'ACTIVE', 9, 101, 8936, 101, 2510);
INSERT INTO `note` VALUES (9511, '2020-01-22 11:21:10', '2020-01-22 11:21:10', 'CC', 'MESURE', 0, '-801545499', 'ACTIVE', 6.5, 101, 8939, 101, 2636);
INSERT INTO `note` VALUES (9512, '2020-01-22 11:21:10', '2020-01-22 11:21:10', 'TP', 'MESURE', 0, '1352704551', 'ACTIVE', 16.17, 101, 8940, 101, 2636);
INSERT INTO `note` VALUES (9513, '2020-01-22 11:21:10', '2020-01-22 11:21:10', 'SN', 'MESURE', 0, '960901283', 'ACTIVE', 5, 101, 8941, 101, 2636);
INSERT INTO `note` VALUES (9514, '2020-01-22 11:21:10', '2020-01-22 11:21:10', 'CC', 'PROJET ARDUNO', 0, '1289812018', 'ACTIVE', 17.33, 101, 8937, 101, 2573);
INSERT INTO `note` VALUES (9515, '2020-01-22 11:21:10', '2020-01-22 11:21:10', 'SN', 'PROJET ARDUNO', 0, '1822390218', 'ACTIVE', 19, 101, 8938, 101, 2573);
INSERT INTO `note` VALUES (9516, '2020-01-22 11:21:10', '2020-01-22 11:21:10', 'CC', 'COMMUNICATION ING1', 0, '1404213639', 'ACTIVE', 18, 101, 8944, 101, 2699);
INSERT INTO `note` VALUES (9517, '2020-01-22 11:21:10', '2020-01-22 11:21:11', 'SN', 'COMMUNICATION ING1', 0, '-1468131705', 'ACTIVE', 14, 101, 8945, 101, 2699);
INSERT INTO `note` VALUES (9518, '2020-01-22 11:21:11', '2020-01-22 11:21:11', 'CC', 'REFLEXION HUMAINE ING1', 0, '-1261314838', 'ACTIVE', 14, 101, 8946, 101, 2762);
INSERT INTO `note` VALUES (9519, '2020-01-22 11:21:11', '2020-01-22 11:21:11', 'SN', 'REFLEXION HUMAINE ING1', 0, '-664612381', 'ACTIVE', 13, 101, 8947, 101, 2762);
INSERT INTO `note` VALUES (9520, '2020-01-22 11:21:11', '2020-01-22 11:21:11', 'CC', 'ALGEBRE ING1', 0, '-644904539', 'ACTIVE', 15.25, 101, 8931, 101, 2309);
INSERT INTO `note` VALUES (9521, '2020-01-22 11:21:11', '2020-01-22 11:21:11', 'SN', 'ALGEBRE ING1', 0, '-1933000654', 'ACTIVE', 14, 101, 8932, 101, 2309);
INSERT INTO `note` VALUES (9522, '2020-01-22 11:21:11', '2020-01-22 11:21:11', 'CC', 'ANALYSE ING1', 0, '869571287', 'ACTIVE', 14.75, 101, 8929, 101, 2244);
INSERT INTO `note` VALUES (9523, '2020-01-22 11:21:11', '2020-01-22 11:21:11', 'SN', 'ANALYSE ING1', 0, '1668521296', 'ACTIVE', 19.5, 101, 8930, 101, 2244);
INSERT INTO `note` VALUES (9524, '2020-01-22 11:21:11', '2020-01-22 11:21:11', 'CC', 'MECANIQUE', 0, '871449148', 'ACTIVE', 17, 101, 8933, 101, 2448);
INSERT INTO `note` VALUES (9525, '2020-01-22 11:21:11', '2020-01-22 11:21:11', 'SN', 'MECANIQUE', 0, '-43325333', 'ACTIVE', 13, 101, 8934, 101, 2448);
INSERT INTO `note` VALUES (9526, '2020-01-22 11:21:11', '2020-01-22 11:21:11', 'CC', 'ELECTROCINÉTIQUE', 0, '471048883', 'ACTIVE', 16.5, 101, 8935, 101, 2511);
INSERT INTO `note` VALUES (9527, '2020-01-22 11:21:11', '2020-01-22 11:21:11', 'SN', 'ELECTROCINÉTIQUE', 0, '-256664499', 'ACTIVE', 13.5, 101, 8936, 101, 2511);
INSERT INTO `note` VALUES (9528, '2020-01-22 11:21:11', '2020-01-22 11:21:12', 'CC', 'MESURE', 0, '-115254361', 'ACTIVE', 16, 101, 8939, 101, 2637);
INSERT INTO `note` VALUES (9529, '2020-01-22 11:21:12', '2020-01-22 11:21:12', 'TP', 'MESURE', 0, '1629211387', 'ACTIVE', 16.17, 101, 8940, 101, 2637);
INSERT INTO `note` VALUES (9530, '2020-01-22 11:21:12', '2020-01-22 11:21:12', 'SN', 'MESURE', 0, '-1207663329', 'ACTIVE', 19, 101, 8941, 101, 2637);
INSERT INTO `note` VALUES (9531, '2020-01-22 11:21:12', '2020-01-22 11:21:12', 'CC', 'PROJET ARDUNO', 0, '1977394406', 'ACTIVE', 16.33, 101, 8937, 101, 2574);
INSERT INTO `note` VALUES (9532, '2020-01-22 11:21:12', '2020-01-22 11:21:12', 'SN', 'PROJET ARDUNO', 0, '1734866840', 'ACTIVE', 18, 101, 8938, 101, 2574);
INSERT INTO `note` VALUES (9533, '2020-01-22 11:21:12', '2020-01-22 11:21:12', 'CC', 'COMMUNICATION ING1', 0, '-1729311566', 'ACTIVE', 16, 101, 8944, 101, 2700);
INSERT INTO `note` VALUES (9534, '2020-01-22 11:21:12', '2020-01-22 11:21:12', 'SN', 'COMMUNICATION ING1', 0, '1218647908', 'ACTIVE', 14.5, 101, 8945, 101, 2700);
INSERT INTO `note` VALUES (9535, '2020-01-22 11:21:12', '2020-01-22 11:21:12', 'CC', 'REFLEXION HUMAINE ING1', 0, '467271598', 'ACTIVE', 10.5, 101, 8946, 101, 2763);
INSERT INTO `note` VALUES (9536, '2020-01-22 11:21:12', '2020-01-22 11:21:12', 'SN', 'REFLEXION HUMAINE ING1', 0, '-748619928', 'ACTIVE', 11.5, 101, 8947, 101, 2763);
INSERT INTO `note` VALUES (9537, '2020-01-22 11:21:12', '2020-01-22 11:21:12', 'CC', 'ALGEBRE ING1', 0, '-793918360', 'ACTIVE', 10.5, 101, 8931, 101, 2310);
INSERT INTO `note` VALUES (9538, '2020-01-22 11:21:12', '2020-01-22 11:21:12', 'SN', 'ALGEBRE ING1', 0, '-1417052990', 'ACTIVE', 14, 101, 8932, 101, 2310);
INSERT INTO `note` VALUES (9539, '2020-01-22 11:21:12', '2020-01-22 11:21:12', 'CC', 'ANALYSE ING1', 0, '-1069366414', 'ACTIVE', 14.75, 101, 8929, 101, 2245);
INSERT INTO `note` VALUES (9540, '2020-01-22 11:21:12', '2020-01-22 11:21:12', 'SN', 'ANALYSE ING1', 0, '466339367', 'ACTIVE', 15, 101, 8930, 101, 2245);
INSERT INTO `note` VALUES (9541, '2020-01-22 11:21:13', '2020-01-22 11:21:13', 'CC', 'MECANIQUE', 0, '-136873187', 'ACTIVE', 10.5, 101, 8933, 101, 2449);
INSERT INTO `note` VALUES (9542, '2020-01-22 11:21:13', '2020-01-22 11:21:13', 'SN', 'MECANIQUE', 0, '-642175347', 'ACTIVE', 16.5, 101, 8934, 101, 2449);
INSERT INTO `note` VALUES (9543, '2020-01-22 11:21:13', '2020-01-22 11:21:13', 'CC', 'ELECTROCINÉTIQUE', 0, '-1534229398', 'ACTIVE', 16, 101, 8935, 101, 2512);
INSERT INTO `note` VALUES (9544, '2020-01-22 11:21:13', '2020-01-22 11:21:13', 'SN', 'ELECTROCINÉTIQUE', 0, '-1405375505', 'ACTIVE', 13.5, 101, 8936, 101, 2512);
INSERT INTO `note` VALUES (9545, '2020-01-22 11:21:13', '2020-01-22 11:21:13', 'CC', 'MESURE', 0, '-654519063', 'ACTIVE', 13, 101, 8939, 101, 2638);
INSERT INTO `note` VALUES (9546, '2020-01-22 11:21:13', '2020-01-22 11:21:13', 'TP', 'MESURE', 0, '-776464601', 'ACTIVE', 16.67, 101, 8940, 101, 2638);
INSERT INTO `note` VALUES (9547, '2020-01-22 11:21:13', '2020-01-22 11:21:13', 'SN', 'MESURE', 0, '1842951729', 'ACTIVE', 19.5, 101, 8941, 101, 2638);
INSERT INTO `note` VALUES (9548, '2020-01-22 11:21:13', '2020-01-22 11:21:13', 'CC', 'PROJET ARDUNO', 0, '-62195164', 'ACTIVE', 16.33, 101, 8937, 101, 2575);
INSERT INTO `note` VALUES (9549, '2020-01-22 11:21:13', '2020-01-22 11:21:13', 'SN', 'PROJET ARDUNO', 0, '-938577751', 'ACTIVE', 16, 101, 8938, 101, 2575);
INSERT INTO `note` VALUES (9550, '2020-01-22 11:21:13', '2020-01-22 11:21:13', 'CC', 'COMMUNICATION ING1', 0, '1671171946', 'ACTIVE', 16, 101, 8944, 101, 2701);
INSERT INTO `note` VALUES (9551, '2020-01-22 11:21:13', '2020-01-22 11:21:13', 'SN', 'COMMUNICATION ING1', 0, '-566859061', 'ACTIVE', 15.5, 101, 8945, 101, 2701);
INSERT INTO `note` VALUES (9552, '2020-01-22 11:21:13', '2020-01-22 11:21:13', 'CC', 'REFLEXION HUMAINE ING1', 0, '1780836702', 'ACTIVE', 11, 101, 8946, 101, 2764);
INSERT INTO `note` VALUES (9553, '2020-01-22 11:21:13', '2020-01-22 11:21:13', 'SN', 'REFLEXION HUMAINE ING1', 0, '16140835', 'ACTIVE', 9.5, 101, 8947, 101, 2764);
INSERT INTO `note` VALUES (9554, '2020-01-22 11:21:13', '2020-01-22 11:21:13', 'CC', 'ALGEBRE ING1', 0, '1201482204', 'ACTIVE', 4.75, 101, 8931, 101, 2311);
INSERT INTO `note` VALUES (9555, '2020-01-22 11:21:14', '2020-01-22 11:21:14', 'SN', 'ALGEBRE ING1', 0, '1467420803', 'ACTIVE', 8, 101, 8932, 101, 2311);
INSERT INTO `note` VALUES (9556, '2020-01-22 11:21:14', '2020-01-22 11:21:14', 'CC', 'ANALYSE ING1', 0, '-1469573192', 'ACTIVE', 9, 101, 8929, 101, 2246);
INSERT INTO `note` VALUES (9557, '2020-01-22 11:21:14', '2020-01-22 11:21:14', 'SN', 'ANALYSE ING1', 0, '1005805417', 'ACTIVE', 9, 101, 8930, 101, 2246);
INSERT INTO `note` VALUES (9558, '2020-01-22 11:21:14', '2020-01-22 11:21:14', 'CC', 'MECANIQUE', 0, '-136654517', 'ACTIVE', 11, 101, 8933, 101, 2450);
INSERT INTO `note` VALUES (9559, '2020-01-22 11:21:14', '2020-01-22 11:21:14', 'SN', 'MECANIQUE', 0, '-1887364940', 'ACTIVE', 10.5, 101, 8934, 101, 2450);
INSERT INTO `note` VALUES (9560, '2020-01-22 11:21:14', '2020-01-22 11:21:14', 'CC', 'ELECTROCINÉTIQUE', 0, '-419286357', 'ACTIVE', 12.75, 101, 8935, 101, 2513);
INSERT INTO `note` VALUES (9561, '2020-01-22 11:21:14', '2020-01-22 11:21:14', 'SN', 'ELECTROCINÉTIQUE', 0, '1866015755', 'ACTIVE', 12.5, 101, 8936, 101, 2513);
INSERT INTO `note` VALUES (9562, '2020-01-22 11:21:14', '2020-01-22 11:21:14', 'CC', 'MESURE', 0, '-1520688925', 'ACTIVE', 11.5, 101, 8939, 101, 2639);
INSERT INTO `note` VALUES (9563, '2020-01-22 11:21:14', '2020-01-22 11:21:14', 'TP', 'MESURE', 0, '1158856231', 'ACTIVE', 16.67, 101, 8940, 101, 2639);
INSERT INTO `note` VALUES (9564, '2020-01-22 11:21:14', '2020-01-22 11:21:14', 'SN', 'MESURE', 0, '1595276834', 'ACTIVE', 14.5, 101, 8941, 101, 2639);
INSERT INTO `note` VALUES (9565, '2020-01-22 11:21:14', '2020-01-22 11:21:14', 'CC', 'PROJET ARDUNO', 0, '1506266135', 'ACTIVE', 15.67, 101, 8937, 101, 2576);
INSERT INTO `note` VALUES (9566, '2020-01-22 11:21:14', '2020-01-22 11:21:14', 'SN', 'PROJET ARDUNO', 0, '-10312304', 'ACTIVE', 17, 101, 8938, 101, 2576);
INSERT INTO `note` VALUES (9567, '2020-01-22 11:21:14', '2020-01-22 11:21:15', 'CC', 'COMMUNICATION ING1', 0, '-1932091465', 'ACTIVE', 16, 101, 8944, 101, 2702);
INSERT INTO `note` VALUES (9568, '2020-01-22 11:21:15', '2020-01-22 11:21:15', 'SN', 'COMMUNICATION ING1', 0, '-53638428', 'ACTIVE', 15, 101, 8945, 101, 2702);
INSERT INTO `note` VALUES (9569, '2020-01-22 11:21:15', '2020-01-22 11:21:15', 'CC', 'REFLEXION HUMAINE ING1', 0, '-60649065', 'ACTIVE', 12.5, 101, 8946, 101, 2765);
INSERT INTO `note` VALUES (9570, '2020-01-22 11:21:15', '2020-01-22 11:21:15', 'SN', 'REFLEXION HUMAINE ING1', 0, '-1453133908', 'ACTIVE', 11, 101, 8947, 101, 2765);
INSERT INTO `note` VALUES (9571, '2020-01-22 11:21:15', '2020-01-22 11:21:15', 'CC', 'ALGEBRE ING1', 0, '94932272', 'ACTIVE', 5.25, 101, 8931, 101, 2312);
INSERT INTO `note` VALUES (9572, '2020-01-22 11:21:15', '2020-01-22 11:21:15', 'SN', 'ALGEBRE ING1', 0, '2116209845', 'ACTIVE', 10, 101, 8932, 101, 2312);
INSERT INTO `note` VALUES (9573, '2020-01-22 11:21:15', '2020-01-22 11:21:15', 'CC', 'ANALYSE ING1', 0, '-620354693', 'ACTIVE', 12.5, 101, 8929, 101, 2247);
INSERT INTO `note` VALUES (9574, '2020-01-22 11:21:15', '2020-01-22 11:21:15', 'SN', 'ANALYSE ING1', 0, '-455982287', 'ACTIVE', 9.5, 101, 8930, 101, 2247);
INSERT INTO `note` VALUES (9575, '2020-01-22 11:21:15', '2020-01-22 11:21:15', 'CC', 'MECANIQUE', 0, '-1819832011', 'ACTIVE', 12.25, 101, 8933, 101, 2451);
INSERT INTO `note` VALUES (9576, '2020-01-22 11:21:15', '2020-01-22 11:21:15', 'SN', 'MECANIQUE', 0, '-1760984972', 'ACTIVE', 17, 101, 8934, 101, 2451);
INSERT INTO `note` VALUES (9577, '2020-01-22 11:21:15', '2020-01-22 11:21:15', 'CC', 'ELECTROCINÉTIQUE', 0, '-41556882', 'ACTIVE', 12.25, 101, 8935, 101, 2514);
INSERT INTO `note` VALUES (9578, '2020-01-22 11:21:16', '2020-01-22 11:21:16', 'SN', 'ELECTROCINÉTIQUE', 0, '-1350188804', 'ACTIVE', 12, 101, 8936, 101, 2514);
INSERT INTO `note` VALUES (9579, '2020-01-22 11:21:16', '2020-01-22 11:21:16', 'CC', 'MESURE', 0, '970794444', 'ACTIVE', 9, 101, 8939, 101, 2640);
INSERT INTO `note` VALUES (9580, '2020-01-22 11:21:16', '2020-01-22 11:21:16', 'TP', 'MESURE', 0, '2010647927', 'ACTIVE', 16.67, 101, 8940, 101, 2640);
INSERT INTO `note` VALUES (9581, '2020-01-22 11:21:16', '2020-01-22 11:21:16', 'SN', 'MESURE', 0, '-1388586029', 'ACTIVE', 16, 101, 8941, 101, 2640);
INSERT INTO `note` VALUES (9582, '2020-01-22 11:21:16', '2020-01-22 11:21:16', 'CC', 'PROJET ARDUNO', 0, '1370821492', 'ACTIVE', 15.33, 101, 8937, 101, 2577);
INSERT INTO `note` VALUES (9583, '2020-01-22 11:21:16', '2020-01-22 11:21:16', 'SN', 'PROJET ARDUNO', 0, '-1002782767', 'ACTIVE', 17, 101, 8938, 101, 2577);
INSERT INTO `note` VALUES (9584, '2020-01-22 11:21:16', '2020-01-22 11:21:16', 'CC', 'COMMUNICATION ING1', 0, '102314353', 'ACTIVE', 15, 101, 8944, 101, 2703);
INSERT INTO `note` VALUES (9585, '2020-01-22 11:21:16', '2020-01-22 11:21:16', 'SN', 'COMMUNICATION ING1', 0, '-2011322443', 'ACTIVE', 14.5, 101, 8945, 101, 2703);
INSERT INTO `note` VALUES (9586, '2020-01-22 11:21:16', '2020-01-22 11:21:16', 'CC', 'REFLEXION HUMAINE ING1', 0, '788497553', 'ACTIVE', 12, 101, 8946, 101, 2766);
INSERT INTO `note` VALUES (9587, '2020-01-22 11:21:16', '2020-01-22 11:21:16', 'SN', 'REFLEXION HUMAINE ING1', 0, '339383782', 'ACTIVE', 11.5, 101, 8947, 101, 2766);
INSERT INTO `note` VALUES (9588, '2020-01-22 11:21:16', '2020-01-22 11:21:16', 'CC', 'ALGEBRE ING1', 0, '-952549764', 'ACTIVE', 5, 101, 8931, 101, 2313);
INSERT INTO `note` VALUES (9589, '2020-01-22 11:21:16', '2020-01-22 11:21:16', 'SN', 'ALGEBRE ING1', 0, '-397088770', 'ACTIVE', 11.5, 101, 8932, 101, 2313);
INSERT INTO `note` VALUES (9590, '2020-01-22 11:21:16', '2020-01-22 11:21:16', 'CC', 'ANALYSE ING1', 0, '1891393454', 'ACTIVE', 8.75, 101, 8929, 101, 2248);
INSERT INTO `note` VALUES (9591, '2020-01-22 11:21:17', '2020-01-22 11:21:17', 'SN', 'ANALYSE ING1', 0, '1952131117', 'ACTIVE', 11.5, 101, 8930, 101, 2248);
INSERT INTO `note` VALUES (9592, '2020-01-22 11:21:17', '2020-01-22 11:21:17', 'CC', 'MECANIQUE', 0, '310790407', 'ACTIVE', 8.25, 101, 8933, 101, 2452);
INSERT INTO `note` VALUES (9593, '2020-01-22 11:21:17', '2020-01-22 11:21:17', 'SN', 'MECANIQUE', 0, '-44715145', 'ACTIVE', 13, 101, 8934, 101, 2452);
INSERT INTO `note` VALUES (9594, '2020-01-22 11:21:17', '2020-01-22 11:21:17', 'CC', 'ELECTROCINÉTIQUE', 0, '-957131819', 'ACTIVE', 8, 101, 8935, 101, 2515);
INSERT INTO `note` VALUES (9595, '2020-01-22 11:21:17', '2020-01-22 11:21:17', 'SN', 'ELECTROCINÉTIQUE', 0, '-2005638988', 'ACTIVE', 10.5, 101, 8936, 101, 2515);
INSERT INTO `note` VALUES (9596, '2020-01-22 11:21:17', '2020-01-22 11:21:17', 'CC', 'MESURE', 0, '-874356703', 'ACTIVE', 6, 101, 8939, 101, 2641);
INSERT INTO `note` VALUES (9597, '2020-01-22 11:21:17', '2020-01-22 11:21:17', 'TP', 'MESURE', 0, '-931725536', 'ACTIVE', 10.75, 101, 8940, 101, 2641);
INSERT INTO `note` VALUES (9598, '2020-01-22 11:21:17', '2020-01-22 11:21:17', 'SN', 'MESURE', 0, '629599177', 'ACTIVE', 5, 101, 8941, 101, 2641);
INSERT INTO `note` VALUES (9599, '2020-01-22 11:21:17', '2020-01-22 11:21:17', 'CC', 'PROJET ARDUNO', 0, '-1667370468', 'ACTIVE', 15.67, 101, 8937, 101, 2578);
INSERT INTO `note` VALUES (9600, '2020-01-22 11:21:17', '2020-01-22 11:21:17', 'SN', 'PROJET ARDUNO', 0, '833964359', 'ACTIVE', 16.5, 101, 8938, 101, 2578);
INSERT INTO `note` VALUES (9601, '2020-01-22 11:21:17', '2020-01-22 11:21:17', 'CC', 'COMMUNICATION ING1', 0, '-393216129', 'ACTIVE', 18, 101, 8944, 101, 2704);
INSERT INTO `note` VALUES (9602, '2020-01-22 11:21:17', '2020-01-22 11:21:17', 'SN', 'COMMUNICATION ING1', 0, '250027788', 'ACTIVE', 13, 101, 8945, 101, 2704);
INSERT INTO `note` VALUES (9603, '2020-01-22 11:21:17', '2020-01-22 11:21:17', 'CC', 'REFLEXION HUMAINE ING1', 0, '455825180', 'ACTIVE', 8.5, 101, 8946, 101, 2767);
INSERT INTO `note` VALUES (9604, '2020-01-22 11:21:18', '2020-01-22 11:21:18', 'SN', 'REFLEXION HUMAINE ING1', 0, '79786811', 'ACTIVE', 12.5, 101, 8947, 101, 2767);
INSERT INTO `note` VALUES (9605, '2020-01-22 11:21:18', '2020-01-22 11:21:18', 'CC', 'ALGEBRE ING1', 0, '-1153255832', 'ACTIVE', 9, 101, 8931, 101, 2314);
INSERT INTO `note` VALUES (9606, '2020-01-22 11:21:18', '2020-01-22 11:21:18', 'SN', 'ALGEBRE ING1', 0, '-1444235858', 'ACTIVE', 10, 101, 8932, 101, 2314);
INSERT INTO `note` VALUES (9607, '2020-01-22 11:21:18', '2020-01-22 11:21:18', 'CC', 'ANALYSE ING1', 0, '-932589037', 'ACTIVE', 11.5, 101, 8929, 101, 2249);
INSERT INTO `note` VALUES (9608, '2020-01-22 11:21:18', '2020-01-22 11:21:18', 'CC', 'ALGEBRE ING1', 0, '888694284', 'ACTIVE', 9, 101, 8931, 101, 2315);
INSERT INTO `note` VALUES (9609, '2020-01-22 11:21:18', '2020-01-22 11:21:18', 'SN', 'ALGEBRE ING1', 0, '-1580322761', 'ACTIVE', 13, 101, 8932, 101, 2315);
INSERT INTO `note` VALUES (9610, '2020-01-22 11:21:18', '2020-01-22 11:21:18', 'CC', 'ANALYSE ING1', 0, '624072563', 'ACTIVE', 10, 101, 8929, 101, 2250);
INSERT INTO `note` VALUES (10515, '2020-01-24 07:51:47', '2020-01-24 07:51:47', 'CC', 'ANGLAIS ING1', 0, '-935025955', 'ACTIVE', 12.3, 101, 8942, 101, 10452);
INSERT INTO `note` VALUES (10516, '2020-01-24 07:51:47', '2020-01-24 07:51:47', 'SN', 'ANGLAIS ING1', 0, '-1092998712', 'ACTIVE', 15.3, 101, 8943, 101, 10452);
INSERT INTO `note` VALUES (10517, '2020-01-24 07:51:47', '2020-01-24 07:51:47', 'CC', 'ANGLAIS ING1', 0, '-720452960', 'ACTIVE', 13, 101, 8942, 101, 10453);
INSERT INTO `note` VALUES (10518, '2020-01-24 07:51:47', '2020-01-24 07:51:47', 'SN', 'ANGLAIS ING1', 0, '1162021401', 'ACTIVE', 12.4, 101, 8943, 101, 10453);
INSERT INTO `note` VALUES (10519, '2020-01-24 07:51:47', '2020-01-24 07:51:47', 'CC', 'ANGLAIS ING1', 0, '-1916685140', 'ACTIVE', 9.3, 101, 8942, 101, 10454);
INSERT INTO `note` VALUES (10520, '2020-01-24 07:51:47', '2020-01-24 07:51:47', 'SN', 'ANGLAIS ING1', 0, '-1075871586', 'ACTIVE', 10, 101, 8943, 101, 10454);
INSERT INTO `note` VALUES (10521, '2020-01-24 07:51:47', '2020-01-24 07:51:47', 'CC', 'ANGLAIS ING1', 0, '1634582849', 'ACTIVE', 9.5, 101, 8942, 101, 10455);
INSERT INTO `note` VALUES (10522, '2020-01-24 07:51:47', '2020-01-24 07:51:47', 'SN', 'ANGLAIS ING1', 0, '-700644696', 'ACTIVE', 8.5, 101, 8943, 101, 10455);
INSERT INTO `note` VALUES (10523, '2020-01-24 07:51:48', '2020-01-24 07:51:48', 'CC', 'ANGLAIS ING1', 0, '-1669085652', 'ACTIVE', 13.5, 101, 8942, 101, 10456);
INSERT INTO `note` VALUES (10524, '2020-01-24 07:51:48', '2020-01-24 07:51:48', 'SN', 'ANGLAIS ING1', 0, '-1431982337', 'ACTIVE', 10.7, 101, 8943, 101, 10456);
INSERT INTO `note` VALUES (10525, '2020-01-24 07:51:48', '2020-01-24 07:51:48', 'CC', 'ANGLAIS ING1', 0, '965480252', 'ACTIVE', 7.7, 101, 8942, 101, 10457);
INSERT INTO `note` VALUES (10526, '2020-01-24 07:51:48', '2020-01-24 07:51:48', 'SN', 'ANGLAIS ING1', 0, '-1144724925', 'ACTIVE', 8.9, 101, 8943, 101, 10457);
INSERT INTO `note` VALUES (10527, '2020-01-24 07:51:48', '2020-01-24 07:51:48', 'CC', 'ANGLAIS ING1', 0, '960050832', 'ACTIVE', 8.8, 101, 8942, 101, 10458);
INSERT INTO `note` VALUES (10528, '2020-01-24 07:51:48', '2020-01-24 07:51:48', 'SN', 'ANGLAIS ING1', 0, '1125302262', 'ACTIVE', 7.6, 101, 8943, 101, 10458);
INSERT INTO `note` VALUES (10529, '2020-01-24 07:51:48', '2020-01-24 07:51:48', 'CC', 'ANGLAIS ING1', 0, '1175793391', 'ACTIVE', 14.55, 101, 8942, 101, 10460);
INSERT INTO `note` VALUES (10530, '2020-01-24 07:51:48', '2020-01-24 07:51:48', 'SN', 'ANGLAIS ING1', 0, '1197893994', 'ACTIVE', 15, 101, 8943, 101, 10460);
INSERT INTO `note` VALUES (10531, '2020-01-24 07:51:48', '2020-01-24 07:51:48', 'CC', 'ANGLAIS ING1', 0, '1439640893', 'ACTIVE', 12.3, 101, 8942, 101, 10461);
INSERT INTO `note` VALUES (10532, '2020-01-24 07:51:49', '2020-01-24 07:51:49', 'SN', 'ANGLAIS ING1', 0, '483355186', 'ACTIVE', 13.4, 101, 8943, 101, 10461);
INSERT INTO `note` VALUES (10533, '2020-01-24 07:51:49', '2020-01-24 07:51:49', 'CC', 'ANGLAIS ING1', 0, '2113646629', 'ACTIVE', 6.8, 101, 8942, 101, 10463);
INSERT INTO `note` VALUES (10534, '2020-01-24 07:51:49', '2020-01-24 07:51:49', 'SN', 'ANGLAIS ING1', 0, '468096445', 'ACTIVE', 7, 101, 8943, 101, 10463);
INSERT INTO `note` VALUES (10535, '2020-01-24 07:51:49', '2020-01-24 07:51:49', 'CC', 'ANGLAIS ING1', 0, '1714427624', 'ACTIVE', 7.7, 101, 8942, 101, 10464);
INSERT INTO `note` VALUES (10536, '2020-01-24 07:51:49', '2020-01-24 07:51:49', 'SN', 'ANGLAIS ING1', 0, '-921244698', 'ACTIVE', 8.9, 101, 8943, 101, 10464);
INSERT INTO `note` VALUES (10537, '2020-01-24 07:51:49', '2020-01-24 07:51:49', 'CC', 'ANGLAIS ING1', 0, '1261129056', 'ACTIVE', 13.7, 101, 8942, 101, 10465);
INSERT INTO `note` VALUES (10538, '2020-01-24 07:51:49', '2020-01-24 07:51:49', 'SN', 'ANGLAIS ING1', 0, '903952333', 'ACTIVE', 12.4, 101, 8943, 101, 10465);
INSERT INTO `note` VALUES (10539, '2020-01-24 07:51:49', '2020-01-24 07:51:49', 'CC', 'ANGLAIS ING1', 0, '1816333394', 'ACTIVE', 7.8, 101, 8942, 101, 10466);
INSERT INTO `note` VALUES (10540, '2020-01-24 07:51:50', '2020-01-24 07:51:50', 'SN', 'ANGLAIS ING1', 0, '278882741', 'ACTIVE', 8.1, 101, 8943, 101, 10466);
INSERT INTO `note` VALUES (10541, '2020-01-24 07:51:50', '2020-01-24 07:51:50', 'CC', 'ANGLAIS ING1', 0, '1095728075', 'ACTIVE', 7.8, 101, 8942, 101, 10467);
INSERT INTO `note` VALUES (10542, '2020-01-24 07:51:50', '2020-01-24 07:51:50', 'SN', 'ANGLAIS ING1', 0, '492344313', 'ACTIVE', 8.3, 101, 8943, 101, 10467);
INSERT INTO `note` VALUES (10543, '2020-01-24 07:51:50', '2020-01-24 07:51:50', 'CC', 'ANGLAIS ING1', 0, '822158690', 'ACTIVE', 12.1, 101, 8942, 101, 10469);
INSERT INTO `note` VALUES (10544, '2020-01-24 07:51:50', '2020-01-24 07:51:50', 'SN', 'ANGLAIS ING1', 0, '1704711043', 'ACTIVE', 14.7, 101, 8943, 101, 10469);
INSERT INTO `note` VALUES (10545, '2020-01-24 07:51:50', '2020-01-24 07:51:50', 'CC', 'ANGLAIS ING1', 0, '585980540', 'ACTIVE', 10.8, 101, 8942, 101, 10470);
INSERT INTO `note` VALUES (10546, '2020-01-24 07:51:50', '2020-01-24 07:51:50', 'SN', 'ANGLAIS ING1', 0, '188871403', 'ACTIVE', 10, 101, 8943, 101, 10470);
INSERT INTO `note` VALUES (10547, '2020-01-24 07:51:50', '2020-01-24 07:51:50', 'CC', 'ANGLAIS ING1', 0, '-953658833', 'ACTIVE', 12.4, 101, 8942, 101, 10471);
INSERT INTO `note` VALUES (10548, '2020-01-24 07:51:50', '2020-01-24 07:51:50', 'SN', 'ANGLAIS ING1', 0, '506984203', 'ACTIVE', 10.9, 101, 8943, 101, 10471);
INSERT INTO `note` VALUES (10549, '2020-01-24 07:51:50', '2020-01-24 07:51:50', 'CC', 'ANGLAIS ING1', 0, '1936785329', 'ACTIVE', 12.4, 101, 8942, 101, 10473);
INSERT INTO `note` VALUES (10550, '2020-01-24 07:51:51', '2020-01-24 07:51:51', 'SN', 'ANGLAIS ING1', 0, '1371060699', 'ACTIVE', 12.8, 101, 8943, 101, 10473);
INSERT INTO `note` VALUES (10551, '2020-01-24 07:51:51', '2020-01-24 07:51:51', 'CC', 'ANGLAIS ING1', 0, '-1184685364', 'ACTIVE', 7.1, 101, 8942, 101, 10474);
INSERT INTO `note` VALUES (10552, '2020-01-24 07:51:51', '2020-01-24 07:51:51', 'CC', 'ANGLAIS ING1', 0, '175352231', 'ACTIVE', 10.8, 101, 8942, 101, 10475);
INSERT INTO `note` VALUES (10553, '2020-01-24 07:51:51', '2020-01-24 07:51:51', 'SN', 'ANGLAIS ING1', 0, '513710843', 'ACTIVE', 10.2, 101, 8943, 101, 10475);
INSERT INTO `note` VALUES (10554, '2020-01-24 07:51:51', '2020-01-24 07:51:51', 'CC', 'ANGLAIS ING1', 0, '1716178412', 'ACTIVE', 10.2, 101, 8942, 101, 10476);
INSERT INTO `note` VALUES (10555, '2020-01-24 07:51:51', '2020-01-24 07:51:51', 'SN', 'ANGLAIS ING1', 0, '148805284', 'ACTIVE', 10, 101, 8943, 101, 10476);
INSERT INTO `note` VALUES (10556, '2020-01-24 07:51:51', '2020-01-24 07:51:51', 'CC', 'ANGLAIS ING1', 0, '-1365432788', 'ACTIVE', 12.6, 101, 8942, 101, 10478);
INSERT INTO `note` VALUES (10557, '2020-01-24 07:51:51', '2020-01-24 07:51:51', 'SN', 'ANGLAIS ING1', 0, '1465450222', 'ACTIVE', 11.9, 101, 8943, 101, 10478);
INSERT INTO `note` VALUES (10558, '2020-01-24 07:51:51', '2020-01-24 07:51:51', 'CC', 'ANGLAIS ING1', 0, '1893124860', 'ACTIVE', 7.8, 101, 8942, 101, 10479);
INSERT INTO `note` VALUES (10559, '2020-01-24 07:51:52', '2020-01-24 07:51:52', 'SN', 'ANGLAIS ING1', 0, '-1030403080', 'ACTIVE', 6, 101, 8943, 101, 10479);
INSERT INTO `note` VALUES (10560, '2020-01-24 07:51:52', '2020-01-24 07:51:52', 'CC', 'ANGLAIS ING1', 0, '-1772401182', 'ACTIVE', 10.2, 101, 8942, 101, 10480);
INSERT INTO `note` VALUES (10561, '2020-01-24 07:51:52', '2020-01-24 07:51:52', 'SN', 'ANGLAIS ING1', 0, '-1178908740', 'ACTIVE', 10.7, 101, 8943, 101, 10480);
INSERT INTO `note` VALUES (10562, '2020-01-24 07:51:52', '2020-01-24 07:51:52', 'CC', 'ANGLAIS ING1', 0, '586773235', 'ACTIVE', 11.8, 101, 8942, 101, 10481);
INSERT INTO `note` VALUES (10563, '2020-01-24 07:51:52', '2020-01-24 07:51:52', 'SN', 'ANGLAIS ING1', 0, '-1966577516', 'ACTIVE', 12.4, 101, 8943, 101, 10481);
INSERT INTO `note` VALUES (10564, '2020-01-24 07:51:52', '2020-01-24 07:51:52', 'CC', 'ANGLAIS ING1', 0, '-1681226507', 'ACTIVE', 9.15, 101, 8942, 101, 10482);
INSERT INTO `note` VALUES (10565, '2020-01-24 07:51:52', '2020-01-24 07:51:52', 'SN', 'ANGLAIS ING1', 0, '-549151857', 'ACTIVE', 10.7, 101, 8943, 101, 10482);
INSERT INTO `note` VALUES (10566, '2020-01-24 07:51:52', '2020-01-24 07:51:52', 'CC', 'ANGLAIS ING1', 0, '-1953066484', 'ACTIVE', 0, 101, 8942, 101, 10483);
INSERT INTO `note` VALUES (10567, '2020-01-24 07:51:52', '2020-01-24 07:51:52', 'CC', 'ANGLAIS ING1', 0, '-53063146', 'ACTIVE', 6.6, 101, 8942, 101, 10484);
INSERT INTO `note` VALUES (10568, '2020-01-24 07:51:52', '2020-01-24 07:51:53', 'SN', 'ANGLAIS ING1', 0, '1756118193', 'ACTIVE', 9, 101, 8943, 101, 10484);
INSERT INTO `note` VALUES (10569, '2020-01-24 07:51:53', '2020-01-24 07:51:53', 'CC', 'ANGLAIS ING1', 0, '313747069', 'ACTIVE', 9.6, 101, 8942, 101, 10486);
INSERT INTO `note` VALUES (10570, '2020-01-24 07:51:53', '2020-01-24 07:51:53', 'SN', 'ANGLAIS ING1', 0, '328258301', 'ACTIVE', 12.2, 101, 8943, 101, 10486);
INSERT INTO `note` VALUES (10571, '2020-01-24 07:51:53', '2020-01-24 07:51:53', 'CC', 'ANGLAIS ING1', 0, '1648332806', 'ACTIVE', 12.1, 101, 8942, 101, 10487);
INSERT INTO `note` VALUES (10572, '2020-01-24 07:51:53', '2020-01-24 07:51:53', 'SN', 'ANGLAIS ING1', 0, '-1542699953', 'ACTIVE', 10.1, 101, 8943, 101, 10487);
INSERT INTO `note` VALUES (10573, '2020-01-24 07:51:53', '2020-01-24 07:51:53', 'CC', 'ANGLAIS ING1', 0, '-1619457067', 'ACTIVE', 4.5, 101, 8942, 101, 10488);
INSERT INTO `note` VALUES (10574, '2020-01-24 07:51:53', '2020-01-24 07:51:53', 'SN', 'ANGLAIS ING1', 0, '-474963366', 'ACTIVE', 8.9, 101, 8943, 101, 10488);
INSERT INTO `note` VALUES (10575, '2020-01-24 07:51:53', '2020-01-24 07:51:53', 'CC', 'ANGLAIS ING1', 0, '1836924172', 'ACTIVE', 12.7, 101, 8942, 101, 10489);
INSERT INTO `note` VALUES (10576, '2020-01-24 07:51:53', '2020-01-24 07:51:53', 'SN', 'ANGLAIS ING1', 0, '-517366275', 'ACTIVE', 12, 101, 8943, 101, 10489);
INSERT INTO `note` VALUES (10577, '2020-01-24 07:51:53', '2020-01-24 07:51:53', 'CC', 'ANGLAIS ING1', 0, '348098108', 'ACTIVE', 13.1, 101, 8942, 101, 10490);
INSERT INTO `note` VALUES (10578, '2020-01-24 07:51:53', '2020-01-24 07:51:53', 'SN', 'ANGLAIS ING1', 0, '-1234172892', 'ACTIVE', 12, 101, 8943, 101, 10490);
INSERT INTO `note` VALUES (10579, '2020-01-24 07:51:53', '2020-01-24 07:51:53', 'CC', 'ANGLAIS ING1', 0, '-1664965349', 'ACTIVE', 6.8, 101, 8942, 101, 10491);
INSERT INTO `note` VALUES (10580, '2020-01-24 07:51:54', '2020-01-24 07:51:54', 'SN', 'ANGLAIS ING1', 0, '554807806', 'ACTIVE', 17.9, 101, 8943, 101, 10491);
INSERT INTO `note` VALUES (10581, '2020-01-24 07:51:54', '2020-01-24 07:51:54', 'CC', 'ANGLAIS ING1', 0, '-768581225', 'ACTIVE', 9.2, 101, 8942, 101, 10492);
INSERT INTO `note` VALUES (10582, '2020-01-24 07:51:54', '2020-01-24 07:51:54', 'SN', 'ANGLAIS ING1', 0, '-1341492263', 'ACTIVE', 11.4, 101, 8943, 101, 10492);
INSERT INTO `note` VALUES (10583, '2020-01-24 07:51:54', '2020-01-24 07:51:54', 'CC', 'ANGLAIS ING1', 0, '1743631250', 'ACTIVE', 13.1, 101, 8942, 101, 10493);
INSERT INTO `note` VALUES (10584, '2020-01-24 07:51:54', '2020-01-24 07:51:54', 'SN', 'ANGLAIS ING1', 0, '685422983', 'ACTIVE', 13.1, 101, 8943, 101, 10493);
INSERT INTO `note` VALUES (10585, '2020-01-24 07:51:54', '2020-01-24 07:51:54', 'CC', 'ANGLAIS ING1', 0, '-1331070847', 'ACTIVE', 12.7, 101, 8942, 101, 10494);
INSERT INTO `note` VALUES (10586, '2020-01-24 07:51:54', '2020-01-24 07:51:54', 'SN', 'ANGLAIS ING1', 0, '-459526138', 'ACTIVE', 11.4, 101, 8943, 101, 10494);
INSERT INTO `note` VALUES (10587, '2020-01-24 07:51:54', '2020-01-24 07:51:54', 'CC', 'ANGLAIS ING1', 0, '968749941', 'ACTIVE', 8.3, 101, 8942, 101, 10495);
INSERT INTO `note` VALUES (10588, '2020-01-24 07:51:54', '2020-01-24 07:51:54', 'SN', 'ANGLAIS ING1', 0, '63918605', 'ACTIVE', 9.1, 101, 8943, 101, 10495);
INSERT INTO `note` VALUES (10589, '2020-01-24 07:51:54', '2020-01-24 07:51:54', 'CC', 'ANGLAIS ING1', 0, '-707041159', 'ACTIVE', 9.1, 101, 8942, 101, 10496);
INSERT INTO `note` VALUES (10590, '2020-01-24 07:51:54', '2020-01-24 07:51:54', 'SN', 'ANGLAIS ING1', 0, '-489990126', 'ACTIVE', 8.8, 101, 8943, 101, 10496);
INSERT INTO `note` VALUES (10591, '2020-01-24 07:51:54', '2020-01-24 07:51:54', 'CC', 'ANGLAIS ING1', 0, '-268510009', 'ACTIVE', 14.2, 101, 8942, 101, 10497);
INSERT INTO `note` VALUES (10592, '2020-01-24 07:51:54', '2020-01-24 07:51:54', 'SN', 'ANGLAIS ING1', 0, '468906497', 'ACTIVE', 14.8, 101, 8943, 101, 10497);
INSERT INTO `note` VALUES (10593, '2020-01-24 07:51:55', '2020-01-24 07:51:55', 'CC', 'ANGLAIS ING1', 0, '504873453', 'ACTIVE', 19, 101, 8942, 101, 10498);
INSERT INTO `note` VALUES (10594, '2020-01-24 07:51:55', '2020-01-24 07:51:55', 'SN', 'ANGLAIS ING1', 0, '-60455034', 'ACTIVE', 17.9, 101, 8943, 101, 10498);
INSERT INTO `note` VALUES (10595, '2020-01-24 07:51:55', '2020-01-24 07:51:55', 'CC', 'ANGLAIS ING1', 0, '-1906766068', 'ACTIVE', 10.1, 101, 8942, 101, 10499);
INSERT INTO `note` VALUES (10596, '2020-01-24 07:51:55', '2020-01-24 07:51:55', 'SN', 'ANGLAIS ING1', 0, '-1734820561', 'ACTIVE', 11, 101, 8943, 101, 10499);
INSERT INTO `note` VALUES (10597, '2020-01-24 07:51:55', '2020-01-24 07:51:55', 'CC', 'ANGLAIS ING1', 0, '-799045616', 'ACTIVE', 13.55, 101, 8942, 101, 10500);
INSERT INTO `note` VALUES (10598, '2020-01-24 07:51:55', '2020-01-24 07:51:55', 'SN', 'ANGLAIS ING1', 0, '-800634926', 'ACTIVE', 12.4, 101, 8943, 101, 10500);
INSERT INTO `note` VALUES (10599, '2020-01-24 07:51:55', '2020-01-24 07:51:55', 'CC', 'ANGLAIS ING1', 0, '-1103350971', 'ACTIVE', 13.6, 101, 8942, 101, 10501);
INSERT INTO `note` VALUES (10600, '2020-01-24 07:51:55', '2020-01-24 07:51:55', 'SN', 'ANGLAIS ING1', 0, '1260046072', 'ACTIVE', 14, 101, 8943, 101, 10501);
INSERT INTO `note` VALUES (10601, '2020-01-24 07:51:55', '2020-01-24 07:51:55', 'CC', 'ANGLAIS ING1', 0, '167813815', 'ACTIVE', 13.5, 101, 8942, 101, 10502);
INSERT INTO `note` VALUES (10602, '2020-01-24 07:51:55', '2020-01-24 07:51:55', 'SN', 'ANGLAIS ING1', 0, '-913347394', 'ACTIVE', 12, 101, 8943, 101, 10502);
INSERT INTO `note` VALUES (10603, '2020-01-24 07:51:55', '2020-01-24 07:51:55', 'CC', 'ANGLAIS ING1', 0, '213185071', 'ACTIVE', 15.3, 101, 8942, 101, 10503);
INSERT INTO `note` VALUES (10604, '2020-01-24 07:51:55', '2020-01-24 07:51:56', 'SN', 'ANGLAIS ING1', 0, '1809370793', 'ACTIVE', 14.3, 101, 8943, 101, 10503);
INSERT INTO `note` VALUES (10605, '2020-01-24 07:51:56', '2020-01-24 07:51:56', 'CC', 'ANGLAIS ING1', 0, '-1009315720', 'ACTIVE', 8.8, 101, 8942, 101, 10504);
INSERT INTO `note` VALUES (10606, '2020-01-24 07:51:56', '2020-01-24 07:51:56', 'SN', 'ANGLAIS ING1', 0, '-1214412518', 'ACTIVE', 8, 101, 8943, 101, 10504);
INSERT INTO `note` VALUES (10607, '2020-01-24 07:51:56', '2020-01-24 07:51:56', 'CC', 'ANGLAIS ING1', 0, '779828701', 'ACTIVE', 8.5, 101, 8942, 101, 10505);
INSERT INTO `note` VALUES (10608, '2020-01-24 07:51:56', '2020-01-24 07:51:56', 'SN', 'ANGLAIS ING1', 0, '-2100492278', 'ACTIVE', 10.3, 101, 8943, 101, 10505);
INSERT INTO `note` VALUES (10609, '2020-01-24 07:51:56', '2020-01-24 07:51:56', 'CC', 'ANGLAIS ING1', 0, '-1373553676', 'ACTIVE', 9.6, 101, 8942, 101, 10506);
INSERT INTO `note` VALUES (10610, '2020-01-24 07:51:56', '2020-01-24 07:51:56', 'SN', 'ANGLAIS ING1', 0, '-1032171880', 'ACTIVE', 8.9, 101, 8943, 101, 10506);
INSERT INTO `note` VALUES (10611, '2020-01-24 07:51:56', '2020-01-24 07:51:56', 'CC', 'ANGLAIS ING1', 0, '-1948667288', 'ACTIVE', 11.3, 101, 8942, 101, 10507);
INSERT INTO `note` VALUES (10612, '2020-01-24 07:51:56', '2020-01-24 07:51:56', 'SN', 'ANGLAIS ING1', 0, '-289995172', 'ACTIVE', 13.3, 101, 8943, 101, 10507);
INSERT INTO `note` VALUES (10613, '2020-01-24 07:51:56', '2020-01-24 07:51:56', 'CC', 'ANGLAIS ING1', 0, '976099865', 'ACTIVE', 12.1, 101, 8942, 101, 10508);
INSERT INTO `note` VALUES (10614, '2020-01-24 07:51:56', '2020-01-24 07:51:56', 'SN', 'ANGLAIS ING1', 0, '-1106549128', 'ACTIVE', 12, 101, 8943, 101, 10508);
INSERT INTO `note` VALUES (10615, '2020-01-24 07:51:56', '2020-01-24 07:51:56', 'CC', 'ANGLAIS ING1', 0, '1420248526', 'ACTIVE', 14.3, 101, 8942, 101, 10509);
INSERT INTO `note` VALUES (10616, '2020-01-24 07:51:57', '2020-01-24 07:51:57', 'SN', 'ANGLAIS ING1', 0, '585418361', 'ACTIVE', 13.8, 101, 8943, 101, 10509);
INSERT INTO `note` VALUES (10617, '2020-01-24 07:51:57', '2020-01-24 07:51:57', 'CC', 'ANGLAIS ING1', 0, '1219795920', 'ACTIVE', 12.6, 101, 8942, 101, 10510);
INSERT INTO `note` VALUES (10618, '2020-01-24 07:51:57', '2020-01-24 07:51:57', 'SN', 'ANGLAIS ING1', 0, '629102160', 'ACTIVE', 14.8, 101, 8943, 101, 10510);
INSERT INTO `note` VALUES (10619, '2020-01-24 07:51:57', '2020-01-24 07:51:57', 'CC', 'ANGLAIS ING1', 0, '-652472763', 'ACTIVE', 11.2, 101, 8942, 101, 10511);
INSERT INTO `note` VALUES (10620, '2020-01-24 07:51:57', '2020-01-24 07:51:57', 'SN', 'ANGLAIS ING1', 0, '-843292283', 'ACTIVE', 10.7, 101, 8943, 101, 10511);
INSERT INTO `note` VALUES (10621, '2020-01-24 07:51:57', '2020-01-24 07:51:57', 'CC', 'ANGLAIS ING1', 0, '-679383902', 'ACTIVE', 7.7, 101, 8942, 101, 10512);
INSERT INTO `note` VALUES (10622, '2020-01-24 07:51:57', '2020-01-24 07:51:57', 'SN', 'ANGLAIS ING1', 0, '-427395332', 'ACTIVE', 7.2, 101, 8943, 101, 10512);
INSERT INTO `note` VALUES (10623, '2020-01-24 07:51:57', '2020-01-24 07:51:57', 'CC', 'ANGLAIS ING1', 0, '-1034682675', 'ACTIVE', 4.1, 101, 8942, 101, 10513);
INSERT INTO `note` VALUES (10624, '2020-01-24 07:51:57', '2020-01-24 07:51:57', 'SN', 'ANGLAIS ING1', 0, '1451943867', 'ACTIVE', 5, 101, 8943, 101, 10513);
INSERT INTO `note` VALUES (10625, '2020-01-24 07:51:57', '2020-01-24 07:51:57', 'CC', 'ANGLAIS ING1', 0, '-1012686880', 'ACTIVE', 9.4, 101, 8942, 101, 10514);
INSERT INTO `note` VALUES (10626, '2020-01-24 07:51:57', '2020-01-24 07:51:57', 'SN', 'ANGLAIS ING1', 0, '-1232694458', 'ACTIVE', 11, 101, 8943, 101, 10514);

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
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sequence
-- ----------------------------
INSERT INTO `sequence` VALUES ('SEQ_GEN', 10650);

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
INSERT INTO `session` VALUES (7451, '2019-10-10 13:46:12', '2019-10-10 13:46:12', NULL, '2019-10-10 13:46:13', NULL, NULL, 'DESKTOP-6LF86IF', '-1882147270', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (7501, '2019-12-04 10:41:20', '2019-12-04 10:41:21', NULL, '2019-12-04 10:41:21', NULL, NULL, 'DESKTOP-6LF86IF', '1552552012', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (7551, '2019-12-04 10:42:36', '2019-12-04 10:42:36', NULL, '2019-12-04 10:42:36', NULL, NULL, 'DESKTOP-6LF86IF', '1649876791', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (7601, '2019-12-04 10:45:34', '2019-12-04 10:45:34', NULL, '2019-12-04 10:45:34', NULL, NULL, 'DESKTOP-6LF86IF', '44681237', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (7651, '2019-12-04 10:51:58', '2019-12-04 10:51:58', NULL, '2019-12-04 10:51:58', NULL, NULL, 'DESKTOP-6LF86IF', '2103581240', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (7701, '2019-12-09 11:18:32', '2019-12-09 11:18:33', NULL, '2019-12-09 11:18:35', NULL, NULL, 'DESKTOP-6LF86IF', '1945842564', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (7751, '2019-12-09 11:20:56', '2019-12-09 11:20:56', NULL, '2019-12-09 11:20:57', NULL, NULL, 'DESKTOP-6LF86IF', '717474522', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (7801, '2019-12-09 14:36:52', '2019-12-09 14:36:52', NULL, '2019-12-09 14:36:53', NULL, NULL, 'DESKTOP-6LF86IF', '1163224068', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (7851, '2019-12-09 14:46:43', '2019-12-09 14:46:43', NULL, '2019-12-09 14:46:43', NULL, NULL, 'DESKTOP-6LF86IF', '-97322252', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (7901, '2019-12-09 14:49:09', '2019-12-09 14:49:09', NULL, '2019-12-09 14:49:09', NULL, NULL, 'DESKTOP-6LF86IF', '-95712171', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (7951, '2019-12-10 11:16:37', '2019-12-10 11:16:37', NULL, '2019-12-10 11:16:38', NULL, NULL, 'DESKTOP-6LF86IF', '835923724', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (8001, '2019-12-10 11:34:31', '2019-12-10 11:34:31', NULL, '2019-12-10 11:34:31', NULL, NULL, 'DESKTOP-6LF86IF', '-1869444828', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (8051, '2019-12-10 12:09:34', '2019-12-10 12:09:34', NULL, '2019-12-10 12:09:34', NULL, NULL, 'DESKTOP-6LF86IF', '-1396438083', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (8101, '2019-12-10 14:20:38', '2019-12-10 14:20:38', NULL, '2019-12-10 14:20:39', NULL, NULL, 'DESKTOP-6LF86IF', '-1026336335', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (8151, '2019-12-10 14:25:02', '2019-12-10 14:25:02', NULL, '2019-12-10 14:25:02', NULL, NULL, 'DESKTOP-6LF86IF', '-421133759', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (8201, '2019-12-12 15:46:11', '2019-12-12 15:46:11', NULL, '2019-12-12 15:46:11', NULL, NULL, 'DESKTOP-6LF86IF', '787548201', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (8251, '2019-12-18 09:13:37', '2019-12-18 09:13:37', NULL, '2019-12-18 09:13:38', NULL, NULL, 'DESKTOP-6LF86IF', '423959147', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (8301, '2019-12-18 09:19:23', '2019-12-18 09:19:23', NULL, '2019-12-18 09:19:23', NULL, NULL, 'DESKTOP-6LF86IF', '365495116', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (8351, '2019-12-18 09:24:00', '2019-12-18 09:24:00', NULL, '2019-12-18 09:24:00', NULL, NULL, 'DESKTOP-6LF86IF', '102729985', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (8451, '2020-01-06 12:22:45', '2020-01-06 12:22:45', NULL, '2020-01-06 12:22:45', NULL, NULL, 'DESKTOP-6LF86IF', '49063966', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (8551, '2020-01-06 12:36:41', '2020-01-06 12:36:41', NULL, '2020-01-06 12:36:42', NULL, NULL, 'DESKTOP-6LF86IF', '-229881310', 'ACTIF', 'ACTIVE', 1, 1, NULL);
INSERT INTO `session` VALUES (251, '2020-01-10 11:45:56', '2020-01-10 11:45:56', NULL, '2020-01-10 11:45:57', NULL, NULL, 'DESKTOP-OGAHMPH', '-586244604', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (301, '2020-01-10 11:57:40', '2020-01-10 11:57:40', NULL, '2020-01-10 11:57:41', NULL, NULL, 'DESKTOP-8VC7UQP', '415396820', 'ACTIF', 'ACTIVE', 205, 205, NULL);
INSERT INTO `session` VALUES (351, '2020-01-10 12:04:12', '2020-01-10 12:04:12', NULL, '2020-01-10 12:04:13', NULL, NULL, 'DESKTOP-8VC7UQP', '1363102523', 'ACTIF', 'ACTIVE', 205, 205, NULL);
INSERT INTO `session` VALUES (401, '2020-01-10 12:17:56', '2020-01-10 12:17:56', NULL, '2020-01-10 12:17:58', NULL, NULL, 'DESKTOP-6LF86IF', '334471775', 'ACTIF', 'ACTIVE', 202, 202, NULL);
INSERT INTO `session` VALUES (451, '2020-01-10 13:54:45', '2020-01-10 13:54:45', NULL, '2020-01-10 13:54:47', NULL, NULL, 'DESKTOP-OGAHMPH', '1047723466', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (501, '2020-01-11 15:04:15', '2020-01-11 15:04:15', NULL, '2020-01-11 15:04:17', NULL, NULL, 'DESKTOP-8E6LK4L', '-1967529226', 'ACTIF', 'ACTIVE', 202, 202, NULL);
INSERT INTO `session` VALUES (551, '2020-01-13 14:13:19', '2020-01-13 14:13:19', NULL, '2020-01-13 14:13:22', NULL, NULL, 'DESKTOP-6LF86IF', '-575417033', 'ACTIF', 'ACTIVE', 202, 202, NULL);
INSERT INTO `session` VALUES (652, '2020-01-14 13:25:36', '2020-01-14 13:25:36', NULL, '2020-01-14 13:25:37', NULL, NULL, 'DESKTOP-6LF86IF', '1668862581', 'ACTIF', 'ACTIVE', 202, 202, NULL);
INSERT INTO `session` VALUES (701, '2020-01-14 13:32:29', '2020-01-14 13:32:29', NULL, '2020-01-14 13:32:30', NULL, NULL, 'DESKTOP-6LF86IF', '1992106841', 'ACTIF', 'ACTIVE', 202, 202, NULL);
INSERT INTO `session` VALUES (851, '2020-01-15 14:27:01', '2020-01-15 14:27:01', NULL, '2020-01-15 14:27:03', NULL, NULL, 'DESKTOP-8VC7UQP', '1606141657', 'ACTIF', 'ACTIVE', 205, 205, NULL);
INSERT INTO `session` VALUES (951, '2020-01-16 07:49:20', '2020-01-16 07:49:20', NULL, '2020-01-16 07:49:24', NULL, NULL, 'DESKTOP-8VC7UQP', '-811478764', 'ACTIF', 'ACTIVE', 205, 205, NULL);
INSERT INTO `session` VALUES (1001, '2020-01-16 07:59:00', '2020-01-16 07:59:00', NULL, '2020-01-16 07:59:02', NULL, NULL, 'DESKTOP-6LF86IF', '-838666906', 'ACTIF', 'ACTIVE', 202, 202, NULL);
INSERT INTO `session` VALUES (1051, '2020-01-16 08:06:42', '2020-01-16 08:06:42', NULL, '2020-01-16 08:06:47', NULL, NULL, 'DESKTOP-8VC7UQP', '204738739', 'ACTIF', 'ACTIVE', 205, 205, NULL);
INSERT INTO `session` VALUES (1101, '2020-01-16 08:26:45', '2020-01-16 08:26:45', NULL, '2020-01-16 08:26:48', NULL, NULL, 'DESKTOP-8VC7UQP', '-975131706', 'ACTIF', 'ACTIVE', 205, 205, NULL);
INSERT INTO `session` VALUES (1151, '2020-01-16 09:35:27', '2020-01-16 09:35:27', NULL, '2020-01-16 09:35:33', NULL, NULL, 'DESKTOP-8VC7UQP', '-539501575', 'ACTIF', 'ACTIVE', 205, 205, NULL);
INSERT INTO `session` VALUES (1202, '2020-01-16 09:44:02', '2020-01-16 09:44:02', NULL, '2020-01-16 09:44:03', NULL, NULL, 'DESKTOP-6LF86IF', '350138208', 'ACTIF', 'ACTIVE', 202, 202, NULL);
INSERT INTO `session` VALUES (1251, '2020-01-16 10:13:59', '2020-01-16 10:13:59', NULL, '2020-01-16 10:14:02', NULL, NULL, 'DESKTOP-8VC7UQP', '-1632612927', 'ACTIF', 'ACTIVE', 205, 205, NULL);
INSERT INTO `session` VALUES (1301, '2020-01-16 10:35:56', '2020-01-16 10:35:56', NULL, '2020-01-16 10:35:59', NULL, NULL, 'DESKTOP-OGAHMPH', '704001392', 'ACTIF', 'ACTIVE', 205, 205, NULL);
INSERT INTO `session` VALUES (1351, '2020-01-16 11:38:30', '2020-01-16 11:38:30', NULL, '2020-01-16 11:38:34', NULL, NULL, 'DESKTOP-6LF86IF', '-1927007375', 'ACTIF', 'ACTIVE', 202, 202, NULL);
INSERT INTO `session` VALUES (1401, '2020-01-16 12:50:26', '2020-01-16 12:50:26', NULL, '2020-01-16 12:50:29', NULL, NULL, 'DESKTOP-8VC7UQP', '1705701127', 'ACTIF', 'ACTIVE', 205, 205, NULL);
INSERT INTO `session` VALUES (1451, '2020-01-16 13:02:01', '2020-01-16 13:02:02', NULL, '2020-01-16 13:02:05', NULL, NULL, 'DESKTOP-8VC7UQP', '1119933948', 'ACTIF', 'ACTIVE', 205, 205, NULL);
INSERT INTO `session` VALUES (1501, '2020-01-16 13:33:50', '2020-01-16 13:33:50', NULL, '2020-01-16 13:33:53', NULL, NULL, 'DESKTOP-6LF86IF', '787336191', 'ACTIF', 'ACTIVE', 202, 202, NULL);
INSERT INTO `session` VALUES (1551, '2020-01-17 10:40:53', '2020-01-17 10:40:53', NULL, '2020-01-17 10:40:55', NULL, NULL, 'DESKTOP-OGAHMPH', '2107960054', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (1601, '2020-01-17 12:08:58', '2020-01-17 12:08:58', NULL, '2020-01-17 12:08:58', NULL, NULL, 'DESKTOP-OGAHMPH', '-1200613477', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (1651, '2020-01-17 12:10:36', '2020-01-17 12:10:36', NULL, '2020-01-17 12:10:38', NULL, NULL, 'DESKTOP-OGAHMPH', '2062461231', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (1701, '2020-01-17 12:26:07', '2020-01-17 12:26:07', NULL, '2020-01-17 12:26:09', NULL, NULL, 'DESKTOP-OGAHMPH', '1007181004', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (1751, '2020-01-17 12:35:48', '2020-01-17 12:35:48', NULL, '2020-01-17 12:35:51', NULL, NULL, 'DESKTOP-OGAHMPH', '-950451033', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (1801, '2020-01-17 13:12:14', '2020-01-17 13:12:14', NULL, '2020-01-17 13:12:16', NULL, NULL, 'DESKTOP-8VC7UQP', '579805372', 'ACTIF', 'ACTIVE', 205, 205, NULL);
INSERT INTO `session` VALUES (1851, '2020-01-17 13:19:52', '2020-01-17 13:19:52', NULL, '2020-01-17 13:19:54', NULL, NULL, 'DESKTOP-8VC7UQP', '1114669712', 'ACTIF', 'ACTIVE', 205, 205, NULL);
INSERT INTO `session` VALUES (1901, '2020-01-17 13:48:40', '2020-01-17 13:48:40', NULL, '2020-01-17 13:48:42', NULL, NULL, 'DESKTOP-8VC7UQP', '630773974', 'ACTIF', 'ACTIVE', 205, 205, NULL);
INSERT INTO `session` VALUES (1951, '2020-01-17 14:00:15', '2020-01-17 14:00:15', NULL, '2020-01-17 14:00:18', NULL, NULL, 'DESKTOP-OGAHMPH', '-1652023924', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (2001, '2020-01-17 14:31:18', '2020-01-17 14:31:18', NULL, '2020-01-17 14:31:21', NULL, NULL, 'DESKTOP-OGAHMPH', '1637543344', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (2051, '2020-01-17 14:40:56', '2020-01-17 14:40:56', NULL, '2020-01-17 14:40:59', NULL, NULL, 'DESKTOP-OGAHMPH', '-2049041572', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (2101, '2020-01-17 19:00:47', '2020-01-17 19:00:47', NULL, '2020-01-17 19:00:51', NULL, NULL, 'DESKTOP-OGAHMPH', '-1510001976', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (2151, '2020-01-17 19:06:10', '2020-01-17 19:06:10', NULL, '2020-01-17 19:06:14', NULL, NULL, 'DESKTOP-OGAHMPH', '272217432', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (2351, '2020-01-17 19:29:45', '2020-01-17 19:29:45', NULL, '2020-01-17 19:29:48', NULL, NULL, 'DESKTOP-8VC7UQP', '-152289927', 'ACTIF', 'ACTIVE', 205, 205, NULL);
INSERT INTO `session` VALUES (2801, '2020-01-18 07:54:21', '2020-01-18 07:54:21', NULL, '2020-01-18 07:54:25', NULL, NULL, 'DESKTOP-8VC7UQP', '-78812577', 'ACTIF', 'ACTIVE', 205, 205, NULL);
INSERT INTO `session` VALUES (2851, '2020-01-18 08:26:26', '2020-01-18 08:26:26', NULL, '2020-01-18 08:26:28', NULL, NULL, 'DESKTOP-8VC7UQP', '-760285534', 'ACTIF', 'ACTIVE', 205, 205, NULL);
INSERT INTO `session` VALUES (2951, '2020-01-18 08:53:37', '2020-01-18 08:53:37', NULL, '2020-01-18 08:53:39', NULL, NULL, 'DESKTOP-8VC7UQP', '-1880557637', 'ACTIF', 'ACTIVE', 205, 205, NULL);
INSERT INTO `session` VALUES (3001, '2020-01-18 09:08:49', '2020-01-18 09:08:49', NULL, '2020-01-18 09:08:54', NULL, NULL, 'DESKTOP-OGAHMPH', '299305901', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (3051, '2020-01-18 09:17:47', '2020-01-18 09:17:47', NULL, '2020-01-18 09:17:50', NULL, NULL, 'DESKTOP-OGAHMPH', '-1576012574', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (4101, '2020-01-19 11:37:07', '2020-01-19 11:37:07', NULL, '2020-01-19 11:37:09', NULL, NULL, 'DESKTOP-8VC7UQP', '1776045072', 'ACTIF', 'ACTIVE', 205, 205, NULL);
INSERT INTO `session` VALUES (4601, '2020-01-20 08:25:41', '2020-01-20 08:25:42', NULL, '2020-01-20 08:25:45', NULL, NULL, 'DESKTOP-8VC7UQP', '271737057', 'ACTIF', 'ACTIVE', 205, 205, NULL);
INSERT INTO `session` VALUES (4652, '2020-01-20 08:55:59', '2020-01-20 08:55:59', NULL, '2020-01-20 08:56:01', NULL, NULL, 'DESKTOP-OGAHMPH', '-1914037675', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (4702, '2020-01-20 08:59:34', '2020-01-20 08:59:34', NULL, '2020-01-20 08:59:35', NULL, NULL, 'DESKTOP-OGAHMPH', '1477147551', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (8601, '2020-01-20 09:16:44', '2020-01-20 09:16:44', NULL, '2020-01-20 09:16:46', NULL, NULL, 'DESKTOP-OGAHMPH', '1469263832', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (8651, '2020-01-20 16:09:23', '2020-01-20 16:09:23', NULL, '2020-01-20 16:09:26', NULL, NULL, 'DESKTOP-8VC7UQP', '-339909804', 'ACTIF', 'ACTIVE', 205, 205, NULL);
INSERT INTO `session` VALUES (8801, '2020-01-20 16:34:32', '2020-01-20 16:34:32', NULL, '2020-01-20 16:34:34', NULL, NULL, 'DESKTOP-OGAHMPH', '-1905820627', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (8951, '2020-01-20 17:42:43', '2020-01-20 17:42:43', NULL, '2020-01-20 17:42:45', NULL, NULL, 'DESKTOP-OGAHMPH', '-1272952528', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (9001, '2020-01-21 10:35:16', '2020-01-21 10:35:16', NULL, '2020-01-21 10:35:19', NULL, NULL, 'DESKTOP-8VC7UQP', '483894006', 'ACTIF', 'ACTIVE', 205, 205, NULL);
INSERT INTO `session` VALUES (9051, '2020-01-22 08:19:57', '2020-01-22 08:19:58', NULL, '2020-01-22 08:20:02', NULL, NULL, 'DESKTOP-OGAHMPH', '-340410835', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (9101, '2020-01-22 08:59:00', '2020-01-22 08:59:00', NULL, '2020-01-22 08:59:02', NULL, NULL, 'DESKTOP-OGAHMPH', '1256722207', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (9151, '2020-01-22 09:46:13', '2020-01-22 09:46:13', NULL, '2020-01-22 09:46:16', NULL, NULL, 'DESKTOP-OGAHMPH', '1031008817', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (9201, '2020-01-22 10:17:00', '2020-01-22 10:17:00', NULL, '2020-01-22 10:17:03', NULL, NULL, 'DESKTOP-OGAHMPH', '-448815132', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (9251, '2020-01-22 10:34:40', '2020-01-22 10:34:40', NULL, '2020-01-22 10:34:42', NULL, NULL, 'DESKTOP-6LF86IF', '878725083', 'ACTIF', 'ACTIVE', 202, 202, NULL);
INSERT INTO `session` VALUES (9301, '2020-01-22 10:41:00', '2020-01-22 10:41:00', NULL, '2020-01-22 10:41:10', NULL, NULL, 'DESKTOP-OGAHMPH', '1884004795', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (8602, '2020-01-22 11:19:08', '2020-01-22 11:19:08', NULL, '2020-01-22 11:19:08', NULL, NULL, 'DESKTOP-OGAHMPH', '-1651717612', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (9651, '2020-01-22 11:44:13', '2020-01-22 11:44:13', NULL, '2020-01-22 11:44:14', NULL, NULL, 'DESKTOP-OGAHMPH', '1421636146', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (9701, '2020-01-22 11:49:37', '2020-01-22 11:49:37', NULL, '2020-01-22 11:49:37', NULL, NULL, 'DESKTOP-OGAHMPH', '1120764137', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (9751, '2020-01-22 12:00:28', '2020-01-22 12:00:28', NULL, '2020-01-22 12:00:28', NULL, NULL, 'DESKTOP-OGAHMPH', '2107320391', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (9801, '2020-01-22 12:02:48', '2020-01-22 12:02:48', NULL, '2020-01-22 12:02:48', NULL, NULL, 'DESKTOP-OGAHMPH', '100977606', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (9851, '2020-01-22 12:14:12', '2020-01-22 12:14:12', NULL, '2020-01-22 12:14:13', NULL, NULL, 'DESKTOP-OGAHMPH', '1828661116', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (9901, '2020-01-22 12:31:33', '2020-01-22 12:31:33', NULL, '2020-01-22 12:31:33', NULL, NULL, 'DESKTOP-OGAHMPH', '-1520314988', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (9951, '2020-01-22 13:12:13', '2020-01-22 13:12:14', NULL, '2020-01-22 13:12:14', NULL, NULL, 'DESKTOP-OGAHMPH', '296390770', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (10001, '2020-01-22 13:32:04', '2020-01-22 13:32:04', NULL, '2020-01-22 13:32:04', NULL, NULL, 'DESKTOP-OGAHMPH', '-1888909638', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (10051, '2020-01-22 13:52:05', '2020-01-22 13:52:05', NULL, '2020-01-22 13:52:06', NULL, NULL, 'DESKTOP-OGAHMPH', '1665654082', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (10101, '2020-01-22 14:05:35', '2020-01-22 14:05:35', NULL, '2020-01-22 14:05:35', NULL, NULL, 'DESKTOP-OGAHMPH', '-1175097883', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (10151, '2020-01-22 14:18:47', '2020-01-22 14:18:47', NULL, '2020-01-22 14:18:47', NULL, NULL, 'DESKTOP-OGAHMPH', '625382141', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (10201, '2020-01-23 11:55:16', '2020-01-23 11:55:16', NULL, '2020-01-23 11:55:16', NULL, NULL, 'DESKTOP-OGAHMPH', '83131825', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (10251, '2020-01-23 12:25:59', '2020-01-23 12:26:00', NULL, '2020-01-23 12:26:00', NULL, NULL, 'DESKTOP-OGAHMPH', '266580016', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (10301, '2020-01-23 12:29:21', '2020-01-23 12:29:21', NULL, '2020-01-23 12:29:21', NULL, NULL, 'DESKTOP-OGAHMPH', '-1303027208', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (10351, '2020-01-23 12:42:18', '2020-01-23 12:42:18', NULL, '2020-01-23 12:42:18', NULL, NULL, 'DESKTOP-OGAHMPH', '643932885', 'ACTIF', 'ACTIVE', 101, 101, NULL);
INSERT INTO `session` VALUES (10451, '2020-01-24 07:48:30', '2020-01-24 07:48:30', NULL, '2020-01-24 07:48:30', NULL, NULL, 'DESKTOP-OGAHMPH', '-1657570124', 'ACTIF', 'ACTIVE', 101, 101, NULL);

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
) ENGINE = MyISAM AUTO_INCREMENT = 953 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of specialite
-- ----------------------------
INSERT INTO `specialite` VALUES (53, '2019-08-27 19:15:37', '2020-01-17 14:06:40', '', 'Concepteur Développeur d’Applications pour l’Economie Numérique', '1211868124', 'ACTIVE', 1, 52, 205);
INSERT INTO `specialite` VALUES (54, '2019-08-27 19:17:01', '2019-08-27 19:17:01', '', 'Informatique et système d\'information', '1619430251', 'ACTIVE', 1, 51, 1);
INSERT INTO `specialite` VALUES (55, '2019-08-27 19:18:03', '2019-08-27 19:18:03', '', 'Système réseau et télécommunication', '1690883794', 'ACTIVE', 1, 51, 1);
INSERT INTO `specialite` VALUES (56, '2019-08-27 19:18:38', '2019-08-27 19:18:38', '', 'Tronc Commun', '1730403710', 'ACTIVE', 1, 51, 1);
INSERT INTO `specialite` VALUES (952, '2020-01-16 07:51:26', '2020-01-16 07:51:27', '', 'Tronc Commun de Branche', '-549000250', 'ACTIVE', 205, 51, 205);

-- ----------------------------
-- Table structure for tmp_ue
-- ----------------------------
DROP TABLE IF EXISTS `tmp_ue`;
CREATE TABLE `tmp_ue`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codeue` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 535 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
) ENGINE = MyISAM AUTO_INCREMENT = 8775 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type_evaluation
-- ----------------------------
INSERT INTO `type_evaluation` VALUES (8602, '2020-01-20 09:24:10', '2020-01-20 09:24:11', 'Description CC', 'CC', 20, '-2002384492', 'ACTIVE', 101, 1930, 101);
INSERT INTO `type_evaluation` VALUES (8603, '2020-01-20 09:24:34', '2020-01-20 09:24:36', 'Description TP', 'TP', 40, '1821120608', 'ACTIVE', 101, 1930, 101);
INSERT INTO `type_evaluation` VALUES (8604, '2020-01-20 09:24:41', '2020-01-20 09:25:06', 'Description SN', 'SN', 40, '-1457953268', 'ACTIVE', 101, 1930, 101);
INSERT INTO `type_evaluation` VALUES (8652, '2020-01-20 16:12:57', '2020-01-20 16:12:57', 'Description CC', 'CC', 30, '-2120010924', 'ACTIVE', 205, 1931, 205);
INSERT INTO `type_evaluation` VALUES (8653, '2020-01-20 16:13:01', '2020-01-20 16:13:02', 'Description SN', 'SN', 70, '-1169131291', 'ACTIVE', 205, 1931, 205);
INSERT INTO `type_evaluation` VALUES (8654, '2020-01-20 16:13:06', '2020-01-20 16:13:07', 'Description CC', 'CC', 30, '-403127924', 'ACTIVE', 205, 1932, 205);
INSERT INTO `type_evaluation` VALUES (8655, '2020-01-20 16:13:10', '2020-01-20 16:13:11', 'Description SN', 'SN', 70, '-1139872549', 'ACTIVE', 205, 1932, 205);
INSERT INTO `type_evaluation` VALUES (8656, '2020-01-20 16:13:15', '2020-01-20 16:13:15', 'Description CC', 'CC', 20, '1581649069', 'ACTIVE', 205, 1933, 205);
INSERT INTO `type_evaluation` VALUES (8657, '2020-01-20 16:13:19', '2020-01-20 16:13:20', 'Description TP', 'TP', 30, '-329751874', 'ACTIVE', 205, 1933, 205);
INSERT INTO `type_evaluation` VALUES (8658, '2020-01-20 16:13:25', '2020-01-20 16:13:26', 'Description SN', 'SN', 50, '-974811347', 'ACTIVE', 205, 1933, 205);
INSERT INTO `type_evaluation` VALUES (8659, '2020-01-20 16:13:29', '2020-01-20 16:13:30', 'Description CC', 'CC', 30, '-800439139', 'ACTIVE', 205, 1934, 205);
INSERT INTO `type_evaluation` VALUES (8660, '2020-01-20 16:13:34', '2020-01-20 16:13:35', 'Description SN', 'SN', 70, '-2047473113', 'ACTIVE', 205, 1934, 205);
INSERT INTO `type_evaluation` VALUES (8661, '2020-01-20 16:13:38', '2020-01-20 16:13:39', 'Description CC', 'CC', 20, '507810361', 'ACTIVE', 205, 1935, 205);
INSERT INTO `type_evaluation` VALUES (8662, '2020-01-20 16:13:43', '2020-01-20 16:13:43', 'Description TP', 'TP', 30, '-140594089', 'ACTIVE', 205, 1935, 205);
INSERT INTO `type_evaluation` VALUES (8663, '2020-01-20 16:13:47', '2020-01-20 16:13:48', 'Description SN', 'SN', 50, '492413074', 'ACTIVE', 205, 1935, 205);
INSERT INTO `type_evaluation` VALUES (8664, '2020-01-20 16:13:51', '2020-01-20 16:13:52', 'Description CC', 'CC', 30, '2045216190', 'ACTIVE', 205, 1929, 205);
INSERT INTO `type_evaluation` VALUES (8665, '2020-01-20 16:13:56', '2020-01-20 16:13:57', 'Description SN', 'SN', 70, '1259205319', 'ACTIVE', 205, 1929, 205);
INSERT INTO `type_evaluation` VALUES (8666, '2020-01-20 16:14:01', '2020-01-20 16:14:02', 'Description CC', 'CC', 20, '2015808972', 'ACTIVE', 205, 1928, 205);
INSERT INTO `type_evaluation` VALUES (8667, '2020-01-20 16:14:06', '2020-01-20 16:14:07', 'Description TP', 'TP', 30, '-646156803', 'ACTIVE', 205, 1928, 205);
INSERT INTO `type_evaluation` VALUES (8668, '2020-01-20 16:14:10', '2020-01-20 16:14:11', 'Description SN', 'SN', 50, '773335194', 'ACTIVE', 205, 1928, 205);
INSERT INTO `type_evaluation` VALUES (8669, '2020-01-20 16:14:15', '2020-01-20 16:14:16', 'Description CC', 'CC', 30, '155956565', 'ACTIVE', 205, 1927, 205);
INSERT INTO `type_evaluation` VALUES (8670, '2020-01-20 16:14:19', '2020-01-20 16:14:21', 'Description SN', 'SN', 70, '-2135220656', 'ACTIVE', 205, 1927, 205);
INSERT INTO `type_evaluation` VALUES (8671, '2020-01-20 16:14:22', '2020-01-20 16:23:38', 'Description CC', 'CC', 30, '-1996817261', 'ACTIVE', 205, 2380, 205);
INSERT INTO `type_evaluation` VALUES (8672, '2020-01-20 16:14:24', '2020-01-20 16:23:48', 'Description SN', 'SN', 70, '807030202', 'ACTIVE', 205, 2380, 205);
INSERT INTO `type_evaluation` VALUES (8673, '2020-01-20 16:14:29', '2020-01-20 16:14:30', 'Description CC', 'CC', 20, '-1855408960', 'ACTIVE', 205, 2381, 205);
INSERT INTO `type_evaluation` VALUES (8674, '2020-01-20 16:14:33', '2020-01-20 16:14:34', 'Description TP', 'TP', 30, '1159966824', 'ACTIVE', 205, 2381, 205);
INSERT INTO `type_evaluation` VALUES (8675, '2020-01-20 16:14:38', '2020-01-20 16:14:38', 'Description SN', 'SN', 50, '1757208706', 'ACTIVE', 205, 2381, 205);
INSERT INTO `type_evaluation` VALUES (8676, '2020-01-20 16:14:42', '2020-01-20 16:14:43', 'Description CC', 'CC', 20, '-1605110056', 'ACTIVE', 205, 2382, 205);
INSERT INTO `type_evaluation` VALUES (8677, '2020-01-20 16:14:46', '2020-01-20 16:14:47', 'Description TP', 'TP', 30, '100658475', 'ACTIVE', 205, 2382, 205);
INSERT INTO `type_evaluation` VALUES (8678, '2020-01-20 16:14:51', '2020-01-20 16:14:52', 'Description SN', 'SN', 50, '527304307', 'ACTIVE', 205, 2382, 205);
INSERT INTO `type_evaluation` VALUES (8679, '2020-01-20 16:14:55', '2020-01-20 16:14:56', 'Description CC', 'CC', 20, '-991408961', 'ACTIVE', 205, 2383, 205);
INSERT INTO `type_evaluation` VALUES (8680, '2020-01-20 16:15:00', '2020-01-20 16:15:01', 'Description TP', 'TP', 30, '-609470000', 'ACTIVE', 205, 2383, 205);
INSERT INTO `type_evaluation` VALUES (8681, '2020-01-20 16:15:04', '2020-01-20 16:15:05', 'Description SN', 'SN', 50, '-641465670', 'ACTIVE', 205, 2383, 205);
INSERT INTO `type_evaluation` VALUES (8682, '2020-01-20 16:15:09', '2020-01-20 16:15:10', 'Description CC', 'CC', 20, '1820225119', 'ACTIVE', 205, 2384, 205);
INSERT INTO `type_evaluation` VALUES (8683, '2020-01-20 16:15:14', '2020-01-20 16:15:15', 'Description TP', 'TP', 30, '1936280117', 'ACTIVE', 205, 2384, 205);
INSERT INTO `type_evaluation` VALUES (8684, '2020-01-20 16:15:18', '2020-01-20 16:15:19', 'Description SN', 'SN', 50, '1865317832', 'ACTIVE', 205, 2384, 205);
INSERT INTO `type_evaluation` VALUES (8685, '2020-01-20 16:15:23', '2020-01-20 16:15:24', 'Description CC', 'CC', 20, '1727977940', 'ACTIVE', 205, 2385, 205);
INSERT INTO `type_evaluation` VALUES (8686, '2020-01-20 16:15:27', '2020-01-20 16:15:28', 'Description TP', 'TP', 40, '-1241442823', 'ACTIVE', 205, 2385, 205);
INSERT INTO `type_evaluation` VALUES (8687, '2020-01-20 16:15:32', '2020-01-20 16:15:33', 'Description SN', 'SN', 40, '1280042403', 'ACTIVE', 205, 2385, 205);
INSERT INTO `type_evaluation` VALUES (8688, '2020-01-20 16:15:36', '2020-01-20 16:15:37', 'Description CC', 'CC', 30, '-535496911', 'ACTIVE', 205, 2386, 205);
INSERT INTO `type_evaluation` VALUES (8689, '2020-01-20 16:15:41', '2020-01-20 16:15:43', 'Description SN', 'SN', 70, '-725003915', 'ACTIVE', 205, 2386, 205);
INSERT INTO `type_evaluation` VALUES (8690, '2020-01-20 16:15:47', '2020-01-20 16:15:48', 'Description CC', 'CC', 30, '-423005323', 'ACTIVE', 205, 2387, 205);
INSERT INTO `type_evaluation` VALUES (8691, '2020-01-20 16:15:51', '2020-01-20 16:15:52', 'Description SN', 'SN', 70, '668386619', 'ACTIVE', 205, 2387, 205);
INSERT INTO `type_evaluation` VALUES (8692, '2020-01-20 16:15:56', '2020-01-20 16:15:57', 'Description CC', 'CC', 30, '1676231092', 'ACTIVE', 205, 2388, 205);
INSERT INTO `type_evaluation` VALUES (8693, '2020-01-20 16:16:00', '2020-01-20 16:16:01', 'Description SN', 'SN', 70, '1024037494', 'ACTIVE', 205, 2388, 205);
INSERT INTO `type_evaluation` VALUES (8694, '2020-01-20 16:16:06', '2020-01-20 16:16:06', 'Description CC', 'CC', 30, '1249524891', 'ACTIVE', 205, 2389, 205);
INSERT INTO `type_evaluation` VALUES (8695, '2020-01-20 16:16:10', '2020-01-20 16:16:11', 'Description SN', 'SN', 70, '827621033', 'ACTIVE', 205, 2389, 205);
INSERT INTO `type_evaluation` VALUES (8696, '2020-01-20 16:16:14', '2020-01-20 16:16:15', 'Description CC', 'CC', 30, '-1322578141', 'ACTIVE', 205, 1920, 205);
INSERT INTO `type_evaluation` VALUES (8697, '2020-01-20 16:16:19', '2020-01-20 16:16:20', 'Description SN', 'SN', 70, '-1804120912', 'ACTIVE', 205, 1920, 205);
INSERT INTO `type_evaluation` VALUES (8698, '2020-01-20 16:16:24', '2020-01-20 16:16:25', 'Description CC', 'CC', 30, '1254644894', 'ACTIVE', 205, 1921, 205);
INSERT INTO `type_evaluation` VALUES (8699, '2020-01-20 16:16:28', '2020-01-20 16:16:29', 'Description SN', 'SN', 70, '-1242540010', 'ACTIVE', 205, 1921, 205);
INSERT INTO `type_evaluation` VALUES (8700, '2020-01-20 16:16:33', '2020-01-20 16:16:34', 'Description CC', 'CC', 20, '1491109107', 'ACTIVE', 205, 1922, 205);
INSERT INTO `type_evaluation` VALUES (8701, '2020-01-20 16:16:38', '2020-01-20 16:16:40', 'Description TP', 'TP', 30, '-1778013096', 'ACTIVE', 205, 1922, 205);
INSERT INTO `type_evaluation` VALUES (8702, '2020-01-20 16:16:43', '2020-01-20 16:16:44', 'Description SN', 'SN', 50, '-147204366', 'ACTIVE', 205, 1922, 205);
INSERT INTO `type_evaluation` VALUES (8703, '2020-01-20 16:16:48', '2020-01-20 16:16:49', 'Description CC', 'CC', 30, '-1397636076', 'ACTIVE', 205, 1923, 205);
INSERT INTO `type_evaluation` VALUES (8704, '2020-01-20 16:16:52', '2020-01-20 16:16:53', 'Description SN', 'SN', 70, '-1469658480', 'ACTIVE', 205, 1923, 205);
INSERT INTO `type_evaluation` VALUES (8705, '2020-01-20 16:16:57', '2020-01-20 16:16:58', 'Description CC', 'CC', 30, '1400015573', 'ACTIVE', 205, 1924, 205);
INSERT INTO `type_evaluation` VALUES (8706, '2020-01-20 16:17:01', '2020-01-20 16:17:02', 'Description SN', 'SN', 70, '1240803954', 'ACTIVE', 205, 1924, 205);
INSERT INTO `type_evaluation` VALUES (8707, '2020-01-20 16:17:06', '2020-01-20 16:17:07', 'Description CC', 'CC', 30, '527677124', 'ACTIVE', 205, 1925, 205);
INSERT INTO `type_evaluation` VALUES (8708, '2020-01-20 16:17:11', '2020-01-20 16:17:12', 'Description SN', 'SN', 70, '-668146860', 'ACTIVE', 205, 1925, 205);
INSERT INTO `type_evaluation` VALUES (8709, '2020-01-20 16:17:16', '2020-01-20 16:17:17', 'Description CC', 'CC', 30, '-751042015', 'ACTIVE', 205, 1926, 205);
INSERT INTO `type_evaluation` VALUES (8710, '2020-01-20 16:17:20', '2020-01-20 16:17:21', 'Description SN', 'SN', 70, '-712587423', 'ACTIVE', 205, 1926, 205);
INSERT INTO `type_evaluation` VALUES (8711, '2020-01-20 16:17:25', '2020-01-20 16:17:26', 'Description CC', 'CC', 20, '-1742321545', 'ACTIVE', 205, 3368, 205);
INSERT INTO `type_evaluation` VALUES (8712, '2020-01-20 16:17:30', '2020-01-20 16:17:31', 'Description TP', 'TP', 30, '-520622687', 'ACTIVE', 205, 3368, 205);
INSERT INTO `type_evaluation` VALUES (8713, '2020-01-20 16:17:34', '2020-01-20 16:17:35', 'Description SN', 'SN', 50, '-568243375', 'ACTIVE', 205, 3368, 205);
INSERT INTO `type_evaluation` VALUES (8714, '2020-01-20 16:17:39', '2020-01-20 16:17:40', 'Description CC', 'CC', 20, '1568082831', 'ACTIVE', 205, 2371, 205);
INSERT INTO `type_evaluation` VALUES (8715, '2020-01-20 16:17:43', '2020-01-20 16:17:44', 'Description TP', 'TP', 30, '1695870913', 'ACTIVE', 205, 2371, 205);
INSERT INTO `type_evaluation` VALUES (8716, '2020-01-20 16:17:49', '2020-01-20 16:17:51', 'Description SN', 'SN', 50, '-2008471939', 'ACTIVE', 205, 2371, 205);
INSERT INTO `type_evaluation` VALUES (8717, '2020-01-20 16:17:54', '2020-01-20 16:17:55', 'Description CC', 'CC', 30, '1094447118', 'ACTIVE', 205, 2372, 205);
INSERT INTO `type_evaluation` VALUES (8718, '2020-01-20 16:17:59', '2020-01-20 16:18:00', 'Description SN', 'SN', 70, '-471129279', 'ACTIVE', 205, 2372, 205);
INSERT INTO `type_evaluation` VALUES (8719, '2020-01-20 16:18:03', '2020-01-20 16:18:04', 'Description CC', 'CC', 30, '184707297', 'ACTIVE', 205, 2373, 205);
INSERT INTO `type_evaluation` VALUES (8720, '2020-01-20 16:18:08', '2020-01-20 16:18:09', 'Description SN', 'SN', 70, '-419500709', 'ACTIVE', 205, 2373, 205);
INSERT INTO `type_evaluation` VALUES (8721, '2020-01-20 16:18:12', '2020-01-20 16:18:13', 'Description CC', 'CC', 20, '-1357617849', 'ACTIVE', 205, 2374, 205);
INSERT INTO `type_evaluation` VALUES (8722, '2020-01-20 16:18:17', '2020-01-20 16:18:18', 'Description TP', 'TP', 30, '-53769746', 'ACTIVE', 205, 2374, 205);
INSERT INTO `type_evaluation` VALUES (8723, '2020-01-20 16:18:21', '2020-01-20 16:18:22', 'Description SN', 'SN', 50, '1259722438', 'ACTIVE', 205, 2374, 205);
INSERT INTO `type_evaluation` VALUES (8724, '2020-01-20 16:18:26', '2020-01-20 16:18:27', 'Description CC', 'CC', 20, '-1258194578', 'ACTIVE', 205, 2375, 205);
INSERT INTO `type_evaluation` VALUES (8725, '2020-01-20 16:18:30', '2020-01-20 16:18:31', 'Description TP', 'TP', 30, '1476762601', 'ACTIVE', 205, 2375, 205);
INSERT INTO `type_evaluation` VALUES (8726, '2020-01-20 16:18:35', '2020-01-20 16:18:36', 'Description SN', 'SN', 50, '1323580316', 'ACTIVE', 205, 2375, 205);
INSERT INTO `type_evaluation` VALUES (8727, '2020-01-20 16:18:39', '2020-01-20 16:18:40', 'Description CC', 'CC', 20, '1834023257', 'ACTIVE', 205, 2376, 205);
INSERT INTO `type_evaluation` VALUES (8728, '2020-01-20 16:18:44', '2020-01-20 16:18:45', 'Description TP', 'TP', 30, '-852923824', 'ACTIVE', 205, 2376, 205);
INSERT INTO `type_evaluation` VALUES (8729, '2020-01-20 16:18:48', '2020-01-20 16:18:49', 'Description SN', 'SN', 50, '-635287121', 'ACTIVE', 205, 2376, 205);
INSERT INTO `type_evaluation` VALUES (8730, '2020-01-20 16:18:53', '2020-01-20 16:18:54', 'Description CC', 'CC', 20, '336705318', 'ACTIVE', 205, 2377, 205);
INSERT INTO `type_evaluation` VALUES (8731, '2020-01-20 16:18:57', '2020-01-20 16:18:58', 'Description TP', 'TP', 30, '-833190491', 'ACTIVE', 205, 2377, 205);
INSERT INTO `type_evaluation` VALUES (8732, '2020-01-20 16:19:02', '2020-01-20 16:19:03', 'Description SN', 'SN', 50, '-1303917079', 'ACTIVE', 205, 2377, 205);
INSERT INTO `type_evaluation` VALUES (8733, '2020-01-20 16:19:06', '2020-01-20 16:19:07', 'Description CC', 'CC', 30, '1516388192', 'ACTIVE', 205, 2378, 205);
INSERT INTO `type_evaluation` VALUES (8734, '2020-01-20 16:19:11', '2020-01-20 16:19:13', 'Description SN', 'SN', 70, '1205116051', 'ACTIVE', 205, 2378, 205);
INSERT INTO `type_evaluation` VALUES (8735, '2020-01-20 16:19:18', '2020-01-20 16:19:19', 'Description CC', 'CC', 30, '-1436384726', 'ACTIVE', 205, 2379, 205);
INSERT INTO `type_evaluation` VALUES (8736, '2020-01-20 16:19:24', '2020-01-20 16:19:25', 'Description SN', 'SN', 70, '265248095', 'ACTIVE', 205, 2379, 205);
INSERT INTO `type_evaluation` VALUES (8737, '2020-01-20 16:19:28', '2020-01-20 16:19:29', 'Description CC', 'CC', 30, '-1816577393', 'ACTIVE', 205, 3816, 205);
INSERT INTO `type_evaluation` VALUES (8738, '2020-01-20 16:19:34', '2020-01-20 16:19:35', 'Description SN', 'SN', 70, '2059382742', 'ACTIVE', 205, 3816, 205);
INSERT INTO `type_evaluation` VALUES (8739, '2020-01-20 16:19:38', '2020-01-20 16:19:39', 'Description CC', 'CC', 30, '-743661880', 'ACTIVE', 205, 3817, 205);
INSERT INTO `type_evaluation` VALUES (8740, '2020-01-20 16:19:43', '2020-01-20 16:19:43', 'Description SN', 'SN', 70, '1160346160', 'ACTIVE', 205, 3817, 205);
INSERT INTO `type_evaluation` VALUES (8741, '2020-01-20 16:19:47', '2020-01-20 16:19:48', 'Description CC', 'CC', 30, '327152038', 'ACTIVE', 205, 3818, 205);
INSERT INTO `type_evaluation` VALUES (8742, '2020-01-20 16:19:51', '2020-01-20 16:19:52', 'Description SN', 'SN', 70, '-1044371751', 'ACTIVE', 205, 3818, 205);
INSERT INTO `type_evaluation` VALUES (8743, '2020-01-20 16:19:56', '2020-01-20 16:19:57', 'Description CC', 'CC', 20, '768081100', 'ACTIVE', 205, 3819, 205);
INSERT INTO `type_evaluation` VALUES (8744, '2020-01-20 16:20:00', '2020-01-20 16:20:01', 'Description TP', 'TP', 30, '95530094', 'ACTIVE', 205, 3819, 205);
INSERT INTO `type_evaluation` VALUES (8745, '2020-01-20 16:20:05', '2020-01-20 16:20:06', 'Description SN', 'SN', 50, '-1309831433', 'ACTIVE', 205, 3819, 205);
INSERT INTO `type_evaluation` VALUES (8746, '2020-01-20 16:20:09', '2020-01-20 16:20:10', 'Description CC', 'CC', 30, '-1279167297', 'ACTIVE', 205, 3820, 205);
INSERT INTO `type_evaluation` VALUES (8747, '2020-01-20 16:20:14', '2020-01-20 16:20:15', 'Description SN', 'SN', 70, '-841028767', 'ACTIVE', 205, 3820, 205);
INSERT INTO `type_evaluation` VALUES (8748, '2020-01-20 16:20:18', '2020-01-20 16:20:19', 'Description CC', 'CC', 30, '-758132246', 'ACTIVE', 205, 3821, 205);
INSERT INTO `type_evaluation` VALUES (8749, '2020-01-20 16:20:23', '2020-01-20 16:20:24', 'Description SN', 'SN', 70, '1317935690', 'ACTIVE', 205, 3821, 205);
INSERT INTO `type_evaluation` VALUES (8750, '2020-01-20 16:20:27', '2020-01-20 16:20:28', 'Description CC', 'CC', 30, '563026042', 'ACTIVE', 205, 3822, 205);
INSERT INTO `type_evaluation` VALUES (8751, '2020-01-20 16:20:32', '2020-01-20 16:20:34', 'Description SN', 'SN', 70, '-1827199971', 'ACTIVE', 205, 3822, 205);
INSERT INTO `type_evaluation` VALUES (8752, '2020-01-20 16:20:37', '2020-01-20 16:20:38', 'Description CC', 'CC', 30, '-1397662968', 'ACTIVE', 205, 3823, 205);
INSERT INTO `type_evaluation` VALUES (8753, '2020-01-20 16:20:42', '2020-01-20 16:20:43', 'Description SN', 'SN', 70, '1722081169', 'ACTIVE', 205, 3823, 205);
INSERT INTO `type_evaluation` VALUES (8754, '2020-01-20 16:20:46', '2020-01-20 16:20:47', 'Description CC', 'CC', 30, '-828150551', 'ACTIVE', 205, 4580, 205);
INSERT INTO `type_evaluation` VALUES (8755, '2020-01-20 16:20:50', '2020-01-20 16:20:51', 'Description SN', 'SN', 70, '1564353053', 'ACTIVE', 205, 4580, 205);
INSERT INTO `type_evaluation` VALUES (8756, '2020-01-20 16:20:55', '2020-01-20 16:20:56', 'Description CC', 'CC', 30, '-1980108731', 'ACTIVE', 205, 1260, 205);
INSERT INTO `type_evaluation` VALUES (8757, '2020-01-20 16:20:59', '2020-01-20 16:21:00', 'Description SN', 'SN', 70, '2147114235', 'ACTIVE', 205, 1260, 205);
INSERT INTO `type_evaluation` VALUES (8758, '2020-01-20 16:21:04', '2020-01-20 16:21:05', 'Description CC', 'CC', 30, '-568136924', 'ACTIVE', 205, 1261, 205);
INSERT INTO `type_evaluation` VALUES (8759, '2020-01-20 16:21:08', '2020-01-20 16:21:09', 'Description SN', 'SN', 70, '1299752187', 'ACTIVE', 205, 1261, 205);
INSERT INTO `type_evaluation` VALUES (8760, '2020-01-20 16:21:12', '2020-01-20 16:21:13', 'Description CC', 'CC', 30, '1013012011', 'ACTIVE', 205, 1262, 205);
INSERT INTO `type_evaluation` VALUES (8761, '2020-01-20 16:21:18', '2020-01-20 16:21:19', 'Description SN', 'SN', 70, '-1617600000', 'ACTIVE', 205, 1262, 205);
INSERT INTO `type_evaluation` VALUES (8762, '2020-01-20 16:21:22', '2020-01-20 16:21:23', 'Description CC', 'CC', 30, '1756259228', 'ACTIVE', 205, 1263, 205);
INSERT INTO `type_evaluation` VALUES (8763, '2020-01-20 16:21:27', '2020-01-20 16:21:28', 'Description SN', 'SN', 70, '2074229444', 'ACTIVE', 205, 1263, 205);
INSERT INTO `type_evaluation` VALUES (8764, '2020-01-20 16:21:31', '2020-01-20 16:21:32', 'Description CC', 'CC', 30, '-987827387', 'ACTIVE', 205, 1264, 205);
INSERT INTO `type_evaluation` VALUES (8765, '2020-01-20 16:21:36', '2020-01-20 16:21:37', 'Description SN', 'SN', 70, '382737102', 'ACTIVE', 205, 1264, 205);
INSERT INTO `type_evaluation` VALUES (8766, '2020-01-20 16:21:40', '2020-01-20 16:21:41', 'Description CC', 'CC', 20, '-326507144', 'ACTIVE', 205, 1265, 205);
INSERT INTO `type_evaluation` VALUES (8767, '2020-01-20 16:21:45', '2020-01-20 16:21:46', 'Description TP', 'TP', 30, '5808079', 'ACTIVE', 205, 1265, 205);
INSERT INTO `type_evaluation` VALUES (8768, '2020-01-20 16:21:50', '2020-01-20 16:21:51', 'Description SN', 'SN', 50, '858052286', 'ACTIVE', 205, 1265, 205);
INSERT INTO `type_evaluation` VALUES (8769, '2020-01-20 16:21:54', '2020-01-20 16:21:55', 'Description CC', 'CC', 30, '346020643', 'ACTIVE', 205, 1917, 205);
INSERT INTO `type_evaluation` VALUES (8770, '2020-01-20 16:21:59', '2020-01-20 16:22:00', 'Description SN', 'SN', 70, '-1511658791', 'ACTIVE', 205, 1917, 205);
INSERT INTO `type_evaluation` VALUES (8771, '2020-01-20 16:22:03', '2020-01-20 16:22:04', 'Description CC', 'CC', 30, '163655902', 'ACTIVE', 205, 1918, 205);
INSERT INTO `type_evaluation` VALUES (8772, '2020-01-20 16:22:08', '2020-01-20 16:22:09', 'Description SN', 'SN', 70, '-901750468', 'ACTIVE', 205, 1918, 205);
INSERT INTO `type_evaluation` VALUES (8773, '2020-01-20 16:22:12', '2020-01-20 16:22:13', 'Description CC', 'CC', 30, '-1377390332', 'ACTIVE', 205, 1919, 205);
INSERT INTO `type_evaluation` VALUES (8774, '2020-01-20 16:22:17', '2020-01-20 16:22:17', 'Description SN', 'SN', 70, '408679157', 'ACTIVE', 205, 1919, 205);

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
INSERT INTO `ue` VALUES (1102, 'MAT1011', 3, '2020-01-16 08:47:23', '2020-01-16 08:47:25', '', 'Algèbre I', '355536235', 'ACTIVE', 'ACTIVE', 205, 205, 852, 57, 56);
INSERT INTO `ue` VALUES (1103, 'MAT1021', 3, '2020-01-16 08:48:05', '2020-01-16 08:48:07', '', 'Analyse I', '214689736', 'ACTIVE', 'ACTIVE', 205, 205, 852, 57, 56);
INSERT INTO `ue` VALUES (1104, 'PHY1011', 3, '2020-01-16 08:48:52', '2020-01-16 08:48:53', '', 'Mécanique', '2136662226', 'ACTIVE', 'ACTIVE', 205, 205, 853, 57, 56);
INSERT INTO `ue` VALUES (1105, 'PHY1021', 3, '2020-01-16 08:49:42', '2020-01-16 08:49:43', '', 'Electrocinétique', '-1515703857', 'ACTIVE', 'ACTIVE', 205, 205, 853, 57, 56);
INSERT INTO `ue` VALUES (1106, 'ING1011', 4, '2020-01-16 08:50:36', '2020-01-16 08:50:38', '', 'Gestion et réalisation d’un projet mécatronique: initiation', '1038737867', 'ACTIVE', 'ACTIVE', 205, 205, 854, 57, 56);
INSERT INTO `ue` VALUES (1107, 'PHY1031', 4, '2020-01-16 08:51:24', '2020-01-16 08:51:28', '', 'Mesure physique et instrumentation', '-707522081', 'ACTIVE', 'ACTIVE', 205, 205, 854, 57, 56);
INSERT INTO `ue` VALUES (1108, 'LAC1011', 4, '2020-01-16 08:52:10', '2020-01-16 08:52:13', '', 'Anglais Remise à niveau A1', '-716693161', 'ACTIVE', 'ACTIVE', 205, 205, 855, 57, 56);
INSERT INTO `ue` VALUES (1109, 'COM1011', 4, '2020-01-16 08:52:58', '2020-01-16 08:52:59', '', 'Formation à la communication écrite et orale', '-558280571', 'ACTIVE', 'ACTIVE', 205, 205, 855, 57, 56);
INSERT INTO `ue` VALUES (1110, 'HUM1011', 2, '2020-01-16 08:53:52', '2020-01-21 14:04:06', '', 'Réflexion humaine I', '1789154842', 'ACTIVE', 'ACTIVE', 205, 205, 855, 57, 56);
INSERT INTO `ue` VALUES (1116, 'MAT2033', 4, '2020-01-16 09:04:16', '2020-01-16 09:04:18', '', 'Analyse avancée', '1126583852', 'ACTIVE', 'ACTIVE', 205, 205, 1111, 58, 56);
INSERT INTO `ue` VALUES (1117, 'MAT2043', 4, '2020-01-16 09:05:15', '2020-01-16 09:05:17', '', 'Bases de calcul des probabilités et Statistiques pour l\'ingénieur', '1908536759', 'ACTIVE', 'ACTIVE', 205, 205, 1111, 58, 56);
INSERT INTO `ue` VALUES (1118, 'PHY2033', 4, '2020-01-16 09:06:15', '2020-01-16 09:06:20', '', 'Eléments de base en électronique', '-798109006', 'ACTIVE', 'ACTIVE', 205, 205, 1113, 58, 56);
INSERT INTO `ue` VALUES (1119, 'INF2023', 4, '2020-01-16 09:07:11', '2020-01-16 09:07:12', '', 'Introduction au langage C', '-2012090553', 'ACTIVE', 'ACTIVE', 205, 205, 1112, 58, 56);
INSERT INTO `ue` VALUES (1120, 'INF2033', 4, '2020-01-16 09:07:53', '2020-01-16 09:07:55', '', 'Réseaux d\'entreprise', '-980822387', 'ACTIVE', 'ACTIVE', 205, 205, 1112, 58, 56);
INSERT INTO `ue` VALUES (1121, 'LAC2033', 4, '2020-01-16 09:08:54', '2020-01-16 09:08:56', '', 'Anglais Niveau pratique B1', '1606969507', 'ACTIVE', 'ACTIVE', 205, 205, 1115, 58, 56);
INSERT INTO `ue` VALUES (1122, 'HUM2033', 1, '2020-01-16 09:10:20', '2020-01-16 09:10:21', '', 'Ethique et développement I', '1427401581', 'ACTIVE', 'ACTIVE', 205, 205, 1115, 58, 56);
INSERT INTO `ue` VALUES (1123, 'STG2031', 3, '2020-01-16 09:11:03', '2020-01-16 09:11:04', '', 'Stage découverte', '-1090619663', 'ACTIVE', 'ACTIVE', 205, 205, 1115, 58, 56);
INSERT INTO `ue` VALUES (1124, 'ECO2013', 2, '2020-01-16 09:12:16', '2020-01-16 09:12:17', '', 'Économie générale', '-2137857463', 'ACTIVE', 'ACTIVE', 205, 205, 1114, 58, 56);
INSERT INTO `ue` VALUES (1129, 'INP1011', 4, '2020-01-16 09:20:06', '2020-01-16 09:20:10', '', 'Introduction aux systèmes d\'information', '530805666', 'ACTIVE', 'ACTIVE', 205, 205, 1125, 57, 53);
INSERT INTO `ue` VALUES (1130, 'INP1021', 4, '2020-01-16 09:21:17', '2020-01-16 09:21:20', '', 'Architecture des ordinateurs', '94795709', 'ACTIVE', 'ACTIVE', 205, 205, 1125, 57, 53);
INSERT INTO `ue` VALUES (1257, 'MAP1021', 4, '2020-01-16 11:11:33', '2020-01-16 11:11:34', '', 'Mathématiques discrètes I', '1268382632', 'ACTIVE', 'ACTIVE', 205, 205, 1127, 57, 53);
INSERT INTO `ue` VALUES (1256, 'MAP1011', 4, '2020-01-16 11:10:53', '2020-01-16 11:10:54', '', 'Mathématiques pour l\'informatique', '-1630574277', 'ACTIVE', 'ACTIVE', 205, 205, 1127, 57, 53);
INSERT INTO `ue` VALUES (1255, 'INP1041', 4, '2020-01-16 11:09:51', '2020-01-16 11:09:52', '', 'Introduction aux algorithmes', '-1278233249', 'ACTIVE', 'ACTIVE', 205, 205, 1126, 57, 53);
INSERT INTO `ue` VALUES (1253, 'ECP1011', 2, '2020-01-16 11:08:36', '2020-01-16 11:08:37', '', 'Enjeux de l’économie Numérique', '-910668614', 'ACTIVE', 'ACTIVE', 205, 205, 1126, 57, 53);
INSERT INTO `ue` VALUES (1252, 'INP1031', 4, '2020-01-16 11:07:46', '2020-01-16 11:07:47', '', 'Programmation Web I', '-454577927', 'ACTIVE', 'ACTIVE', 205, 205, 1126, 57, 53);
INSERT INTO `ue` VALUES (1258, 'LAP1011', 2, '2020-01-16 11:12:28', '2020-01-16 11:12:29', '', 'Anglais Remise à niveau A2', '-498843840', 'ACTIVE', 'ACTIVE', 205, 205, 1128, 57, 53);
INSERT INTO `ue` VALUES (1259, 'HUP1011', 2, '2020-01-16 11:13:22', '2020-01-16 11:13:23', '', 'Réflexion Humaine I', '-554206547', 'ACTIVE', 'ACTIVE', 205, 205, 1128, 57, 53);
INSERT INTO `ue` VALUES (1462, 'RES3165', 4, '2020-01-17 11:56:02', '2020-01-17 11:56:03', '', 'Théorie et codage de l’information', '-388657698', 'ACTIVE', 'ACTIVE', 205, 205, 1452, 59, 952);
INSERT INTO `ue` VALUES (1463, 'INF3175', 4, '2020-01-17 12:05:08', '2020-01-17 12:09:34', '', 'Base de données', '-703358864', 'ACTIVE', 'ACTIVE', 205, 205, 1454, 59, 952);
INSERT INTO `ue` VALUES (1912, 'INF3165', 4, '2020-01-17 14:27:49', '2020-01-17 14:27:50', '', 'Modélisation pour la conception des Systèmes d\'Information', '-978121453', 'ACTIVE', 'ACTIVE', 205, 205, 1455, 59, 952);
INSERT INTO `ue` VALUES (1466, 'INF3185', 4, '2020-01-17 12:16:04', '2020-01-17 12:16:06', '', 'Principe de la programmation orientée objet', '-1541084526', 'ACTIVE', 'ACTIVE', 205, 205, 1456, 59, 952);
INSERT INTO `ue` VALUES (1913, 'INF3195', 3, '2020-01-17 14:28:37', '2020-01-17 14:28:38', '', 'Conduite et gestion de projets informatiques', '264165743', 'ACTIVE', 'ACTIVE', 205, 205, 1457, 59, 952);
INSERT INTO `ue` VALUES (1469, 'LAC3165', 2, '2020-01-17 13:08:13', '2020-01-17 13:08:14', '', 'Anglais', '-1858984541', 'ACTIVE', 'ACTIVE', 205, 205, 1458, 59, 952);
INSERT INTO `ue` VALUES (1914, 'HUM3165', 4, '2020-01-17 14:29:23', '2020-01-17 14:29:24', '', 'Technologies du Web', '-1420699401', 'ACTIVE', 'ACTIVE', 205, 205, 1459, 59, 952);
INSERT INTO `ue` VALUES (1915, 'HUM3175', 1, '2020-01-17 14:30:12', '2020-01-17 14:30:13', '', 'Sagesse et sciences', '183581552', 'ACTIVE', 'ACTIVE', 205, 205, 1460, 59, 952);
INSERT INTO `ue` VALUES (1916, 'RES3175', 4, '2020-01-17 14:31:03', '2020-01-17 14:31:03', '', 'Introduction à la sécurité et à l’administration des réseaux', '971170847', 'ACTIVE', 'ACTIVE', 205, 205, 1461, 59, 952);
INSERT INTO `ue` VALUES (2352, 'INP2103', 4, '2020-01-17 19:36:18', '2020-01-17 19:36:20', '', 'Algorithmique et Complexité', '1912070513', 'ACTIVE', 'ACTIVE', 205, 205, 1903, 58, 53);
INSERT INTO `ue` VALUES (2353, 'INP2113', 4, '2020-01-17 19:36:24', '2020-01-17 19:36:26', '', 'Modélisation des Systèmes d\'Information(UML)', '1090123646', 'ACTIVE', 'ACTIVE', 205, 205, 1903, 58, 53);
INSERT INTO `ue` VALUES (2354, 'MAP2043', 4, '2020-01-17 19:36:31', '2020-01-17 19:36:34', '', 'Algèbre linaire I', '400015620', 'ACTIVE', 'ACTIVE', 205, 205, 1903, 58, 53);
INSERT INTO `ue` VALUES (2355, 'INP2123', 4, '2020-01-17 19:36:41', '2020-01-17 19:36:42', '', 'Programmation Orientée Objet II', '-1482419994', 'ACTIVE', 'ACTIVE', 205, 205, 1903, 58, 53);
INSERT INTO `ue` VALUES (2356, 'INP2133', 4, '2020-01-17 19:36:49', '2020-01-17 19:36:51', '', 'Introduction aux Base de données', '-791807018', 'ACTIVE', 'ACTIVE', 205, 205, 1903, 58, 53);
INSERT INTO `ue` VALUES (2357, 'REP2013', 4, '2020-01-17 19:36:54', '2020-01-17 19:36:55', '', 'Introduction aux Réseaux informatiques', '1069396373', 'ACTIVE', 'ACTIVE', 205, 205, 1904, 58, 53);
INSERT INTO `ue` VALUES (2358, 'INP2143', 3, '2020-01-17 19:36:59', '2020-01-17 19:37:01', '', 'Systèmes d\'exploitation', '1793331242', 'ACTIVE', 'ACTIVE', 205, 205, 1904, 58, 53);
INSERT INTO `ue` VALUES (2359, 'LAP2033', 2, '2020-01-17 19:37:06', '2020-01-17 19:37:07', '', 'Anglais niveau pratique B1/B2', '2042093670', 'ACTIVE', 'ACTIVE', 205, 205, 1906, 58, 53);
INSERT INTO `ue` VALUES (2360, 'HUP2033', 1, '2020-01-17 19:37:13', '2020-01-17 19:37:15', '', 'Ethique et Développement', '-259124442', 'ACTIVE', 'ACTIVE', 205, 205, 1906, 58, 53);
INSERT INTO `ue` VALUES (2361, 'INP3195', 3, '2020-01-17 19:37:18', '2020-01-17 19:37:19', '', 'Programmation et administration des bases de Données (Oracle ou SQLServer)', '-2136382943', 'ACTIVE', 'ACTIVE', 205, 205, 1907, 59, 53);
INSERT INTO `ue` VALUES (2362, 'INP3256', 4, '2020-01-17 19:37:23', '2020-01-17 19:37:26', '', 'Technologie .NET', '-1360320522', 'ACTIVE', 'ACTIVE', 205, 205, 1907, 59, 53);
INSERT INTO `ue` VALUES (2363, 'INP3205', 4, '2020-01-17 19:37:30', '2020-01-17 19:37:32', '', 'Ingénierie du Génie Logiciel', '942958275', 'ACTIVE', 'ACTIVE', 205, 205, 1908, 59, 53);
INSERT INTO `ue` VALUES (2364, 'INP3215', 3, '2020-01-17 19:37:35', '2020-01-17 19:37:37', '', 'Introduction au Big Data', '-308330534', 'ACTIVE', 'ACTIVE', 205, 205, 1908, 59, 53);
INSERT INTO `ue` VALUES (2365, 'INP3225', 4, '2020-01-17 19:37:42', '2020-01-17 19:37:44', '', 'Sécurité avancée des réseaux et systèmes', '1020303630', 'ACTIVE', 'ACTIVE', 205, 205, 1909, 59, 53);
INSERT INTO `ue` VALUES (2366, 'INP3286', 4, '2020-01-17 19:37:48', '2020-01-17 19:37:50', '', 'Conception et Développement d’applications pour mobiles', '1238974334', 'ACTIVE', 'ACTIVE', 205, 205, 1909, 59, 53);
INSERT INTO `ue` VALUES (2367, 'MAP3065', 3, '2020-01-17 19:37:55', '2020-01-17 19:37:56', '', 'Recherche opérationnelle et aide à la décision', '8991150', 'ACTIVE', 'ACTIVE', 205, 205, 1910, 59, 53);
INSERT INTO `ue` VALUES (2368, 'COP3025', 2, '2020-01-17 19:38:00', '2020-01-17 19:38:04', '', 'Fondamentaux de la communication', '-142735606', 'ACTIVE', 'ACTIVE', 205, 205, 1910, 59, 53);
INSERT INTO `ue` VALUES (2369, 'LAP3045', 2, '2020-01-17 19:38:07', '2020-01-17 19:38:08', '', 'Anglais pratique', '989921456', 'ACTIVE', 'ACTIVE', 205, 205, 1911, 59, 53);
INSERT INTO `ue` VALUES (2370, 'HUP3055', 1, '2020-01-17 19:38:12', '2020-01-17 19:38:14', '', 'Sagesse et science1', '-1457196915', 'ACTIVE', 'ACTIVE', 205, 205, 1911, 59, 53);

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
) ENGINE = MyISAM AUTO_INCREMENT = 206 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of utilisateur
-- ----------------------------
INSERT INTO `utilisateur` VALUES (1, '2019-04-08 12:52:09', '2019-05-19 11:51:08', '1990-04-09 00:00:00', NULL, 'moupojouemma@gmail.com', NULL, 'admin', 'BA-32-53-87-6A-ED-6B-C2-2D-4A-6F-F5-3D-84-6-C6-AD-86-41-95-ED-14-4A-B5-C8-76-21-B6-C2-33-B5-48-BA-EA-E6-95-6D-F3-46-EC-8C-17-F5-EA-10-F3-5E-E3-CB-C5-14-79-7E-D7-DD-D3-14-54-64-E2-A0-BA-B4-13', 'Default', 'User', 'FEMININ', '853839448', 'NONACTIVE', 'ACTIVE', 694628998, 1, 1);
INSERT INTO `utilisateur` VALUES (101, '2020-01-10 10:39:14', '2020-01-10 11:00:00', '1989-01-24 23:00:00', '', 'emmanuel.moupojou@institutsaintjean.org', '', 'emmanuel', 'FE-73-F1-7F-E8-1E-21-D7-AE-4A-41-14-9D-E3-1C-89-D7-C4-87-60-53-57-A2-D9-5-3B-E6-4B-ED-40-75-7A-A6-DC-20-6A-DC-D5-61-88-4-34-D7-1C-2D-A7-43-7B-D-E8-2A-CA-20-46-1D-96-9D-45-F7-2B-CE-3D-6F-F0', 'Moupojou', 'Emmanuel', 'MASCULIN', '1436425768', 'ACTIVE', 'ACTIVE', 673807864, 1, 1);
INSERT INTO `utilisateur` VALUES (202, '2020-01-10 11:05:02', '2020-01-10 11:05:02', '2020-01-09 23:00:00', '', 'yannickongono@gmail.com', '', 'oyannick', '60-F3-2B-B8-E4-36-2E-9D-97-6E-42-F-26-81-B9-13-B9-5E-BD-33-5-6F-7-5D-92-C1-F7-43-CA-17-E8-2F-D5-22-1D-A4-F4-4B-5F-66-6C-6-E3-37-13-3F-5B-54-42-92-B5-BF-C7-C5-A7-52-35-5E-57-B6-E8-B3-E2-66', 'Ongono', 'Yannick', 'MASCULIN', '800487718', 'ACTIVE', 'ACTIVE', 699729633, 101, 101);
INSERT INTO `utilisateur` VALUES (203, '2020-01-10 11:11:09', '2020-01-10 11:11:32', '2020-01-09 23:00:00', '', 'gilles.teguem@gmail.com', '', 'tgilles', 'CF-F7-30-CB-8A-D5-A5-31-A4-77-42-5A-DD-57-24-27-C5-1E-3F-E1-C3-77-29-3D-AD-96-66-68-BF-63-B5-DF-FB-CE-21-4D-EE-BB-49-E6-F5-D0-9F-1F-2D-8C-AA-CD-33-B3-1E-4E-89-6F-CE-23-85-CD-C-EA-13-95-8-82', 'Teguem', 'Gilles', 'MASCULIN', '-1861876682', 'ACTIVE', 'ACTIVE', 657660351, 101, 101);
INSERT INTO `utilisateur` VALUES (204, '2020-01-10 11:13:48', '2020-01-10 11:14:09', '2020-01-09 23:00:00', '', 'cheikh.kacfah@gmail.com', '', 'kcheikh', '83-31-D-D-C-47-C0-A5-92-46-94-C1-88-45-5A-D-B-5B-30-DC-4B-AC-26-86-DF-D1-98-FC-C-E2-FB-A2-F3-94-7-9C-BB-34-F6-6D-E8-C6-B6-4E-3A-60-C5-88-DD-1E-58-F2-7A-FA-61-96-A0-D9-28-39-1-E2-14-AD', 'Cheikh', 'Kacfah', 'MASCULIN', '91053830', 'ACTIVE', 'ACTIVE', 656709838, 101, 101);
INSERT INTO `utilisateur` VALUES (205, '2020-01-10 11:16:23', '2020-01-10 11:16:23', '2020-01-09 23:00:00', '', 'tapiguedelphin@yahoo.fr', '', 'dtapigue', 'C0-3D-D3-CE-DB-5B-7A-3A-35-54-91-DC-9-32-A7-57-27-B4-3-E6-46-B-FA-13-1C-88-A8-3-AC-84-EF-AB-96-43-19-B-46-79-86-AD-EC-A1-1F-2A-52-2F-B-D8-CE-27-33-AF-B8-B0-91-87-A8-85-BA-8-2E-AB-98-9F', 'Tapigue', 'Delphin', 'MASCULIN', '-1691370183', 'ACTIVE', 'ACTIVE', 699809233, 101, 101);

-- ----------------------------
-- Table structure for utilisateur_role
-- ----------------------------
DROP TABLE IF EXISTS `utilisateur_role`;
CREATE TABLE `utilisateur_role`  (
  `code_utilisateur` bigint(20) NOT NULL,
  `code_role` bigint(20) NOT NULL,
  PRIMARY KEY (`code_utilisateur`, `code_role`) USING BTREE,
  INDEX `FK_utilisateur_role_code_role`(`code_role`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

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
 END) as credits,(case when COUNT(case when type_evaluation.libelle='RAT' then 1 else NULL end )=1 then CONCAT('Rattrapge',' ',extract(year from annee_academique.date_debut)) when COUNT(case when type_evaluation.libelle='Rattrapage' then 1 else NULL end )=0 then CONCAT('Normale',' ',extract(year from annee_academique.date_debut))end) as Session,semestre.libelle as Semestre,(case when (((TRUNCATE(discipline.nb_heures_absences/5,0))*0.1) + (TRUNCATE(discipline.nb_retards/15,0)*0.1))=0 then 0
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
case when COUNT(case when moy<=9.99 then 1 else null end)=0 then "CA"
		when moy_mod(mat,codmod,an,sem)>=10  and COUNT(case when moy<=8.99 then 1 else null end)=0 then "CPC" 
	 when COUNT(case when moy<7 then 1 else null end)=0  then "NC"
					else "EL" end into resultat
from (SELECT distinct ue.code_ue,ue.libelle,module.`code` as codmod,enseignement.`code`,ue.credits as cred,moyenne_ue_etudiant(mat, enseignement.`code`,an)as moy
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

select (case when COUNT(case when type_evaluation.libelle='RAT' then 1 else NULL end )=1 then ROUND(SUM(case when type_evaluation.libelle='SN' then 0 ELSE (valeur_note*pourcentage)/100 END),2) when COUNT(case when type_evaluation.libelle='RAT' then 1 else NULL end )=0 then ROUND(SUM((valeur_note*pourcentage)/100 ),2)end) into resultat
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
and type_evaluation.libelle="CC"
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

select (case when type_evaluation.libelle!='RAT' then ROUND(SUM((valeur_note*pourcentage)/100 ),2)end) into resultat
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
-- Procedure structure for penalites
-- ----------------------------
DROP PROCEDURE IF EXISTS `penalites`;
delimiter ;;
CREATE PROCEDURE `penalites`(IN `mat` VARCHAR(255), IN `ans` INTEGER)
BEGIN
	select ((TRUNCATE(discipline.nb_heures_absences/5,0))*0.1) + (TRUNCATE(discipline.nb_retards/15,0)*0.1) as penalités,semestre.libelle as semestre
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
-- Procedure structure for pr_mgp
-- ----------------------------
DROP PROCEDURE IF EXISTS `pr_mgp`;
delimiter ;;
CREATE PROCEDURE `pr_mgp`(`mat` VARCHAR(255), `niv` BIGINT(20), `ans` BIGINT(20), `sem` VARCHAR(255))
BEGIN
	#Routine body goes here...
	SELECT SUM(mg)/SUM(cred) from
(select DISTINCT enseignement.libelle,mgp((moyenne_ue_etudiant(mat,enseignement.`code`,ans)))*credits as mg,credits as cred
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
select DISTINCT matricule,CONCAT(UPPER(nom)," ",UPPER(prenom)) as nom_prenom,module.libelle as module,module.code_module as codemo, ue.libelle as ue,( valeur_note) as moyenne,type_evaluation.libelle as intitule,CONCAT(type_evaluation.pourcentage,"%") as pourcentage,
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
#and candidat.classe=classe.`code`
and classe.specialite=specialite.`code`
and specialite.filiere=filiere.`code`
and ue.niveau=niveau.`code`
and type_evaluation.enseignement=enseignement.`code`
and ue.module=module.`code`
and niveau.numero=niv
and filiere.libelle=fil
and semestre.libelle=sem
and note.statut_vie="ACTIVE"
#and matricule in ('1920i001')
group by matricule,ue.libelle,type_evaluation.libelle
order by nom_prenom,codemo,ue;
delete FROM tmp_ue;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pv_copy1
-- ----------------------------
DROP PROCEDURE IF EXISTS `pv_copy1`;
delimiter ;;
CREATE PROCEDURE `pv_copy1`(IN `fil` VARCHAR(255), IN `niv` INT, IN `an` INT, IN `sem` VARCHAR(255))
BEGIN
select DISTINCT matricule,CONCAT(UPPER(nom)," ",UPPER(prenom)) as nom_prenom,module.libelle as module,module.code_module as codemo, ue.libelle as ue,( valeur_note) as moyenne,type_evaluation.libelle as intitule,CONCAT(type_evaluation.pourcentage,"%") as pourcentage,
(case when type_evaluation.libelle="SN" then add_tmp2(ue.code_ue,credits) else 0 END)  as credit,(case when moyenne_ue_etudiant(matricule, enseignement.code,an)-penalites(matricule,an,sem)>=9 then credits else 0 END) as cred,penalites(matricule,an,sem) as penalites,descisions(module.`code`,an,sem,etudiant.matricule) as decision,(CASE when type_evaluation.libelle="SN" then credits else 0 END ) as cred3, credits as credi, (case when moyenne_ue_etudiant(matricule, enseignement.code,an)>=9 and type_evaluation.libelle="SN" then credits else 0 END) as cred2, decision(moyenne_ue_etudiant(matricule,enseignement.code,an)-penalites(matricule,an,sem)) as deci,mgp_sem(matricule,niv,an,sem) as mgp_annuel

from note
join evaluation on note.evaluation=evaluation.code
join type_evaluation on evaluation.type_evaluation=evaluation.code
join est_inscrit on note.est_inscrit=est_inscrit.code
join candidat on est_inscrit.candidat_inscrit=candidat.code
join etudiant on candidat.`code`=etudiant.code
join enseignement on type_evaluation.enseignement=enseignement.code
join ue on enseignement.ue=ue.code
join module on ue.module=module.code
join classe on candidat.classe=classe.code
join niveau on classe.niveau=niveau.code
join specialite on classe.specialite=specialite.code
join filiere on specialite.filiere=filiere.code
join semestre on enseignement.semestre=semestre.code
join annee_academique on semestre.annee_academique=annee_academique.code

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
-- Procedure structure for pv_copy1_copy1
-- ----------------------------
DROP PROCEDURE IF EXISTS `pv_copy1_copy1`;
delimiter ;;
CREATE PROCEDURE `pv_copy1_copy1`(IN `fil` VARCHAR(255), IN `niv` INT, IN `an` INT, IN `sem` VARCHAR(255))
BEGIN
select DISTINCT matricule,CONCAT(UPPER(nom)," ",UPPER(prenom)) as nom_prenom,module.libelle as module,module.code_module as codemo, ue.libelle as ue,( valeur_note) as moyenne,type_evaluation.libelle as intitule,CONCAT(type_evaluation.pourcentage,"%") as pourcentage,
(case when type_evaluation.libelle="SN" then add_tmp2(ue.code_ue,credits) else 0 END)  as credit,(case when moyenne_ue_etudiant(matricule, enseignement.code,an)-penalites(matricule,an,sem)>=9 then credits else 0 END) as cred,penalites(matricule,an,sem) as penalites,descisions(module.`code`,an,sem,etudiant.matricule) as decision,(CASE when type_evaluation.libelle="SN" then credits else 0 END ) as cred3, credits as credi, (case when moyenne_ue_etudiant(matricule, enseignement.code,an)>=9 and type_evaluation.libelle="SN" then credits else 0 END) as cred2, decision(moyenne_ue_etudiant(matricule,enseignement.code,an)-penalites(matricule,an,sem)) as deci,mgp_sem(matricule,niv,an,sem) as mgp_annuel

from note
join evaluation on note.evaluation=evaluation.code
join type_evaluation on evaluation.type_evaluation=evaluation.code
join est_inscrit on note.est_inscrit=est_inscrit.code
join candidat on est_inscrit.candidat_inscrit=candidat.code
join etudiant on candidat.`code`=etudiant.code
join enseignement on type_evaluation.enseignement=enseignement.code
join ue on enseignement.ue=ue.code
join module on ue.module=module.code
join classe on candidat.classe=classe.code
join niveau on classe.niveau=niveau.code
join specialite on classe.specialite=specialite.code
join filiere on specialite.filiere=filiere.code
join semestre on enseignement.semestre=semestre.code
join annee_academique on semestre.annee_academique=annee_academique.code

where 
etudiant.matricule='1920i001'
and note.est_inscrit=est_inscrit.code
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
 END) as credits,(case when COUNT(case when type_evaluation.libelle='RAT' then 1 else NULL end )=1 then CONCAT('Rattrapge',' ',extract(year from annee_academique.date_debut)) when COUNT(case when type_evaluation.libelle='RAT' then 1 else NULL end )=0 then CONCAT('Normale',' ',extract(year from annee_academique.date_debut))end) as Sessio,semestre.libelle as Semestre,penalites(mat,an,semestre.libelle) as penalites,mgp(moyenne_ue_etudiant(mat,enseignement.`code`,an))*credits as mgp, rang_etud(filiere.libelle,mat,class,an,semestre.libelle) as rang,rang_an(filiere.libelle,mat,class,an) as rang_an
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
