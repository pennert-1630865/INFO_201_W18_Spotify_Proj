 source("/Users/kristoferwong/Documents/INFO201Git/Final/Final_Spotify/data/Data_Wrangling.R")
 source("/Users/kristoferwong/Documents/INFO201Git/Final/Final_Spotify/data/get.token.R")
 song_info <- get.data.frame("12158467793", spotify.token)
# 
 d <- mean(song_info$danceability) * 100
 e <- mean(song_info$energy) * 100
 v <- mean(song_info$valence) * 100
 l <- mean(song_info$loudness)
 t <- mean(song_info$tempo) 
# 
# #df <- data.frame(d,e,v,l,t)
# 
# #colnames(df) = c("Danceability" , "Enegy" , "Valence", "Loudness", "Tempo")
# 
# #df = rbind(rep(100,50), rep(0,50) , df)
# 
# #par(bg = "#fcfcfc")
# #par(col.lab="black")
# p <- plot_ly(
#   type = 'scatterpolar',
#   r = c(d, e, v, l, t, d),
#   theta = c('A','B','C', 'D', 'E', 'A'),
#   fill = 'toself'
# ) %>%
#   layout(
#     polar = list(
#       radialaxis = list(
#         visible = TRUE,
#         range = c(0,30)
#       )
#     ),
#     showlegend = FALSE
#   )


p <- plot_ly(
  type = 'scatterpolar',
  r = c(d, e, v, l, t),
  theta = c("Danceability" , "Energy" , "Valence", "Loudness", "Tempo"),
  fill = 'toself'
) #%>%
  # layout(
  #   polar = list(
  #     radialaxis = list(
  #       visible = T,
  #       range = c(0,100)
  #     )
  #   ),
  #   showlegend = F
  # )


# radarchart(df, axistype=1 ,
#            pcol=rgb(0.2,0.5,0.5,0.9), 
#            pfcol=rgb(0.2,0.5,0.5,0.5), 
#            plwd=4,
#            
#            #custom the grid
#            cglcol="dark grey", 
#            cglty=2, 
#            cglwd=0.8,
#            axislabcol = "dark grey",
#            #custom labels
#            vlcex=1
# ) 
# title(main="Danceability VS Energy VS Valence VS Loudness VS Tempo", col.main="black") 