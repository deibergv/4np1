% Funcion auxiliar para calcular la ra�z n de un n�mero
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Par�metros:
% x : radicando
% a : �ndice (grado de la ra�z)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Salidas
% x  : Resultado (Retorna el valor de la ra�z x^(1/a)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Se emplea el m�todo de Newton-Raphson para el c�lculo de la funci�n
pkg load symbolic;

function x = r_aux(x, a)
    syms x0;
    %funcion (x^n - a)
    f = (x0^a) - x;
    f1 = sym(f); 
    df = diff(sym(f1)); % Derivada de la funci�n f1
    tol = 10^-8; % Tolerancia
    iterMax = 2500; %Iteraciones m�ximas 
    k = 0;
    error = tol + 1;
    e = [];
    x0 = x/2; 

    while (tol < error && k < iterMax) %Condici�n de parada
        dev = df(x0); %Derivada
        if (dev == 0)
            x = [];
            k = []; 
            error = [];
            disp('Error: La ra�z se indefine.')
        endif
        else
            x = x0 - (f1(x0)/dev); % Aproximaci�n de la ra�z
                                   % x0 - ((x0^a-x)/(x0^a-x)')
            error = abs(x0 - (f1(x0)/dev)); %C�lculo del error
            e = [e error];
            x0 = x;
            ++k;
         end
    endwhile
endfunction