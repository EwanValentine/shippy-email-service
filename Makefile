build:
	docker build -t email-service .

run:
	docker run -d --net="host" \
		-p 50054 \
		-e MICRO_SERVER_ADDRESS=:50054 \
		-e MICRO_REGISTRY=mdns \
		-e MICRO_BROKER=nats \
		-e MICRO_BROKER_ADDRESS=127.0.0.1:4222 \
		user-service
