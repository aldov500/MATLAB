pe = linspace(0,2*pi);
te = linspace(0,pi);
[t,p] = meshgrid(te,pe);

e = abs(((sin(t)).^2.*((cos(p)).^3)));
x = e.*sin(t).*cos(p);
y = e.*sin(t).*cos(p);
z = e.*cos(t);

figure(1);
polar(t,e);
figure(2);
polar(p,e);
figure(3);
surf(x,y,z);
figure(4);
plot(x,y);
figure(5);
plot(x,y);
