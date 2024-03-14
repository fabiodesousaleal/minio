.PHONY: up stop start restart volumes
CONTAINER_NAME = minio
MINIO_ROOT_USER = root
MINIO_ROOT_PASSWORD = teste@teste

up:
	docker run --name $(CONTAINER_NAME) -p 9000:9000 -p 9001:9001 -e MINIO_ROOT_USER=$(MINIO_ROOT_USER) -e MINIO_ROOT_PASSWORD=$(MINIO_ROOT_PASSWORD) -v ./data:/data minio/minio server /data --console-address ":9001"

stop:
	docker stop $(CONTAINER_NAME)

start:
	docker start $(CONTAINER_NAME)

restart:
	docker restart $(CONTAINER_NAME)

volumes:
	mkdir data 