#!/bin/bash 
# Define la lista del menú aqui
echo "***************************************************************************************" 
echo "" 
echo "                                             /\/\ " 
echo "                                             {o,o}" 
echo "                                             |)__)" 
echo "                                      =======''=''=======" 
echo "" 
echo "                                 ESCUELA POLITECNICA NACIONAL                           "
echo "                                         SWARM ROBOTS               "
echo "" 
echo "***************************************************************************************"
echo "" 
echo "" 
echo "Menú para inicializar el banco de pruebas: "
echo "" 
echo "1) One_Robot_Cube : Prueba para 1 agente para la evasión de un cubo  "
echo "2) One_Robot_Cylinder : Prueba para 1 agente para la evasión de un cilindro "
echo "3) One_Robot_Wall : Prueba para 1 agente para la evasión de una pared "
echo "4) Two_Robots : Prueba para   intercolisiones  entre 2 agentes"
echo "5) Two_Robots_Obstacle : Prueba para 2 agentes con obstaculos "
echo "6) Three_Robots : Prueba para intercolisiones entre 3 agentes "
echo "7) Four_Robots_Diamond: Prueba para intercolisiones entre 4 agentes"
echo "8) Four_Robots_Square: Prueba para evasión de obstaculos con 4 agentes"
echo "9) Six_Robots: Prueba para intercolisiones con 6 agentes"
echo "10) Salir"
echo "" 

export TURTLEBOT3_MODEL=waffle_pi
PS3="Seleccionar el mundo: " 
select opt in One_Robot_Cube One_Robot_Cylinder One_Robot_Wall Two_Robots Two_Robots_Obstacle Three_Robots Four_Robots_Diamond Four_Robots_Square Six_Robots  salir; 
do 
    case $opt in 
        One_Robot_Cube) 
            echo "Prueba para 1 robot (cubo)" 
            . one_robot_cube.sh
            ;; 
        One_Robot_Cylinder) 
            echo "Prueba para 1 robot (cilindro)" 
            . one_robot_cylinder.sh
            ;;             
        One_Robot_Wall) 
            echo "Prueba para 1 robot (pared)" 
            . one_robot_wall.sh
            ;;                
        Two_Robots) 
            echo "Prueba para 2 robots (sin obstaculos)" 
            . two_robot.sh
            ;;             
        Two_Robots_Obstacle) 
            echo "Prueba para 2 robots (con obstaculos)" 
            . two_robot_obst.sh
            ;;              
        Three_Robots) 
            echo "Prueba para 3 robots" 
            . three_robot.sh
            ;;             
        Four_Robots_Diamond) 
            echo "Prueba para 4 robots (formación diamante)" 
            . four_robots_diamond.sh
            ;;  
        Four_Robots_Square) 
            echo "Prueba para 4 robots (formación cuadrada)" 
            . four_robots_square.sh
            ;;  
        Six_Robots)
            echo "Prueba para 6 robots (formación hexagonal)" 
            . six_robots_hexa.sh
            ;;                      
        salir) 
            break 
            ;; 
        *) 
            echo "$REPLY no es una opción válida" 
            ;; 
    esac 
done
