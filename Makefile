deploy:
	@sudo docker compose down
	@sudo docker compose build
	@sudo docker compose up -d

run-backup:
	@if [ -d /home/ubuntu/databaseJessika/MySQL/data ]; then \
		echo "Eliminando carpeta existente: /home/ubuntu/databaseJessika/MySQL/data"; \
		sudo rm -r /home/ubuntu/databaseJessika/MySQL/data; \
	else \
		echo "La carpeta no existe, no se elimina: /home/ubuntu/databaseJessika/MySQL/data"; \
	fi
	@sudo docker compose down
	@sudo docker compose build
	@sudo docker compose up -d