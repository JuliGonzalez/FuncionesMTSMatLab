function [x] = MiIDFT(X)
%Función que calcula matricialmente la IDFT
%Función que calcula la DFT inversa de una señal finita 
N=length(X);
w=exp(2*pi*j/N);
n=0:N-1; 
k=n';
M=w.^(k*n);
x=X*M;
x=x/N;
end

