FROM dclong/python3:centos

RUN pip3 install \
        Flask \
        Flask-Bootstrap \
        pandas 

EXPOSE 80
EXPOSE 5000

ADD init.sh /
ADD script.sh /

ENTRYPOINT ["/init.sh"]
