FROM boxfuse/flyway:latest-alpine

RUN apk update && \
  apk upgrade
RUN  apk add --no-cache \
  bash \
  tar \
  wget \
  openssh \
  nodejs>10.16.0-r0 \
  npm>10.16.0-r0

RUN npm install -g yarn

ENTRYPOINT [ "/bin/bash", "-l", "-c" ]