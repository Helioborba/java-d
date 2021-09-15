FROM ubuntu:bionic-20210827

WORKDIR /app

RUN apt-get update

RUN yes | apt-get install software-properties-common

RUN add-apt-repository ppa:linuxuprising/java

RUN apt-get update

RUN yes | apt install oracle-java17-installer --install-recommends

COPY ./app ./

RUN javac -d . ./src/app.java

# CMD java Main
CMD java app/src/app