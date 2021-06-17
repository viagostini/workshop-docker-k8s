build-dev:
	echo "Buildando dev"
	docker build -f Dockerfile --target dev -t maroto_app_dev:0.1 .

run-dev: build-dev
	docker run --rm -p 3000:3000 --name maroto_app -v $(CURDIR)/src:/opt/app_maroto/src  maroto_app_dev:0.1

run-compose:
	docker-compose up
