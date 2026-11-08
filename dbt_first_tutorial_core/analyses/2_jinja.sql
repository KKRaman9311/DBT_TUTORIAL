{%set apple = ["gale","fuji","red delicious","honeycrisp","McIntosh"]%}
{% for i in apple%}
    {% if i == "McIntosh"%}
        {{i}}
    {% else %}
        I hate {{i}}
    {% endif %}
{% endfor %}