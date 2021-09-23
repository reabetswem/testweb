FROM ubuntu:latest

MAINTAINER Reabetswe Mahlare "reamahlare24@gmail.com"

RUN apt-get update -y && \
    apt-get install python3-pip -y
    
WORKDIR /app

COPY . /app

ENTRYPOINT ["python"]

CMD ["app.py"]
