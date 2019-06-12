function [x,n] = Salto(n0,n1,n2)
%salto definida en n1:n2 y que toma el valor 1 a partir del dato
%introducido n0
n=n1:n2;
x=[(n-n0)>=0]
end
