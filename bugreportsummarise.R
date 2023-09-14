



library(foreign)
library(splines)
library(lme4)
library(ggeffects)
library(tidyverse)
library(utils)
library(jtools)
options("jtools-digits" = 4) 



# 
## versions libraries   
             not working  working      changed to work 
# base        4.4.1       4.1.2
# datasets    4.3.1       4.1.2
# graphics    4.3.1       4.1.2
# grDevices   4.3.1       4.1.2
# Matrix      1.5.-4.1    1.3.4  
# methods     4.3.1       4.1.2
# splines     4.3.1       4.1.2
# stats       4.3.1       4.1.2
# utils       4.3.1       4.1.2
# dplyr        1.1.0      1.0.7         1.0.7
# forcats      1,0.0       0.5.1        0.5.1
# foreign      0.8-84     0.8.81        0.8.81
# ggeffects    1.1.1      1.1.1
# ggplot2      3.4.2      3.3.5
# lme4        1.1.-27.1   1.1.-27.1
# purrr        1.0.1       0.3.4         0.3.4
# readr        2.1.4      2.1.2          2.1.2
# stringr      1.5.0      1.4.0          1,4,0
# tibble       3.2.1      3.1.6          3.1.6
# tidyr        1.3.0      1.1.4          1.1.4
# tidyverse    1.3.1      1.3.1          1.2.1


load("data/frbbusq.RData")

## With the package versions in the left column of the above table the results are wrong. After reset of the tidyverse packages the calculation results are correct
#
frbbusqst <- frbbusq %>%
  group_by(STNRNEU,JAHR) %>%
  summarise(MFRB=mean(FRB),MLFRB=mean(LFRB)) %>%
  ungroup()


