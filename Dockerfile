FROM progrium/busybox

ADD https://github.com/hashicorp/consul-template/releases/download/v0.3.0/consul-template_0.3.0_linux_amd64.tar.gz /tmp/consul-template.tar.gz
RUN cd /tmp && \
    gzip -d /tmp/consul-template.tar.gz && \
    tar xf /tmp/consul-template.tar && \
    mv /tmp/consul-template_0.3.0_linux_amd64/consul-template /bin && \
    rmdir /tmp/consul-template_0.3.0_linux_amd64 && \
    rm /tmp/consul-template.tar

ENTRYPOINT ["/bin/consul-template"]
CMD []
