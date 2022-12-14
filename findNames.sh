#!/bin/bash



. filtro.sh
#filtra palabra que comiencen con Mayuscula 


texto=$(cat texto.txt)
regex="^[A-Z]{1}([a-z]+$)"


touch filtradas.txt
filtradas=filtradas.txt


for i in $texto

do
  [[ $(filtro $i) =~ $regex ]] && echo $(filtro $i) >> $filtradas
  
done

echo "A continuacion una lista de los nombres propios:" ; cat $filtradas
rm filtradas.txt
exit 0
