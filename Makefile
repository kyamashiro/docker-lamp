docker/start: docker-compose.yml
	docker-compose up -d

docker/stop:
	docker-compose stop

docker/remove:
	docker-compose stop
	docker-compose rm

php/bash:
	docker exec -it php-apache bash

mysql/bash:
	docker exec -it mysql bash
