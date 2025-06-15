FROM postgres
ENV POSTGRES_DB=tareasdb
ENV POSTGRES_USER=user
ENV POSTGRES_PASSWORD=pass
COPY init.sql /docker-entrypoint-initdb.d/
EXPOSE 5432
