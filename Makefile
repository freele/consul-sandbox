build:
	docker build -t consul ./docker-consul/0.5/consul
	docker build -t consul-agent ./docker-consul/0.5/consul-agent
	docker build -t consul-server ./docker-consul/0.5/consul-server

build-haproxy:
	docker build -t haproxy ./haproxy

clean:
	docker-compose stop
	docker-compose rm

.PHONY: build clean