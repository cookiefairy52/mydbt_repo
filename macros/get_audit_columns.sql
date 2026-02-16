{% macro get_audit_colums()%}
 current_timestamp() as created_ts, current_user() as created_by
{% endmacro %}