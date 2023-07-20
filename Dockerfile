FROM ubuntu

RUN 'apt-get update && apt install vim -y'

RUN 'echo hello >> test.txt'