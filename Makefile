.PHONY: tests
tests:
	docker-compose run composer run test

.PHONY: debug
debug:
	docker-compose run composer run --entrypoint=bash test

.PHONY: update-dependencies
update-dependencies:
	docker-compose run composer update

.PHONY: checkstyle
checkstyle:
	docker-compose run composer run checkstyle

.PHONY: fix-checkstyle
fix-checkstyle:
	docker-compose run composer run php-cs-fixer
	docker-compose run composer run rector
