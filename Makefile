DC := docker-compose -f ./docker-compose.yml

all:
	@echo "commands: 'make up' | 'make down' | 'make re' | 're-dontpull' | 'make rebuild' | 'make build'"

update-submodule:
	@git submodule update --init --recursive --remote
	@echo "Submodules up to date."

down:
	@sudo $(DC) down
	@echo "Docker stopped."

up: update-submodule
	@sudo $(DC) up -d
	@echo "Docker started."

re: update-submodule
	@sudo $(DC) down
	@sudo $(DC) up -d
	@echo "Docker stopped and restarted."

re-dontpull:
	@sudo $(DC) down
	@sudo $(DC) up -d
	@echo "Docker stopped and restarted."

build: update-submodule
	@sudo $(DC) build
	@sudo $(DC) up -d
	@echo "Docker built."

rebuild: update-submodule
	@sudo $(DC) down
	@sudo $(DC) build
	@sudo $(DC) up -d
	@echo "Docker rebuilt."

auto-push:
	@git add .
	@git commit -m 'auto push from Makefile'
	@git push
	@echo "Pushed."
