#!/bin/bash
if [ -d ./database ] #A t-il deja été créé?
then
	NAME=`cat database/name_tamagotchi`	
else
	mkdir database
	clear
	read -p "Nom de votre nouveau tamagotchi ?" NAME
	echo $NAME > database/name_tamagotchi
	echo "$(( ( RANDOM % 5 )  + 1 ))" > database/max_age
	echo "0" > database/current_hungry
	echo "2" > database/current_poo
	echo "1" > database/current_age
	echo "10" > database/current_energy
	echo "1" > database/is_alive #Fichier supprimé à la mort du tamagotchi
fi

JEUX=1
HUNGRY=`cat database/current_hungry`
POO=`cat database/current_poo`
ENERGY=`cat database/current_energy`
while (($JEUX!=0))
	if [ $POO -gt 5 ] # [ $ENERGY -le 0 || $POO -gt 5 || $HUNGRY -le 0 ]
		then  
			rm -rf database/is_alive
		fi
do
	if [ -f database/is_alive ] #Est t-il en vie?
	then			
		echo "Que voulez vous faire avec $NAME ? " 
		echo "1-Nourir"
		echo "2-Laver"
		echo "3-Voir info"
		echo "4-Faire une sieste"
		echo "5-Nouveau tamagotchi"
		echo "6-Quitter"
		read RESPONSE
		if [ $RESPONSE = 1 ] #Reponse du joueur
		then
			clear
			echo "Vous donnez à manger à $NAME..."
			sleep 4
			HUNGRY=$(($HUNGRY + 1))
			echo "$HUNGRY" > database/current_hungry
		elif [ $RESPONSE = 2 ]
		then 
			clear
			echo "Vous etes en train de laver $NAME..."
			sleep 4
			CLEAN=1
			POO=$(($POO - $CLEAN))
			echo "$POO" > database/current_poo
		elif [ $RESPONSE = 3 ]
		then
			
			echo "Energie" 
			echo "$ENERGY /10"
			echo "Age de $NAME : "
			cat database/current_age
			echo "Nombre de caca"
			cat database/current_poo
			echo "Nouriture"
			echo "$HUNGRY /10"
			read -p "Appuyer sur entrée pour continuer"
		elif [ $RESPONSE = 4 ] #Sieste
		
			clear
			echo "$NAME est en train de ce reposer..."
			sleep 5
			ENERGY=$(($ENERGY + 5))
			echo "$ENERGY" #> database/current_energy
		elif [ $RESPONSE = 5 ]
		then 
			rm -rf database
			JEUX=0
		elif [ $RESPONSE = 6 ]#quit
		then
			JEUX=0
		fi
	else 
		echo "$NAME est mort"
		sleep 2
		rm -rf database
		exit
	fi
done

	
	

