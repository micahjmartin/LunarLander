FBANK       EQUALS      4
# Store the bank numbers that are used{% for bankn, vals in banks.items() %}{% if vals %}
BANK{{bankn | oct }}       EQUALS      {{bankn | oct }}{% endif %}{% endfor %}

            SETLOC    4000        # NOOP all the interupts
            TCF       LAUNCH
            NOOP
            NOOP
            NOOP
{% for i in range(10) %}
            RESUME
            NOOP
            NOOP
            NOOP
{% endfor %}
       
LAUNCH
            # Send a few all 1s to indicate the start
            CA      
            CAF     MAXVAL
            EXTEND
            WRITE   25
            EXTEND
            WRITE   25
            EXTEND
            WRITE   25
            {% for label in data %}
            CAF     {{label}}
            EXTEND
            WRITE   24{% endfor %}

            CAF     MINVAL
            EXTEND
            WRITE   25
            EXTEND
            WRITE   25
            EXTEND
            WRITE   25
            TCF LAUNCH

MAXVAL      OCT     77777
MINVAL      OCT     00000



{% for bankn, vals in banks.items() %}{% if vals %}
BANK        {{ bankn | oct }}{% for label, val in vals %}
{{ label }}          DEC		{{ val }}{% endfor %}
{% endif %}{% endfor %}
