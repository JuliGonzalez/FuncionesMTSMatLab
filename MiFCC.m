function [y] = MiFCC(x1,x2)
%Función que calcula la convolución circular de dos señales finitas de manera
%rápida, haciendo uso de las funciones fft e ifft de MATLAB
    X1=fft(x1);
    X2=fft(x2);
    X=X1.*X2;
    y=ifft(X)
end

