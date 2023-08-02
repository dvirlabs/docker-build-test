FROM httpd

USER root

RUN /bin/bash -c 'echo hello >> test.txt' 
RUN /bin/bash -c 'echo hello >> test.txt' 

CMD [ "/bin/bash" ]   