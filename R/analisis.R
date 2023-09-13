# Ejemplo de análisis de datos
# Datos:

# Long-term monitoring of lizards and geckos
# in Doñana 2005-2021

# El monitoreo anual de reptiles en el Espacio
# Natural de Doñana se inició en el 2005 con el
# objetivo de detectar cambios y tendencias en
# las poblaciones de estos animales.

# El monitoreo se hace anualmente en primaver y
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

# Cargar los datos
data <- readr::read_delim("data/donana_reptiles.csv", delim = "\t")

# Seleccionar las variables necesarias
data <- data %>% dplyr::select(scientificName, individualCount, decimalLatitude, decimalLongitude, day, month)

# Crear un objeto espacial con las coordenadas de
# las observaciones