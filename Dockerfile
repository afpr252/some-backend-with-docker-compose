FROM ubuntu:22.04

ARG A
RUN echo "A is $A"
RUN exit 1
RUN apt-get update && apt-get -y install netcat

ENTRYPOINT ["nc", "-v", "-k", "-l"]
