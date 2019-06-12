function [x] = MiIDFT(X)
%Funci�n que calcula matricialmente la IDFT
%Funci�n que calcula la DFT inversa de una se�al finita 
N=length(X);
w=exp(2*pi*j/N);
n=0:N-1; 
k=n';
M=w.^(k*n);
x=X*M;
x=x/N;
end

