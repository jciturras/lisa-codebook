import spss "https://github.com/juancarloscastillo/merit-scale/raw/master/input/data/original/Estudio_3_ola1.sav"

log using log-codebook, replace
codebook 
translate log-codebook.smcl log-codebook.pdf



