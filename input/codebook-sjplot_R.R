pacman::p_load(haven,   # para cargar bases de datos en .sav o .dta
               sjPlot,  # para generar codebook
               pagedown,# exportar a pdf (a)
               webshot  # exportar a pdf (b)
               ) 
options("encoding")
# options("encoding"="UTF-8")

misdatos <- read_sav(file = "misdatos.sav")

sjPlot::view_df(misdatos,                      # Datos
                show.type = F,                 # mostrar tipo de variable
                show.frq = T,                  # mostrar frecuencia
                show.na = T,                   # mostrar datos perdidos
                file = "codebook-sjplot.html", # guardar codebook en html               
                encoding = "UTF-8",            # encoding caracteres especiales
                max.len =40,             
)
browseURL("codebook-sjplot.html") # ver sitio web

# Alternativas para exportar a pdf ----------------------------------------
pagedown::chrome_print(
  input = "codebook-sjplot.html",
  output = "codebook-sjplot_pdown.pdf",
  encoding = "UTF-8",
  )
# Problema con encoding

webshot::webshot(
  url = "codebook-sjplot.html",
  file = "codebook-sjplot_wshot.pdf",
  )
# Entrega pdf en 1 pagina, problema para imprimir. Siempre en 1 página.
# Problema con encoding



