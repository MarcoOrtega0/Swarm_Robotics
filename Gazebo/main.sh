#!/bin/bash 
# Define la lista del menú aqui
echo "******************************************" 
echo "         Escuela Politécnica Nacional     "
echo "               SWARM ROBOTS               "
echo "" 
echo "Menu para inicializar el banco de pruebas "
echo "" 
echo "******************************************" 
echo "" 
echo "1) One_Robot : Test para 1 agente  "
echo "   Dim:10x10 mts"
echo "   Obst: "
echo "   -1 cilindro radio=0.21 pos=[1,1]" 
echo "2) Cruz : Prueba de cruce 4 agentes "
echo "   Dim:12x12 mts"
echo "   Obst:"
echo "   -intercolisiones  "
echo "3) Linea_4: Formación en linea 4 agentes"
echo "   Dim:24x24 mts"
echo "   Obst: "
echo "   -intercolisiones" 
echo "4) Linea_6: Formación en linea 6 agentes"
echo "   Dim:24x24 mts"
echo "   Obst: "
echo "   -intercolisiones" 
echo "5) Square: Formación cuadrado 4 agentes"
echo "   Dim:24x24 mts"
echo "   Obst: "
echo "   -intercolisiones" 
echo "   -2 cilindros radio=0.21 pos=[(2,2);(1,-2)]" 
echo "   -2 cubos dim=1x1x1 pos=[(-3,-3);(-2,2)]" 
echo "6) Turtle4: Formación rombo 4 agentes"
echo "   Dim:Hexagono Base Turtlebot package"
echo "   Obst: "
echo "   -intercolisiones" 
echo "   -9 cilindros radio=0.15 matriz 3x3 en (0,0)" 
echo "7) Turtle6: Formación Hexagonal 6 agentes"
echo "   Dim:Hexagono Base Turtlebot package"
echo "   Obst: "
echo "   -intercolisiones" 
echo "   -9 cilindros radio=0.15 matriz 3x3 en (0,0)" 

export TURTLEBOT3_MODEL=waffle_pi
PS3="Seleccionar el mundo: " 
select opt in one_robot cruz linea_4 linea_6 square turtle_4 turtle_6 salir; 
do 
    case $opt in 
        one_robot) 
            echo "Prueba para 1 solo robot" 
            . one_robot.sh
            ;; 
        cruz) 
            echo "Test para colisión en forma cruz"
            . cruz_4.sh
            ;; 
        linea_4) 
            echo "Formación en linea 4 robots"
            . line_4.sh
            ;; 
        linea_6) 
            echo "Formación en linea 6 robots"
            . line_6.sh
            ;; 
        square) 
            echo "Formación cuadrada cruce con obstaculos"
            . square_4.sh
            ;; 
        turtle_4) 
            echo "Formación rombo cruce con obstaculos"
            . turtle_4.sh 
            ;;   
        turtle_6) 
            echo "Formación rombo cruce con obstaculos"
            . turtle_6.sh 
            ;;                            
        salir) 
            break 
            ;; 
        *) 
            echo "$REPLY no es una opción válida" 
            ;; 
    esac 
done
