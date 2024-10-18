build:
	docker build -t leandromliveira/fullcycle .

run:
	docker run --rm -v $(pwd)/hello:/app leandromliveira/fullcycle

login:
	docker login

push:
	docker push leandromliveira/fullcycle