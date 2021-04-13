.PHONY: run build

build:
	docker build -t netextender .

run:
	docker run --rm -ti netextender

