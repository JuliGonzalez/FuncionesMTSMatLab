function [x,n] = PulsoRectangular(na, nb, n1,n2)
%Funcion pulso Rectangular, que pone en 1 los valores comprendidos entre
% na y nb para una sucesion de numeros comprendida entre n1 y n2
%la función devuelve dos valores: x que es la sucesión con 0s y 1s y n que
%es la sucesión en la que está comprendida.
n=n1:n2;
x=[and((n-na)>=0,(n-nb)<=0)]
end

