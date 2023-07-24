%%ME 503 FINAL ASSIGNMENT
%ÖMER FARUK TEKİN

syms f1 f2 fdx fdy m x dx ddx y dy ddy th dth ddth h L g I dFdx dFdy

%Equation of Motion
ddx= (-(f1+f2)*sin(th)+fdx)/m;
ddy= ((f1+f2)*cos(th)-m*g+fdy)/m;
ddth=((f1-f2)*L+fdx*h*cos(th)+fdy*h*sin(th))/I;

x_nl=[x;dx;y;dy;th;dth];
u_nl=[f1;f2;fdx;fdy];

f=[dx;ddx;dy;ddy;dth;ddth];

A=jacobian(f,x_nl); %Part A
B=jacobian(f,u_nl); 


%% Observer Matrises Design
x_nl_o=[x;dx;y;dy;th;dth;fdx;fdy];
u_nl_o=[f1;f2];

ddx_o= (-(f1+f2)*sin(th)+fdx)/m;
ddy_o= ((f1+f2)*cos(th)-m*g+fdy)/m;
ddth_o=((f1-f2)*L+fdx*h*cos(th)+fdy*h*sin(th))/I;

f_o=[dx;ddx_o;dy;ddy_o;dth;ddth_o;dFdx;dFdy];
A_o=jacobian(f_o,x_nl_o);
B_o=jacobian(f_o,u_nl_o);
%% Regulator Design
%State vector Integers
x=0; dx=0; y=0; dy=0; th=0; dth=0;

%Input Vector Integers
f1=(m*g)/2; f2=(m*g)/2; fdx=0; fdy=0;

x_nom=[x; dx; y; dy; th; dth] ;
u_nom=[f1;f2;fdx;fdy];

%General System Integers
m=1.0; I=0.003; g=9.81; L=0.35; h=0.2;

A=subs(A);
B=subs(B);
A=eval(A);
B=eval(B);

x_nom=double(x_nom);
u_nom=eval(u_nom);

%Dividing B Matrises as Bc and Bd
Bc=B(:,1:2);
Bd=B(:,3:4);

C=[1 0 0 0 0 0;0 0 1 0 0 0];
Ab=[A zeros(6,2);-C zeros(2,2)];
Bb=[Bc;zeros(2,2)];

Q=eye(8);
R=[1 0;0 1];
K=lqr(Ab,Bb,Q,R);

%x_dot=Ax+Bu and u=-Kx
[T,D] = eig(A-(Bc*K(:,1:6)));

Ic_xl=[0;0;0;0;0;0]; 
Ic_xnl=Ic_xl+x_nom;

n=size(A);
if rank(ctrb(A,B))==n(1)
    display('System is controllable')
end
%% Nominal observer
x=0; dx=0; y=0; dy=0; th=0; dth=0; fdx=0; fdy=0; dFdx=0; dFdy=0;
f1=(m*g)/2; f2=(m*g)/2; 

x_nom_o=[x; dx; y; dy; th; dth; fdx; fdy] ;
u_nom_o=[f1;f2];

A_o=subs(A_o);
B_o=subs(B_o);

A_o=eval(A_o);
B_o=eval(B_o);

x_nom_o=double(x_nom_o);
u_nom_o=double(u_nom_o);

C_o=[1 0 0 0 0 0 0 1 ;0 0 1 0 0 0 1 0];

Obsv=obsv(A_o,C_o);

r=size(A_o);
if rank(Obsv)== r(1)
    display('System is observable')
end

[T_o_,D_o] = eig(A_o-(B_o*K(:,1:8)));
D_o = diag(D_o);
D_o = D_o - 5;

L_o=place(A_o',C_o',D_o)'

%% Plotting
t=out.grafik(:,1);
x=out.grafik(:,2);
y=out.grafik(:,4);
x1=out.grafik2(1:2201,1);
y1=out.grafik2(1:2201,3);
plot(x1,y1,'LineWidth',2)
hold on
plot(x,y,'LineWidth',2)
title('Real Trajectory')
xlabel('X[m]','FontSize',14)
ylabel('Y[m]','FontSize',14)
legend('Input','Real')
title('Input and Real Trajectory')

figure;
t1=out.yscope(:,1);
y2=out.yscope(:,2);
y3=out.yscope(:,3);
plot(t1,y2,'LineWidth',2)
hold on
plot(t1,y3,'LineWidth',2)
legend('Linear','Nonlinear')
title('Linear and Nonlinear Distance in y Direction')
xlabel('t[s]','FontSize',14)
ylabel('Y[m]','FontSize',14)

figure;
t3=out.xscope(:,1);
x2=out.xscope(:,2);
x3=out.xscope(:,3);
plot(t3,x2,'LineWidth',2)
hold on
plot(t3,x3,'LineWidth',2)
legend('Linear','Nonlinear')
title('Linear and Nonlinear Distance in x Direction')
xlabel('t[s]','FontSize',14)
ylabel('Y[m]','FontSize',14)