select carga from cursos
group by carga;

select carga, count(nome) from cursos
group by carga
order by carga; /* GRUPO BY organiza quantos grupos tem a carga igual */

select carga, count(nome) from cursos
where totaulas = 30
group by carga;

select ano, count(*) from cursos
group by ano
having ano > 2016
order by count(*) desc; /* HAVING (serve para filtrar) só funciona se utilizar o mesmo campo do group by */


select avg(carga) from cursos;

select carga, count(*) from cursos 
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos); /* Dois selects juntos */