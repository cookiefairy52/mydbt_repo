{% macro remove_dups_ts(trg_table,srg_table,unique_key,ts_col)%}

CREATE TABLE IF NOT EXISTS CURATED_DATA.{{trg_table}} as select * from RAW_DATA.{{srg_table}} where 1=2;

{% if ts_col == 'NA'%}

insert into CURATED_DATA.{{trg_table}} 
Select * from RAW_DATA.{{srg_table}} 
qualify row_number()over(partition by {{unique_key}} order by {{unique_key}})=1

{% else %}
insert into CURATED_DATA.{{trg_table}} 
Select * from RAW_DATA.{{srg_table}} 
qualify row_number()over(partition by {{unique_key}} order by {{ts_col}} desc)=1

{% endif%}
{% endmacro%}