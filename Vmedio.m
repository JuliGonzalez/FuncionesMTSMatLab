function [v] = Vmedio(n,x)
%devuelve una gr�fica con la se�al y una recta a la altura del valor medio
y=mean(x)
r=y*ones(size(x))
hold on
title('graficas:')
plot(n,x,n,r)
legend('x','media')
hold off
end
