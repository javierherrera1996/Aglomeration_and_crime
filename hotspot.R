
require(pacman)
p_load(tidyverse,leaflet) 

##SELECCION DE GRUPOS DE CONTROL

# Define la coordenada (latitud y longitud)
coordenada <- c(4.6024664, -74.0846098) 

# Crea el mapa
mapa <- leaflet() %>%
  setView(lng = coordenada[2], lat = coordenada[1], zoom = 12) %>%
  addTiles()

# Crea el mapa
mapa <- leaflet() %>%
  setView(lng = coordenada[2], lat = coordenada[1], zoom = 12) %>%
  addTiles()

# Agrega círculos de 250m, 500m y más de 500m alrededor del punto
mapa <- mapa %>%
  addCircles(lng = coordenada[2], lat = coordenada[1], radius = 250, color = "blue", fillOpacity = 0.2) %>%
  addCircles(lng = coordenada[2], lat = coordenada[1], radius = 500, color = "green", fillOpacity = 0.2) %>%
  addCircles(lng = coordenada[2], lat = coordenada[1], radius = 1000, color = "purple", fillOpacity = 0.2)  # Cambia el radio a más de 500 metros

# Muestra el mapa
mapa