library(stringr)

# Formato básico: Una dirección de correo electrónico debe constar de dos partes separadas por el símbolo "@": el usuario (parte izquierda) y el dominio (parte derecha).
# No caracteres especiales al principio o al final: Ni el usuario ni el dominio pueden comenzar ni terminar con un carácter especial.
# No espacios en blanco: No se permiten espacios en blanco en una dirección de correo electrónico.
# Case-insensitive: Las direcciones de correo electrónico son generalmente insensibles a mayúsculas y minúsculas, lo que significa que "usuario@dominio.com" y "USUARIO@DOMINIO.COM" se consideran equivalentes.
# Punto (.): Un correo electrónico debe contener al menos un punto (".") para separar el nombre del dominio.

# Usuario:
# Puede contener letras (mayúsculas y minúsculas), números y algunos caracteres especiales como ".", "-", y "_".
# Debe comenzar con una letra o un número.
# No se permiten dos caracteres especiales consecutivos (por ejemplo, "..").
# La longitud mínima del usuario es 1 carácter.
# La longitud máxima del usuario depende de la implementación del servidor de correo, pero generalmente se encuentra entre 1 y 64 caracteres.

# El dominio 
# Puede contener letras (mayúsculas y minúsculas) y números.
# Comienza con una letra o un número
# El sufijo de dominios solo puede contener: -, _, y el punto se usa para separar un nombre de dominio de otro
# no pueden haber caracteres especiales seguidos
# Puede contener un punto (.) como separador para subdominios.
# Debe tener al menos un subdominio y un dominio principal (ejemplo: "ejemplo.com").
# La longitud máxima del dominio depende de la implementación del servidor de correo, pero generalmente es de hasta 255 caracteres.

# Extensión de dominio 
# Puede contener letras (mayúsculas y minúsculas) y puede tener una longitud de 2 a 6 caracteres.
# La extensión de dominio es opcional pero común en las direcciones de correo (ejemplo: ".com", ".org", ".gov")
# Un sufijo puede tener un solo dominio. Ejemplo: casi_miro1@co, 12_prueba.curso-1@lata_m1.db, ramir_2@13_ca.bar_q.co.

