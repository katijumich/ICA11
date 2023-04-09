#ICA11
#Kati Johnson

#Read the flights.csv file from the DATA folder in R.
#Generate line plots for each month over the available years.
#Give names to x and y axes.

library(ggplot2)
library(ggrepel)
library(cowplot)
library(tidyr)
library(dplyr)
library(ggridges)
library(colorspace)
library(stringr)
library(forcats)

fldf <- read.csv("C:\\Users\\kati.johnson\\Desktop\\DATA\\flights.csv")
head(fldf)

reorder <- fldf                              # Replicate data
reorder$month <- factor(reorder$month,      # Reordering group factor levels
                         levels = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))

ggplot(reorder, aes(x =year, y =passengers, color = month)) +
  geom_line(size=2) +
  facet_wrap( ~ month) +
  theme(strip.text = element_text(face = "bold", color = "white", hjust = 0, size = 10),
                             strip.background = element_rect(fill = "black", linetype = "solid"),legend.position = "none") +
  ggtitle('Yearly Flight Passengers by Month') + # for the main title
  xlab('Years') + # for the x axis label
  ylab('Number of Passengers') # for the y axis label

