{% macro learn_variables() %}

    {% set your_name_jinja = "Silas"%}
    {# tilde sign concatenates strings in Jinja #}
    {{ log("Hello " ~ your_name_jinja, info=True) }}

    {{log("Hello dbt user " ~ var("user_name", "NO USERNAME IS SET") ~ "!", info=True)}}

{% endmacro %}