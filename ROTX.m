function ROTX(source,~,F_x,F_y,F_z)
%Obtener valor del slider
val = source.Value;

%Obtener la matriz de Rotaci�n (con valores num�ricos) correspondiente al eje y �ngulo de rotaci�n
%donde Ry es una funcion con contenido
Matriz_Rx=Rx(val);
%Multiplicar la matriz de rotaci�n num�rica por la figura original para obtener la figura rotada
F_Rx=Matriz_Rx*[F_x; F_y; F_z];

%Obtener el vector de datos en X, en Y y en Z
F_Rx_x= F_Rx(1,:);
F_Rx_y= F_Rx(2,:);
F_Rx_z= F_Rx(3,:);

%Dibujar nuevamente la figura original y la figura rotada en el mismo sistema de coordenada
subplot(2,3,2); plot3(F_x,F_y,F_z, 'k', 'LineWidth',6 ); hold on; plot3(F_Rx_x,F_Rx_y,F_Rx_z, 'b', 'LineWidth',6); grid on; hold off;

%Dibujar nuevamente las figuras original y rotada visualizadas desde el eje x, y y z.
subplot(2,3,4); plot3(F_x,F_y,F_z, 'k', 'LineWidth',6 ); hold on, plot3(F_Rx_x,F_Rx_y,F_Rx_z, 'b', 'LineWidth',6);grid on; axis ([-2 2 -2 2]); view([1,0,0]); hold off
subplot(2,3,5); plot3(F_x,F_y,F_z, 'k', 'LineWidth',6 ); hold on, plot3(F_Rx_x,F_Rx_y,F_Rx_z, 'b', 'LineWidth',6);grid on; axis ([-2 2 -2 2]); view([0,1,0]); hold off
subplot(2,3,6); plot3(F_x,F_y,F_z, 'k', 'LineWidth',6 ); hold on, plot3(F_Rx_x,F_Rx_y,F_Rx_z, 'b', 'LineWidth',6);grid on; axis ([-2 2 -2 2]); view([0,0,1]); hold off
end

function R= Rx(theta)
R=[cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
end