create table category(
category_id VARCHAR not null,
category VARCHAR not null,
primary key(category_id));

create table subcategory(
subcategory_id VARCHAR not null,
Subcategory VARCHAR not null,
primary key(subcategory_id));

create table contacts(
contact_id INT not null,
first_name VARCHAR not null,
last_name VARCHAR not null,
email VARCHAR not null,
primary key (contact_id));

create table campaignn(
cf_id INT not null,
contact_id INT not null,
company_name VARCHAR not null,
description VARCHAR not null,
goal FLOAT not null,
pledged FLOAT not null,
outcome VARCHAR not null,
backers_count INT not null,
country VARCHAR not null,
currency VARCHAR not null,
launched_date DATE not null,
end_date DATE not null,
Category_id VARCHAR not null,
Subcategory_id VARCHAR not null,
primary key(cf_id),
foreign key(contact_id) references contacts(contact_id),
foreign key(Category_id) references category(Category_id),
foreign key(Subcategory_id) references subcategory(Subcategory_id));

select * from contacts;
select * from category;
select * from subcategory;
select * from campaignn;