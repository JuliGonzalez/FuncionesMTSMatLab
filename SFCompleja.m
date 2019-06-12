function [y,S] =SFCompleja (f,N)
%Función que calcula los coeficientes c_n y la suma parcial de la serie de Fourier
%en exponenciales complejas de una función, en el intervalo [-pi,pi]
syms x;
y=[]; 
for k=-N:N 
  y=[y,int(f*exp(-j*k*x),-pi,pi)/(2*pi)]; %Lista de coeficientes
end  
S=y(N+1); %Inicializamos SF con el coeficiente c0=Coef(N+1) 
for n=1:N 
  S=S+y(N+1-n)*exp(j*(-n)*x)+y(N+1+n)*exp(j*n*x); %añadimos los sumandos -n y n 
end
%disp('Lista de coeficientes:')
%disp('Suma parcial: ')   
end

