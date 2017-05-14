FROM dclong/python3

RUN pip3 install \
        Flask \
        Flask-Bootstrap 

EXPOSE 80
EXPOSE 5000

ADD script.sh /

ENTRYPOINT ["/init.sh"]
