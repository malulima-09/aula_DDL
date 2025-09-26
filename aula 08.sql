create database universidade;

use universidade;
create table aluno(
id_aluno int primary key auto_increment,
nome varchar(255) not null,
idade int not null,
cpf bigint unique not null
);

use universidade;
create table disciplina(
id_disc int primary key auto_increment,
id_aluno int not null,
nome varchar(255),
descricao varchar(255),
constraint aluno_disciplina foreign key (id_aluno)
references aluno(id_aluno)
);

#Atividade1
 create database loja;
 use loja;
 create table vendedor(
 idVendedor int primary key auto_increment,
 nome varchar(100),
 salarioFixo double,
 faixaComissao char(1)
 );
 
create table cliente(
idCliente int primary key auto_increment,
nome varchar(100) not null,
logradouro varchar(100),
numero varchar(6)not null,
complemento varchar(45)not null,
bairro varchar(50)not null,
cep varchar(15)not null,
cidade varchar(60)not null,
uf varchar(2) not null
);
 
 create table produto(
 idProduto int primary key auto_increment,
 descricao varchar(100),
 unidade int,
 valorUnitario double
 );
 
 create table pedido(
 idPedido int primary key auto_increment,
 idCliente int not null,
 idVendedor int not null,
 prazoEntrega int ,
 constraint cliente_pedido foreign key (idCliente)
 references cliente (idCliente),
 constraint vendedor_pedido foreign key (idVendedor)
 references vendedor (idVendedor)
);
 use loja;
 create table itemPedido(
 idPedido int not null,
 idProduto int not null,
 quantidade int,
 constraint pedido_itemPedido foreign key (idPedido)
 references pedido (idPedido),
 constraint produto_itemPedido foreign key (idProduto)
 references produto (idProduto)
 );