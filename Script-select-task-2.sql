select "name", duration from track 
where duration = (select max(duration) from track);

select "name" from track 
where duration >= 3.5;

select "name" from collection 
where collection_year between 2018 and 2020;

select pseudonim from singer 
where pseudonim not like '% %';

select "name" from track t 
where lower(name) like '%мой%' or lower(name) like '%my%';
