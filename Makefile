build:
	docker build --tag claudia .

start:
	docker run -it --rm --env AWS_PROFILE=claudia -v $$PWD/creds:/root/.aws -v $$PWD:/work -w /work -d --name claudia claudia

stop:
	docker rm -f claudia

exec:
	docker exec -it claudia bash


publish:
	claudia create --region me-south-1 --name lambda-api --api-module index

run:
	curl $$(printf "https://%s.execute-api.%s.amazonaws.com/latest" $$(cat claudia.json | jq '.api.id' | xargs) $$(cat claudia.json | jq '.lambda.region' | xargs))

url:
	printf "URL:\nhttps://%s.execute-api.%s.amazonaws.com/latest\n" $$(cat claudia.json | jq '.api.id' | xargs) $$(cat claudia.json | jq '.lambda.region' | xargs)
