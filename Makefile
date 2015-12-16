TMPDIR=/tmp
TMPFILE=$(TMPDIR)/docker-host-ip

all: build run

build:
	docker build -t mynginxtest .

clean:
	docker rmi mynginxtest

run:
	docker run --rm -p 80:80 mynginxtest

ping:
	@docker-machine ip default > $(TMPFILE)
	@curl http://`cat $(TMPFILE)`
