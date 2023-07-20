FROM httpd

SHELL [ "/bin/bash" ]

RUN 'apt-get update && apt-get install vim -y'
RUN 'echo hello >> test.txt' 