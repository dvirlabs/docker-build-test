FROM httpd

RUN /bin/bash -c 'echo hello >> test.txt' 
RUN /bin/bash -c 'echo hello2 >> test2.txt' 

CMD [ "/bin/bash" ]