function [x] = ortogonales(A,a,b)
%Función que determina si un conjunto de funciones reales es ortogonal
x=[];
for k=1:size(A,2)
    for l=k+1:size(A,2)
    x=[x,int(A(k)*A(l),a,b)];
    end
end
end

