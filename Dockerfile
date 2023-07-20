FROM httpd

RUN 'echo hello >> test.txt'
RUN 'cat test.txt'