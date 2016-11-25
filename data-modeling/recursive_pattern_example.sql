-- Parse::SQL::Dia          version 0.27                              
-- Documentation            http://search.cpan.org/dist/Parse-Dia-SQL/
-- Environment              Perl 5.022001, /usr/bin/perl              
-- Architecture             x86_64-linux-gnu-thread-multi             
-- Target Database          mysql-innodb                              
-- Input file               RecursivePatternExample.dia               
-- Generated at             Fri Nov 25 13:55:15 2016                  
-- Typemap for mysql-innodb not found in input file                   

-- get_constraints_drop 

-- get_permissions_drop 

-- get_view_drop

-- get_schema_drop
drop table if exists WorkEffortAssociation;
drop table if exists WorkEffortAssociationRule;
drop table if exists WorkEffortAssociationType;
drop table if exists WorkEffortType;
drop table if exists WorkEffort;

-- get_smallpackage_pre_sql 

-- get_schema_create
create table WorkEffortAssociation (
   WorkEffortAssociationId     int      not null,
   FromWorkEffortId            int      not null,
   ToWorkEffortId              int      not null,
   WorkEffortAssociationTypeId int      not null,
   WorkEffortAssociationRuleId int      not null,
   FromDate                    datetime not null,
   ThruDate                    datetime         ,
   constraint pk_WorkEffortAssociation primary key (WorkEffortAssociationId)
)   ENGINE=InnoDB DEFAULT CHARSET=latin1;
create table WorkEffortAssociationRule (
   WorkEffortAssociationRuleId int           not null,--  q
   Name                        nvarchar(200) not null,
   constraint pk_WorkEffortAssociationRule primary key (WorkEffortAssociationRuleId)
)   ENGINE=InnoDB DEFAULT CHARSET=latin1;
create table WorkEffortAssociationType (
   WorkEffortAssociationTypeId       int           not null,
   ParentWorkEffortAssociationTypeId int                   ,
   Name                              nvarchar(200) not null,
   constraint pk_WorkEffortAssociationType primary key (WorkEffortAssociationTypeId)
)   ENGINE=InnoDB DEFAULT CHARSET=latin1;
create table WorkEffortType (
   WorkEffortTypeId       int           not null,
   ParentWorkEffortTypeId int                   ,
   Name                   nvarchar(200)         ,
   Metadata               metadata              ,
   constraint pk_WorkEffortType primary key (WorkEffortTypeId)
)   ENGINE=InnoDB DEFAULT CHARSET=latin1;
create table WorkEffort (
   WorkEffortId       int           not null,
   WorkEffortTypeId   int           not null,
   Name               nvarchar(200) not null,
   ScheduledStartDate datetime      not null,
   ScheduledEndDate   datetime              ,
   EstimatedHours     decimal       not null,
   Metadata           metadata      not null,
   constraint pk_WorkEffort primary key (WorkEffortId)
)   ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- get_view_create

-- get_permissions_create

-- get_inserts

-- get_smallpackage_post_sql

-- get_associations_create
