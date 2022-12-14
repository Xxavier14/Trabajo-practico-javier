#!/bin/bash


source filtro.sh
texto=$(cat texto.txt)

touch textoStats.txt
textoStats=textoStats.txt


for i in $texto
do
filt=$(filtro $i)
  if [ ${#filt} -ge 4 ]
  then
    (echo $filt)>>$textoStats #concatena
  fi
done

cat $textoStats | sort | uniq -c | sort -r | head -10
# sort ordena alfabeticamente
# unic -c elimina repeticiones y con -c muestra la cantidad de ocurrencias
# sort -r invierte el resultado
# head -10 imprime las primeras 10 lineas
rm textoStats.txt
