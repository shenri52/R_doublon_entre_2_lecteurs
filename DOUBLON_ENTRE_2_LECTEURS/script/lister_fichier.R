#################### Lister les fichiers

list_donnee <- function (lecteur)
               {
                # Récupérer la liste des fichiers
                list_fichier <- list.files(path = lecteur,
                                           # Choix du type d'extension à rechercher
                                           pattern = "\\.shp$|\\.dbf$|.gpkg$|.tif$",
                                           # Ne pas tenir compte de la case (majuscule - minuscule)
                                           ignore.case = TRUE,
                                           full.names = TRUE,
                                           recursive = TRUE) %>%
                                           # Récupérer la taille et la date de modification
                                           file.info() %>%
                                           select(size, mtime)
                
                # Modification du format de la date
                list_fichier$mtime <- as_date(list_fichier$mtime)
                  
                # Création d'un dataframe avec le nom du chemin, le nom du fichier et le type d'extension
                list_fichier <- list_fichier %>%
                                mutate(Dossier = dirname(row.names(list_fichier))) %>%
                                mutate(Fichier = basename(row.names(list_fichier))) %>%
                                mutate(Disque = substr(Dossier, 1, 3)) %>%
                                select(Disque, Dossier, Fichier, mtime, size)
                  
                # Suppression des noms de ligne
                row.names(list_fichier) <- NULL
                  
                # Modification du nom des colonnes
                colnames(list_fichier) <- c("Disque", "Dossier", "Fichier", "Date_Modif", "Taille")
                
                return(list_fichier)
               }
            
