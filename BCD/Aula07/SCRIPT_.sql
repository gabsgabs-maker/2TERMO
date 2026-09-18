-- Active: 1788519497574@@127.0.0.1@3306@sesi_cr_ta
-- Gera��o de Modelo f�sico
-- Sql ANSI 2003 - brModelo.

CREATE DATABASE IF NOT EXISTS SESI_CR_TA;

USE SESI_CR_TA;


CREATE TABLE Cliente (
    ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Cliente VARCHAR(60) NOT NULL,
    CPF VARCHAR(14)
);


CREATE TABLE Fornecedor (
    ID_Fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    Razao_social VARCHAR(100)
);


CREATE TABLE Produto (
    ID_Produto INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Produto VARCHAR(60)
);


CREATE TABLE Pedido (
    ID_Pedido INT AUTO_INCREMENT PRIMARY KEY,
    Data_Pedido DATETIME NOT NULL,
    ID_Cliente INT NOT NULL,
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente)
);


CREATE TABLE Estoque (
    ID_Estoque INT AUTO_INCREMENT PRIMARY KEY,
    ID_Produto INT NOT NULL UNIQUE,
    Nome_Produto VARCHAR(40),
    Quantidade INT NOT NULL,
    FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto)
);


CREATE TABLE Realiza (
    ID_Produto INT NOT NULL,
    ID_Cliente INT NOT NULL,
    PRIMARY KEY (ID_Produto, ID_Cliente),
    FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto),
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente)
);


CREATE TABLE Item_Pedido (
    ID_Pedido INT NOT NULL,
    ID_Produto INT NOT NULL,
    ID_Fornecedor INT NOT NULL,
    Valor DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (ID_Pedido, ID_Produto),
    FOREIGN KEY (ID_Pedido) REFERENCES Pedido(ID_Pedido),
    FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto),
    FOREIGN KEY (ID_Fornecedor) REFERENCES Fornecedor(ID_Fornecedor)
);




-- DESAFIOS:

-- QUESTÃO 1:
-- CATEGORIA -- POSSUI -- PRODUTO
-- 1,N E 1,1


-- QUESTÃO 2:
-- FUNCIONARIO---REGISTRA---PEDIDO
-- 1,N E 1,1


-- QUESTÃO 3:
-- FORNECEDOR -- FORNECE -- PRODUTO
-- 1,N E 1,N


-- QUESTÃO 4:
-- CLIENTE---RESERVA---MESSAGE_TEXT
-- 0,N E 1,1

-- QUESTÃO 5:
-- PEDIDO---POSSUI---ITEM_PEDIDO
-- 1,N E 1,1