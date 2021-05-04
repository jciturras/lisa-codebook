pacman::p_load(haven,sjPlot,pagedown,webshot)

misdatos <- read_sav(file = "misdatos.sav")
options("encoding"="UTF-8")
sink("codebook-sjmisc.txt")
sjmisc::frq(misdatos,min.frq = 2)
sink() 


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


