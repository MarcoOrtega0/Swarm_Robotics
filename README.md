# Swarm_Robotics
Requisitos del Sistema:

![image](https://user-images.githubusercontent.com/86685506/150532045-d37f9697-a89e-4cd7-952a-a5faf2fa6420.png)

Además, dentro de Matlab será necesario contar como mínimo con:
<ul>
<li> Simulink </li>
<li> 	Robotics System Toolbox </li>
<li> 	ROS Toolbox </li>
</ul>
<b>Copia del Package de ROS:</b>
<p>Al verificarse la instalación de todos los requisitos previamente mencionado, es necesario clonar o copiar el package del repositorio:</p>
<p>https://github.com/Oldmonkey001/Swarm_Robotics</p>
<p>Dentro de este repositorio se tiene la carpeta multi_robot, la cual debera ser copiada en el catkin workspace:</p>
<p>/home/USER/catkin_ws/src/multi_robot</p>
<p>Por otra parte, las carpetas de Gazebo y Matlab son copiadas en una carpeta en el escritorio de tal manera:</p>
<p>/home/USER/Escritorio/Swarm\ Robots </p>
<p>*USER es el nombre de usuario de Linux,por lo que debe ser modificado para cada computadora, y en los ejecutables dentro de la carpeta Gazebo</p>
<p>Se recomienda la compilación del paquete despues de copiarlo, ejecutando las siguientes lineas:</p>
<p><b>$ roscd</b></p>
<p><b>$ catkin_make</b></p>

<b>Ejecución:</b>
<p>Para la ejecución del banco de pruebas se abre a la par el archivo main_swarm.mlx en MATLAB y el menu de Gazebo</p>
*** imagen 1
<p>Donde se seleccionará el banco de pruebas y los archivos de Matlab-Simulink en función del número de agentes</p>
<p>Una vez abiertos los documentos y el banco de pruebas se realizan los siguientes pasos:</p>
<ol>
  <li>Inicialización, comportamiento enjambre (Archivo *.mlx)</li>
  <li>Ejecución (Simulación en run paced mode) (Archivo *.slx)</li>
  <li>Una fez finalizada la prueba adquiir y análizar los datos de simulación (Archivo *.mlx)</li>
</ol>

<b>Modificación:</b>
<p>Cualquier parte del entorno o arquitectura de control, así como la visualización de datos son modificables:</p>
<ul>
<li> Banco de Pruebas -> multi_robot </li>
<li> Arquitectura de control -> Simulink</li>
<li> Planeación y Visualización de datos -> Matlab .mlx </li>
</ul>

