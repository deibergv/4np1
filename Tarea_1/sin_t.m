% Función Transcendental de sen(x)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parámetros:
% x : valor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Salidas
% Sk  : Resultado aproximación
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function Sk = sin_t(x)
  tol=10^-8;
  k=0;%Iteracion
  Sk=0;%Resultado
  error=tol+1;%Inicializar error
  iterMax=2500;
  while (error>=tol && iterMax>k) %Condición de parada
    temp=div_t(factorial((2*k)+1));
    Sk_nuevo=((-1)^k)*(x^((2*k)+1)*temp); %Aproximación de la función senoidal
    Sk_nuevo=Sk_nuevo+Sk;
    error=abs(Sk_nuevo-Sk);%Calcular error
    Sk=Sk_nuevo;
    k=k+1;
  endwhile
endfunction

% sin(90*pi/180) =  1
% sin_t(90*pi/180)

% sin(2*pi/3) = 0.86603
% sin_t(2*pi/3) 
