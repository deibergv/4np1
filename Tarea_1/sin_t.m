%
%Funci�n Transcendental de sen(x)
%
function [Sk] = sin_t(x)
  tol = 10^-8; % Tolerancia
  iterMax = 2500; %Iteraciones m�ximas del c�lculo
  k=1;%Iteracion
  Sk=1;%Resultado
  error=tol+1;%Inicializar error
  while (tol < error && k < iterMax) %Condici�n de parada
    temp=div_t(factorial(2*k+1))
    Sk_nuevo=((-1)^k)*(x^(2*k+1))*temp + Sk; %Aproximaci�n de la funci�n senoidal
    error=abs(Sk_nuevo-Sk);%Calcular error
    Sk_nuevo=Sk;
    k=k+1;
  endwhile
endfunction

% sin(90*pi/180) =  1
% sin_t(90*pi/180,10^-3)

% sin(2) = 0.90930
% sin_t(2) = 1???????????????????????
