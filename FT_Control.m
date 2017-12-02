t=0:0.1:10;
%   Ganancia Estatica = 10
num1 = [10];
den1 = [1];
gan1 = tf(num1,den1)

figure(1);
step(gan1,t)

%   Ganancia Estatica 5
num2 = [5];
den2 = [1];
gan2 = tf(num2,den2)

figure(2);
step(gan2,t)

%   Ganancia 10 s
num3 = [10,0];
den3 = [0,1];
gan3 = tf(num3,den3)

%figure(3);
%step(gan3,t)

%   Ganancia 10 s
num4 = [1,20];
den4 = [0,1];
gan4 = tf(num4,den4)

%figure(4);
%step(gan4,t)

%   Ganancia 10(s+20)
num5 = [10,200];
den5 = [0,1];
gan5 = tf(num5,den5)

%figure(5);
%step(gan5,t)

%   Ganancia s^2
num6 = [1,0,0];
den6 = [1];
gan6 = tf(num6,den6)

%figure(6);
%step(gan6,t)

%   Ganancia s^3
num7 = [1,0,0,0];
den7 = [1];
gan7 = tf(num7,den7)

%figure(7);
%step(gan7,t)

%   Ganancia (s+20)^2
num8 = [1,40,400];
den8 = [1];
gan8 = tf(num8,den8)

%figure(8);
%step(gan8,t)

%   Ganancia 10(s+20)^2
num9 = [10,400,4000];
den9 = [1];
gan9 = tf(num9,den9)

%figure(9);
%step(gan9,t)
 
%   Ganancia (s)/(s+20)
num10 = [1,0];
den10 = [1,20];
gan10 = tf(num10,den10)

figure(10);
step(gan10,t)

%   Ganancia (10s)/(s+10)(s+20)
num11 = [10,0];
den11 = [1,30,200];
gan11 = tf(num11,den11)

figure(11);
step(gan11,t)

%   Ganancia 0.1
num12 = [0.1];
den12 = [1];
gan12 = tf(num12,den12)

figure(12);
step(gan12,t)

%   Ganancia 1/s 
num13 = [1];
den13 = [1,0];
gan13 = tf(num13,den13)

figure(13);
step(gan13,t)

%   Ganancia 0.1/s 
num14 = [0.1];
den14 = [1,0];
gan14 = tf(num14,den14)

figure(14);
step(gan14,t)

%   Ganancia 1/s+10 
num15 = [1];
den15 = [1,10];
gan15 = tf(num15,den15)

figure(15);
step(gan15,t)

%   Ganancia 1/s^2 
num16 = [1];
den16 = [1,0,0];    
gan16 = tf(num16,den16)

figure(16);
step(gan16,t)

%   Ganancia 0.1/(s(s+10))  
num17 = [0.1];
den17 = [1,10,0];
gan17 = tf(num17,den17)

figure(17);
step(gan17,t)

%   Ganancia 1/(s+10)^2 
num18 = [1];
den18 = [1,20,100];
gan18 = tf(num18,den18)

figure(18);
step(gan18,t)

%   Ganancia 1/ s(s+10)^2
num19 = [1];
den19 = [1,20,100,0];
gan19 = tf(num19,den19)

figure(19);
step(gan19,t)

%   Ganancia s(s+20) / (s+10)(s+100)
num20 = [1,20,0];
den20 = [1,110,1000];
gan20 = tf(num20,den20)

figure(20);
step(gan20,t)
 

%   Ganancia 10s(s+20) / (s+10)(s+30)(s+50)

num21 = [10,200,0];
den21 = [1,90,2300,15000];
gan21 = tf(num21,den21)

figure(21);
step(gan21,t)

