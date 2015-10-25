# FROM consul
# ADD https://dl.bintray.com/mitchellh/consul/0.5.2_web_ui.zip /tmp/webui.zip
# RUN cd /tmp && unzip webui.zip && mv dist /ui && rm webui.zip
# EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 8600 8600/udp
# VOLUME ["/config"]
# CMD ["/bin/consul", "agent", "-server", "-data-dir=/data", "-ui-dir=/ui", "-bootstrap-expect=1"]

# FROM nginx


FROM consul-agent
ADD ./config /config/
ADD https://dl.bintray.com/mitchellh/consul/0.5.2_web_ui.zip /tmp/webui.zip
RUN cd /tmp && unzip webui.zip && mv dist /ui && rm webui.zip
CMD ["/bin/consul", "agent", "-server", "-config-dir=/config"]
