create database gerencia_vendas;
use gerencia_vendas;

create table prdutos(
   produto_id integer primary key auto_increment,
   nome varchar(50),
   preco decimal(10,2),
   estoque integer
);

create table vendas(
   venda_id integer primary key auto_increment,
   produto_id integer,
   quantidade integer,
   data_venda date,
   foreign key (produto_id) references prdutos (produto_id)
);

#Comandos do tipo DML
insert into prdutos (nome,preco,estoque)
values('notebook Dell',5000.00,10);

select * from prdutos;

insert into prdutos (nome,preco,estoque)
values('Monitor UltraPower 27"',3000.00,15);

insert into prdutos (nome,preco,estoque)
values('Cadeira de escritório',1500.00,12);

insert into prdutos (nome,preco,estoque)
values('Mesa escritório',3000.00,8);

insert into prdutos(nome,preco,estoque)
values ('Mouse',1700.00,11);

select * from prdutos;
describe vendas;

insert into vendas (produto_id,quantidade,data_venda)
values(2, 3, '2025-10-03');

insert into vendas (produto_id,quantidade,data_venda)
values(3, 6, '2025-10-03');


#update
update produtos
set preco = 4900.00
where produto_id = 2;

select * from vendas;

update vendas
set quantidades = 4
where venda_id = 3;

delete from prdutos
where produto_id = 1;

delete from vendas
where venda_id = 3;

select nome,preco from prdutos;
select * from vendas;
select venda_id , quantidade from vendas;

select * from vendas;
where venda_id = 1;
