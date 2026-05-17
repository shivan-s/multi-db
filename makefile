.PHONY: run
run:
	@echo "Running containers..." && \
	docker-compose down --remove-orphans && \
	docker-compose up --build -d

# FIXME: db does not work
.PHONY: run-db
run-db:
	@echo "Running db and observing" && \
	docker-compose down --remove-orphans && \
	docker-compose up db --build

.PHONY: attach
attach:
	@echo "Attaching to container..." && \
	docker-compose up db -d && \
	docker-compose exec db sh

.PHONY: connect
connect:
	@echo "Connecting via psql" && \
	docker-compose up db -d && \
	docker-compose exec db sh -c "psql -U postgres"

.PHONY: up
up:
	@echo "Migrating up..." && \
	docker-compose run dbmate -e "DATABASE_URL" up

.PHONY: down
down:
	@echo "Migrating down..." && \
	docker-compose run dbmate -e "DATABASE_URL" down

.PHONY: new-migration
new-migration:
	@echo "New migrations" && \
	docker-compose run dbmate -e "DATABASE_URL" new $(NEW)
