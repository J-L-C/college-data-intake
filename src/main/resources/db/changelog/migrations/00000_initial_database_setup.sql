--liquibase formatted sql

--changeset author:jlcooper
CREATE TABLE IF NOT EXISTS school
(
    school_id                         serial primary key,
    unit_id                           varchar(10)  NOT NULL, --UNITID
    ope_id_8                          varchar(10)  NOT NULL, --OPEID
    ope_id_6                          varchar(10)  NOT NULL, --OPEID6
    institution_name                  text UNIQUE  NOT NULL, --INSTNM
    city                              varchar(200) NOT NULL, --CITY
    state_abbr                        varchar(2)   NOT NULL, --STABBR
    zip_code                          varchar(20)  NOT NULL, --ZIP
    agency_accreditation              text         NOT NULL, --ACCREDAGENCY
    institution_url                   text,                  --INSTURL
    institution_net_price_url         text,                  --NPCURL
    predominant_degree_awarded        smallint,              --PREDDEG
    highest_degree_offered            smallint,              --HIGHDEG
    under_investigation               smallint,              --HCM2
    main_campus                       smallint,              --MAIN
    number_of_branches                smallint,              --NUMBRANCH
    ownership                         smallint,              --CONTROL
    state_fips                        smallint,              --ST_FIPS
    region_id                         smallint,              --REGION
    online_only                       boolean,               --DISTANCEONLY
    operational                       boolean,               --CURROPER
    tuition_revenue_per_fte           integer,--TUITFTE
    instructional_expenditure_per_fte integer,               --INEXPFTE
    avg_faculty_salary                integer,               --AVGFACSAL
    full_time_faculty_rate            float4,--PFTFAC
    institution_alias                 text,                  --ALIAS
    institution_level                 smallint,              --ICLEVEL
    open_admissions_policy            boolean,               --OPENADMP
    created_on                        TIMESTAMP    NOT NULL,
    last_updated                      TIMESTAMP
);