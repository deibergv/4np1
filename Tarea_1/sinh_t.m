%
%Función Transcendental de sinh(x)
%
function [Sk] = sinh_t(x)
  tol=10^-8;
  k=0;%Iteracion
  Sk=0;%Resultado
  error=tol+1;%Inicializar error
  iterMax=2500;
  while (error>=tol && iterMax>k) %Condición de parada
    temp=div_t(factorial((2*k)+1));
    Sk_nuevo=(x^((2*k)+1)*temp); %Aproximación de la función senoidal
    Sk_nuevo=Sk_nuevo+Sk;
    error=abs(Sk_nuevo-Sk);%Calcular error
    Sk=Sk_nuevo;
    k=k+1;
  endwhile
endfunction

% sinh(0.3) = 0.30452
% sinh_t(0.3)