{% macro learn_logging() %}
    {{ log("Call your mom!") }}
    {{ log("Call your dad!", info=True) }} --> Logs to the screen, too
--  {{ log("Call your dad!", info=True) }} --> This will be put to the screen the -- instructs the sql engine to skip the line, but the log got evaluated in the first stepl. 
    {# log("Call your dad!", info=True) all info messages will go to the screen, python related.  #} --> This won't be executed
{% endmacro %}