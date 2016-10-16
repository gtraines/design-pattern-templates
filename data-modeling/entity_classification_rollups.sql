-- Parse::SQL::Dia    version 0.27                              
-- Documentation      http://search.cpan.org/dist/Parse-Dia-SQL/
-- Environment        Perl 5.022001, /usr/bin/perl              
-- Architecture       x86_64-linux-gnu-thread-multi             
-- Target Database    oracle                                    
-- Input file         EntityClassificationRollups.dia           
-- Generated at       Sat Oct 15 23:49:01 2016                  
-- Typemap for oracle not found in input file                   

-- get_constraints_drop 

-- get_permissions_drop 

-- get_view_drop

-- get_schema_drop
drop table EntityCategoryClassification;
drop table Entity;
drop table EntityCategory;
drop table EntityCategoryRollup;
drop table EntityCategoryRollupType;
drop table EntityCategoryType;
drop table EntityCategoryTypeRollup;
drop table EntityCategoryTypeScheme;
drop table PartyRole;
drop table EntityCategoryTypeRollupType;

-- get_smallpackage_pre_sql 

-- get_schema_create
create table EntityCategoryClassification (
   EntityClassificationId int      not null,
   EntityId               int      not null,
   EntityCategoryId       int      not null,
   FromDate               datetime not null,
   ThruDate               datetime         ,
   Metadata               metadata not null,
   constraint pk_EntityCategoryClassification primary key (EntityClassificationId)
)   ;
create table Entity (
   EntityId int           not null,
   Details  nvarchar(255) not null,
   Metadata metadata      not null,
   constraint pk_Entity primary key (EntityId)
)   ;
create table EntityCategory (
   EntityCategoryId     int           not null,
   EntityCategoryTypeId int           not null,
   Name                 nvarchar(255)         ,
   Metadata             metadata      not null,
   constraint pk_EntityCategory primary key (EntityCategoryId)
)   ;
create table EntityCategoryRollup (
   EntityCategoryRollupId              not null,
   ParentEntityCategoryId     int      not null,
   ChildEntityCategoryId      int      not null,
   EntityCategoryRollupTypeId int      not null,
   FromDate                   datetime not null,
   ThruDate                   datetime         ,
   Metadata                   metadata not null,
   constraint pk_EntityCategoryRollup primary key (EntityCategoryRollupId)
)   ;
create table EntityCategoryRollupType (
   EntityCategoryRollupTypeId       int           not null,
   ParentEntityCategoryRollupTypeId int                   ,
   Name                             nvarchar(255)         ,
   Metadata                         metadata      not null,--  met
   constraint pk_EntityCategoryRollupType primary key (EntityCategoryRollupTypeId)
)   ;
create table EntityCategoryType (
   EntityCategoryTypeId       int           not null,
   EntityCategoryTypeSchemeId int           not null,
   Name                       nvarchar(255) not null,
   Metadata                   metadta       not null,
   constraint pk_EntityCategoryType primary key (EntityCategoryTypeId)
)   ;
create table EntityCategoryTypeRollup (
   EntityCategoryTypeRollupId int      not null,
   ParentEntityCategoryTypeId int              ,
   ChildEntityCategoryTypeId  int              ,--  int
   FromDate                   datetime not null,
   ThruDate                   datetime         ,
   Metadata                   metadata not null,
   constraint pk_EntityCategoryTypeRollup primary key (EntityCategoryTypeRollupId)
)   ;
create table EntityCategoryTypeScheme (
   EntityCategoryTypeSchemeId int           not null,
   PartyRoleId                int           not null,
   Name                       nvarchar(255) not null,
   Metadata                   metadata      not null,
   constraint pk_EntityCategoryTypeScheme primary key (EntityCategoryTypeSchemeId)
)   ;
create table PartyRole (
   PartyRoleId  int not null,
   DataProvider     not null,
   constraint pk_PartyRole primary key (PartyRoleId)
)   ;
create table EntityCategoryTypeRollupType (
   EntityCategoryTypeRollupTypeId       int           not null,
   ParentEntityCategoryTypeRollupTypeId int                   ,
   Name                                 nvarchar(255) not null,
   Metadata                             metadata      not null,
   constraint pk_EntityCategoryTypeRollupType primary key (EntityCategoryTypeRollupTypeId)
)   ;

-- get_view_create

-- get_permissions_create

-- get_inserts

-- get_smallpackage_post_sql

-- get_associations_create
