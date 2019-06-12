function [X] = Ztrfinita (n,x)
%Primero dibuja la señal finita x definida en el rango n
%Después calcula su transformada z usando la definición  
stem(n,x)
syms z
X=sum(x./z.^n)
end

