{% macro ms_to_minutes(ms_field, decimals=2) %}
  ROUND(CAST({{ ms_field }} AS FLOAT64) / 60000, {{ decimals }})
{% endmacro %}