create database fruit_db;
use fruit_db;
create table user(
        user_id bigint primary key auto_increment,
        user_name varchar(100) not null unique,
        user_sex varchar(10) default '-',
        user_pwd varchar(100) not null,
        user_balance int default 1000000,
        user_level varchar(20) default '0',
        user_type varchar(20) default '-',
        user_head_portrait_path varchar(100) default '-'
)engine=innodb default charset=utf8mb4;

create table goods(
        goods_id bigint primary key auto_increment,
        goods_name varchar(100) not null,
        goods_price int not null,
        goods_picture_path varchar(100),
        goods_type varchar(20) default 'Nomal',
        goods_count int default 1000000,
        goods_describe text
)engine=innodb default charset=utf8mb4;

create table orders(
        orders_id bigint primary key auto_increment,
        user_id bigint not null,
        goods_id bigint not null,
        orders_date varchar(20),
        is_payed boolean default false,
        token varchar(100) default '-'
)engine=innodb default charset=utf8mb4;
insert into goods values(1,'Milk',2,'https://goss.veer.com/creative/vcg/veer/800water/veer-134360432.jpg','Normal',1000,'None');
insert into goods values(2,'Apple',2,'https://goss.veer.com/creative/vcg/veer/800water/veer-153691372.jpg','Normal',1000,'None');
insert into goods values(3,'Banana',2,'https://goss.veer.com/creative/vcg/veer/800water/veer-316368781.jpg','Normal',1000,'None');
insert into goods values(4,'Watermelon',2,'https://goss.veer.com/creative/vcg/veer/800water/veer-152555669.jpg','Normal',1000,'None');
insert into goods values(6,'Grape',2,'https://goss.veer.com/creative/vcg/veer/800water/veer-159842740.jpg','Normal',1000,'None');
insert into goods values(7,'Litchi',2,'https://goss.veer.com/creative/vcg/veer/800water/veer-312073987.jpg','Normal',1000,'None');
insert into goods values(8,'Jujube',2,'https://goss.veer.com/creative/vcg/veer/800water/veer-165591239.jpg','Normal',1000,'None');
insert into goods values(9,'Pear',2,'https://goss.veer.com/creative/vcg/veer/800water/veer-100362860.jpg','Normal',1000,'None');
insert into goods values(10,'Durian',2,'https://goss.veer.com/creative/vcg/veer/800water/veer-155696432.jpg','Normal',1000,'None');
insert into goods values(11,'Pitaya',2,'https://goss.veer.com/creative/vcg/veer/800water/veer-141508993.jpg','Normal',1000,'None');
insert into goods values(12,'Cinnamon',2,'https://goss.veer.com/creative/vcg/veer/800water/veer-313538863.jpg','Normal',1000,'None');
insert into goods values(13,'Mangosteen',2,'https://goss.veer.com/creative/vcg/veer/800water/veer-161867485.jpg','Normal',1000,'None');
insert into goods values(14,'Chestnut',2,'https://goss.veer.com/creative/vcg/veer/800water/veer-141825475.jpg','Normal',1000,'None');
insert into goods values(5,'Peach',2,'https://goss.veer.com/creative/vcg/veer/800water/veer-307890544.jpg','RushToBuy',1000,'None');
