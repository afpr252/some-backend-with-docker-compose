FROM ubuntu:22.04
RUN apt-get update && apt-get -y install netcat
ENTRYPOINT ["nc", "-v", "-k", "-l"]
