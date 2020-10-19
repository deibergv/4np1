%
%Funci�n Transcendental de e^x
%
function Sk = exp_t(x)
  Sk=1;%Resultado
  k=1;%iteracion
  error=tol+1;
  tol = 10^-8; % Tolerancia
  iterMax = 2500; %Iteraciones m�ximas del c�lculo
  while (tol < error && k < iterMax) %Condici�n de parada
    abs(x);
    Sk_nuevo = (x^k)*(div_t(factorial(k)))+Sk;
    error=abs(Sk_nuevo-Sk); %Calcular error
    Sk=Sk_nuevo;
    k=k+1;
  endwhile
  if(x==0)
    Sk=1;
  elseif(x<0)
    Sk=div_t(Sk);
  endif
  
endfunction

% exp(5) =  148.41
% exp_t(5,10^-3)
% exp(-5) =  0.0067379
% exp_t(-5,10^-3)