FROM httpd

SHELL [ "/bin/bash" ]

RUN 'echo hello >> test.txt' 