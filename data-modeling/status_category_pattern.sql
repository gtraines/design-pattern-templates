-- Parse::SQL::Dia    version 0.27                              
-- Documentation      http://search.cpan.org/dist/Parse-Dia-SQL/
-- Environment        Perl 5.022001, /usr/bin/perl              
-- Architecture       x86_64-linux-gnu-thread-multi             
-- Target Database    oracle                                    
-- Input file         StatusCategoryPattern.dia                 
-- Generated at       Sat Oct 15 23:54:43 2016                  
-- Typemap for oracle not found in input file                   

-- get_constraints_drop 

-- get_permissions_drop 

-- get_view_drop

-- get_schema_drop
drop table StatusTypeCategoryClassification;
drop table StatusType;
drop table StatusTypeCategory;
drop table StatusTypeCategoryType;
drop table StatusApplication;
drop table EntityStatus;
drop table Entity;

-- get_smallpackage_pre_sql 

-- get_schema_create
create table StatusTypeCategoryClassification (
   StatusTypeCategoryClassificationId int           not null,
   StatusTypeId                       int           not null,
   StatusTypeCategoryId               int           not null,
   FromDate                           datetime      not null,
   ThruDate                           datetime              ,--  		
   Details                            nvarchar(MAX) not null,
   Metadata                           metadata      not null,
   constraint pk_StatusTypeCategoryClassification primary key (StatusTypeCategoryClassificationId)
)   ;
create table StatusType (
   StatusTypeId int           not null,
   Name         nvarchar(255) not null,
   Details      nvarchar(MAX) not null,
   Metadata     metadata      not null,
   constraint pk_StatusType primary key (StatusTypeId)
)   ;
create table StatusTypeCategory (
   StatusTypeCategoryId       int           not null,
   ParentStatusTypeCategoryId int                   ,--  i
   Name                       nvarchar(255) not null,
   constraint pk_StatusTypeCategory primary key (StatusTypeCategoryId)
)   ;
create table StatusTypeCategoryType (
   StatusTypeCategoryTypeId       int           not null,--  in
   ParentStatusTypeCategoryTypeId int                   ,
   Name                           nvarchar(255) not null,
   constraint pk_StatusTypeCategoryType primary key (StatusTypeCategoryTypeId)
)   ;
create table StatusApplication (
   StatusApplicationId int      not null,
   OrderId             int      not null,
   ShipmentId          int      not null,
   WorkEffortId        int              ,
   StatusTypeId        int      not null,
   StatusDateTime      datetime not null,
   StatusFromDate      datetime not null,
   StatusThruDate      datetime         ,
   FromDate            datetime not null,
   ThruDate            datetime         ,
   constraint pk_StatusApplication primary key (StatusApplicationId)
)   ;
create table EntityStatus (
   EntityStatusId int      not null,
   EntityId       int      not null,
   StatusTypeId   int      not null,
   StatusDateTime datetime not null,--  da
   StatusFromDate datetime         ,
   StatusThruDate datetime         ,
   FromDate       datetime not null,
   ThruDate       datetime         ,
   constraint pk_EntityStatus primary key (EntityStatusId)
)   ;
create table Entity (
   EntityId int not null,
   Details      not null,
   constraint pk_Entity primary key (EntityId)
)   ;

-- get_view_create

-- get_permissions_create

-- get_inserts

-- get_smallpackage_post_sql

-- get_associations_create
