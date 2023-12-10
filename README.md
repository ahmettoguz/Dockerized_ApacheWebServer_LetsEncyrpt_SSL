<h1 id="mainHeader" align="center">Dockerized Apache Web Server <br/> LetsEncyrpt SSL</h1> 

<br>

<div align="center">
    <img width=230 src="src/img/banner.jpg">
</div>

<br/>

## Table of Contents

- [Introduction](#introductionHeader)
- [Technologies](#technologiesHeader)
- [Features](#featuresHeader)
- [Prerequisites](#prerequisitesHeader)
- [Instructions](#instructionsHeader)
- [Contributors](#contributorsHeader)

<br/>

<h2 id="introductionHeader">📌 Introduction</h2> 

This project provides a development and production environment for your PHP application served with Apache, utilizing Let's Encrypt certificates without any installation.

<br/>

<h2 id="technologiesHeader">☄️Technologies</h2> 

[![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)

[![Openssl](https://img.shields.io/badge/OpenSSL-%23FFFFFF.svg?style=for-the-badge&logo=opengl)](https://www.openssl.org/)

[![Apache](https://img.shields.io/badge/apache-%23D42029.svg?style=for-the-badge&logo=apache&logoColor=white)](https://httpd.apache.org/)

[![PHP](https://img.shields.io/badge/php-%23777BB4.svg?style=for-the-badge&logo=php&logoColor=white)](https://www.php.net/)

<br/>

<h2 id="featuresHeader">✨ Features</h2> 

* Usable with Docker container without the need for Apache and PHP installation.
* Ready to use PHP application with LetsEncyrpt SSL.

<br/>

<h2 id="prerequisitesHeader">🔒 Prerequisites</h2> 

* Domain name

* SSL Certificate (In instructions part you can see how to get certificate. No worries.)

<br/>

<h2 id="instructionsHeader">📋 Instructions</h2> 

* Necessary configurations should be done for domain name to point corresponding ip. From DNS provider and virtual machine, configura A and NS records.

* Get a certificate for your domain names (www and non-www) from the following project: [Dockerized_Certbot_LetsEncyrpt_SSL](https://github.com/ahmettoguz/Dockerized_Certbot_LetsEncyrpt_SSL)

* Place your certificates in certificate file with named cert.pem and privkey.pem. You can also place that keys by running placeKeys.sh.

* Change files which should have include domain names. (domain_Conf/ahmetproje.com.tr, Dockerfile).

* Run docker container with following command (change domain name).

```bash
docker run --rm -d -p 80:80 -p 443:443 -v ./src/certificate:/root/letsencrypt/live/ahmetproje.com.tr --env-file ./src/env/.env --name ssl-c ssl-i
```

* Check both www and non-www addresses

---

* Container and image can be terminated and deleted with following commands.

```bash
docker stop ssl-c
```

```bash
docker rmi ssl-i
```

<br/>

<h2 id="contributorsHeader">👥 Contributors</h2> 

<a href="https://github.com/ahmettoguz" target="_blank"><img width=60 height=60 src="https://avatars.githubusercontent.com/u/101711642?v=4"></a>

[🔝](#mainHeader)

