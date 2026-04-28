.PHONY: clean delete build shell lab2

IMAGE		:=	sysy-rv64-lab:latest
RUN			:=	docker compose run --rm rv64

clean:
	rm -rf sysy

delete:
	make clean
	docker rmi $(IMAGE)

build:
	docker compose build

shell:
	docker compose run --rm rv64

lab2:
	flex -+ lab2/flex/sysy.l
	g++ lex.yy.cc -o sysy
	rm -rf lex.yy.cc

lab2-test: lab2
