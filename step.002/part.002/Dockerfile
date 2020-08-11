# take base image from
#https://hub.docker.com/_/centos

FROM centos:7.4.1708

ENV nginxversion="1.14.0-1" \
    os="centos" \
    osversion="7" \
    elversion="7_4"

RUN yum install -y wget openssl sed &&\
    yum -y autoremove &&\
    yum clean all &&\
    wget http://nginx.org/packages/$os/$osversion/x86_64/RPMS/nginx-$nginxversion.el$elversion.ngx.x86_64.rpm &&\
    rpm -iv nginx-$nginxversion.el$elversion.ngx.x86_64.rpm

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /data/www/index.html

VOLUME [ "/data/www" ]

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

