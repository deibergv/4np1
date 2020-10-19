%
%Función Transcendental de sinh(x)
%
function [Sk] = sinh_t(x)
  tol = 10^-8; % Tolerancia
  iterMax = 2500; %Iteraciones máximas del cálculo
  Sk=1;%Condicion inicial
  k=1;%iteracion
  error=tol+1;
  while (tol < error && k < iterMax) %Condición de parada
    Sk_temp=power_t(x,2*k+1)*div_t(factorial(2*k));
    Sk_nuevo=Sk_temp+Sk;
    error=abs(Sk_nuevo-Sk); %Calcular error
    Sk=Sk_nuevo;
    k=k+1;
  endwhile  
endfunction

% sinh(pi) = 11.549
% sinh_t(pi) = 34.276               ???????????????????????????????????