#!/bin/sh

echo "Configure database user"
read -p "Postgres user name: " name
read -s -p "Postgres user password: " password

export POSTGRES_USER=$name
export POSTGRES_PASSWORD=$password

podman rm --force postgres || true

podman rm --force pg-data || true
echo "Creating database container (and seed 'sample' database)"
podman volume create pg-data
podman run -d \
  --name postgres \
  -e POSTGRES_USER=$POSTGRES_USER \
  -e POSTGRES_PASSWORD=$POSTGRES_PASSWORD \
  -e POSTGRES_DB=dashboard \
  -e PGDATA=/var/lib/postgresql/data/pgdata \
  -v "pg-data:/var/lib/postgresql/data" \
  -p "5432:5432" \
  --restart always \
  postgres:16.1-alpine

sleep 20 # Ensure enough time for postgres database to initialize and create role

podman exec -i postgres psql -U $POSTGRES_USER -d dashboard <<-EOF
CREATE TABLE ticket (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    status integer NOT NULL,
    url character varying(100)
);
delete from ticket;
insert into ticket (id, name, status, url) values (1,	'Fix bug', 1,	'http://www.example.com/1');
insert into ticket (id, name, status, url) values (2,	'Fix bug', 2,	'http://www.example.com/2');
insert into ticket (id, name, status, url) values (3,	'Fix bug', 3,	'http://www.example.com/3');
EOF
