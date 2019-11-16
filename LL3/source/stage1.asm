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

{% for val, label in labels.items() %}
{{ label }}          DEC		{{ val }}{% endfor %}
MAXVAL      OCT     77777
MINVAL      OCT     00000