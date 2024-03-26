#################### Recherche des doublons

f_doublon <- function(liste_source, liste_destination, critere)
             {
              doublon <- merge(liste_source, liste_destination, by = critere, all=FALSE) %>%
                         rename.variable("Disque.x", "Source_Lecteur") %>%
                         rename.variable("Dossier.x", "Source_Dossier") %>%
                         rename.variable("Date_Modif.x", "Source_Date") %>%
                         rename.variable("Disque.y", "Dest_Lecteur") %>%
                         rename.variable("Dossier.y", "Dest_Dossier") %>%
                         rename.variable("Date_Modif.y", "Dest_Date")
              
              if(critere == "Fichier")
              {
                doublon <- doublon %>%
                           rename.variable("Taille.x", "Source_Taille") %>%
                           rename.variable("Taille.y", "Dest_Taille")
              } else
              {
                doublon <- doublon %>%
                           rename.variable("Fichier.x", "Source_Fichier") %>%
                           rename.variable("Fichier.y", "Dest_Fichier")
              }
             }