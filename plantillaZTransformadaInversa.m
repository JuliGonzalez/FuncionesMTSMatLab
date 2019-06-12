%transformadas inversas plantilla
%En primer lugar definimos z y n como variables simbólicas
syms n
syms z
%apartado a
%X(z)= 1/((z^2)-(3*z)+2)
%apartado b
%X(z)=(z^-1)-(z^-2)+(1/(1-2*z^-1))
%apartado c
%X(z)=1/(z-2)
%apartado d
%X(z)=(z-1)/(8*z^3-6*z^2+z)
%apartado e
%X(z)=1/(z^2-2*z+1)
%apartado f
X(z)=1/(z^2+4)
%Obtenemos, si se puede, la transformada inversa directamente
x= iztrans(X(z),z,n)
%Obtenemos los  primeros términos de la señal x
n=0:5;  
los6primeros=iztrans(X(z),z,n)
%Para hacer la descomposición en fracciones simples, usamos residuez
%Introducimos los coeficientes de la expresión X en potencias de z^(-1)
%faltan los primeros residuez de los apartados a y tal...
%apartado a
%[R,p,c]= residuez([1],[2,-3,1])
%apartado b
%[R,p,c]= residuez([1],[1,0,-2])
%apartado c
%[R,p,c]= residuez([-1],[1,-2])
%apartado d
%[R,p,c]= residuez([0,0,1,-1],[8,-6,1])
%apartado e
%[R,p,c]= residuez([0,0,1],[1,-2,1])
%apartado f
[R,p,c]= residuez([0,0,1],[1,0,4])
