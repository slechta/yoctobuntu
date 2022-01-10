FROM ubuntu:20.04
COPY ["setup.sh", "/usr/bin/"]
RUN /usr/bin/setup.sh
USER builder
