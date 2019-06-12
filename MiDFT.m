function [X] = MiDFT(x)
%Función que calcula matricialmente la DFT
N=length(x)
w=exp(-2*pi*j/N)
n=0:N-1; 
k=n';
M=w.^(k*n);
X=x*M;
end