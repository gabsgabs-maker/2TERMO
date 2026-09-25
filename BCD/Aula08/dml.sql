-- Active: 1788519497574@@127.0.0.1@3306@smartcoffe_dml_gabrielli
DROP DATABASE IF NOT EXISTS SMARTCOFFE_DML_GABRIELLI;

CREATE DATABASE IF NOT EXISTS SMARTCOFFE_DML_GABRIELLI;

USE SMARTCOFFE_DML_GABRIELLI;

CREATE TABLE Cliente(
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR (120) NOT NULL,
    telefone VARCHAR(15),
    cidade VARCHAR(60) NOT NULL,
    ativo BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE categoria(
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL UNIQUE
);












--INSERINDO DADOS NO BD

INSERT INTO cliente(nome,email,telefone,cidade,ativo) VALUES
('Arthur Nunes','arthur@email.com','1999999991','Rondonia',TRUE),
('Beatriz Raissa','beatriz@email.com','1999999991','Limeira',TRUE),
('Davi Ferreira','davi@email.com',NULL,'Limeira',TRUE),
('Francisco Magri','chico@email.com','1999999994','Limeira',TRUE),
('Franz Kramer','franz@email.com','1999999994','Limeira',TRUE),
('Gabriel Nouqueira','gabriel@email.com','1999999995','Limeira',TRUE),
('Gabrielli Araujo','gabrielli@email.com','1999999996','Americana',TRUE),
('Isabella Alves','isabella@email.com',NULL,'Rondonia',TRUE),
('Keynan Santos','keynan@email.com','1999999998','Santos',TRUE),
('Larissa Ramires','larissa@email.com','1999999998','Limeira',TRUE),
('Leonardo Dia','leonardo@email.com','1999999999','Valinhos',TRUE),
('Luana Lima','luana@email.com','1999999910','Limeira',TRUE),
('Luccas manfredi','luccas@email.com','1999999910','Limeira',TRUE),
('Livia Stein','livia@email.com','1999999991','Campinas',TRUE),
('Dandara Dias','dandara@gmail.com','1999999993','Limeira',TRUE);



INSERT INTO categoria(nome) VALUES
('Cafés'),('Bebidas Geladas'),('Bebidas Quentes'),('Salgados'),('Sobremesas'),
('Combo');

INSERT INTO categoria (nome) VALUES
('Doces');


SET @categoria = LAST_INSERT_ID();

SELECT @categoria;
------------------------------------------------
--ATUALIZANDO OU MODIFICANDO DADOS NO BD
--LEMBRAR DE SEMPRE EXECUTAR O SELECT PARA ATUALIZAR (UPDATE)
--E NUNCA JAMAIS NEVER FAÇA UM UPDATE SEM WHERE😶
--EX 1: Modificando valores individuais
UPDATE Cliente
SET telefone = '1988880001'
WHERE id_cliente = 8

--EX 2 : MODIFICANDO VÁRIOS VALORES
UPDATE cliente
SET telefone = '1999999901',
    cidade = 'Piracicaba'
WHERE id_cliente = 8;


DELETE FROM cliente
WHERE id_cliente = 8;


--CONSULTAR DADOS NO BD
SELECT * FROM Cliente;
WHERE id_cliente = 8;
SELECT * FROM categoria;