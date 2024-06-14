get_tamano_muestra <- function(){
    cat('\n----- OBTENER TAMAÑO DE MUESTRA -----\n\n[1]Población finita.\n[2]Población infinita\n[3]Desviación estandar.\n[s]Salir.\n')
    opc <- readline(prompt = 'Ingresa una opción: ')

    if(opc %in% c('1','2','3')){
        while(TRUE){
            tryCatch({
                n <- 0
                z <- as.numeric(readline(prompt = '\nIngrese el valor del nivel de confianza: '))
                p <- as.numeric(readline(prompt = 'Ingrese la proporción esperada de la población [entre 0 y 1]: '))
                e <- as.numeric(readline(prompt = 'Ingrese el margen de error[entre 0 y 1]: '))
                q <- 1 - p

                if(opc == '1'){
                    poblacion <- as.numeric(readline(prompt = 'Ingrese la población: '))
                    n = (poblacion * z ^ 2 * p * q) / (e ^ 2 * (poblacion - 1) + z ^ 2 * p * q)
                }else{
                    if(opc == '2'){n = (z ^ 2 * p * q) / e ^ 2}else{n = 1}
                }

                cat('\n\nEl tamaño de la muestra es de: ', n, ' --> ', round(n), '.\n\n')
                break

            }, error = function(e){
                if(readline(prompt = '\nERROR!, debe ser un dato numérico; desea repetir el proceso: [s/n]: ') != 's'){break}
            })
        }
    }
}

get_tamano_muestra()
