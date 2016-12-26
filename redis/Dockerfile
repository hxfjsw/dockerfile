FROM centos:latest

MAINTAINER huangxiufeng


#RUN yum update
#RUN yum -y install git
RUN yum -y install wget gcc-c++


RUN wget http://mirrors.163.com/.help/CentOS6-Base-163.repo

RUN wget http://nginx.org/download/nginx-1.11.7.tar.gz
RUN tar -zxvf nginx-1.11.7.tar.gz
WORKDIR /nginx-1.11.7
RUN pwd
RUN ls -l
RUN ./configure --user=www --group=www --prefix=/usr/local/nginx --with-http_stub_status_module --with-http_ssl_module --with-http_v2_module --with-http_gzip_static_module --with-ipv6 --with-http_sub_module --with-stream --with-stream_ssl_module
RUN make && make install

WORKDIR /work

CMD ["nginx"]


EXPOSE 27000
EXPOSE 22000
EXPOSE 23000
EXPOSE 24000
