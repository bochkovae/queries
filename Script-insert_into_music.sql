insert into genre (name) values ('pop'), ('rock'), ('country');

insert into singer (pseudonim) values ('Sting'), ('Freddi Mercury'), ('Madonna'), ('Twain');

insert into singer_genres (singer_id, genre_id) 
values 
(1, 1), (2, 2), (3, 1), (4, 3);

insert into album (album_year, "name")
values
(1999, 'Brand New Day'), (1991, 'Innuendo'), (2020, 'MDNA'), (1997, 'Come On Over');

insert into album_singer (singer_id, album_id)
values
(1, 1), (2, 2), (3, 3), (4, 4);

insert into track ("name", duration, album_id) values
('Desert Rose', 4, 1), ('A Thousand Years', 5, 1),
('Innuendo', 6, 2), ('Headlong', 4, 2),
('Girl Gone Wild', 3, 3), ('Gang Bang', 5, 3),
('When', 3, 4), ('Come On Over', 2, 4), ('My Favorite Song', 3, 4);

insert into collection("name", collection_year) values
('The Best Of Queen', 2000), ('The Best Of Coutnry', 2001),
('The Best Of Pop', 2021), ('World Wide Best', 2020);

insert into track_collection(track_id, collection_id) values
(3, 1), (4, 1),
(7, 2), (8, 2),
(1, 3), (6, 3), (5, 3),
(2, 4), (3, 4), (6, 4), (8, 4);


