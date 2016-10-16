-- Parse::SQL::Dia    version 0.27                              
-- Documentation      http://search.cpan.org/dist/Parse-Dia-SQL/
-- Environment        Perl 5.022001, /usr/bin/perl              
-- Architecture       x86_64-linux-gnu-thread-multi             
-- Target Database    oracle                                    
-- Input file         DataModelPatterns.dia                     
-- Generated at       Sat Oct 15 23:52:52 2016                  
-- Typemap for oracle not found in input file                   

-- get_constraints_drop 

-- get_permissions_drop 

-- get_view_drop

-- get_schema_drop
drop table Entity;
drop table EntityType;
drop table EntityAssociation;
drop table EntityAssociationRule;
drop table EntityAssociationType;

-- get_smallpackage_pre_sql 

-- get_schema_create
create table Entity (
   EntityId       int not null,
   ParentEntityId int         ,--  	
   EntityTypeId   int         ,
   Metadata           not null,
   constraint pk_Entity primary key (EntityId)
)   ;
create table EntityType (
   EntityTypeId       int           not null,
   ParentEntityTypeId int                   ,
   Name               nvarchar(255) not null,
   Metadata                         not null,
   constraint pk_EntityType primary key (EntityTypeId)
)   ;
create table EntityAssociation (
   EntityAssociationId     int      not null,
   FromEntityId            int      not null,--  	
   ToEntityId              int      not null,--  	
   EntityAssociationTypeId int      not null,
   EntityAssociationRuleId int              ,
   FromDate                datetime not null,
   ToDate                  datetime         ,
   Metadata                         not null,
   constraint pk_EntityAssociation primary key (EntityAssociationId)
)   ;
create table EntityAssociationRule (
   EntityAssociationRuleId int           not null,
   Name                    nvarchar(255) not null,
   Metadata                              not null,
   constraint pk_EntityAssociationRule primary key (EntityAssociationRuleId)
)   ;
create table EntityAssociationType (
   EntityAssociationTypeId       int           not null,
   ParentEntityAssociationTypeId int                   ,
   Name                          nvarchar(255) not null,
   Metadata                                    not null,
   constraint pk_EntityAssociationType primary key (EntityAssociationTypeId)
)   ;

-- get_view_create

-- get_permissions_create

-- get_inserts

-- get_smallpackage_post_sql

-- get_associations_create
