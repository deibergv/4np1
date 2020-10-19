% Función para aproximar el valor de pi
% Por medio de la Serie de Leibniz: Sk1 = Sk + [((-1)^n)/(2n+1)]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parámetros:
% N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Salidas
% Sk  : Resultado aproximación de pi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function Sk = pi_t()
  k=0;%Iteracion
  Sk=0;%Resultado
  iterMax = 2500;
  tol=10^-8;
  error=tol+1;%Inicializar error
  while (tol < error && k < iterMax) %Condición de parada
    %temp = (2*k) +1;
    Sk_temp = (((-1)^k) * div_t((2*k) + 1 )) + Sk;
    error = abs(Sk_temp - Sk); %Calcular error
    Sk = Sk_temp;
    k = k+1;
  endwhile
  Sk = Sk * 4; % Para obtener el pi completo 
endfunction

