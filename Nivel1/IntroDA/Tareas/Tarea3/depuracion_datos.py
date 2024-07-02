import pandas as pd


def depurar_errores(datos_df):
    datos_df["VALORES_NULOS"] = "NO"

    columnas_a_eliminar = ["DIA (DD)", "MES (MM)", "AÑO (AAAA)", "DIA_FECHA_PARTE", "MES_FECHA_PARTE"]
    datos_df = datos_df.drop(columns=columnas_a_eliminar)

    datos_df["FECHACOMPLETA"] = datos_df["FECHACOMPLETA"].dt.strftime("%d/%m/%Y")
    datos_df["CODIGO"] = datos_df["CODIGO"].astype(str)
    datos_df["HISTORIA CLINICA O CEDULA DE IDENTIDAD"] = datos_df["HISTORIA CLINICA O CEDULA DE IDENTIDAD"].astype(str)
    datos_df["NUMERO DE VISITA"] = datos_df["NUMERO DE VISITA"].astype(int)
    datos_df["PESO (KG)"] = datos_df["PESO (KG)"].astype(float)
    datos_df["TALLA(CM)"] = datos_df["TALLA(CM)"].astype(float)

    datos_df.loc[datos_df["ÁREA"].isnull() | (datos_df["ÁREA"] == ''), "VALORES_NULOS"] = "SI"
    datos_df.loc[datos_df["CANTON"].isnull() | (datos_df["CANTON"] == ''), "VALORES_NULOS"] = "SI"
    datos_df.loc[datos_df["PARROQUIA"].isnull() | (datos_df["PARROQUIA"] == ''), "VALORES_NULOS"] = "SI"
    datos_df.loc[datos_df["UNIDAD OPERATIVA"].isnull() | (datos_df["UNIDAD OPERATIVA"] == ''), "VALORES_NULOS"] = "SI"
    datos_df.loc[~datos_df["CODIGO"].str.isdigit(), "VALORES_NULOS"] = 'SI'
    datos_df.loc[~datos_df["CODIGO"].str.isdigit(), "CODIGO"] = ''
    datos_df.loc[datos_df["FECHACOMPLETA"].isnull() | (datos_df["FECHACOMPLETA"] == ''), "VALORES_NULOS"] = "SI"
    datos_df.loc[datos_df["SEXO (H O M)"].isnull() | (datos_df["SEXO (H O M)"] == ''), "VALORES_NULOS"] = "SI"
    datos_df.loc[~datos_df["HISTORIA CLINICA O CEDULA DE IDENTIDAD"].str.isdigit(), "VALORES_NULOS"] = 'SI'
    datos_df.loc[~datos_df["HISTORIA CLINICA O CEDULA DE IDENTIDAD"].str.isdigit(), "HISTORIA CLINICA O CEDULA DE IDENTIDAD"] = ''
    datos_df.loc[~datos_df["NUMERO DE VISITA"].isnull() | datos_df["NUMERO DE VISITA"] <= 0, "VALORES_NULOS"] = 'SI'
    datos_df.loc[~datos_df["PESO (KG)"].isnull() | datos_df["PESO (KG)"] <= 0, "VALORES_NULOS"] = 'SI'
    datos_df.loc[~datos_df["TALLA(CM)"].isnull() | datos_df["TALLA(CM)"] <= 0, "VALORES_NULOS"] = 'SI'  

    return datos_df


def filtrar_nulos_en_excel(datos_df):

    con_err_df = datos_df[datos_df["VALORES_NULOS"] == "SI"]
    sin_err_df = datos_df[datos_df["VALORES_NULOS"] == "NO"]

    con_err_df = con_err_df.copy()
    sin_err_df = sin_err_df.copy()

    con_err_df["NO. PACIENTE"] = range(1, len(con_err_df) + 1)
    sin_err_df["NO. PACIENTE"] = range(1, len(sin_err_df) + 1)

    con_err_df =  con_err_df.drop(columns=["VALORES_NULOS"])
    sin_err_df =  sin_err_df.drop(columns=["VALORES_NULOS"])

    con_err_df.to_excel("DatosConError.xlsx", index=False)
    sin_err_df.to_excel("DatosLimpios.xlsx", index=False)


def main():
    nombre_archivo = "datos"
    datos_df = pd.read_csv(nombre_archivo+".csv", delimiter=";", parse_dates=["FechaCompleta"])
    datos_df.columns = datos_df.columns.str.upper()

    filtrar_nulos_en_excel(depurar_errores(datos_df))


main()