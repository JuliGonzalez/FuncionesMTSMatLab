function [f] = Sampling(x0,x1,F)
%discretizar se�ales analogicas a trav�s de un parametro solicitado
%PREGUNTAR DUDAS A ALFONSA DE COMO HACERLA BIEN
syms x
prompt = 'Introduce una funci�n de variable simb�lica x:  ';
f(x)= input(prompt)
F=[x0:F:x1]
A=2;
fase=pi/4;
%x=A*sin(2*pi*t*400+fase);
hold on
%stem(t,x)
syms x%declaramos la vble simb�lica de la se�al
ezplot(f(x),[x0,x1]) %gr�fica de la se�al anal�gica
hold off
end

