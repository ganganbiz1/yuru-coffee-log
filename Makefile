.PHONY: help run build clean test analyze fmt deps upgrade ios android

APP_DIR := app

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

run: ## Run the app in debug mode
	cd $(APP_DIR) && flutter run

run-ios: ## Run on iOS simulator
	cd $(APP_DIR) && flutter run -d ios

run-android: ## Run on Android emulator
	cd $(APP_DIR) && flutter run -d android

build-ios: ## Build iOS release
	cd $(APP_DIR) && flutter build ios

build-android: ## Build Android APK
	cd $(APP_DIR) && flutter build apk

build-aab: ## Build Android App Bundle
	cd $(APP_DIR) && flutter build appbundle

clean: ## Clean build files
	cd $(APP_DIR) && flutter clean

test: ## Run tests
	cd $(APP_DIR) && flutter test

analyze: ## Analyze code
	cd $(APP_DIR) && flutter analyze

fmt: ## Format code
	cd $(APP_DIR) && dart format lib test

deps: ## Get dependencies
	cd $(APP_DIR) && flutter pub get

upgrade: ## Upgrade dependencies
	cd $(APP_DIR) && flutter pub upgrade

devices: ## List available devices
	flutter devices

doctor: ## Run Flutter doctor
	flutter doctor
