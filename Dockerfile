FROM ubuntu:20.04
COPY setup.sh .
RUN ./setup.sh
USER builder
