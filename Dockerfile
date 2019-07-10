FROM node:lts-alpine

RUN apk update && \
  apk upgrade
RUN  apk add --no-cache \
  bash tar wget

RUN wget -qO- https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/5.2.4/flyway-commandline-5.2.4-linux-x64.tar.gz | tar xvz && ln -s `pwd`/flyway-5.2.4/flyway /usr/local/bin

ENTRYPOINT [ "/bin/bash", "-l", "-c" ]