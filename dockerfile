FROM centos:centos7

RUN yum -y install httpd
RUN yum -y install htop
RUN yum -y install vim
RUN yum -y install net-tool
