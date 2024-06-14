def get_tamano_muestra():
    print('\n----- OBTENER TAMAÑO DE MUESTRA -----\n\n[1] Con población finita.\n[2] Con población infinita\n[3] Con desviación estandar.\n[otro] Salir.')
    opc = input('Ingrese una opción: ')

    if opc in ['1', '2', '3']:
        while True:
            try:
                n = 0
                z = float(input('\nIngrese el valor del nivel de confianza: '))
                p = float(input('Ingrese la proporción esperada de la población [entre 0 y 1]: '))
                e = float(input('Ingrese el margen de error[entre 0 y 1]: '))
                q = 1 - p

                if opc == '1': 
                    poblacion = float(input('Ingrese la población: '))
                    n = (poblacion * z ** 2 * p * q) / (e ** 2 * (poblacion - 1) + z ** 2 * p * q)
                elif opc == '2':
                    n = (z ** 2 * p * q) / e ** 2
                else:
                    n = 1

                print('\nEl tamaño de la es de: ', n, ' --> ', round(n), '.\n')
                break

            except ValueError:
                if input('\nERROR!, debe ser un dato numérico; desea repetir el proceso: [s/n]: ') != 's':
                    break



get_tamano_muestra()


