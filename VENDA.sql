create database VENDA;

use VENDA;

create table vendas (
id_venda int auto_increment primary key not null,
produto varchar(100) not null,
qtd int not null,
preco decimal(10,2) not null
);

insert into vendas (produto,qtd,preco)
values ("Produto A",72,18.00),("Produto B",15,25.00),("Produto C",2,6.00),("Produto D",86,7.00),("Produto E",23,22.00),("Produto F",97,1.50),
 ("Produto G",39,5.00),("Produto H",101,2.00),("Produto I",9,67.00),("Produto J",12,4.00);
 
 select * FROM vendas;
 
 select count(*) as Total_vendas
 from vendas;

select sum(qtd) as Total_produtos
from vendas;

select produto, count(*) as Total_vendas
from vendas
group by produto;

select max(preco) as Maior_Preço
from vendas;

select produto,sum (qtd) as Total_produtos_vendas
from vendas
group by produto
having Total_produtos_vendas >17;

select produto,qtd,preco
from vendas
order by preco asc
limit 5;

select produto,preco,
(select max(preco) from vendas) as Maior_Preço
from vendas;