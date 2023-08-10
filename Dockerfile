FROM httpd

USER root

RUN /bin/bash -c 'echo hello1 >> test.txt'    

CMD [ "/bin/bash" ]   