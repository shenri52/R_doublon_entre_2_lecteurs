#####################################################################
# Ce script a pour objectif de lister les jeux de données en        #
# doublon entre un lecteur de la Géo Base et un autre lecteur       #
#####################################################################
# Fonctionnement :                                                  #
#   Choisir des lecteurs à analyser                                 #
#                                                                   #
# Le script exporte dans le dossier result :                        #
#   - un tableau avec la liste des doublons par nom                 #
#   - un tableau avec la liste des doublons par taille              #
#####################################################################
# Attention :                                                       #
# Par défaut les fichiers listés sont : SHP, DBF, GPKG et TIF       #
# Modifier le pattern dans le script lister_fichier en fonction de  #
# vos besoins.                                                      #
#####################################################################

#################### Chargement des librairies

source("script/librairie.R")

#################### Suppression des fichiers gitkeep

source("script/suppression_gitkeep.R")

#################### Lister les lecteurs

source("script/lister_lecteur.R")

#################### Rechercher les doublons

source("script/recherche_doublon.R")
