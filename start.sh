#!/bin/bash


cat >/etc/supervisord.d/resin.ini<<EOF
[program:resin]
command=/usr/bin/java -d64 -jar /usr/local/share/resin-4.0.42/lib/resin.jar -root-directory /var/resin -conf /etc/resin/resin.xml start-with-foreground
user=resin
autorestart=true
redirect_stderr=true
stdout_logfile=/dev/stdout
stdout_logfile_maxbytes=0
EOF

supervisord -c /etc/supervisord.conf
