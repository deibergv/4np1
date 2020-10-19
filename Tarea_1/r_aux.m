% Funcion auxiliar para calcular la raíz n de un número
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parámetros:
% x : radicando
% a : índice (grado de la raíz)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Salidas
% x  : Resultado (Retorna el valor de la raíz x^(1/a)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Se emplea el método de Newton-Raphson para el cálculo de la función
% Funcion auxiliar para calcula la raiz de un numero y grado
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% sk     retorna el valor de la raiz
%
% Parámetros:
% x : radicando
% a : índice

function x = r_aux(x, a)
    syms x0;
    %funcion (x^n - a)
    f = (x0^a) - x;
    f1 = matlabFunction(sym(f));
    df = matlabFunction(diff(sym(f1))); % Derivada de la función f1
    tol = 10^-8; % Tolerancia
    iterMax = 2500; %Iteraciones máximas 
    k = 0;
    error = tol + 1;
    x0 = x * 0.5; 

    while (tol < error && k < iterMax) %Condición de parada
        dev = df(x0); %Derivada
        if (dev == 0)
            x = [];
            k = []; 
            error = [];
            disp('Error: La raíz se indefine');
        else
            x = x0 - (f1(x0)/dev); % Aproximación de la raíz
                                   % x0 - ((x0^a-x)/(x0^a-x)')
            error = abs(x0 - (f1(x0)/dev)); %Cálculo del error
            x0 = x;
            k = k+1;
        endif
    endwhile
endfunction