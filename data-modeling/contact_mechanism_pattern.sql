-- Parse::SQL::Dia          version 0.27                              
-- Documentation            http://search.cpan.org/dist/Parse-Dia-SQL/
-- Environment              Perl 5.022001, /usr/bin/perl              
-- Architecture             x86_64-linux-gnu-thread-multi             
-- Target Database          mysql-innodb                              
-- Input file               ContactMechanismPattern.dia               
-- Generated at             Fri Nov 25 15:47:26 2016                  
-- Typemap for mysql-innodb not found in input file                   

-- get_constraints_drop 

-- get_permissions_drop 

-- get_view_drop

-- get_schema_drop
drop table if exists SampleEntity;
drop table if exists ContactMechanismApplication;
drop table if exists ContactMechanism;

-- get_smallpackage_pre_sql 

-- get_schema_create
create table SampleEntity (
   SampleEntityId int not null,
   constraint pk_SampleEntity primary key (SampleEntityId)
)   ENGINE=InnoDB DEFAULT CHARSET=latin1;
create table ContactMechanismApplication (
   ContactMechanismApplicationId int      not null,
   SampleEntityId                int      not null,
   ContactMechanismId            int      not null,
   FromDate                      datetime not null,
   ThruDate                      datetime         ,
   constraint pk_ContactMechanismApplication primary key (ContactMechanismApplicationId)
)   ENGINE=InnoDB DEFAULT CHARSET=latin1;
create table ContactMechanism (
   ContactMechanismId int           not null,
   Name               nvarchar(200) not null,
   Description        nvarchar(200)         ,
   constraint pk_ContactMechanism primary key (ContactMechanismId)
)   ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- get_view_create

-- get_permissions_create

-- get_inserts

-- get_smallpackage_post_sql

-- get_associations_create
