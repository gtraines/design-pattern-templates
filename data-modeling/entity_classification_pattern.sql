-- Parse::SQL::Dia    version 0.27                              
-- Documentation      http://search.cpan.org/dist/Parse-Dia-SQL/
-- Environment        Perl 5.022001, /usr/bin/perl              
-- Architecture       x86_64-linux-gnu-thread-multi             
-- Target Database    oracle                                    
-- Input file         EntityClassificationPattern.dia           
-- Generated at       Sat Oct 15 23:46:42 2016                  
-- Typemap for oracle not found in input file                   

-- get_constraints_drop 

-- get_permissions_drop 

-- get_view_drop

-- get_schema_drop
drop table EntityCategoryClassification;
drop table EntityCategory;
drop table Entity;
drop table EntityCategoryType;
drop table EntityCategoryClassification;
drop table Entity;

-- get_smallpackage_pre_sql 

-- get_schema_create
create table EntityCategoryClassification (
   EntityCategoryClassificationId int      not null,
   EntityId                       int      not null,
   EntityCategoryId               int      not null,
   FromDate                       datetime not null,--    
   ThruDate                       datetime         ,
   Metadata                       metadata not null,
   constraint pk_EntityCategoryClassification primary key (EntityCategoryClassificationId)
)   ;
create table EntityCategory (
   EntityCategoryId       int           not null,--  							
   ParentEntityCategoryId int                   ,
   EntityCategoryTypeId   int           not null,
   Name                   nvarchar(255)         ,
   FromDate               datetime      not null,
   ThruDate               datetime              ,
   Metadata               metadata      not null,
   constraint pk_EntityCategory primary key (EntityCategoryId)
)   ;
create table Entity (
   EntityId int           not null,--  	
   Details  nvarchar(255) not null,
   Metadata metadata      not null,
   constraint pk_Entity primary key (EntityId)
)   ;
create table EntityCategoryType (
   EntityCategoryTypeId       int           not null,
   ParentEntityCategoryTypeId int                   ,
   Name                       nvarchar(255) not null,
   Metadata                   metadata      not null,
   constraint pk_EntityCategoryType primary key (EntityCategoryTypeId)
)   ;
create table EntityCategoryClassification (
   EntityCategoryClassificationId int      not null,
   EntityId                       int      not null,
   EntityCategoryId               int      not null,
   FromDate                       datetime not null,
   ThruDate                       datetime         ,
   Metadata                       metadata not null,
   constraint pk_EntityCategoryClassification primary key (EntityCategoryClassificationId)
)   ;
create table Entity (
   EntityId     int           not null,
   DetailFields nvarchar(max) not null,
   Metadata     metadata      not null,
   constraint pk_Entity primary key (EntityId)
)   ;

-- get_view_create

-- get_permissions_create

-- get_inserts

-- get_smallpackage_post_sql

-- get_associations_create
