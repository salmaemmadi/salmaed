#!/bin/bash

# Fonction pour demander à l'utilisateur de deviner
function guess_files {
    # Obtenir le nombre de fichiers dans le répertoire courant
    local correct_number=$(ls -l | grep -v '^d' | wc -l)
    
    # Demander à l'utilisateur de deviner
    echo "Devinez combien de fichiers se trouvent dans ce répertoire (en excluant les répertoires) :"
    
    # Boucle pour permettre plusieurs tentatives
    while true; do
        read user_guess
        
        # Vérifier la réponse de l'utilisateur
        if [[ $user_guess -lt $correct_number ]]; then
            echo "Trop bas. Essayez encore !"
        elif [[ $user_guess -gt $correct_number ]]; then
            echo "Trop haut. Essayez encore !"
        else
            echo "Félicitations ! Vous avez deviné le nombre correct de fichiers !"
            break
        fi
    done
}

# Appeler la fonction
guess_files
