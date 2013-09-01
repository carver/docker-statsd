FROM bosky101/statsd

ADD config.js /data/config.js

#statsd intake
EXPOSE :8125/udp

#statsd management
EXPOSE :8126

CMD node /statsd-0.6.0/stats.js /data/config.js