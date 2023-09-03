if (!requireNamespace("stringr", quietly = TRUE)) {
  install.packages("stringr")
}
library(stringr)

# URL 
# Una dirección válida de URL debe contener de forma opcional el protocolo (http://, https://, ftp://, etc), uno o más subdominios separados por punto, y por último cero o más carpetas separadas por slash (/), donde puede o no terminar con /.
# protocolo://subdominio.dominio.extension/carpeta/carpeta/

protocolo <-"[[:alpha:]]+://"

# Dominio
# Debe comenzar con una letra o un número.
# El sufijo de dominios solo puede contener: -, _, 
# el punto se usa para separar un nombre de dominio de otro.
# No se permiten dos caracteres especiales consecutivos (por ejemplo, "..").
# el guion (-) no puede estar al comienzo ni al final de un nombre de dominio ni puede estar seguido inmediatamente por un punto (.)
# Un sufijo puede tener un solo dominio
# La longitud del dominio generalmente no debe superar los 253 caracteres (depende del servidor)
# Ejemplo: casi_miro1@co, 12_prueba.curso-1@lata_m1.db, ramir_2@13_ca.bar_q.co.

domain <- "[[:alnum:]]((-|_|\\.)?[[:alnum:]])*"
folder <- "(/[[:alnum:]]((-|_|\\.|-|%|\\$|#|&)?[[:alnum:]])*)*(/)?"

url <- paste0("^", protocolo,domain,folder, "$")

if (length(commandArgs(trailingOnly = TRUE)) != 0) {
  args <- commandArgs(trailingOnly = TRUE)

  for (i in 1:length(args)) {
    test <- args[i]
    result <- str_detect(test, url)
    cat(test, if (result) "es valido" else "no es valido", "\n")
  }
}