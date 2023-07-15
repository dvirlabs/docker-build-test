FROM httpd

RUN 'apt update && apt install vim -y'

RUN 'echo test'