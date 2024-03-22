#################### Lister les lecteurs

# Appel de la fonction du choix du lecteur
source("script/choix_lecteur.R")

# Appel de la fonction listant les fichiers
source("script/lister_fichier.R")

# Choix des lecteurs
lecteur1 <- choix("premier")
lecteur2 <- choix("second")

# Analyse des lecteurs
liste1 <- list_donnee(lecteur1)
liste2 <- list_donnee(lecteur2)
