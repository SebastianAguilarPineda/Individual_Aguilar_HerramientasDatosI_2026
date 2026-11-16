install.packages("primes")
library(primes)
library(dplyr)

# Generar primos
primos <- generate_primes(2, 1000000)

# Puntos donde evaluaremos pi(x)
n <- seq(2, 1000000, by = 1)

# Función contadora
pi_n <- findInterval(n, primos)

df = data.frame(
  n,
  pi_n
)

write.csv(df,"C:/Users/TianAguilarPineda/Downloads/datospiquefuncionpi.csv", row.names = FALSE)

