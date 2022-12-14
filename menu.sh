#!/bin/bash

opc=0
#inicializacion

while [ $opc -ne 6 ] ; do
#bucle para volver al menu

clear

echo "--- MENU DE OPCIONES ---"
echo ""
echo "1. statsWords"
echo "2. statsUsageWords"
echo "3. findNames"
echo "4. statsSentences"
echo "5. blankLinesCounter"
echo "6. Salir"
#menu de opciones


echo -n "Seleccione una opcion: " 
read opc
#lectura de la opcion del usuario


case $opc in
	
	1) echo "Se va a ejecutar $opc"
	sleep 1
	clear
	./statsWords.sh
	echo "Pulse cualquier tecla para continuar"
	read temp
	;;
	2) echo "Se va a ejecutar $opc"
	sleep 1
	clear
	./statsUsageWords.sh
	echo "Pulse cualquier tecla para continuar"
	read temp
	;; 
	3) echo "Se va a ejecutar $opc"
	sleep 1
	clear
	./findNames.sh
	echo "Pulse cualquier tecla para continuar"
	read temp
	;;
	4) echo "Se va a ejecutar $opc"
	sleep 1
	clear
	./statsSentences.sh
	echo "Pulse cualquier tecla para continuar"
	read temp
	;;
	5) echo "Se va a ejecutar $opc"
	sleep 1
	clear
	./blankLinesCounter.sh
	echo "Pulse cualquier tecla para continuar"
	read temp
	;;
	6) echo "--- Fin del programa ---"
	sleep 1
	exit 0
	;;
	*)echo "opcion incorrecta, reintete"
	sleep 1
	
esac
done
