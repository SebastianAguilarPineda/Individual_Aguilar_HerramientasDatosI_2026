install.packages("primes")
library(primes)
library(dplyr)
library(ggplot2)

primos <- generate_primes(1, 1000000)

datos <- data.frame(
  indice = seq_along(primos),
  primo = primos
)

datos <- datos |>
  mutate(
    brecha = lead(primo) - primo,
    ultimo_digito = primo %% 10,
    residuo_mod_6 = primo %% 6
  )

