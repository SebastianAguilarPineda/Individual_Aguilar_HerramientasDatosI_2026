# Aproximaciones a la funcion contadora de números primos

Este proyecto tiene como objetivo evaluar dos aproximaciones distintas a la funcion
$\pi(n)$, la cual cuenta la cantidad de números primos menores o iguales que $n$ para enteros positivos

Estas aproximaciones se basan en estudios realizados con respecto al comportamiento
asíntotico de la función $\pi$, obteniendo dos aproximaciones para valores muy grandes.
Estas son $\frac{n}{\log n}$ y $\int_0^n \frac{dt}{\log t}$.

Para evaluarlas, se contruyen mediante paquetes en R, y se comparan utilizando herramientas
estadísticas y gráficas, determinando así cual es la mejor. Esto se da en el intervalo de enteros
de 1 a 1000000

Además, se busca verificar y observar cierta hipótesis sobre el crecimiento asintótico de 
$|\int_0^n \frac{dt}{\log t}-\pi(n)|$, la cual es equivalente a la hipótesis de Riemann.

## Información importante para correr el proyecto

Existe el archivo "cod/generar.funcion.contadora.R". Este genera todos los valores de $pi(n)$ de
2 a 1000000. Sin embargo, este ya se ejecuta en el archivo "cod/reporte", el cual también genera
el archivo "data/datos.funcion.pi.csv", que contiene toda la data del proyecto. Es importante
considerar que, de acuerdo a la naturaleza matemática del proyecto, el proceso para obtener los datos
es más sencillo de lo normal. Por lo tanto, únicamente es necesario correr el .qmd. Se pueden observar
los gráficos en el mismo reporte.

También, es necesario descargar los siguientes paquetes:
- dplyr
- readr
- tidyr
- ggplot2
- knitr
- pracma
- primes

El archivo cod/reporte.qmd genera el reporte en formato pdf, el cual se puede ver también
directamente en cod/reporte.pdf.

En este caso, se incluye la carpeta config, pues si bien no se utiliza, se menciona explícitamente
en las instrucciones del proyecto.
