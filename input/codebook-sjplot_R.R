pacman::p_load(haven,   # para cargar bases de datos en .sav o .dta
               sjPlot,  # para generar codebook
               pagedown,# exportar a pdf (a)
               webshot  # exportar a pdf (b)
               ) 

misdatos <- read_sav(file = "misdatos.sav")    # cargar base de datos

sjPlot::view_df(misdatos,                      # Datos
                show.type = F,                 # mostrar tipo de variable
                show.frq = T,                  # mostrar frecuencia
                show.na = T,                   # mostrar datos perdidos
                file = "codebook-sjplot.html", # guardar codebook en html               
                encoding = "UTF-8",            # encoding caracteres especiales
                max.len =40,             
                )
browseURL("codebook-sjplot.html") # ver codebook
