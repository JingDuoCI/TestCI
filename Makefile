.PHONY: all

all: build push_image

build: 
	mkdir -p make
	GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o make/app github.com/Luckyboys/test-ci

push_image:
	docker build -t reg-poc.cloudappl.com/lucky-web/web-service:$(BUILD_TAG) -f Dockerfile .
	docker push reg-poc.cloudappl.com/lucky-web/web-service:$(BUILD_TAG)
