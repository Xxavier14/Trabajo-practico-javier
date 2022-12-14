#!/bin/bash
echo "La cantidad de lineas vacías es: $(grep -cx '' texto.txt) "

# la funciona grep busca la conincidencia con el espacio vacio
# -c devuelve un recuento de las veces que se filtro
# -x seleciona las coincidencias que cubren exactamente toda la linea
exit 0
