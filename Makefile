# To apply new environment variables from docker-compose.yml, rerun `make up`.
# To restart package just save application `.js` files, no need to rerun make.
up:
	docker-compose up

after-changes-to-package-json:
	docker-compose up --build

# npm Makefile ----------------------------------------------------------------

.PHONY: start test

# Makefile for developers intended to replace on-host npm script with
# dockerized service, e.g. run `make start` instead of `npm start`.

start:
	docker-compose up

test:
	docker-compose run --rm experiment npm t
