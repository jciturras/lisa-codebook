if (!require("pacman")) install.packages("pacman") # si no tenemos la librería packman instalada, se instala.
pacman::p_load(dplyr, haven) # cargamos nuestras librerías
options(scipen=999)
options("encoding" = "UTF-8")

# misdatos <- read_sav(
#   url(
#     "https://github.com/juancarloscastillo/merit-scale/raw/master/input/data/original/Estudio_3_ola1.sav"
#   ,encoding = "UTF-8")
# ) %>%
# dplyr::select(Duration__in_seconds_, educat,sexo,edad,get_ah_1,sal_perc_1)


misdatos <- read_sav(file = "input/misdatos.sav")
sjPlot::view_df(misdatos,
                show.type = F,
                show.frq = T, 
                show.na = T,
                file = "codebook-sjplot.html",
                # encoding = "UTF-8",
                remove.spaces = TRUE,
                max.len =40,
                )

pagedown::chrome_print(input = "codebook-sjplot.html")
webshot::webshot(url = "codebook-sjplot.html",file = "codebook-sjplot.pdf")


sink("codebook-sjmisc.txt")           
sjmisc::frq(misdatos,min.frq = 2)
sink() 















