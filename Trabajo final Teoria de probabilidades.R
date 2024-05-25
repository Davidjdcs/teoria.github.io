---
  title: "Avance dos - Teoría de probabilidades"
author: "Oscar Rivera - Camilo Fernandez - David Cardona"
date: "2024-04-15"
output:
  pdf_document: default
html_document: default
word_document: default
---
  
  ```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```


```{r}
library(readr)
datos <- read.csv("2021 2022 NBA Player Stats  Playoffs.csv",sep = ";")
```

```{r}
jugadores = datos
```

```{r}
install.packages("dplyr")
library(dplyr)
```

#(1) Indicadores estadisticos
```{r}
datos2 <- select(jugadores,`X3PA`,`X3P`,`X3PP`,`X2PA`,`X2P`,`X2P.`,`Tm`,`Pos`,`Age`)
summary(datos2)
```

#(2) Diagramas e histogramas
```{r}
#Importamos la base de ggplot2 para trabajar
install.packages("ggplot2")
library(ggplot2)
require(ggplot2)
```
##Histograma de la edad
```{r}
ggplot(data = datos2, mapping = aes(Age)) + 
  geom_bar(col= "blue")+labs(title ="HISTOGRAMA DE LA VARIABLE LA EDAD",y="Frecuencia",x="Edad")+geom_density(kernel="gaussian",col="red")

```
##Histograma de %acierto tirosx2
```{r}
ggplot(data = datos2, mapping = aes(`X2P.`)) + 
  geom_bar(col= "blue")+labs(title ="HISTOGRAMA DE LA VARIABLE %ACIERTO TIROSX2",y="Frecuencia",x="%Aciertos")+geom_density(kernel="gaussian",col="red")

```
##Histograma de %acierto tirosx3
```{r}
ggplot(data = datos2, mapping = aes(`X3PP`)) + 
  geom_bar(col= "blue")+labs(title ="HISTOGRAMA DE LA VARIABLE %ACIERTO TIROSX3",y="Frecuencia",x="%Aciertos")+geom_density(kernel="gaussian",col="red")

```
##Histograma de los intentos tirosx2 por partido
```{r}
ggplot(data = datos2, mapping = aes(`X2PA`)) + 
  geom_bar(col= "blue")+labs(title ="HISTOGRAMA DE INTENTOS TIROSX2 POR PARTIDO",y="Frecuencia",x="Intentos por partido")+geom_density(kernel="gaussian",col="red")

```
##Histograma de los intentos tirosx3 por partido
```{r}
ggplot(data = datos2, mapping = aes(`X3PA`)) + 
  geom_bar(col= "blue")+labs(title ="HISTOGRAMA DE INTENTOS TIROSX3 POR PARTIDO",y="Frecuencia",x="Intentos por partido")+geom_density(kernel="gaussian",col="red")

```

#(3) Diagramas de cajas de variables cualitativas y cuantitativas

##Diagrama de cajas %aciertos tirosx3 vs posición
```{r}
a<-ggplot(data=datos2,mappin=aes(`X3P`,`Pos`))+
  geom_boxplot(color="blue")+
  labs(title="Diagrama de cajas edad vs %aciertos tirosx3")
a
```
##Diagrama de cajas %aciertos tirosx2 vs Equipos
```{r}
a<-ggplot(data=datos2,mappin=aes(`X2P`,`Tm`))+
  geom_boxplot(color="blue")+
  labs(title="Diagrama de cajas edad vs %aciertos tirosx2")
a
```


