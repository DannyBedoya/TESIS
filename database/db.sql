CREATE Database iso27001;

USE iso27001;

CREATE TABLE `usuario` (
  `idusuario` int NOT NULL AUTO_INCREMENT,
  `correo` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `rol` varchar(45) DEFAULT NULL,
  `nombres` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `institucion` (
  `idinstitucion` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `director` varchar(100) NOT NULL,
  `sitio_web` varchar(200) DEFAULT NULL,
  `usuario` int DEFAULT NULL,
  PRIMARY KEY (`idinstitucion`),
  KEY `idusuario_idx` (`usuario`),
  CONSTRAINT `idusuario` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`idusuario`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `formulario` (
  `idformulario` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `p1` tinyint NOT NULL,
  `p2` tinyint(1) NOT NULL,
  `p3` tinyint(1) NOT NULL,
  `p4` tinyint(1) NOT NULL,
  `p5` tinyint(1) NOT NULL,
  `p6` tinyint(1) NOT NULL,
  `p7` tinyint(1) NOT NULL,
  `p8` tinyint(1) NOT NULL,
  `p9` tinyint(1) NOT NULL,
  `p10` tinyint(1) NOT NULL,
  `p11` tinyint(1) NOT NULL,
  `p12` tinyint(1) NOT NULL,
  `p13` tinyint(1) NOT NULL,
  `p14` tinyint(1) NOT NULL,
  `p15` tinyint(1) NOT NULL,
  `p16` tinyint(1) NOT NULL,
  `p17` tinyint(1) NOT NULL,
  `p18` tinyint(1) NOT NULL,
  `p19` tinyint(1) NOT NULL,
  `p20` tinyint(1) NOT NULL,
  `p21` tinyint(1) NOT NULL,
  `p22` tinyint(1) NOT NULL,
  `p23` tinyint(1) NOT NULL,
  `p24` tinyint(1) NOT NULL,
  `p25` tinyint(1) NOT NULL,
  `p26` tinyint(1) NOT NULL,
  `p27` tinyint(1) NOT NULL,
  `institucion` int DEFAULT NULL,
  PRIMARY KEY (`idformulario`),
  KEY `idinstitucion_idx` (`institucion`),
  CONSTRAINT `idinstitucion` FOREIGN KEY (`institucion`) REFERENCES `institucion` (`idinstitucion`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `formulariobs` (
  `idformulariobs` int NOT NULL AUTO_INCREMENT,
  `p1obs` varchar(300) DEFAULT NULL,
  `p2obs` varchar(300) DEFAULT NULL,
  `p3obs` varchar(300) DEFAULT NULL,
  `p4obs` varchar(300) DEFAULT NULL,
  `p5obs` varchar(300) DEFAULT NULL,
  `p6obs` varchar(300) DEFAULT NULL,
  `p7obs` varchar(300) DEFAULT NULL,
  `p8obs` varchar(300) DEFAULT NULL,
  `p9obs` varchar(300) DEFAULT NULL,
  `p10obs` varchar(300) DEFAULT NULL,
  `p11obs` varchar(300) DEFAULT NULL,
  `p12obs` varchar(300) DEFAULT NULL,
  `p13obs` varchar(300) DEFAULT NULL,
  `p14obs` varchar(300) DEFAULT NULL,
  `p15obs` varchar(300) DEFAULT NULL,
  `p16obs` varchar(300) DEFAULT NULL,
  `p17obs` varchar(300) DEFAULT NULL,
  `p18obs` varchar(300) DEFAULT NULL,
  `p19obs` varchar(300) DEFAULT NULL,
  `p20obs` varchar(300) DEFAULT NULL,
  `p21obs` varchar(300) DEFAULT NULL,
  `p22obs` varchar(300) DEFAULT NULL,
  `p23obs` varchar(300) DEFAULT NULL,
  `p24obs` varchar(300) DEFAULT NULL,
  `p25obs` varchar(300) DEFAULT NULL,
  `p26obs` varchar(300) DEFAULT NULL,
  `p27obs` varchar(300) DEFAULT NULL,
  `formulario` int DEFAULT NULL,
  PRIMARY KEY (`idformulariobs`),
  KEY `idformulario_idx` (`formulario`),
  CONSTRAINT `idformulario` FOREIGN KEY (`formulario`) REFERENCES `formulario` (`idformulario`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;