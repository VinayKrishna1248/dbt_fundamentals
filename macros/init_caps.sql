{% macro init_caps(columnname) %}
initcap(substring((replace({{columnname}},'_',' ')),1))
{% endmacro %}