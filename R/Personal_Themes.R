library(tidyverse)
library(gridExtra)
library(grid)
library(extrafont)

# font_import()

# loadfonts() # load fonts


theme_britt <- function() {
  theme_classic(base_size = 18, base_family = "Century Schoolbook") %+replace%
    theme( # change stuff here
      title = element_text(colour = "white", size = 20),
      plot.title = element_text(hjust = 0.5, margin = margin(0,0,20,0)),
      panel.background = element_rect(fill = "black", colour = "white"),
      plot.background = element_rect(fill = "black", colour = NA),
      plot.margin = unit(c(1, 1, 1, 1), "lines"),
      plot.caption = element_text(colour = "white", size = 10, hjust = 1.25),
      legend.text = element_text(colour = "white", size = 12),
      legend.background = element_rect(fill = "#0c0c38", colour = "gray 70"),
      legend.title = element_text(colour = "white", size = 12),
      legend.key = element_rect(colour = "black", fill = "#F4F6F6"),
      axis.line = element_line(colour = "white"),
      axis.text = element_text(colour = "White", size = 12),
      axis.title = element_text(size = 14),
      axis.ticks = element_line(colour = "white"),
      strip.background = element_rect( fill = "#0c0c38", colour = "gray30"),
      strip.text = element_text(colour = "white", size = 14, margin = margin(.15, 0, .15, 0, "cm"))
    )
}

ggplot() +
  geom_point(data = mpg, aes(x = cty, y = hwy, colour = factor(cyl))) +
  theme_britt() +
  scale_color_manual(values=c("#c3c3c5", "#7b7a9c", "#0e1bc9", "#0C0878")) +
  facet_wrap(~year) +
  labs(title = "Britt's Theme", x = "X label", y = "Y label", caption = "This is a caption")

theme_pres <- function() {
  theme_classic(base_size = 28, base_family = "Century Schoolbook") %+replace%
    theme( # change stuff here
      title = element_text(colour = "black", size = 28),
      plot.title = element_text(hjust = 0.5, margin = margin(0,0,20,0)),
      panel.background = element_rect(fill = "#E4E4E4", colour = "black"),
      plot.background = element_rect(fill = "transparent", colour = NA),
      plot.margin = unit(c(1, 1, 1, 1), "lines"),
      plot.caption = element_text(colour = "black", size = 10, hjust = 1.25),
      legend.text = element_text(colour = "black", size = 12),
      legend.background = element_rect(fill = "#E4E4E4", colour = "black"),
      legend.title = element_text(colour = "black", size = 12),
      legend.key = element_rect(colour = "black", fill = "#F4F6F6"),
      axis.line = element_line(colour = "black"),
      axis.text = element_text(colour = "black", size = 12),
      axis.title = element_text(size = 14),
      axis.ticks = element_line(colour = "black"),
      strip.background = element_rect( fill = "#06400a", colour = "black"),
      strip.text = element_text(colour = "white", size = 14, margin = margin(.15, 0, .15, 0, "cm"))
    )
}

ggplot() +
  geom_point(data = mpg, aes(x = cty, y = hwy, colour = factor(cyl))) +
  theme_pres() +
  scale_color_manual(values=c("#003407", "#0a4e08", "#2a6e29", "#7B7B7B")) +
  facet_wrap(~year) +
  labs(title = "Presentation Theme", x = "X label", y = "Y label", caption = "This is a caption")