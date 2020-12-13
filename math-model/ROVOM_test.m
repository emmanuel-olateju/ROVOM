m=input('mass of vehicle: ');
g=input('gravitational constant: ');
C=input('drag coefficient: ');
P=input('density of medium travelled in: ');
A=input('cross-sectional area of vehicle: ');
mag_v=input('velocity-magnitude desired: ');
w=input('angular velocity desired: ');

[mag_v,mag_D]=ROVOM_init(m,g,C,P,A,mag_v,w);

t=linspace(0,5000,5000);
tether=[((0*2*pi)/360)*ones(1,1000) ((45*2*pi)/360)*ones(1,2000) ((0*2*pi)/360)*ones(1,2000)];
v=mag_v*(cos(tether)+(j*sin(tether)));
D=mag_D*(cos(tether)+(j*sin(tether)));
a=w*mag_v*(cos(tether)+(j*sin(tether)));
R=m*g*(cos(tether)+sin(tether));
[Fh_p,Fv_p]=ROVOM_propeller_force(tether,w,mag_v,mag_D,m,g);
Fv=(m*imag(a))+(m*g);
Fh=(m*real(a))+(mag_D*ones(1,length(tether)))+(m*g);

Fv_c=(Fh_p-(mag_D*ones(1,length(tether)))-R).*sin(tether);
Fh_c=(Fh_p-(mag_D*ones(1,length(tether)))-R).*cos(tether);
figure
subplot(2,2,1);plot(t,(m*imag(a)));xlabel('time');ylabel('vertical force');
subplot(2,2,2);plot(t,(m*real(a)));xlabel('time');ylabel('horizontal force');
subplot(2,2,3);plot(t,Fv_c);xlabel('time');ylabel('vertical force_c');
subplot(2,2,4);plot(t,Fh_c);xlabel('time');ylabel('horizontal force_c');

F=Fh_c+(j*Fv_c);
figure
subplot(2,2,1);plot(t,m*abs(a));xlabel('time');ylabel('acceleration magnitude');
subplot(2,2,2);plot(t,angle(a)*180/pi);xlabel('time');ylabel('acceleration angle');
subplot(2,2,3);plot(t,abs(F));xlabel('time');ylabel('force magnitude');
subplot(2,2,4);plot(t,angle(F)*180/pi);xlabel('time');ylabel('force angle');

figure
subplot(1,2,1);plot(t,Fv_p);xlabel('time');ylabel('vertical force');
subplot(1,2,2);plot(t,Fh_p);xlabel('time');ylabel('horizontal force');