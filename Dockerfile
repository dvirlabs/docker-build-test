FROM httpd

RUN /bin/bash -c 'echo hello >> test.txt' 
RUN /bin/bash -c 'echo hello >> test2.txt' 

CMD [ "/bin/bash" ] 