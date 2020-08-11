# Step.01 Run first Docker container hello-world / lifecycle

1.1 
```bash
docker run -d hello-world
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
0e03bdcc26d7: Pull complete
Digest: sha256:49a1c8800c94df04e9658809b006fd8a686cab8028d33cfba2cc049724254202
Status: Downloaded newer image for hello-world:latest
a643082835d63fca046d0fa6df669798fff9ebf34bee21b8bd0297a44756ff21
```

1.2 View running container
```bash
docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
```

1.3 View all containers
```bash
docker ps -a
CONTAINER ID        IMAGE                                             COMMAND                  CREATED             STATUS                      PORTS                                                                    NAMES
25d70f267b1f        hello-world                                       "/hello"                 43 seconds ago      Exited (0) 42 seconds ago                                                                            competent_lamport
```

1.4 Run again
```bash
docker run -d hello-world
```

you will get a couple of containers
```bash
docker ps -a
CONTAINER ID        IMAGE                                             COMMAND                  CREATED             STATUS                     PORTS                                                                    NAMES
9a4626a5345e        hello-world                                       "/hello"                 7 minutes ago       Exited (0) 7 minutes ago                                                                            hardcore_ritchie
7828d090e8ae        hello-world                                       "/hello"                 7 minutes ago       Exited (0) 7 minutes ago                                                                            flamboyant_newton
```


1.5 Remove container(s)

```bash
docker rm -f 9a4626a5345e 7828d090e8ae
```


1.6 Remove images

```bash
>docker images
REPOSITORY                                  TAG                 IMAGE ID            CREATED             SIZE
hello-world                                 latest              bf756fb1ae65        7 months ago        13.3kB
```

```bash
docker rmi -f bf756fb1ae65
```
