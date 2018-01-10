FROM ubuntu:16.04
RUN apt-get update &&\ 
    apt-get upgrade -y &&\  
    apt-get install -y build-essential libssl-dev curl &&\
    curl -sL https://deb.nodesource.com/setup_9.x | bash - &&\
    apt-get install -y nodejs

RUN mkdir /src
WORKDIR /src
COPY . /src/

RUN echo "complete"
