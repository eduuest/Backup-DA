# Operaciones: -----------------------------------------------------------------

obt_tamano_muestra <- function(opcion, N, z, p, e, s) {
  if (opcion == "1") {
    resultado <- (N * z^2 * p * (1 - p)) / (e^2 * (N - 1) + z^2 * p * (1 - p))
  } else if (opcion == "2") {
    resultado <- (z^2 * p * (1 - p)) / e^2
  } else {
    resultado <- (z * s / e)^2
  }
  return(resultado)
}


# Validaciones: ----------------------------------------------------------------

obt_respuesta_numerica <- function(pregunta) {
  while (TRUE) {
    entrada <- readline(prompt = pregunta)
    respuesta <- suppressWarnings(suppressMessages(as.numeric(entrada)))
    if (!is.na(respuesta)) {
      return(respuesta)
    } else {
      cat("\nError...")
    }
  }
}


# Opciones de la calculadora: --------------------------------------------------

imp_tamano_muestra <- function() {
  cat("\n------ OBTENER TAMAÑO DE MUESTRA ------\n")
  cat("\n[1] Con población finita.\n[2] Con población infinita\n[3] Con Desviación estandar.")
  cat("\nPresiona cualquier otra letra para salir.\n")
  
  opcion <-  readline(prompt = "Ingresa una de la opciones: ")
  
  if (opcion == "1" | opcion == "2" | opcion == "3") {
    N <- 0
    s <- 0
    z <- obt_respuesta_numerica('\nIngrese el valor del nivel de confianza: ')
    p <- obt_respuesta_numerica('Ingrese la proporción esperada de la población [entre 0 y 1]: ')
    e <- obt_respuesta_numerica('Ingrese el margen de error[entre 0 y 1]: ')
    
    if (opcion == 1) {
      N <- obt_respuesta_numerica('Ingrese el total de la población: ')
    }
    if (opcion == 3) {
      s <- obt_respuesta_numerica('Ingresa el valor de la desviación estandar: ')
    }
    
    muestra <- obt_tamano_muestra(opcion, N, z, p, e, s)
    
    cat('\n\nEl tamaño de la muestra es de: ', muestra, ' --> ', round(muestra), '.\n\n')
  }
}


# Función Principal: -----------------------------------------------------------

main <- function() {
  imp_tamano_muestra()
}

main()
