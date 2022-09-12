# Start the backend

.PHONY: all

init-servers:
	npm install --prefix ./eshop-node
	npm install --prefix ./eshop-react

start-backend-dev:
	@echo "Starting backend"
	npm  --prefix ./eshop-node run dev
	
start-backend:
	@echo "Starting backend"
	npm --prefix ./eshop-node start

start-frontend:
	@echo "Starting frontend"
	npm --prefix ./eshop-react start
