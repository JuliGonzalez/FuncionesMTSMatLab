 qufunction [y] = miDTFT(na, nb, x)
%funcion que recibe como par�metros de entrada dos enteros na y nb, y una se�al 
%finita x(n) definida en [na,nb], y que devuelva la DTFT de la se�al x(n).
n=[na:nb];
syms w;
y=sum(x.*exp(-j*w*n))
end

