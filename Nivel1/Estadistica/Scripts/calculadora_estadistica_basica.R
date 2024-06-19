get_data <- function(num_datos){
  data = c()
  cont <- 1
  while (cont <= num_datos) {
    data <- append(data, get_respuesta_numerica(sprintf('Ingresa el valor N°%d: ', cont)))
    cont <- cont + 1
  }
  return(data)
}


calcular_media <- function(){
  total <- 0
  num_elementos <- 0
  while (TRUE) {
    valor <- get_respuesta_numerica('\nIngrese un valor numérico: ')
    total <- total + valor
    num_elementos <- num_elementos + 1
    if (readline(prompt = 'Si desea Ingresar otro valor digite la letra [s]: ') != 's'){ break }
  }
  return(total / num_elementos) 
}


get_tamano_muestra <- function(opc, z, p, e, N, s){
  q <- 1 - p
  return(switch(
    opc, 
    '1' = (N * z ^ 2 * p * q) / (e ^ 2 * (N - 1) + z ^ 2 * p * q),
    '2' = (z ^ 2 * p * q) / e ^ 2,
    (z * s / e) ^ 2
  ))
}


get_respuesta_numerica <- function(pregunta){
  respuesta <- ''
  while (TRUE) {
    respuesta <- readline(prompt = pregunta)
    if (is.na(suppressWarnings(as.numeric(respuesta)))) { 
      cat('\nError, debe ingresar un dato numérico...') 
    } else { 
      break 
    }
  }
  return(as.numeric(respuesta))
}


imp_tamano_muestra <- function(){
  cat('\n----- OBTENER TAMAÑO DE MUESTRA -----\n\n[1]Población finita.\n[2]Población infinita\n[3]Desviación estandar.\n[s]Salir.\n')
  opc <- readline(prompt = 'Ingresa una opción: ')
  
  if (opc %in% c('1','2','3')) {
    muestra <- 0
    N <- 0
    s <- 0
    z <- get_respuesta_numerica('\nIngrese el valor del nivel de confianza: ')
    p <- get_respuesta_numerica('Ingrese la proporción esperada de la población [entre 0 y 1]: ')
    e <- get_respuesta_numerica('Ingrese el margen de error[entre 0 y 1]: ')
    
    if (opc == '1') { N <- get_respuesta_numerica('Ingrese el total de la población: ') }
    if (opc == '3') { s <- get_respuesta_numerica('Ingresa el valor de la desviación estandar: ')}
    
    muestra <- get_tamano_muestra(opc, z, p, e, N, s)
    cat('\n\nEl tamaño de la muestra es de: ', muestra, ' --> ', round(muestra), '.\n\n')
  }
}


main <- function(){
  cat('\n----- CALCULADORA ESTADISTICA BÁSICA -----\n\n')
  cat('[1]Población finita.\n[2]Población infinita\n[3]Desviación estandar.\n[s]Salir.\n')
  opc <- readline(prompt = 'Ingresa una opción: ')
  imp_tamano_muestra()
}


#main()

cat('\n', get_data(5))
