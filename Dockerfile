FROM inclusivedesign/java:openjdk-7

RUN rpm --import http://caucho.com/download/rpm/RPM-GPG-KEY-caucho && \
    yum install -y http://caucho.com/download/rpm-6.5/4.0.42/x86_64/resin-4.0.42-1.x86_64.rpm && \
    yum -y install java-1.7.0-openjdk-devel psmisc

ADD start.sh /usr/local/bin/start.sh

RUN chmod +x /usr/local/bin/start.sh

VOLUME ["/var/resin"]

EXPOSE 8080

CMD ["/usr/local/bin/start.sh"]
