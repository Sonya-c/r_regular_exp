if (!requireNamespace("stringr", quietly = TRUE)) {
  install.packages("stringr")
}

library(stringr)

# EMAIL
# Una dirección de correo electrónico debe constar de dos partes separadas por el símbolo "@"
# el usuario (parte izquierda) y el dominio (parte derecha).

# No caracteres especiales al principio o al final
# Ni el usuario ni el dominio pueden comenzar ni terminar con un carácter especial.

# No espacios en blanco
# No se permiten espacios en blanco en una dirección de correo electrónico.

# Usuario
# Debe comenzar con una letra o un número.
# Considere direcciones donde el nombre de usuario puede contener separadores como: ., _, -.
# No se permiten dos caracteres especiales consecutivos (por ejemplo, "..").
# La longitud mínima del usuario es 1 carácter.
# La longitud máxima del usuario depende de la implementación del servidor de correo, pero generalmente se encuentra entre 1 y 64 caracteres.

# Dominio
# Debe comenzar con una letra o un número.
# El sufijo de dominios solo puede contener: -, _, 
# el punto se usa para separar un nombre de dominio de otro.
# No se permiten dos caracteres especiales consecutivos (por ejemplo, "..").
# el guion (-) no puede estar al comienzo ni al final de un nombre de dominio ni puede estar seguido inmediatamente por un punto (.)
# Un sufijo puede tener un solo dominio
# La longitud del dominio generalmente no debe superar los 253 caracteres (depende del servidor)
# Ejemplo: casi_miro1@co, 12_prueba.curso-1@lata_m1.db, ramir_2@13_ca.bar_q.co.

email <- "."