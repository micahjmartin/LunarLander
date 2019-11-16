{% set glob={'bank': -1} %}
FBANK       EQUALS      4
BANK2       EQUALS      4000

# Store the bank numbers that are used{% for bankn, vals in banks.items() %}{% if vals %}
BANK{{bankn | oct }}       EQUALS      {{bankn | bank }}{% endif %}{% endfor %}

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
            CA      BANK2
            TS      FBANK
            CA     MAXVAL
            EXTEND
            WRITE   25
            EXTEND
            WRITE   25
            EXTEND
            WRITE   25
            {% for label, bankn in labels %}{% if glob['bank'] != bankn %}
            {% set _ = glob.update({'bank': bankn}) %}
            # Change to bank 0o{{ bankn | oct }}
            CA      BANK{{ bankn | oct }}
            TS      FBANK
{% endif %}
            CAF     {{label}}   # BANK{{bankn | oct}}
            EXTEND
            WRITE   24{% endfor %}

            CA      BANK2
            TS      FBANK
            CAF     MINVAL
            EXTEND
            WRITE   25
            EXTEND
            WRITE   25
            EXTEND
            WRITE   25
            TCF LAUNCH

BANK        2
BANK
MINVAL      DEC      0
MAXVAL      OCT      77777

{% for bankn, vals in banks.items() %}{% if vals %}
BANK        {{ bankn | oct }}{% for label, val in vals %}
{{ label }}          DEC		{{ val }}{% endfor %}
{% endif %}{% endfor %}
