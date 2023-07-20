FROM httpd

RUN /bin/bash -c 'echo hello >> test.txt' 

CMD [ "/bin/bash" ]