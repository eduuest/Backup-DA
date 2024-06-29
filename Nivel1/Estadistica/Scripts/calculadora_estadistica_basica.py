# Operaciones: -----------------------------------------------------------------

def obt_tamano_muestra(opcion, N, z, p, e, s):
    if opcion == "1":
        resultado = (N * z**2 * p * (1 - p)) / (e**2 * (N - 1) + z**2 * p * (1 - p))
    elif opcion == "2":
        resultado = (z**2 * p * (1 - p)) / e**2
    else:
         resultado = (z * s / e)**2
    return resultado


# Validaciones: ----------------------------------------------------------------

def obt_respuesta_numerica(pregunta):
    while True:
        entrada = input(pregunta)
        try:
            respuesta = float(entrada)
            return respuesta
        except ValueError:
            print("\nError...")


# Opciones de la calculadora: --------------------------------------------------

def imp_tamano_muestra():
    print("\n------ OBTENER TAMAÑO DE MUESTRA ------\n")
    print("[1] Con población finita.\n[2] Con población infinita\n[3] Con Desviación estandar.")
    print("Presiona cualquier otra letra para salir.")

    opcion = input("Ingresa una de la opciones: ")

    if opcion == "1" or opcion == "2" or opcion == "3":
        N = 0
        s = 0
        z = obt_respuesta_numerica("\nIngrese el valor del nivel de confianza: ")
        p = obt_respuesta_numerica("Ingrese la proporción esperada de la población [entre 0 y 1]: ")
        e = obt_respuesta_numerica("Ingrese el margen de error[entre 0 y 1]: ")

        if opcion == "1": 
            N = obt_respuesta_numerica("Ingrese el total de la población: ")
        if opcion == "3":
            s = obt_respuesta_numerica("Ingresa el valor de la desviación estandar: ")
        
        muestra = obt_tamano_muestra(opcion, N, z, p, e, s)

        print("\nEl tamaño de la muestra es de: ", muestra, " --> ", round(muestra), "\n")


# Función Principal: -----------------------------------------------------------

def main():
    imp_tamano_muestra()


main()