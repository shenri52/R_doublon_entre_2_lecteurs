#################### Recherche des doublons

# Recherche des fichiers avec le même nom
doublon_n <- merge(liste2, liste1, by="Fichier", all=FALSE) %>%
             rename.variable("Disque.x", "Source_Lecteur") %>%
             rename.variable("Dossier.x", "Source_Dossier") %>%
             rename.variable("Date_Modif.x", "Source_Date") %>%
             rename.variable("Taille.x", "Source_Taille") %>%
             rename.variable("Disque.y", "Dest_Lecteur") %>%
             rename.variable("Dossier.y", "Dest_Dossier") %>%
             rename.variable("Date_Modif.y", "Dest_Date") %>%
             rename.variable("Taille.y", "Dest_Taille")

# Classement par nom de fichier
doublon_n <- doublon_n %>%
             arrange(Fichier)

# Recherche des fichiers avec la même taille
doublon_t <- merge(liste2, liste1, by="Taille", all=FALSE) %>%
             rename.variable("Disque.x", "Source_Lecteur") %>%
             rename.variable("Dossier.x", "Source_Dossier") %>%
             rename.variable("Date_Modif.x", "Source_Date") %>%
             rename.variable("Fichier.x", "Source_Fichier") %>%
             rename.variable("Disque.y", "Dest_Lecteur") %>%
             rename.variable("Dossier.y", "Dest_Dossier") %>%
             rename.variable("Date_Modif.y", "Dest_Date") %>%
             rename.variable("Taille.y", "Dest_Taille")

# Classement par taille
doublon_t <- doublon_t %>%
             arrange(Taille)

# Export des données
write.table(doublon_n,
            file = ("result/doublon_nom.csv"),
            fileEncoding = "UTF-8",
            sep =";",
            row.names = FALSE)

write.table(doublon_t,
            file = ("result/doublon_taille.csv"),
            fileEncoding = "UTF-8",
            sep =";",
            row.names = FALSE)
