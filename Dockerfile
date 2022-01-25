FROM ubuntu:20.04
COPY ["setup.sh", "/usr/bin/"]
COPY ["ostree", "/"]
COPY ["keyvault_sign", "/usr/libexec/"]
ENV OSTREE_SIGEXT_SIGN_BINARY="/usr/libexec/keyvault_sign"
RUN /usr/bin/setup.sh
USER builder
