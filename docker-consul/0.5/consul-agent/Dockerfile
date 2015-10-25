# FROM consul
# # ADD ./config /config/
# EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 8600 8600/udp
# ENV DNS_RESOLVES consul
# ENV DNS_PORT 8600
# # VOLUME ["/config"]
# # CMD ["/bin/consul", "agent", "-config-dir=/config"]


FROM consul
ADD ./config /config/
EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 8600 8600/udp
ENV DNS_RESOLVES consul
ENV DNS_PORT 8600
CMD ["/bin/consul", "agent", "-config-dir=/config"]
