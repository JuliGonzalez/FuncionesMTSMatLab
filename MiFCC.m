function [y] = MiFCC(x1,x2)
%Funci�n que calcula la convoluci�n circular de dos se�ales finitas de manera
%r�pida, haciendo uso de las funciones fft e ifft de MATLAB
    X1=fft(x1);
    X2=fft(x2);
    X=X1.*X2;
    y=ifft(X)
end

