FROM ubuntu:22.04
ARG A
RUN echo "A is $A"
RUN apt-get update && apt-get -y install netcat
RUN exit 1
ENTRYPOINT ["nc", "-v", "-k", "-l"]
