function [X] = Ztrfinita (n,x)
%Primero dibuja la se�al finita x definida en el rango n
%Despu�s calcula su transformada z usando la definici�n  
stem(n,x)
syms z
X=sum(x./z.^n)
end

