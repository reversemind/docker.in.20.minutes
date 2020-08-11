#!/bin/bash

# you should get image from previous step.002
# with tags h500:v001

# docker images
# REPOSITORY                                  TAG                 IMAGE ID            CREATED             SIZE
# h500                                        v001                1a0495e26f0a        10 seconds ago      226MB

docker run -d -p 8080:80 h500:v001