%
%Función Transcendental de e^x
%
function [Sk] = exp_t(x,tol)
  Sk=1;%Resultado
  k=1;%iteracion
  error=tol+1;
  while error>=tol %Condición de parada error Mayor o igual que la tolerancia
    Sk_nuevo = (x^k)*(div_t(factorial(k),tol))+Sk;
    error=abs(Sk_nuevo-Sk); %Calcular error
    Sk=Sk_nuevo;
    k=k+1;
  endwhile
endfunction


%[Sk] = exp_t(1,10^-3)