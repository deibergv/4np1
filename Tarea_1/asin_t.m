% Función Transcendental de sen^-1(x)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parámetros:
% x : valor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Salidas
% Sk  : Resultado aproximación
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function Sk = asin_t(x)
  tol=10^-8;
  k=0;%Iteracion
  Sk=0;%Resultado
  error=tol+1;%Inicializar error
  iterMax=2500;
  while (error>=tol && iterMax>k) %Condición de parada
    temp=div_t((4^k)*((factorial(k))^2)*((2*k)+1));
    Sk_nuevo=(factorial(2*k))*(temp)*(x^((2*k)+1)) + Sk; %Aproximación de la función sen^-
    error=abs(Sk_nuevo-Sk);%Calcular error
    Sk=Sk_nuevo;
    k=k+1;
  endwhile
endfunction

% asin(0.3) = 0.30469
% asin_t(0.3)