function [x]=raices_unidad(N)
%devuelve los valores de las raices unidad de orden N
w=exp(j*2*pi/N);
x=w.^[0:N-1];
%saco la suma también aunque no se guarde en variables de salida
S=sum(x)
end

