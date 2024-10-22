-- -----------------------------------------------------
-- Schema lastmile
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lastmile` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `lastmile` ;


-- -----------------------------------------------------
-- Table `entregadores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `entregadores` (
  `id_entregador` VARCHAR(255) NOT NULL,
  `cnh` VARCHAR(11) NOT NULL,
  `placa_veiculo` VARCHAR(7) NOT NULL,
  `lat` bigint NULL,
  `lng` bigint NULL,
  PRIMARY KEY (`id_entregador`),
  UNIQUE INDEX `cnh_UNIQUE` (`cnh` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` VARCHAR(255) NOT NULL,
  `cod_entregador` VARCHAR(255) NULL,
  `name` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `document` VARCHAR(14) NOT NULL,
  `phone` VARCHAR(50) NOT NULL,
  `type` TINYINT NOT NULL COMMENT '1 = cliente\n2 = entregador',
  `createdAt` TIMESTAMP NOT NULL,
  `updatedAt` TIMESTAMP NULL,
  `status_usuario` TINYINT NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE INDEX `document_UNIQUE` (`document` ASC) VISIBLE,
  UNIQUE INDEX `id_usuario_UNIQUE` (`id_usuario` ASC) VISIBLE,
  UNIQUE INDEX `cod_entregador_UNIQUE` (`cod_entregador` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  CONSTRAINT `fk_usuarios_cod_entregador_entregadores_id_entregador`
    FOREIGN KEY (`cod_entregador`)
    REFERENCES `entregadores` (`id_entregador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lastmile`.`pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id_pedido` VARCHAR(255) NOT NULL,
  `cod_user` VARCHAR(255) NOT NULL,
  `cod_entregador` VARCHAR(255) NULL,
  `name` VARCHAR(255) NOT NULL,
  `description` TEXT NOT NULL,
  `comments` VARCHAR(255) NULL,
  `address` VARCHAR(255) NOT NULL,
  `city` VARCHAR(100) NOT NULL,
  `state` VARCHAR(100) NOT NULL,
  `number` VARCHAR(10) NOT NULL,
  `postal_code` VARCHAR(8) NOT NULL,
  `createdAt` TIMESTAMP NOT NULL,
  `updatedAt` TIMESTAMP NULL,
  `status_pedido` TINYINT NOT NULL COMMENT '0 = Cancelado\n1 = Pendente\n2 = Em Rota\n3 = Entregue',
  PRIMARY KEY (`id_pedido`),
  UNIQUE INDEX `idcontas_UNIQUE` (`id_pedido` ASC) VISIBLE,
  UNIQUE INDEX `cod_entregador_UNIQUE` (`cod_entregador` ASC) VISIBLE,
  UNIQUE INDEX `cod_user_UNIQUE` (`cod_user` ASC) VISIBLE,
  CONSTRAINT `fk_pedidos_cod_user_usuarios_id_usuario`
    FOREIGN KEY (`cod_user`)
    REFERENCES `usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedidos_cod_entregador_usuarios_cod_entregador`
    FOREIGN KEY (`cod_entregador`)
    REFERENCES `usuarios` (`cod_entregador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;
