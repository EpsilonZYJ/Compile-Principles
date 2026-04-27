.PHONY: build shell

IMAGE	:=	sysy-rv64-lab:latest
RUN		:=	docker compose run --rm rv64

build:
	docker compose build

shell:
	docker compose run --rm rv64