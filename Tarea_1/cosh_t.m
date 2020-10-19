%
%Función Transcendental de cosh(x)
%
function Sk = cosh_t(x)
  tol = 10^-8; % Tolerancia
  iterMax = 2500; %Iteraciones máximas del cálculo
  k=0;%Iteracion
  Sk=0;%Resultado
  error=tol+1;%Inicializar error
  while (tol < error && k < iterMax) %Condición de parada
    temp=(2*k);
    Sk_nuevo = ((x^(temp)) * div_t(factorial(temp))) + Sk;
    error=abs(Sk_nuevo-Sk);%Calcular error
    Sk = Sk_nuevo;
    k=k+1;
  endwhile
endfunction

% cosh(0.3) = 1.0453
% cosh_t(0.3)