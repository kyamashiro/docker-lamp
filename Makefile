run:
	go run cmd/main.go

docker/start: docker-compose.yml
	docker-compose up -d mysql

docker/stop:
	docker-compose stop

docker/remove:
	docker-compose stop
	docker-compose rm

docker/bash:
	docker exec -it $(shell docker-compose ps -q) bash
