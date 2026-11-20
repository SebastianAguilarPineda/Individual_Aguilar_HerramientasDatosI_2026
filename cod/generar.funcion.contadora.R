#Este script permite generar la cantidad de primos de menores o iguales a cada número menor o igual a sí mismo.

generar.contadora.primos <- function(x){
  
  # Generar primos. Requiere de paquete primes
  primos <- generate_primes(2, x)
  
  # Puntos donde se evalua pi(n)
  n <- seq(2, x, by = 1)
  
  # Función contadora
  pi_n <- findInterval(n, primos)
  
  df = data.frame(
    n,
    pi_n
  )
  
  #Genera un excel con los valores de pi(n)
  write.csv(df,"../data/datos.funcion.pi.csv", row.names = FALSE)
}


