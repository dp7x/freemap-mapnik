CREATE EXTENSION intarray;

-- not sure if those indexes help ;-)
create index idx_colour on osm_routes (colour);
create index idx_symbol on osm_routes ("osmc:symbol");
create index idx_network on osm_routes (network);
create index idx_type on osm_routes (type);

drop table if exists zindex;
create table zindex (type varchar primary key, z serial);
insert into zindex (type) values
('guidepost'),
('cave_entrance'),
('monument'),
('office'),
('hotel'),
('chalet'),
('hostel'),
('motel'),
('guest_house'),
('alpine_hut'),
('hut'),
('cabin'),
('church'),
('chapel'),
('cathedral'),
('temple'),
('basilica'),
('shelter'),
('museum'),
('cinema'),
('theatre'),
('memorial'),
('restaurant'),
('pub'),
('convenience'),
('supermarket'),
('fuel'),
('fast_food'),
('cafe'),
('confectionery'),
('hospital'),
('pharmacy'),
('spring'),
('viewpoint'),
('mine'),
('adit'),
('mineshaft'),
('townhall'),
('hunting_stand'),
('board'),
('map'),
('artwork'),
('fountain'),
('community_centre'),
('fire_station'),
('police'),
('wayside_shrine'),
('wayside_cross'),
('cross'),
('rock'),
('stone'),
('toilets'),
('attraction'),
('peak');
