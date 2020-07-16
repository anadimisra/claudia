build:
	docker build --tag claudia .

start:
	docker run -it --rm -v $$PWD:/work -w /work -d --name claudia claudia

exec:
	docker exec -it claudia bash
