FROM ubuntu:latest

# Set the working directory
WORKDIR /app

RUN apt-get update -y && apt-get install -y \
    wget \
    sudo \
    python3 \
    python3-pip

RUN pip install certbot