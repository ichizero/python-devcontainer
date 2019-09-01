APP_NAME=python-app

.PHONY: attach
attach:
	docker-compose -f .dev-compose.yml exec dev /bin/zsh

.PHONY: build
build:
	DOCKER_BUILDKIT=1 docker build -t ichizero/${APP_NAME}:latest --target app .
