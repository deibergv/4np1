%
%Funci�n Transcendental de cos(x)
%
function Sk = cos_t(x)
  tol = 10^-8; % Tolerancia
  iterMax = 2500; %Iteraciones m�ximas del c�lculo
  k=0;%Iteracion
  Sk=0;%Resultado
  error=tol+1;%Inicializar error
  while (tol < error && k < iterMax) %Condici�n de parada
    temp=(2*k);
    Sk_nuevo = (((-1)^k) * ((x^(temp)) * div_t(factorial(temp)))) + Sk;
    error=abs(Sk_nuevo-Sk);%Calcular error
    Sk = Sk_nuevo;
    k=k+1;
  endwhile
endfunction

% cos(0.3) = 0.95534
% cos_t(0.3)
