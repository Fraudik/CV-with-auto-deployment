FROM ubuntu:24.04

COPY . /

RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
