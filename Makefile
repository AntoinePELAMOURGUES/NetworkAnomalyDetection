# Déclarer les phony targets qui ne correspondent pas à des fichiers
.PHONY: help recover-data

# Commande d'aide pour lister toutes les targets disponibles
help:
	@echo "Utilisation: make [cible]"
	@echo "Cibles:"
	@echo "  recover_data     - Récuperation des datasets initiaux"


##### MAKEFILE INITIAL DATA PIPELINE ######

# Installer les dépendances Python - télécharger et prétraiter les données
preprocess-data:
	sudo apt-get update
	sudo apt-get install build-essential python3-dev
	pip install -r requirements.txt

