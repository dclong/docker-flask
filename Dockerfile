FROM dclong/tdodbc

RUN yum update -y \
    && yum install -y \
        sudo \
        gcc gcc-c++ \
        python34 python34-devel python34-pip \
        openssl-devel \
    && yum clean all 

RUN pip3 install \
        Flask \
        Flask-Bootstrap 

EXPOSE 80
EXPOSE 5000

ADD init.sh /
ADD script.sh /

ENTRYPOINT ["/init.sh"]
