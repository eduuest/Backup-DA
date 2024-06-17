get_tamano_muestra <- function(opc, z, p, e, N){
  q <- 1 - p
  return(switch(
    opc, 
    '1' = (N * z ^ 2 * p * q) / (e ^ 2 * (N - 1) + z ^ 2 * p * q),
    '2' = (z ^ 2 * p * q) / e ^ 2,
    1
  ))
}


get_respuesta_numerica <- function(pregunta){
  respuesta <- ''
  while (TRUE) {
    respuesta <- readline(prompt = pregunta)
    if (!is.na(suppressWarnings(as.numeric(respuesta)))) { break }
  }
  return(as.numeric(respuesta))
}


imp_tamano_muestra <- function(){
  cat('\n----- OBTENER TAMAÑO DE MUESTRA -----\n\n[1]Población finita.\n[2]Población infinita\n[3]Desviación estandar.\n[s]Salir.\n')
  opc <- readline(prompt = 'Ingresa una opción: ')
  
  if (opc %in% c('1','2','3')) {
    muestra <- 0
    N <- 0
    z <- get_respuesta_numerica('\nIngrese el valor del nivel de confianza: ')
    p <- get_respuesta_numerica('Ingrese la proporción esperada de la población [entre 0 y 1]: ')
    e <- get_respuesta_numerica('Ingrese el margen de error[entre 0 y 1]: ')
    
    if (opc == '1') { N <- get_respuesta_numerica('Ingrese el total de la población: ') }
    
    muestra <- get_tamano_muestra(opc, z, p, e, N)
    cat('\n\nEl tamaño de la muestra es de: ', muestra, ' --> ', round(muestra), '.\n\n')
  }
}


main <- function(){
  imp_tamano_muestra()
}


main()