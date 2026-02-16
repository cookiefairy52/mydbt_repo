{% macro audit_macro(model_name, status)%}
CREATE table if not exists CURATED_DATA.audit_tbl(model_name varchar(100),status varchar(100),start_or_end_time timestamp_ntz);

insert into CURATED_DATA.audit_tbl 
values('{{model_name}}','{{status}}',current_timestamp::timestamp_ntz);

{% endmacro%}