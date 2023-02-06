/* Exercicios aula 12 */

/* 1 - Uma lista com nome de todas as gafanhotas */
select * from gafanhotos
where sexo like 'F'
order by nome;

/* 2 - Uma lista com dados de todos aqueles que nasceram entre 2000/Jan/1 e 2015/Dez/31 */
select * from gafanhotos
where nascimento between '2000-01-08' and '2015-12-31'
order by nascimento;

/* 3 - Uma lista com nome de todos os homens que trabalham como programadores */
select * from gafanhotos
where sexo like 'M' and profissao like 'Programador';

/* 4 - Uma lista com os dados de todas as mulheres que nasceram no Brasil e que tem seu nome iniciado com a letra J */
select * from gafanhotos
where nome like 'J%'
and sexo = 'F'
and nacionalidade = 'Brasil'
order by nome;

/* 5 - Uma lista com nome e nacionalidade de todos os homens que tem Silva no nome, nao nasceram no Brasil e pesam menos de 100kg */
select * from gafanhotos
where sexo = 'M'
and nome like '%Silva'
and nacionalidade != 'Brasil'
and peso < 100
order by nome;

/*Segunda forma de fazer*/
select * from gafanhotos
where sexo like 'M'
and nome like '%Silva'
and nacionalidade not like 'Brasil'
and peso < 100
order by nome;

/* 6 - Qual é a maior altura entre gafanhotos homens que moram no Brasil? */
select max(altura) from gafanhotos
where sexo = 'M'
and nacionalidade = 'Brasil'
order by altura;

/* 7 - Qual a média de peso dos gafanhotos cadastrados? */
select avg(peso) from gafanhotos;

/* 8 - Qual é o menor peso entre as gafanhotas que nasceram fora do brasil entre 1990/Jan/01 e 2000/Dez/31 */
select min(peso) from gafanhotos
where nacionalidade != 'Brasil'
and sexo like 'F'
order by peso;

/* 9 - Quantas gafanhotas tem mais de 1.90 de altura */
select count(altura) from gafanhotos
where sexo like 'F'
and altura >= '1.90';