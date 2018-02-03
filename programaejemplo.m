clear
clc

%Defina la imagen a rotar. Los tres vectores deben tener el mismo tama�o
F_x=[0,1,2,3,4,5,6,7,8,9,10,0,-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,0,1,2,3,4,5,6,7,8,9,10,0,-1,-2,-3,-4,-5,-6,-7,-8,-9,-10];
F_y=[0,1,2,3,4,5,6,7,8,9,10,0,1,2,3,4,5,6,7,8,9,10,0,-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-0,-1,-2,-3,-4,-5,-6,-7,-8,-9,-10 ];
F_z=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

%Dibuje la imagen original indicando los puntos en X, en Y y en Z, as� mismo
plot3(F_x,F_y,F_z, 'k', 'LineWidth',6);

%Haga uso de subplot para colocar la figura (antes de dibujar); la instrucci�n
%recibe como par�metros el n�mero de renglones y columnas en los que se divide
%la imagen y como tercer par�metro la posici�n donde se dibujar�).
subplot(2,3,2); plot3(F_x,F_y,F_z, 'k', 'LineWidth',6);

%Crear 3 'sliders' , uno para cada eje de rotaci�n, el slider proporcionar� el valor
%del �ngulo de rotaci�n. Se requiere indicar los par�metros de: Valor m�nimo, Valor
%M�ximo, la resoluci�n o step, la posici�n del slider en la figura y por �ltimo el
%callback, es decir, la funci�n que se ejecutar� con cada movimiento en el slider
%(ROTX, ROTY, ROTZ)
slider_RX = uicontrol('Style','slider','Min',-3.146,'Max',3.1416,'Value',0,'SliderStep',[0.1 0.1], 'Position', [380 350 100 15], 'Callback', {@ROTX,F_x,F_y,F_z});
slider_RY = uicontrol('Style','slider','Min',-3.146,'Max',3.1416,'Value',0,'SliderStep',[0.1 0.1], 'Position', [380 330 100 15], 'Callback', {@ROTY,F_x,F_y,F_z});
slider_RZ = uicontrol('Style','slider','Min',-3.146,'Max',3.1416,'Value',0,'SliderStep',[0.1 0.1], 'Position', [380 310 100 15], 'Callback', {@ROTZ,F_x,F_y,F_z});