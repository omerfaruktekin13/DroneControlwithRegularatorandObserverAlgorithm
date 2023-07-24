# Drone Control with Regulator (LQR) and Observer Algorithm

## Project Media
![Dxxxxx](https://github.com/omerfaruktekin13/5-Bar-Parallel-Robot/blob/main/media/5bargif.gif "Deneme ")
|:--:|
| *Simulink Simscape Model* |
![Dxxxxx](https://github.com/omerfaruktekin13/5-Bar-Parallel-Robot/blob/main/media/5_bar.png "Deneme ")
| *5 Bar Parallel Robot Diagram* |
![Dxxxxx](https://github.com/omerfaruktekin13/5-Bar-Parallel-Robot/blob/main/media/simulink_model.png "Deneme ") 
| *Simulink Diagram* |
![Dxxxxx](https://github.com/omerfaruktekin13/5-Bar-Parallel-Robot/blob/main/media/base.png "Deneme ") 
| *Solidworks Base Drawing* |
![Dxxxxx](https://github.com/omerfaruktekin13/5-Bar-Parallel-Robot/blob/main/media/link.png "Deneme ") 
| *Solidworks Link Drawing* |

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
<p> * Simscape Multibody </p>
<p> * Simulink Desktop Real-Time </p>
<a href="https://www.solidworks.com/" target="_blank" rel="noreferrer"> <img src="https://upload.wikimedia.org/wikipedia/tr/7/75/SolidWorks_Logo.png" alt="matlab" width="150" height="40"/> </a>
<p> 
<p> * Solidworks 2021 (If you want to edit the structure of the mechanism.) </p>

## Installation
> 1. Download 2R folder, 5Bar_m_.m and 5bar_Sim.slx files.
> 2. Put these files into your MATLAB folder which is located in Documents.
> 3. Open the .m file and Simulink model. Then evaluate the first section of .m file.
> 4. Play Simulink model and you will see the Simscape model.
> 5. The end-effector of the mechanism will be controlled by your mouse.
> 6. Enjoy!

## Open to Development
Please share your comments and ideas about the project with me. Thank you for your time.
