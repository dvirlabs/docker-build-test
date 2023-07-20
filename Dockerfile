FROM httpd

RUN 'apt-get update'

RUN 'echo hello >> test.txt'