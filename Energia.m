function [E] = Energia(x)
%calcula la energ�a de la se�al
%le entra por parametros una funci�n y devuelve un valor E que es su
%energ�a
y=abs(x).^2
E=sum(y)
end

