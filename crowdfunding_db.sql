--Create table and view columns for titles
create table contacts (
	contact_id integer not null primary key,
	first_name varchar not null,
	last_name varchar not null,
	email varchar not null
);

--Create table and view columns for titles
create table category (
	category_id varchar (4) not null primary key,
	category varchar not null
);

--Create table and view columns for titles
create table subcategory (
	subcategory_id varchar (8) not null primary key,
	subcategory varchar not null
);

--Create table and view columns for titles
create table campaign (
	cf_id integer not null primary key,
	contact_id integer not null,
	company_name varchar not null, 
	description varchar not null, 
	goal decimal(10,1) not null,
	pledged decimal(10,1) not null, 
	outcome varchar not null,
	backers_count integer not null,
	country varchar (2) not null, 
	currency varchar (3) not null, 
	launched_date date not null, 
	end_date date not null, 
	category_id varchar (4) not null, 
	subcategory_id varchar (8)  not null,
	foreign key (contact_id) references contacts(contact_id),
	foreign key (category_id) references category(category_id),
	foreign key (subcategory_id) references subcategory(subcategory_id)
);

--View the tables
select * from contacts;
select * from category;
select * from subcategory;
select * from campaign;
