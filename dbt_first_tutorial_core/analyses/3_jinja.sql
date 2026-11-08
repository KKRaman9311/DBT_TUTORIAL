{% set varIncLoad = 1%}
{% set lastDateSk = 3 %}
{% set listOfColumn = ["sales_id","quantity","gross_amount"]%}
SELECT 
    {% for col in listOfColumn %}
        {{ col }}
        {% if not loop.last %},{% endif %}
    {% endfor %}
from

{{ref("bronze_sales")}}
{% if varIncLoad == 1 %}
    WHERE date_sk > {{ lastDateSk}}
{% endif %}
 