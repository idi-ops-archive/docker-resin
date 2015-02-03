## Resin Dockerfile


This repository is used to build [Caucho Resin](http://caucho.com/) Docker image.


### Port(s) Exposed

* `8080 TCP`


### Base Docker Image

* [inclusivedesign/java:openjdk-7](https://github.com/idi-ops/docker-java/)


### Volumes

* /var/resin

### Download

    docker pull inclusivedesign/resin


#### Run `Resin`


```
docker run \
-d \
-p 8080:8080 \
--name="resin" \
-v $PWD/data/resin:/var/resin \
inclusivedesign/resin
```

### Build your own image


    docker build --rm=true -t <your name>/resin .
