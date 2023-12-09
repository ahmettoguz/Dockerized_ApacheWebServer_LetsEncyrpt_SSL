<h1 id="topHeader" align="center">Dockerized Apache Web Server <br/> LetsEncyrpt SSL</h1> 

<br>

<div align="center">
    <img width=250 src="src/img/banner.jpg">
</div>

<br/>

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Instructions](#instructions)
- [Technologies](#technologies)
- [Features](#features)
- [Contributors](#contributors)

<br/>

## Introduction

This project provides a development and production environment for your PHP application served with Apache, utilizing Let's Encrypt certificates without any installation.

<br/>

## Prerequisites

* Domain name

* SSL Certificate (In instructions part you can see how to get certificate. No worries.)

<br/>

## Instructions


* Necessary configurations should be done for domain name to point corresponding ip. From DNS provider and virtual machine, configura A and NS records.

* Get certificate for your domain names (www and non-www) from following project: https://github.com/ahmettoguz/Dockerized_Certbot_LetsEncyrpt_SSL

* Place your certificates in certificate file with named cert.pem and privkey.pem. You can also place that keys by running placeKeys.sh.

* Change files which should have include domain names. (domain_Conf/ahmetproje.com.tr, Dockerfile).

* Run docker container with following command (change domain name).

```
docker run --rm -d -p 80:80 -p 443:443 -v ./src/certificate:/root/letsencrypt/live/ahmetproje.com.tr --env-file ./src/env/.env --name ssl-c ssl-i
```

* Check both www and non-www addresses

---

* Container and image can be terminated and deleted with following commands.

```
docker stop ssl-c
```

```
docker rmi ssl-i
```

<br/>

## Technologies

[![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)

[![Openssl](https://img.shields.io/badge/OpenSSL-%23FFFFFF.svg?style=for-the-badge&logo=opengl)](https://www.openssl.org/)

[![Apache](https://img.shields.io/badge/apache-%23D42029.svg?style=for-the-badge&logo=apache&logoColor=white)](https://httpd.apache.org/)

[![PHP](https://img.shields.io/badge/php-%23777BB4.svg?style=for-the-badge&logo=php&logoColor=white)](https://www.php.net/)

<br/>

## Features

* Usable with Docker container without the need for Apache and PHP installation.
* Ready to use php application with letsencyrpt ssl.

<br/>

## Contributors

<a href="https://github.com/ahmettoguz" target="_blank"><img width=60 height=60 src="https://avatars.githubusercontent.com/u/101711642?v=4"></a>

[🔝](#topHeader)

