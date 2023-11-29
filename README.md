## Preprequisites

* Domain name

* SSL Certificate (In instructions part you can see how to get certificate. No worries.)

# Instructions

* Necessary configurations should be done for domain name to point corresponding ip. From DNS provider and virtual machine, configura A and NS records.

* Get certificate for your domain names (www and non-www) from following project: https://github.com/ahmettoguz/Dockerized_Certbot_LetsEncyrpt_SSL

* Place your certificates in certificate file with named cert.pem and privkey.pem. You can also place that keys by running placeKeys.sh.

* Change files which should have include domain names. (domain_Conf/ahmetproje.com.tr, Dockerfile).

* Run docker container with following command (change domain name).

```
docker run --rm -d -p 80:80 -p 443:443 -v ./src/certificate:/root/letsencrypt/live/ahmetproje.com.tr --env-file ./src/env/.env --name ssl-c ssl-i
```

* Check both www and non-www addresses

<hr/>

* Container and image can be terminated and deleted with following commands.

```
docker stop ssl-c
```

```
docker rmi ssl-i
```
