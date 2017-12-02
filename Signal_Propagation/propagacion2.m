% Animacion de la solucion de la ecuacion del calor 2d
% U_t = 1/8(U_xx + U_yy)
% en el dominio 0 < x, y < 1
% condicion inicial u(x,y,0)=Sin(pix) Sin(piy)
% para 0<t<3

[x y]=meshgrid(0:.01:1,0:.01:1);
%define una malla para [0,1]x[0,1] con incremento en x y y de 0.01
title('Animacion de la temperatura');
set(gca,'nextplot','replacechildren'); caxis manual;
% permite que todos los gr´aficos usen los mismos l´?mites en colores.
caxis([-1 1]);
% define los valores maximos para los limites como -1 y 1
axis equal;
%usa la misma escala para los ejes x y
t=0:0.05:3;
%vector de valores para los diferentes tiempos
for j=1:length(t) z=exp(-1/8*pi^2.*t(j)).*sin(2*pi*x).*sin(2*pi*y);
%evaluacion de la funcion de dos variables
axis off;
%remueve los ejes
pcolor(x,y,z);
%grafica en dos dimensiones
shading interp;
%interpolacion de colores
colorbar;
% agrega la barra de colores
M(j) = getframe(gcf);
% captura los graficos y los guarda en la matriz M
end

