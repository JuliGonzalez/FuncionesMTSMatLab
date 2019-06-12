function [f] = Sampling(x0,x1,F)
%discretizar señales analogicas a través de un parametro solicitado
%PREGUNTAR DUDAS A ALFONSA DE COMO HACERLA BIEN
syms x
prompt = 'Introduce una función de variable simbólica x:  ';
f(x)= input(prompt)
F=[x0:F:x1]
A=2;
fase=pi/4;
%x=A*sin(2*pi*t*400+fase);
hold on
%stem(t,x)
syms x%declaramos la vble simbólica de la señal
ezplot(f(x),[x0,x1]) %gráfica de la señal analógica
hold off
end

