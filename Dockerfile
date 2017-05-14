FROM dclong/tdodbc-py

RUN pip3 install \
        Flask \
        Flask-Bootstrap 

EXPOSE 80
EXPOSE 5000

ADD init.sh /
ADD script.sh /

ENTRYPOINT ["/init.sh"]
