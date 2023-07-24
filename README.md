# Drone Control with Regulator (LQR) and Observer Algorithm

## Project Media
![Dxxxxx](https://github.com/omerfaruktekin13/DroneControlwithRegulatorandObserverAlgorithm/blob/main/Media/DroneGif.gif "Deneme ")
|:--:|
| *Simulink 3D Animation* |
![Dxxxxx](https://github.com/omerfaruktekin13/DroneControlwithRegulatorandObserverAlgorithm/blob/main/Media/System.png "Deneme ")
| *Drone Path* |
![Dxxxxx](https://github.com/omerfaruktekin13/DroneControlwithRegulatorandObserverAlgorithm/blob/main/Media/SimulinkModel.png "Deneme ") 
| *Simulink Diagram* |
![Dxxxxx](https://github.com/omerfaruktekin13/DroneControlwithRegulatorandObserverAlgorithm/blob/main/Media/Equations.png "Deneme ") 
| *Equations of the Motion* |
![Dxxxxx](https://github.com/omerfaruktekin13/DroneControlwithRegulatorandObserverAlgorithm/blob/main/Media/Linearization.png "Deneme ") 
| *Linearization* |

## Description
1. The drone which has 2 DoF, is controlled by creating a tracking system, regulator, and observer algorithms. If this drone trajectory is accepted in the xy plane, there are some blocks on its path and it needs to move to +y and -y directions while moving in +x direction. The mass center of the drone is described as a C point and the CD link is rigidly connected to the mass center. This link has the length as h. 𝐹𝐷𝑥 and 𝐹𝐷𝑦 are external disturbances. The moment of inertia around the mass center is I. X and Y representation of the position of the drone. External forces are given from the end point of the rigid link CD. (Fig. 2)
2. Equations of motion of the drone are given in Figure 4.
3. For linearization, state and input vectors are given in Figure 5.
4. Regulator design is made by Linear Quadratic Regulator (LQR) Algorithm.
5. Observer design can be seen in .m file.
6. I used Simulink 3D Animation Toolbox for the visualization of the system.

## Tools and Languages
<a href="https://www.mathworks.com/" target="_blank" rel="noreferrer"> <img src="https://upload.wikimedia.org/wikipedia/commons/2/21/Matlab_Logo.png" alt="matlab" width="40" height="40"/> </a>
<p> * MATLAB 2023a </p>
<p> * Simulink </p>
<p> * Matlab Symbolic Calculation </p>
<p> * Simulink 3D Animation </p>

## Installation
> 1. Download DroneControlm.m and DroneControlSimulink.slx files.
> 2. Put these files into your MATLAB folder which is located in Documents.
> 3. Open the .m file and Simulink model. Then evaluate the first section of .m file.
> 4. Play all sections of the .m file until the last part because the last part is creating plots for comparing the linear and nonlinear systems in trajectory.
> 5. Play the Simulink model and open the 3D Animation block to watch the animation.
> 6. Run the last section of the .m file the see plots.

## Open to Development
Please share your comments and ideas about the project with me. Thank you for your time.
