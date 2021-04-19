.PHONY: tests

tests:
	php vendor/bin/paratest --no-coverage

tests-integration:
	php vendor/bin/paratest --no-coverage --group exec

tests-static-reflection:
	php vendor/bin/paratest --no-coverage --bootstrap tests/bootstrap-static-reflection.php

tests-coverage:
	php vendor/bin/paratest

tests-integration-coverage:
	php vendor/bin/paratest --group exec

tests-static-reflection-coverage:
	php vendor/bin/paratest --bootstrap tests/bootstrap-static-reflection.php

cs:
	composer install --working-dir build-cs && php build-cs/vendor/bin/phpcs

cs-fix:
	php build-cs/vendor/bin/phpcbf
