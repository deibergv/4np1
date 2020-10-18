pkg load symbolic;
%Función encargada de aproximar mediante iteraciones la solución f(x) = 0.\n",

%Sintaxis:  newton(f, x0, tol, iterMax)\n",
% \n",
%Parámetros Iniciales: Una función, un valor inicial de X, una tolerancia y un número definido de iteraciones.\n",
%            \n",
%Parámetros de Salida: valor aproximado, número de iteración y valor del error.          \n",

function [x,k,error] = newton(f, x0)
    tol=10^-8;
    iterMax=2500;
    f1 = sym(f);
    f2 = diff(f1);
    x = []; k = []; error = [];
    k = 0;
    error = tol + 1;
    e = [];
        while and(error > tol, k < iterMax)
            k = k + 1;
            x= x0-double(subs(f1,x0)/subs(f2,x0));
            error = abs(double(subs(f1,x)));
            e = [e error];
           x0 = x;
        end
        %plot(1:k,e)
endfunction