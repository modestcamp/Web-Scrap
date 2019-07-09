#Se cargan librerias a usar:

library(xml2)
library(rvest)
library(stringr)
library(rebus)
library(lubridate)
library(tidyverse)
library(rowr)

# Asignamos a la variable url el link de la página:

url <- "https://www.amazon.com.mx/gp/bestsellers/books/ref=zg_bs_pg_2?ie=UTF8&pg="

# Se asigna el valor de 1 a el objeto p, por medio del cual se irá modificando el url inicial
# para la lectura de multiples páginas:

p <- 1
paste(url, p, sep="")

# Se ejecuta la lectura de la url, en esta se leeran los titulos de las etiquetas de interés.

pages <- read_html(url)

# Ejecutar ^ abre una sesión, esto se puede cerrar aplicando rm(pages)

link <- html_attr(html_nodes(pages,
                             "p13n-sc-truncated div"),
                             "href") # Ejemplo

link <- links[1] #Se extrae el link del primer producto

anames <- read_html(link) # Se lee

format <- html_text(html_nodes(anamez,
                                "a-row a-size-small span"))

# Se agrupan procedimientos en funciones

get_links <- function(url){} # Recupera los links

get_anames <- function(url){} # Recupera los nombres de los productos

get_format <- function(url){} # Recupera el formato

# Se crea un data frame vacío que se irá llenando con los nombres y sus formatos 

df_amznames <- data.frame()

# Se ejecuta el loop de incrementi 

while (T) {}
