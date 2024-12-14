# Makefile pour générer le README.md

# Définir le nom du script
SCRIPT_NAME = guessinggame.sh

# Fichier de sortie
README = README.md

# Commande principale
all: $(README)

# Générer le fichier README.md
$(README): $(SCRIPT_NAME)
	@echo "# Projet : Guessing Game" > $(README)
	@echo "Date et Heure : $(shell date)" >> $(README)
	@echo "Nombre de lignes de code dans $(SCRIPT_NAME) : $(shell wc -l < $(SCRIPT_NAME))" >> $(README)
	@echo "Ce projet consiste à un jeu où l'utilisateur doit deviner le nombre de fichiers dans le répertoire actuel." >> $(README)
	@echo "Le script bash $(SCRIPT_NAME) contient l'implémentation du jeu." >> $(README)

# Supprimer le README.md
clean:
	rm -f $(README)
