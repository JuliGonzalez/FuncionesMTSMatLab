function [x,S] = raices(N, z)
%funci�n que calcula las raices de orden N
syms x
x=solve((x^N)-z);
S=sum(x);
end

