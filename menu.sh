#!/bin/bash
clear
PS3="Elija una opción: "
select opcion in "statsWords.sh" "statsUsageWords.sh" "findNames.sh" "statsSentences.sh" "blankLinesCounter.sh" "SALIR"
do
  if [ $REPLY == 6 ]
  then
    echo "Fin del programa"
    break
  elif [[ $REPLY -ge 1 ]] && [[ $REPLY -le 5 ]]
  then
    echo "Se va a ejecutar $opcion"
    ./$opcion
    continue
  else
    echo "Elija una de las opciones correctas"
    continue
  fi

done
