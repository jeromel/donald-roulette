TF=terraform

# Répertoires
STACK_DIR=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
PROJECT_ROOT=$(STACK_DIR)/../../..
APP_BACKEND=$(PROJECT_ROOT)/app/backend

# Fichier ZIP à créer
ZIP_FILE=lambda.zip
ZIP_PATH=$(APP_BACKEND)/$(ZIP_FILE)

.PHONY: init plan apply zip clean

init:
	$(TF) -chdir=$(STACK_DIR) init

plan:
	$(TF) -chdir=$(STACK_DIR) plan

apply:
	$(TF) -chdir=$(STACK_DIR) apply

zip:
	cd $(APP_BACKEND) && zip -r $(ZIP_FILE) index.js

clean:
	rm -f $(ZIP_PATH)
