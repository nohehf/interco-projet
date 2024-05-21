FROM ubuntu/bind9:latest

ENV BIND9_USER=root
ENV TZ=Europe/Paris

COPY ./config /etc/bind

EXPOSE 53

CMD ["docker-entrypoint.sh"]
