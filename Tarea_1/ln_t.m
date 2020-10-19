%
%Función Transcendental de ln(x)
%
function [Sk] = ln_t(x)
  if (x>0)
    tol = 10^-8; % Tolerancia
    iterMax = 2500; %Iteraciones máximas del cálculo
    Sk=1;%Condicion inicial
    k=1;%iteracion
    error=tol+1;
    while (tol < error && k < iterMax) %Condición de parada
      Sk_temp=[div_t(2*k+1)]*[((x-1)*div_t(x+1))^(2*k)]
      Sk_nuevo=Sk_temp+Sk;
      error=abs(Sk_nuevo-Sk); %Calcular error
      Sk=Sk_nuevo;
      k=k+1;
    endwhile
    
    Sk_temp = Sk
    Sk = [(2*(x-1))*div_t(x+1)]*[Sk_temp]
  endif
    
endfunction

% log(2) =  0.69315
% ln_t(2,10^-3)