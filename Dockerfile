FROM httpd

RUN  'echo hello >> test.txt' 

CMD [ "/bin/bash" ]