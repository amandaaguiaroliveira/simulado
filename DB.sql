CREATE DATABASE simulado;

USE simulado;

CREATE TABLE Comprador (
    Id INTEGER(5) PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Telefone INTEGER(15) NOT NULL,
    Endereco VARCHAR(255) NOT NULL
);

CREATE TABLE Venda (
    Id INTEGER(5) PRIMARY KEY,
    Data DATE NOT NULL,
    itemvenda VARCHAR(255) NOT NULL,
    id_comprador INTEGER(5) NOT NULL
);

CREATE TABLE ItemVenda (
    Id INTEGER(5) PRIMARY KEY,
    Quantidade INTEGER(5) NOT NULL,
    Subtotal DECIMAL(10,2) NOT NULL,
    id_venda INTEGER(5) NOT NULL,
    id_produto INTEGER(5) NOT NULL
);

CREATE TABLE Produto (
    Id INTEGER(5) PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Preco DECIMAL(10,2) NOT NULL,
    Descricao VARCHAR(255) NOT NULL
);
 
ALTER TABLE Venda ADD CONSTRAINT FK_Venda_2
    FOREIGN KEY (id_comprador)
    REFERENCES ItemVenda (Id);
 
ALTER TABLE ItemVenda ADD CONSTRAINT FK_ItemVenda_2
    FOREIGN KEY (id_produto)
    REFERENCES Produto (Id);
    
    ALTER TABLE ItemVenda ADD CONSTRAINT FK_ItemVenda_3
    FOREIGN KEY (id_venda)
    REFERENCES Venda (Id);