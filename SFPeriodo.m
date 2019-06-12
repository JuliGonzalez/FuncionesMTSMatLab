function [y,S] =SFPeriodo (f,N,T)
%Función que calcula los coeficientes c_n y la suma parcial de la serie de
%Fourier en exponenciales complejas de una función con periodo T
syms x;
y=[]; 
for k=-N:N 
  y=[y,int(f*exp(-j*2*pi*k*x/T),-T/2,T/2)/(T)]; %Lista de coeficientes
end  
S=y(N+1); %Inicializamos SF con el coeficiente c0=Coef(N+1) 
for n=1:N
  S=S+y(N+1-n)*exp(j*(-n)*x*2*pi/T)+y(N+1+n)*exp(j*n*x*2*pi/T); %añadimos los sumandos -n y n 
end
%disp('Lista de coeficientes:')
%disp('Suma parcial: ')   
end
