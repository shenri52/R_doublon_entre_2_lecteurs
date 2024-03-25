#################### Recherche des doublons

# Association des 2 listes de fichiers
list_fichier <- bind_rows(liste1, liste2) %>%
                mutate(Extension = as.factor(toupper(sub("^.+\\.", "", Fichier))))

# Recherche des fichiers avec le même nom
doublon_n <- list_fichier[duplicated(list_fichier$Fichier) | duplicated(list_fichier$Fichier , fromLast = T),]

# Classement par nom de fichier
doublon_n <- doublon_n %>%
             arrange(Fichier)

# Recherche des fichiers avec la même taille
doublon_t <- list_fichier[duplicated(list_fichier$Taille_F) | duplicated(list_fichier$Taille_F , fromLast = T),]

# Classement par taille
doublon_t <- doublon_t %>%
             arrange(Taille_F)

# Export des données
write.table(doublon_n,
            file = ("doublon_nom.csv"),
            fileEncoding = "UTF-8",
            sep =";",
            row.names = FALSE)

write.table(doublon_t,
            file = ("doublon_taille.csv"),
            fileEncoding = "UTF-8",
            sep =";",
            row.names = FALSE)
