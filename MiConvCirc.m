function [y] = MiConvCirc(x1,x2)
%Función que calcula la convolución circular
N=length(x2);
    for k=1:N %% k es la fila de la matriz
        for m=1:N  %% m es la columna de la matriz
            if k<=m
              Mat(k,m)=x2(m+1-k);
            else Mat(k,m)=x2(N+m+1-k);
            end
        end
    end
y=x1*Mat;
end

