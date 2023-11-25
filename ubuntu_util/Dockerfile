FROM ubuntu:latest

# Set the working directory
WORKDIR /app

COPY ./command/ .

RUN apt-get update -y && apt-get install -y \
    wget \
    sudo \
    python3 \
    python3-pip

RUN pip install certbot