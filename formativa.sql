create database locacoes;
use locacoes;

create table titulo(
codigo integer primary key auto_increment,
nome varchar(45),
tipo varchar(45),
locado integer 
);

create table cliente(
codigo integer primary key auto_increment,
nome varchar (45),
endereco varchar (45),
bairro varchar (45),
cidade varchar(45),
uf varchar (45),
telefone varchar (45)
);

create table locacoes(
codigo integer primary key auto_increment,
codigoCliente integer,
foreign key (codigo) references cliente (codigo),
codigoTitulo integer,
foreign key (codigo) references titulo (codigo),
data_saida date,
data_retorno date 
);

insert into titulo(nome,tipo,locado)
values('Revolução dos Bichos','Fábula',0);
insert into titulo(nome,tipo,locado)
values('A marca de uma lágrima','Ficção',0);
insert into titulo(nome,tipo,locado)
values('O cortiço','Romance',1);
insert into titulo(nome,tipo,locado)
values('É assim que acaba','Romance',1);
insert into titulo(nome,tipo,locado)
values('Menino maluquinho','Ficção',0);
select * from titulo;

insert into cliente(nome,endereco,bairro,cidade,telefone)
values('Malu','vila Regina','Rua dos bobos','SP','(15)1111-1111)');
insert into cliente(nome,endereco,bairro,cidade,telefone)
values('Rafaela','vila Regina','Rua dos bobos','SP','(15)2222-2222)');
insert into cliente(nome,endereco,bairro,cidade,telefone)
values('Nando','vila Regina','Rua dos bobos','SP','(15)3333-3333)');
insert into cliente(nome,endereco,bairro,cidade,telefone)
values('Vitor','vila Regina','Rua dos bobos','SP','(15)4444-4444)');
insert into cliente(nome,endereco,bairro,cidade,telefone)
values('João Pedro','vila Regina','Rua dos bobos','SP','(15)5555-5555)');
select * from cliente;

insert into locacoes(codigoCliente, codigoTitulo,data_saida,data_retorno)
values(1,1,'2025-09-03','2025-09-10');
insert into locacoes(codigoCliente, codigoTitulo,data_saida,data_retorno)
values(2,2,'2025-08-06','2025-08-12');
insert into locacoes(codigoCliente, codigoTitulo,data_saida,data_retorno)
values(3,3,'2025-07-03','2025-07-10');
insert into locacoes(codigoCliente, codigoTitulo,data_saida,data_retorno)
values(4,4,'2025-09-30','2025-10-10');
insert into locacoes(codigoCliente, codigoTitulo,data_saida,data_retorno)
values(5,5,'2025-05-03','2025-05-17');
select * from locacoes;

delete from locacoes
where codigo = 1;
delete from titulo
where codigo = 1;
delete from locacoes
where codigo = 2;
delete from titulo
where codigo = 2;
delete from locacoes 
where codigo = 3;
delete from titulo
where codigo = 3;
select * from titulo;

delete from locacoes
where codigo = 1;
delete from cliente
where codigo = 1;
delete from locacoes
where codigo = 2;
delete from cliente
where codigo = 2;
delete from locacoes 
where codigo = 3;
delete from cliente 
where codigo = 3;
select * from cliente;

update titulo
set locado= 0
where codigo = 4;

update titulo
set locado = 0
where codigo = 5;

update cliente
set uf= 'MG'
where codigo = 1;

update cliente
set uf = 'RJ'
where codigo = 5;

select * from cliente;

update locacoes
set data_retorno = '2025-10-03'
where codigo = 4;

update locacoes
set data_retorno = '2024-10-03'
where codigo = 5;

select * from locacoes;









