FROM telegraf

ADD telegraf.conf /etc/telegraf/telegraf.conf

COPY dockerize dockerize

CMD ./dockerize -wait tcp://bookstore-influxdb:8086 -timeout 15m telegraf
