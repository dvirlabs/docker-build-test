FROM httpd

USER root

RUN /bin/bash -c 'echo hello2 >> test.txt'    

CMD [ "/bin/bash" ]   