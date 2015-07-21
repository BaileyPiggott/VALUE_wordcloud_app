
#set_up

# set up text files
# source: https://georeferenced.wordpress.com/2013/01/15/rwordcloud/

library(tidyr)
library(dplyr)
library(magrittr)
library(tm) 
library(wordcloud) 
library(SnowballC) 
library(RColorBrewer)  # load libraries


# transform data frame into one long string
exemplars <- read.csv("Exemplars.csv", header = FALSE, stringsAsFactors=FALSE)

#separate by level:

level_4 <- exemplars %>% select(V3,V4,V8,V12,V16,V20,V24,V28,V32,V36,V40,V44,V48,V52,V56,V60,V64)
level_3 <- exemplars %>% select(V3,V5,V9,V13,V17,V21,V25,V29,V33,V37,V41,V45,V49,V53,V57,V61,V65)
level_2 <- exemplars %>% select(V3,V6,V10,V14,V18,V22,V26,V30,V34,V38,V42,V46,V50,V54,V58,V62,V66)
level_1 <- exemplars %>% select(V3, V7,V11,V15,V19,V23,V27,V31,V35,V39,V43,V47,V51,V55,V59,V63,V67)

