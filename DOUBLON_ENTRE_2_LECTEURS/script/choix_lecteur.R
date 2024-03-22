#################### Choix du lecteur

choix <- function (num_lecteur)
         {
          # Afficher une boîte de dialogue pour indiquer le lecteur de la Géo Base à analyser
          lecteur <- NULL
          
          while (is_empty(lecteur))
          {
            lecteur <- dlg_dir(default = getwd(), title = paste("Choisir le ",
                                                                paste(num_lecteur, " lecteur à analyser", sep = ""),
                                                                sep = ""))$res
          }
          
          return (lecteur)
          }


            