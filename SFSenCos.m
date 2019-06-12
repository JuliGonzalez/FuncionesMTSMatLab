function[an,bn,SF]=SFSenCos(f,N)
%Función que calcula los coeficientes a_n y b_n y la suma parcial de la
%serie de Fourier en senos y cosenos de una función, en el intervalo [-pi,pi]
syms x 
    % Orden de la suma parcial
an=[];
bn=[];
for k=1:N
  an=[an,int(f*cos(k*x),-pi,pi)/(pi)]; %Lista de coeficientes de an
  bn=[bn,int(f*sin(k*x),-pi,pi)/(pi)];%Lista de coeficientes de bn
end  
SF=an(1); %Inicializamos SF con el coeficiente a0=Coef(N+1) 
for n=1:N 
    z=0;
 SF=SF+an(n)*(cos(n*x))+ bn(n)*(sin(n*x));  %añadimos los sumandos -n y n 
end
end

