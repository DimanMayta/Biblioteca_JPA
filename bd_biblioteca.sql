/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100425
 Source Host           : 127.0.0.1:3306
 Source Schema         : bd_biblioteca

 Target Server Type    : MySQL
 Target Server Version : 100425
 File Encoding         : 65001

 Date: 11/06/2024 15:20:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categorias
-- ----------------------------
DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categorias
-- ----------------------------
INSERT INTO `categorias` VALUES (1, 'Novelas');
INSERT INTO `categorias` VALUES (2, 'Drama');
INSERT INTO `categorias` VALUES (3, 'Cuento');
INSERT INTO `categorias` VALUES (5, 'Fabula');
INSERT INTO `categorias` VALUES (6, 'Leyenda');
INSERT INTO `categorias` VALUES (7, 'Poesia');

-- ----------------------------
-- Table structure for libros
-- ----------------------------
DROP TABLE IF EXISTS `libros`;
CREATE TABLE `libros`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `autor` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `disponible` int(11) NULL DEFAULT NULL,
  `categoria_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `categoria_id`(`categoria_id`) USING BTREE,
  CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of libros
-- ----------------------------
INSERT INTO `libros` VALUES (1, 'El principito', 'Antoine de Saint', 1, 3);
INSERT INTO `libros` VALUES (2, 'La conspiracion', 'Dan Brown', 1, 2);
INSERT INTO `libros` VALUES (3, 'Caperucita Roja', 'Charles Perrault', 0, 3);
INSERT INTO `libros` VALUES (13, 'El leon y el ratan', 'Esopo', 1, 5);
INSERT INTO `libros` VALUES (14, 'La hormiga y la cigarra', 'Jean de la Fontaine', 0, 5);
INSERT INTO `libros` VALUES (15, 'Por una mirada, un mundo', 'Gustavo Adolfo Becquer', 1, 7);

SET FOREIGN_KEY_CHECKS = 1;
