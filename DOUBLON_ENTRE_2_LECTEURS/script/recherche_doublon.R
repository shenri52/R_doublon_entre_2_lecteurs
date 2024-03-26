#################### Recherche des doublons


#Appel fonction
source("script/fonction_doublon.R")

# Recherche des fichiers avec le même nom
doublon_n <- f_doublon(liste2, liste1, "Fichier")

# Classement par nom de fichier
doublon_n <- doublon_n %>%
             arrange(Fichier)

# Recherche des fichiers avec la même taille
doublon_t <- f_doublon(liste2, liste1, "Taille")

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
