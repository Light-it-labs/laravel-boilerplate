.PHONY: up down log tinker artisan

ART=""
artisan:
	@php artisan $(ART)

storage-link:
	@php artisan storage:link

key-generate:
	@php artisan key:generate

install:
	@docker-compose exec --user=1000 app composer install
	@npm install

migrate:
	@php artisan migrate

fresh-seed:
	@php artisan migrate:fresh --seed

dump-server:
	@php artisan dump-server

test:
	@vendor/bin/phpunit

BRANCH="develop"
pull-and-push:
	@git pull origin $(BRANCH) && git push origin $(BRANCH)
