FROM haproxy-2.5.4
MAINTAINER gyurix
COPY haproxy-loadbalancer.cfg /etc/haproxy/haproxy.cfg
ENTRYPOINT ["haproxy", "-f", "/etc/haproxy/haproxy.cfg", "-p", "/var/run/haproxy.pid"]
