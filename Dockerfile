FROM mariadb:10.2

LABEL maintainer "Pedro Pereira <pedrogoncalvesp.95@gmail.com>"

COPY my.cnf /etc/mysql/conf.d/

RUN chmod -R 644 /etc/mysql/conf.d/

CMD ["mysqld", "--max_allowed_packet=192M", "--max-connections=1500", "--innodb-strict-mode=0", "--skip-host-cache", "--skip-name-resolve", "--log-warnings=0"]
