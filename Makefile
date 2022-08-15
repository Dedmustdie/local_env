start:
	docker-compose up -d

down:
	docker-compose down

build:
	make down && cd docker && docker-compose up --build -d

restart: down start

composer:
	cd services/users_api/composer && composer install

status:
	cd docker && docker-compose ps

migrate_all_up:
	migrate -path=ads_api/src/database/migrations/ -database "mysql://root:root@tcp(localhost:3306)/ads_db" up

migrate_all_down:
	migrate -path=ads_api/src/database/migrations/ -database "mysql://root:root@tcp(localhost:3306)/ads_db" down