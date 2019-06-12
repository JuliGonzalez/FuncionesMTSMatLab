function [E] = Energia(x)
%calcula la energía de la señal
%le entra por parametros una función y devuelve un valor E que es su
%energía
y=abs(x).^2
E=sum(y)
end

