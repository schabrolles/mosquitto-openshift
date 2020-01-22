FROM eclipse-mosquitto:latest

ADD fix-permissions.sh /usr/local/bin
RUN chown -R mosquitto:root /mosquitto && \
    fix-permissions.sh /mosquitto/data && \
    fix-permissions.sh /mosquitto/log
    
RUN touch /tmp/seb

USER mosquitto
