pacman::p_load(haven,   # para cargar bases de datos en .sav o .dta
               sjPlot,  # para generar codebook
               pagedown,# exportar a pdf (a)
               webshot  # exportar a pdf (b)
               ) 

misdatos <- read_sav(file = "misdatos.sav") # cargar base de datos

options("encoding"="UTF-8")                 # encoding caracteres especiales
sink("codebook-sjmisc.txt")                 # crear archivo en .txt
sjmisc::frq(misdatos,min.frq = 2)           # crear codebook
sink()                                      # terminar, guardar.

# Alternativas para exportar a pdf ----------------------------------------
pagedown::chrome_print(
  input = "codebook-sjmisc.txt",
  output = "codebook-sjmisc_pdown.pdf",
  encoding = "UTF-8"
)

# Asume el txt como markdown, lo pasa por rmarkdown::render()
# Problema con encoding

webshot::webshot(
  url = "codebook-sjmisc.txt",
  file = "codebook-sjmisc_wshot.pdf")

# Entrega pdf en 1 pagina, problema para imprimir. Siempre en 1 página.
# Problema con encoding

