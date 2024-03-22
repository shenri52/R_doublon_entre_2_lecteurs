# Script R : doublon_entre_2_lecteurs

Ce script permet de rechercher les copies de fichiers (doublons) entre 2 lecteurs.

## Descriptif du contenu

* Racine : emplacement du projet R --> "DOUBLON_ENTRE_2_LECTEURS.Rproj"
* Un dossier "result" pour le stockage du résultat
* Un dosssier script qui contient :
  * prog_doublon_2_lecteurs.R --> script principal
  * librairie.R --> script contenant les librairies utiles au programme
  * choix_lecteur.R --> fonction permettant de choisir les lecteurs à analyse
  * lister_fichier.R --> fonction permettant de lister le contenu des lecteurs
  * lister_lecteur --> script qui appel les fonctions fonctions "choix_lecteur" et "lister_fichier"
  * recherche_doublon.R --> script permettant de détecter les fichiers en double
  * suppression_gitkeep.R --> script de suppression des .gitkeep

## Fonctionnement

1. Lancer le script intitulé "prog_doublon_2_lecteurs" qui se trouve dans le dossier "script"
2. Choisir les lecteurs à analyser

## Résultat

Le dossier "result" contiendra :
   * un tableau nommé 'doublon_nom.csv' avec la liste des fichiers avec un nom identique présents 1 ou plusieurs fois sur les 2 lecteurs
   * un tableau nommé 'doublon_taille.csv' avec la liste des fichiers avec une taille identique présents 1 ou plusieurs fois sur les 2 lecteurs

Par défaut, le script est configuré pour ne rechercher que les fichiers avec les extensions SHP, DBF, GPKG et TIF.
Vous pouvez modifier ce paramètre dans le script "lister_fichier" en modifiant le contenu de la variable pattern dans la fonction list.files
