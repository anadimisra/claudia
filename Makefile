build:
	docker build --tag claudia .

start:
	docker run -it --rm --env AWS_PROFILE=claudia -v $$PWD/creds:/root/.aws -v $$PWD:/work -w /work -d --name claudia claudia

stop:
	docker rm -f claudia

exec:
	docker exec -it claudia bash
