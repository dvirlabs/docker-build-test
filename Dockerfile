FROM httpd

USER root

RUN /bin/bash -c 'echo hello3 >> test.txt'    

CMD [ "/bin/bash" ]   