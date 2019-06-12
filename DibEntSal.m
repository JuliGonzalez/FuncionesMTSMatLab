function [y] = DibEntSal(b,a,n,x)
%Función que dibuja la entrada y salida de un SLIT
%que esta definido entre los valores de n

y=filter(b,a,x);
subplot(2,1,1)
stem(n,x)
title 'grafica entrada'
xlabel('n'); ylabel('x(n)');
subplot(2,1,2)
stem(n,y)
title 'grafica salida'
xlabel('n'); ylabel('y(n)');

end

