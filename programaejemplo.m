clear
clc

%Defina la imagen a rotar. Los tres vectores deben tener el mismo tamaño
F_x=[0,1,2,3,4,5,6,7,8,9,10,0,-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,0,1,2,3,4,5,6,7,8,9,10,0,-1,-2,-3,-4,-5,-6,-7,-8,-9,-10];
F_y=[0,1,2,3,4,5,6,7,8,9,10,0,1,2,3,4,5,6,7,8,9,10,0,-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-0,-1,-2,-3,-4,-5,-6,-7,-8,-9,-10 ];
F_z=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

%Dibuje la imagen original indicando los puntos en X, en Y y en Z, así mismo
plot3(F_x,F_y,F_z, 'k', 'LineWidth',6);

%Haga uso de subplot para colocar la figura (antes de dibujar); la instrucción
%recibe como parámetros el número de renglones y columnas en los que se divide
%la imagen y como tercer parámetro la posición donde se dibujará).
subplot(2,3,2); plot3(F_x,F_y,F_z, 'k', 'LineWidth',6);

%Crear 3 'sliders' , uno para cada eje de rotación, el slider proporcionará el valor
%del ángulo de rotación. Se requiere indicar los parámetros de: Valor mínimo, Valor
%Máximo, la resolución o step, la posición del slider en la figura y por último el
%callback, es decir, la función que se ejecutará con cada movimiento en el slider
%(ROTX, ROTY, ROTZ)
slider_RX = uicontrol('Style','slider','Min',-3.146,'Max',3.1416,'Value',0,'SliderStep',[0.1 0.1], 'Position', [380 350 100 15], 'Callback', {@ROTX,F_x,F_y,F_z});
slider_RY = uicontrol('Style','slider','Min',-3.146,'Max',3.1416,'Value',0,'SliderStep',[0.1 0.1], 'Position', [380 330 100 15], 'Callback', {@ROTY,F_x,F_y,F_z});
slider_RZ = uicontrol('Style','slider','Min',-3.146,'Max',3.1416,'Value',0,'SliderStep',[0.1 0.1], 'Position', [380 310 100 15], 'Callback', {@ROTZ,F_x,F_y,F_z});