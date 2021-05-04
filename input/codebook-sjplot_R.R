pacman::p_load(haven,sjPlot,pagedown,webshot)
options("encoding")
# options("encoding"="UTF-8")
misdatos <- read_sav(file = "misdatos.sav")

sjPlot::view_df(misdatos,
                show.type = F,
                show.frq = T, 
                show.na = T,
                file = "codebook-sjplot.html",
                encoding = "UTF-8",
                remove.spaces = TRUE,
                max.len =40,
)
browseURL("codebook-sjplot.html")


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



