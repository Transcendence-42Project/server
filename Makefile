DC := docker-compose -f ./docker-compose.yml

all:
	@echo "commands: 'make up', 'make down', 'make re' and 'make rebuild'"

update-submodule:
    @git submodule update --init --recursive
	@echo "Submodules up to date."

# -v
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

rebuild: update-submodule
	@sudo $(DC) down
	@sudo $(DC) build
	@sudo $(DC) up -d
	@echo "Docker rebuilded."

auto-push:
	@git add .
	@git commit -m 'auto push from Makefile'
	@git push
	@echo "Pushed."