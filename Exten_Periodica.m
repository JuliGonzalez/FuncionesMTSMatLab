function[y]= Exten_Periodica(x,P)
%devuelve la se�al peri�dica obtenida repitiendo P veces el vector x.
y=[];
for k= 0:P-1
y=[y,x];
end

