function ROTY(source,~,F_x,F_y,F_z)
%Obtener valor del slider
val = source.Value;

%Obtener la matriz de Rotación (con valores numéricos) correspondiente al eje y ángulo de rotación
%donde Ry es una funcion con contenido
Matriz_Ry=Ry(val);
%Multiplicar la matriz de rotación numérica por la figura original para obtener la figura rotada
F_Ry=Matriz_Ry*[F_x; F_y; F_z];

%Obtener el vector de datos en X, en Y y en Z
F_Ry_x= F_Ry(1,:);
F_Ry_y= F_Ry(2,:);
F_Ry_z= F_Ry(3,:);

%Dibujar nuevamente la figura original y la figura rotada en el mismo sistema de coordenada
subplot(2,3,2); plot3(F_x,F_y,F_z, 'k', 'LineWidth',6 ); hold on; plot3(F_Ry_x,F_Ry_y,F_Ry_z, 'b', 'LineWidth',6); grid on; hold off;

%Dibujar nuevamente las figuras original y rotada visualizadas desde el eje x, y y z.
subplot(2,3,4); plot3(F_x,F_y,F_z, 'k', 'LineWidth',6 ); hold on, plot3(F_Ry_x,F_Ry_y,F_Ry_z, 'b', 'LineWidth',6);grid on; axis ([-2 2 -2 2]); view([1,0,0]); hold off
subplot(2,3,5); plot3(F_x,F_y,F_z, 'k', 'LineWidth',6 ); hold on, plot3(F_Ry_x,F_Ry_y,F_Ry_z, 'b', 'LineWidth',6);grid on; axis ([-2 2 -2 2]); view([0,1,0]); hold off
subplot(2,3,6); plot3(F_x,F_y,F_z, 'k', 'LineWidth',6 ); hold on, plot3(F_Ry_x,F_Ry_y,F_Ry_z, 'b', 'LineWidth',6);grid on; axis ([-2 2 -2 2]); view([0,0,1]); hold off
end

function R= Ry(theta)
R=[cos(theta), 0, sin(theta);0,1,0;-sin(theta), 0,cos(theta)];
end