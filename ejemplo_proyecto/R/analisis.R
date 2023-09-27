# Ejemplo de análisis de datos
# Datos:

# Long-term monitoring of lizards and geckos
# in Doñana 2005-2021

# El monitoreo anual de reptiles en el Espacio
# Natural de Doñana se inició en el 2005 con el
# objetivo de detectar cambios y tendencias en
# las poblaciones de estos animales.

# El monitoreo se hace anualmente en primavera y
# otoño realizando 7 transectos en distintos
# hábitats.

# DOI: https://doi.org/10.15470/ki0cn7

# Archivo
# data/donana_reptiles.csv

# Objetivo

# 1. Crear un mapa de las observaciones recogidas.
# 2. Crear un gráfico del número de observaciones
# por año y especie.

# Cargar los paquetes necesarios
library(readr)
library(tidyr)
library(dplyr)
library(terra)
library(stringr)
library(maptiles)
library(basemaps)

# Cargar los datos
data <- readr::read_delim("data/donana_reptiles.csv", delim = "\t")

# Seleccionar las variables necesarias
data <- data %>% dplyr::select(occurrenceID, scientificName, individualCount, decimalLatitude, decimalLongitude, day, month)

# Quitar observaciones no identificadas a nivel de especie
data <- data %>% filter(scientificName != "Chordata")

# Acortar nombres científicos
data$scientificName[data$scientificName == "Podarcis carbonelli (Perez Mellado, 1981)"] <- "Podarcis carbonelli"
data$scientificName[data$scientificName == "Podarcis carbonelli Perez Mellado, 1981"] <- "Podarcis carbonelli"
data$scientificName[data$scientificName == "Psammodromus algirus (Linnaeus, 1758)"] <- "Psammodromus algirus"
data$scientificName[data$scientificName == "Tarentola mauritanica (Linnaeus, 1758)"] <- "Tarentola mauritanica"
data$scientificName[data$scientificName == "Acanthodactylus erythrurus (Schinz, 1833)"] <- "Acanthodactylus erythrurus"
data$scientificName[data$scientificName == "Testudo graeca (Linnaeus, 1758)"] <- "Testudo_graeca"
data$scientificName[data$scientificName == "Testudo graeca Linnaeus, 1758"] <- "Testudo_graeca"
data$scientificName[data$scientificName == "Psammodromus occidentalis (Fitze, Gonzalez-Jimena, San Jose, San Mauro & Zardoya, 2012)"] <- "Psammodromus occidentalis"
data$scientificName[data$scientificName == "Psammodromus occidentalis Fitze, Gonzalez-Jimena, San-Jose, San Mauro & Zardoya, 2012"] <- "Psammodromus occidentalis"
data$scientificName[data$scientificName == "Timon lepidus (Daudin, 1802)"] <- "Timon lepidus"
data$scientificName[data$scientificName == "Hemorrhois hippocrepis (Linnaeus, 1758)"] <- "Hemorrhois hippocrepis"
data$scientificName[data$scientificName == "Chalcides striatus (Cuvier, 1829)"] <- "Chalcides striatus"
data$scientificName[data$scientificName == "Malpolon monspessulanus (Hermann, 1804)"] <- "Malpolon monspessulanus"

# Crear un objeto espacial con las coordenadas de
# las observaciones
obs <- terra::vect(data, geom = c(x = "decimalLongitude", y = "decimalLatitude"))

# Crear un mapa interactivo con leaflet
terra::plet(obs, col = "#003366")

# Crear un mapa en pdf
pdf("results/map.pdf", width = 6, height = 4)

# Añadir capa base
basemap <- get_tiles(ext(obs))
plotRGB(basemap)
points(obs, col = "#003366")

# Añadir flecha norte
north("topright", type = 1)

# Añadir escala
sbar(10, "bottom", type = "bar", labels = c("0", "5", "10 km"))

# Añadir inset
spain <- vect("data/ll_autonomicas_inspire_peninbal_etrs89.shp",
              crs = "epsg:4258")
inset(spain, loc = "bottomleft",
             box = ext(c(-7.25, -5.75, 36, 37)),
             pbox = list(col="red", lwd = 2))

# Cerrar pdf
dev.off()

# Calcular las observaciones por año y especie
# Crear variable año a partir del campo fecha
data$Year <- as.integer(str_extract(data$occurrenceID, "20[0-9]{2}"))

# Agrupar data por especie y año
data <- data %>% group_by(Year, scientificName) %>%
                 summarise(Abundance = sum(individualCount)) %>%
                 ungroup() %>%
                 pivot_wider(names_from = scientificName,
                             values_from = Abundance) %>%
                 as.data.frame()

# Cambiar NAs por ceros
data[is.na(data)] <- 0

# Crear gráfico de las series temporales
# Crear la escala de color
color_scale <- viridis::viridis(ncol(data[, -1]))[seq(1, ncol(data[, -1]), by = 1)]

# Abrir pdf en blanco
pdf("results/series.pdf", width = 6, height = 4)

# Crear gráfico vacío
base::plot(x = data$Year,
y = seq(0, max(data[, -1], na.rm = TRUE) + 20, length.out = length(data$Year)),
type = "n",
las = 1,
ann = FALSE
)

# Añadir etiquetas de los ejes
mtext(side = 2, text = "Observaciones", line = 2.5, cex = 1.2)
mtext(side = 1, text = "Año", line = 2.5, cex = 1.2)

# Añadir series temporales de las especies
spp <- names(data)[-1]
for (i in seq_along(spp)) {
  lines(x = data$Year, y = data[, spp[i]], col = color_scale[i], lwd = 2)
}

# Añadir leyenda
legend(x = 2005, y = 105,
       legend = spp,
       col = color_scale,
       pch = "-",
       lwd = 3,
       cex = 0.4,
       bty = "n"
)

# Cerrar pdf
dev.off()

# Detectar tendencias en las poblaciones estudiadas

par(mfrow = c(5, 4))

for (i in 2:ncol(data)) {

plot.ts(as.ts(data[, i]), main = paste(names(data)[i], "original", sep = " "))

lm <- lm(data[, i] ~ data$Year)
plot.ts(as.ts(lm$residuals), main = paste(names(data)[i], "sin tendencia", sep = " "))

}

# Cómo de sincrónicas son las poblaciones de reptiles
# de Doñana?

# Cargar funciones
source("R/funciones.R")

# Calcular sincronía
# Phi
phi(data[, -1])

# Eta
eta_w(data[, -1])
