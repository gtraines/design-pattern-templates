-- Parse::SQL::Dia    version 0.27                              
-- Documentation      http://search.cpan.org/dist/Parse-Dia-SQL/
-- Environment        Perl 5.022001, /usr/bin/perl              
-- Architecture       x86_64-linux-gnu-thread-multi             
-- Target Database    oracle                                    
-- Input file         ContextualRolePattern.dia                 
-- Generated at       Sat Oct 15 23:51:22 2016                  
-- Typemap for oracle not found in input file                   

-- get_constraints_drop 

-- get_permissions_drop 

-- get_view_drop

-- get_schema_drop
drop table Entity;
drop table EntityType;

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

-- get_view_create

-- get_permissions_create

-- get_inserts

-- get_smallpackage_post_sql

-- get_associations_create
