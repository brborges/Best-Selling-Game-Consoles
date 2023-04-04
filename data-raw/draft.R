library(tidyverse)
install.packages("echarts4r")
library(echarts4r)


game_data %>% 
  arrange(`Released Year`) %>% 
  mutate(
    `Released Year` = as.character(`Released Year`)
  ) %>% 
  echarts4r::e_chart(x = `Released Year`) |> 
  echarts4r::e_scatter(serie = `Units sold (million)`,symbol_size = 15) |> 
  echarts4r::e_tooltip()
  

mtcars |>
  e_charts(qsec) |>
  e_line(mpg)
points <- mtcars[1:3, ]
mtcars |>
  e_charts_("qsec") |>
  e_line(mpg) |>
  e_data(points, qsec) |>
  e_scatter(mpg, color = "red", symbol_size = 20)
