% Función Transcendental de cos^-1(x)
% Se sabe que arcos(x)= pi/2 - arcsin(x)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parámetros:
% x : valor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Salidas
% Sk  : Resultado aproximación de 1/x
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function Sk = acos_t(x)
  tol=10^-8;
  k=1;%Iteracion
  Sk=1;%Resultado
  error=tol+1;%Inicializar error
  iterMax = 2500;
  while (error>=tol || iterMax > k) %Condición de parada
    temp=div_t((4^k)*((factorial(k))^2)*(2*k+1));
    Sk_nuevo=factorial(2*k)*temp*x^(2*k+1) + Sk; %Aproximación de la función senoidal
    error=abs(Sk_nuevo-Sk);%Calcular error
    Sk=Sk_nuevo;
    k=k+1;
  endwhile
endfunction


%[k = sin_t(90*pi/180,10^-3)
