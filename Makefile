DC := docker-compose -f ./docker-compose.yml

all:
	@echo "commands: 'make up', 'make down' and 'make rebuild'"

down:
	@sudo $(DC) down
	@echo "Docker stopped."

up:
	@sudo $(DC) up -d
	@echo "Docker started."

rebuild:
	@sudo $(DC) down
	@sudo $(DC) build --no-cache 
	@sudo $(DC) up -d
	@echo "Docker rebuildedmake."

auto-push:
	@git add .
	@git commit -m 'auto push from Makefile'
	@git push
	@echo "Pushed."