.PHONY: tests
tests:
	docker-compose run composer run test

.PHONY: debug
debug:
	docker-compose run --entrypoint=bash composer

.PHONY: update-dependencies
update-dependencies:
	docker-compose run composer update

.PHONY: checkstyle
checkstyle:
	docker-compose run --entrypoint=bash composer -c "apk add --no-cache icu-dev && docker-php-ext-install intl && composer run checkstyle"

.PHONY: fix-checkstyle
fix-checkstyle:
	docker-compose run composer run php-cs-fixer
	docker-compose run --entrypoint=bash composer -c "apk add --no-cache icu-dev && docker-php-ext-install intl && ./vendor/bin/rector"
