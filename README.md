# ISO527_Data
An Octave/MatLab code that opens an Excel sheet (Resumo_Prensados_e_Impressos.xlsx) and transforms its data in vectors. The values of linear elastic modulus (Et) are calculated by ISO527 methodology and linear regression. There are code lines for graphs. The values of yield and ultimate daformation are not calculated by this code (they are calculated in Excel).

## General Description
This code was utilized in my undergraduate thesis project. There, I have  FFF printed PLA and PVDF specimens with different conditions and one of the many assessment tests was the determination of they tensile properties. 
One can see that several lines are commented. They work (!) but for my thesis I have not used them. They are a linear regression to calculate the Linear Elastic Modulus. 

## Execution Environment
Setup (Windows)
* Install Octave version 8.2.0 or a similar Matlab version
* create a `New_Folder` folder
* Move the `Resumo_Prensados_e_Impressos.xlsx` xlsx file to `New_Folder` folder
* Move the `Script Tratamento Curvas.m` Octave/Matlab file to `New_Folder` folder
How to Run
* Open Octave
* In "Current Directory:" (second line toolbar) find `New_Folder`;
* In "File Browser" double click `Script Tratamento Curvas.m`;
* Press "F5" or Press the `Save File and Run / Continue` button;
  or
* Open `New_Folder`;
* double click `Script Tratamento Curvas.m`;
* Press "F5" or Press the `Save File and Run / Continue` button;
## Outputs
The code will automatically generate its graphs. If needed, the variables will 
  

If you have any doubts don't hesitate to contact me :)
Ivan
