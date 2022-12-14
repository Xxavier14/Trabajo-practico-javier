#!/bin/bash
#Indicador estadístico de longitud de oraciones 


. filtro.sh
texto=$(cat texto.txt)

#inicializacion de variables
oracionCorta=""
oracionLarga=""
oracionTotal=0
longitudTotal=0

while read line
do
  if [ $oracionTotal == 0 ]
  then
    oracionCorta=$line
    oracionLarga=$line
  else
    if [[ ${#line} -gt ${#oracionLarga} ]]
    then
      oracionLarga=$line
    elif [[ ${#line} -lt ${#oracionCorta} ]] && [[ ${#line} != 0 ]]
    then
      oracionCorta=$line
    fi
  fi
  oracionTotal=$(( $oracionTotal + 1 ))
  longitudTotal=$(( $longitudTotal + ${#line} ))


done < "texto.txt" #se le pasa a read las frases


echo "La oracion mas corta es: $oracionCorta"
echo "La oracion mas larga es: $oracionLarga"
echo "El promedio de las oraciónes es de: $(echo "scale=2;(($longitudTotal/$oracionTotal))" | bc)"
# scale=2 para 2 decimales 0.00
