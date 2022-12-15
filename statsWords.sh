#!/bin/bash


. filtro.sh

texto=$(cat texto.txt)

#inicializacion de variables
palabraLarga=""
palabraCorta=""
cantidadTotal=0
longitudTotal=0

for i in $texto
do
filtr=$(filtro $i)
  if [ $cantidadTotal == 0 ]
  then
    palabraCorta=$filtr
    palabraLarga=$filtr
  else
    if [ ${#filtr} -gt ${#palabraLarga} ]
    then
      palabraLarga=$filtr
    elif [[ ${#filtr} -lt ${#palabraCorta} ]] && [ ${#filtr} -ne 0 ] # para que no tome espacios vacios
    then
      palabraCorta=$filtr
    fi
  fi
  cantidadTotal=$(($cantidadTotal + 1))
  longitudTotal=$(($longitudTotal + ${#filtr}))
done
echo "La palabra mas larga es: $palabraLarga"
echo "La palabra mas corta es: $palabraCorta"
echo "La longitud promedio de las palabras es de $(echo "scale=2; (($longitudTotal/$cantidadTotal))" | bc)"
# scale=2 para 2 decimales 0.00
