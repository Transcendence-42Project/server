DC := docker-compose -f ./docker-compose.yml

all:
	@echo "commands: 'make up' and 'make down'"

down:
	@sudo $(DC) down
	@echo "Docker stopped."

up:
	@sudo $(DC) up -d
	@echo "Docker started."

re:
	@sudo $(DC) down
	@sudo $(DC) up -d
	@echo "Docker restarted."

auto-push:
	@git add .
	@git commit -m 'auto push from Makefile'
	@git push
	@echo "Pushed."