
# Generar primos
generar.primos <- function(){
  primos <- generate_primes(2, 1000000)
  
  # Puntos donde evaluaremos pi(n)
  n <- seq(2, 1000000, by = 1)
  
  # Función contadora
  pi_n <- findInterval(n, primos)
  
  df = data.frame(
    n,
    pi_n
  )
  
  write.csv(df,"../data/datos.funcion.pi.csv", row.names = FALSE)
}


