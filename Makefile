DC := docker-compose -f ./docker-compose.yml

all:
	@echo "commands: 'make up' and 'make down'"

down:
	@sudo $(DC) down
	@echo "Docker stopped."

up:
	@sudo $(DC) up -d
	@echo "Docker started."

auto-push:
	@git add .
	@git commit -m 'auto push from Makefile'
	@git push