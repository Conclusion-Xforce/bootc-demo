FROM quay.io/centos-bootc/centos-bootc:stream9

RUN yum -y update \
    && yum clean all

RUN mkdir -p /etc/containers/registries.conf.d/
ADD local-registry.conf /etc/containers/registries.conf.d/local-registry.conf

RUN bootc container lint
