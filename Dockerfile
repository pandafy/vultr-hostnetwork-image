FROM python:3.10-slim-bullseye

RUN apt update && apt install -y dnsutils

ENTRYPOINT [ "bash", "-c", "while true; do nslookup www.github.com; sleep 2; done;" ]
