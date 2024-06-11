{% macro no_nulls_in_columns(model) %}
    SELECT * FROM {{ model }} WHERE
        {# iterate through every column in the model the hyphen means you want to trim off whitespaces.#}
        {% for col in adapter.get_columns_in_relation(model) -%}
            {{col.column}} IS NULL OR
        {% endfor %}
        FALSE
{% endmacro %}