build:
	docker build -t cihp .
run:
	docker run -it -d --rm --gpus all --name cihp cihp
attach:
	docker exec -it cihp bash
stop:
	docker container stop cihp