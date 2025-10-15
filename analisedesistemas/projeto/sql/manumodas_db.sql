-- 1. CRIAÇÃO DO BANCO DE DADOS
-- CREATE DATABASE manumodas_db;
-- USE manumodas_db;

-- 2. CRIAÇÃO DAS TABELAS

-- TABELA 'CLIENTES'
CREATE TABLE "Clientes" (
	"cpf"	INTEGER NOT NULL UNIQUE,
	"nome_cliente"	TEXT NOT NULL,
	"numero_celular"	INTEGER UNIQUE,
	"endereco"	TEXT,
	"cep"	INTEGER,
	PRIMARY KEY("cpf")
);

-- TABELA 'PRODUTOS'
CREATE TABLE "Produtos" (
	"cod_barra"	INTEGER NOT NULL UNIQUE,
	"nome_produto"	TEXT NOT NULL,
	"estoque_produto"	INTEGER NOT NULL DEFAULT 0,
	"id_venda"	INTEGER NOT NULL,
	PRIMARY KEY("cod_barra")
    FOREIGN KEY ("id_venda") REFERENCES "Vendas"("id_venda")
);

-- TABELA 'VENDAS'
CREATE TABLE "Vendas" (
	"id_vendas"	INTEGER NOT NULL UNIQUE,
	"qtd_produto"	INTEGER NOT NULL,
	"cpf_cliente"	INTEGER NOT NULL,
	"id_cliente"	INTEGER NOT NULL,
	"valor_total"	REAL NOT NULL,
	PRIMARY KEY("id_vendas" AUTOINCREMENT)
    FOREIGN KEY ("cpf_cliente") REFERENCES "Clientes"("cpf_cliente")
    FOREIGN KEY ("id_cliente") REFERENCES "Clientes"("id_cliente")
);

-- TABELA 'SERVICOS'
CREATE TABLE "servicos" (
	"nome_servico"	TEXT NOT NULL UNIQUE,
	"preco_servico"	REAL NOT NULL,
	PRIMARY KEY("nome_servico")
);

-- TABELA 'LOGIN'
CREATE TABLE "login" (
	"cpf"	INTEGER NOT NULL UNIQUE,
	"senha"	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("cpf")
);
