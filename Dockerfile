FROM httpd

USER root

RUN 'apt update'
CMD [ "/bin/bash" ]   