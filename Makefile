#Makefile

clean: ## Cleans the environment
	@echo "Cleaning the project..."
	@rm -rf pubspec.lock
	@flutter clean
	@flutter pub get

build: ## Build the files for changes
	@echo "Building the project"
	@dart run build_runner build --delete-conflicting-outputs

commitpush:
	@echo "commit the changes"
	@git commit -m "$m"
	@git push origin main
