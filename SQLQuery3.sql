use estudos
SELECT
	name,
	pretty_name,
	coach_name
from
	estudos.dbo.clubes;

Select * from estudos.dbo.valores_de_jogadores;

select top 5 * from estudos.dbo.valores_de_jogadores

select club_id , name
from estudos.dbo.clubes
where average_age > 25 and total_market_value > 50000;

select club_id , name
from estudos.dbo.clubes
where average_age < 25 or total_market_value > 10000;

select club_id , name
from estudos.dbo.clubes
where not coach_name = 'David Nicola';

select club_id , name
from estudos.dbo.clubes
where stadium_name is not null;

select club_id , name
from estudos.dbo.clubes
where stadium_name is null;

select top 10
club_id as id_clube,
name as nome_clube,
total_market_value as total
from estudos.dbo.clubes
order by total_market_value desc;

select top 15
club_id,
name,
foreigners_number
from estudos.dbo.clubes
order by foreigners_number;

select 
count(*) as contando_linhas from estudos.dbo.clubes;

select
count (position) as quantidade_opcoes from estudos.dbo.aparicoes

select count(distinct position) as 'qnt_opcoes' from estudos.dbo.Pasta1

select type, count (*) as number_of_competitions
from estudos.dbo.competicoes
group by type;

use estudos 
SELECT TOP 10
country_name,
COUNT (DISTINCT type) AS 'quantidade de competicoes'
FROM estudos.dbo.competicoes
GROUP BY country_name
ORDER BY 2 DESC;

select MAX(goals) as minimo from aparicoes;

select top 10
 player_id,
SUM(yellow_cards) as total_yellow_cards,
SUM (red_cards) as total_red_cards
FROM estudos.dbo.aparicoes
group by player_id
order by total_yellow_cards DESC, total_red_cards DESC;

SELECT concat(pretty_name, position) from estudos.dbo.jogadores 