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

pagedown::chrome_print(input = "codebook-sjplot.html",
                       encoding = "UTF-8")



sink("codebook-sjmisc.txt")           
sjmisc::frq(misdatos,min.frq = 2)
sink() 
