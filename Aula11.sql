use cadastro;

select * from gafanhotos;

select * from cursos;

select * from cursos
order by nome; /* ORDER BY Ordena pelo nome A...Z */

select * from cursos
order by nome desc; /* ORDER BY Ordena pelo nome Z...A */

select nome,carga,ano from cursos /* Filtra colunas especificas */
order by nome;

select ano,nome,carga from cursos 
order by ano,nome; /* ORDER BY também ordena por ano */

select * from cursos
where ano = '2016' /* WHERE filtra linhas */
order by nome;

select nome,descricao,carga from cursos
where ano = '2016' 
order by nome;

select nome,descricao,ano from cursos
where ano <= 2015 
order by ano,nome;

select nome,ano from cursos
where ano between 2014 and 2016 /* BETWEEN filtra cursos entre os anos de 2014 A 2016 */
order by ano,nome;

select nome,ano from cursos
where ano in(2014, 2016) /* IN filtra cursos apenas dos anos de 2014 E 2016 */
order by ano,nome;

select nome, carga, totaulas  from cursos
where carga > 35 and totaulas < 30;

select nome, carga, totaulas  from cursos
where carga > 35 or totaulas < 30;







































