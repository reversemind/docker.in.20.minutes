# Step.02 Build a custom image from Dockerfile

2.1
Find source image of OS (CentOS for example)
https://github.com/chentex/docker-nginx-centos


2.2
Go to part.001/
```bash
>./build.images.sh
```

```bash
Step 4/8 : COPY nginx.conf /etc/nginx/nginx.conf
COPY failed: stat /var/lib/docker/tmp/docker-builder206027975/nginx.conf: no such file or directory
```

2.3 Find & Remove wrong image
```bash
>docker images
REPOSITORY                                  TAG                 IMAGE ID            CREATED             SIZE
<none>                                      <none>              1114dd7ef1de        12 seconds ago      226MB
```

```bash
docker rmi -f 1114dd7ef1de
```

2.4 Build correct image
Go to part.002/

```bash
>./build.images.sh
```

You will find new images like:
```bash
docker images
REPOSITORY                                  TAG                 IMAGE ID            CREATED             SIZE
h500                                        v001                1a0495e26f0a        10 seconds ago      226MB
```

2.5 Run container from image

Go to part.003/

```bash
>./run.container.sh
```


2.6 Check that container is running

Also verify in host machine
start web-browser
http://localhost:8080/

You should see:
Hi


also verify that 


2.6

