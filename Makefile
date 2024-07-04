DC := docker-compose -f ./docker-compose.yml

all:
	@echo "commands: 'make up' and 'make down'"

down:
	@sudo $(DC) down
	@echo "docker stoped."

up:
	@sudo $(DC) up -d