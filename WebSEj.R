#Se cargan librerias a usar:

library(xml2)
library(rvest)
library(stringr)
library(rebus)
library(lubridate)
library(tidyverse)
library(rowr)

# Asignamos a la variable url el link de la p�gina:

url <- "https://www.amazon.com.mx/gp/bestsellers/books/ref=zg_bs_pg_2?ie=UTF8&pg="

# Se asigna el valor de 1 a el objeto p, por medio del cual se ir� modificando el url inicial
# para la lectura de multiples p�ginas:

p <- 1
paste(url, p, sep="")

# Se ejecuta la lectura de la url, en esta se leeran los titulos de las etiquetas de inter�s.

pages <- read_html(url)

# Ejecutar ^ abre una sesi�n, esto se puede cerrar aplicando rm(pages)

link <- html_attr(html_nodes(pages,
                             "p13n-sc-truncated div"),
                             "href")

link <- links[1] #Se extrae el link del primer producto

anames <- read_html(link) # Se lee

format <- html_text(html_nodes(anamez,
                                "a-row a-size-small span"))

# Se agrupan procedimientos en funciones

get_links <- function(url){} # Recupera los links

get_anames <- function(url){} # Recupera los nombres de los productos

get_format <- function(url){} # Recupera el formato

# Se crea un data frame vac�o que se ir� llenando con los nombres y sus formatos 

df_amznames <- data.frame()

# Se ejecuta el loop de incrementi 

while (T) {}