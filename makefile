IMAGE_NAME=lpelegrin/lpelegrinwebsite
CONTAINER_NAME=hugo


build:
	docker build -t $(IMAGE_NAME):test .

publishtest: build
	docker push $(IMAGE_NAME):test

run: build
	docker rm -f $(CONTAINER_NAME) || true
	docker run --name $(CONTAINER_NAME) -d --rm  -p 5050:1313 $(IMAGE_NAME):test

live:
	hugo server --source website/  --baseURL "http://localhost:1313" --bind 0.0.0.0 -p 1313 --watch --debug --disableFastRender