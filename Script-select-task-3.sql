select g.name, count(*) from singer s 
join singer_genres sg on sg.singer_id = s.id
join genre g on sg.genre_id = g.id
group by g."name";

select count(*) from track t 
join album a on a.id = t.album_id
where a.album_year between 2019 and 2020;

select a."name", avg(duration) from track t 
join album a on a.id = t.album_id
group by a."name";

select pseudonim from singer s 
join album_singer as1 on as1.singer_id = s.id
join album a on a.id = as1.album_id
where s.pseudonim not in (select pseudonim from singer s2 
join album_singer as2 on as2.singer_id = s2.id
join album a2 on a2.id = as2.album_id
where a.album_year = 2020);

select c."name" from collection c 
join track_collection tc on tc.collection_id = c.id
join track t on t.id = tc.track_id
join album a on t.album_id = a.id
join album_singer as2 on as2.album_id = a.id
join singer s on s.id =as2.singer_id
where s.pseudonim = 'Sting';