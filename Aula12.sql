select * from cursos
where nome like 'P%'; /* LIKE filtra cursos com a letra P*/

select * from cursos
where nome like '%A'; /* % no inicio filtra cursos que COMEÇAM com a letra escolhida, % no final filtra cursos que TERMINAM */

select * from cursos
where nome like '%A%'; /* % no inicio e final filtra cursos que POSSUEM com a letra escolhida */

select * from cursos
where nome not like '%A%'; /* Comando NOT filtra cursos que NAO possuem a letra escolhida */

select * from cursos
where nome like 'PH%P_';

select * from gafanhotos
where nome like '%silva';

select distinct nacionalidade from gafanhotos /* DISTINCT filtra ocorrências repetidas mostrando uma única vez */
order by nacionalidade; 

select count(nome) from cursos; /* COUNT filtra quantidade de cursos */

select count(*) from cursos
where carga > 40;

select max(totaulas) from cursos /* MAX mostra o maior total de aulas da tabela cursos*/
where ano = '2016';

select min(totaulas) from cursos /* MAX mostra o menor total de aulas da tabela cursos*/
where ano = '2016';

select sum(totaulas) from cursos /* SUM soma total de aulas da tabela cursos*/
where ano = '2016';

select avg(totaulas) from cursos /* MAX mostra a media do total de aulas da tabela cursos*/
where ano = '2016';

