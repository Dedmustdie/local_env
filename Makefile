start:
	docker-compose up -d

down:
	docker-compose down

initial:
	git clone https://github.com/Dedmustdie/ads_front.git services/ads_front
	git clone https://github.com/Dedmustdie/ads_api.git services/ads_api

build:
	make down && cd docker && docker-compose up --build -d

restart: down start

status:
	cd docker && docker-compose ps

migrate_all_up:
	migrate -path=docker/storage/migrations/ -database "mysql://root:root@tcp(localhost:3306)/ads_db" up

migrate_all_down:
	migrate -path=docker/storage/migrations/ -database "mysql://root:root@tcp(localhost:3306)/ads_db" down