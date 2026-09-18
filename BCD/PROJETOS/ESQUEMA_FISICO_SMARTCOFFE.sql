-- Gera��o de Modelo f�sico
-- Sql ANSI 2003 - brModelo.

CREATE DATABASE IF NOT EXISTS SMARTCOFFE1;

USE SMARTCOFFE1;
CREATE TABLE Clientes(
ID_cliente int auto_increment primary key,
Data_cadastro date not null,
Nome varchar(15) not null,
Email varchar(30),
CPF varchar(14) not null,
telefone varchar(30)
);

CREATE TABLE Funcionarios (
ID_funcionario int auto_increment primary key PRIMARY KEY,
Salario int,
CPF varchar(14),
Cargo varchar(30) not null,
Nome varchar(20) not null,
Data_admissao int
);

CREATE TABLE Fornecedor (
ID_Fornecedor int auto_increment primary key PRIMARY KEY,
Nome_do_fornecedor varchar(40) not null,
Endereco varchar(40),
Telefone_para_contato varchar(15) not null,
Email varchar(30),
CNPJ int not null
);

CREATE TABLE Produtos (
ID_produtos int auto_increment primary key PRIMARY KEY,
preco_unitario int not null,
categoria varchar(20),
descricao varchar(50) not null,
nome varchar(60)
);

CREATE TABLE Categoria (
ID_Categoria int auto_increment primary key PRIMARY KEY,
Desconto_padrao float not null,
Descricao varchar(40),
Nome_Categoria varchar(40),
Status_categoria enum("Inativo","Ativo")
);

CREATE TABLE Pedidos (
ID_pedido int auto_increment primary key,
Valor_total int,
data_hora date not null,
status_pedido date not null,
tipo_pedidos enum ("Presencial","Delivery")
)


CREATE TABLE Pagamento(
ID_pagamento int auto_increment primary key,
data_hora_pagamento date not null,
valor_pago int not null,
Pix Texto(1),
cartao Texto(1),
Dinheiro Texto(1),
status_pagamento varchar(40)
)

CREATE TABLE Delivery (
ID_delivery int auto_increment primary key PRIMARY KEY,
endereco_entrega varchar(60) not null,
status_entrega varchar(60) not null,
data_hora_saida time not null,
taxa_entrega int not null
)

CREATE TABLE Estoque/insumos (
ID_insumos int auto_increment primary key PRIMARY KEY,
quantidade_minima varchar(60),
quantidade_atual enum("kg","ml","un")
nome_insumo varchar(60)
)

CREATE TABLE Programa de fidelidade(
ID_fidelidade int auto_increment primary key,
data_ultima_atualizacao varchar(40),
saldo_pontos varchar(15)not null,
)


CREATE TABLE Realiza (
ID_pedido int,
ID_cliente int,
ID_Realiza int auto_increment primary key PRIMARY KEY,
FOREIGN KEY(ID_clientes) REFERENCES Clientes (ID_clientes),
FOREIGN KEY(ID_pedidos) REFERENCES Pedidos (ID_pedidos)
)

CREATE TABLE Atende (
ID_funcionario int,
ID_pedido int,
ID_Atende int auto_increment primary key PRIMARY KEY,
FOREIGN KEY(ID_funcionario) REFERENCES Funcionarios (ID_funcionario),
FOREIGN KEY(ID_Pedidos) REFERENCES Pedidos (ID_pedido)
)

CREATE TABLE Contem (
ID_produtos int,
ID_pedido int,
ID_Contem int auto_increment primary key PRIMARY KEY,
FOREIGN KEY(ID_produtos) REFERENCES Produtos (ID_produtos),
FOREIGN KEY(ID_Pedidos) REFERENCES Pedidos (ID_pedido)
)

CREATE TABLE Entrega (
ID_delivery int,
ID_funcionario int,
ID_Entrega int auto_increment primary key PRIMARY KEY,
FOREIGN KEY(ID_delivery) REFERENCES Delivery (ID_delivery),
FOREIGN KEY(ID_funcionario) REFERENCES Funcionarios (ID_funcionario)
)

CREATE TABLE Consome (
ID_insumos int,
ID_produtos int,
ID_Consome int auto_increment primary key PRIMARY KEY,
FOREIGN KEY(ID_insumos) REFERENCES Estoque/insumos (ID_insumos),
FOREIGN KEY(ID_produtos) REFERENCES Produtos (ID_produtos)
)

CREATE TABLE Fornece (
ID_produtos int,
ID_Fornecedor int,
ID_Fornece int auto_increment primary key PRIMARY KEY,
FOREIGN KEY(ID_produtos) REFERENCES Produtos (ID_produtos),
FOREIGN KEY(ID_Fornecedor) REFERENCES Fornecedor (ID_Fornecedor)
)

CREATE TABLE Item (
ID_produtos int,
ID_Categoria int,
ID_Item int auto_increment primary key PRIMARY KEY,
FOREIGN KEY(ID_produtos) REFERENCES Produtos (ID_produtos),
FOREIGN KEY(ID_Categoria) REFERENCES Categoria (ID_Categoria)
)


