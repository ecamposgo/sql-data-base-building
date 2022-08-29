##FICHERO DE FUNCIONES##


# CREAR LA CADENA DE CONEXION 
# str_conn=lenguaje+driver://usuario:password@servidor:puerto/database   (string de conexion)
#str_conn=f'mysql+pymysql://{user_}:{pass_}@localhost:3306/DB'

def get_conn_string(filename,database):
    
    file = open(filename, 'r')
    lines=file.read().splitlines()
    user_=lines[0]
    pass_=lines[1]
    file.close()

    return f'mysql+pymysql://{user_}:{pass_}@localhost:3306/{database}'