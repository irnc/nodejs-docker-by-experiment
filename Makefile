# To apply new environment variables from docker-compose.yml, rerun `make up`.
# To restart package just save application `.js` files, no need to rerun make.
up:
	docker-compose up experiment

after-changes-to-package-json:
	docker-compose up --build experiment
