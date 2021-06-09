web:
	docker-compose run \
		--service-ports \
		--rm \
		--name built-web \
		web

udb:
	docker-compose run \
		--rm \
		--name built-db \
		db

psql:
	docker exec \
		-it \
		built-db \
		psql -U built
