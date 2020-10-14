%
%Función Transcendental de cosh(x)
%
function [Sk] = cosh(x,tol)
  Sk=1;%Condicion inicial
  k=1;%iteracion
  error=tol+1;
  while error>=tol %Condición de parada error Mayor o igual que la tolerancia
    Sk_temp=power_t(x,2*k)*div_t(factorial(2*k),tol)
    Sk_nuevo=Sk_temp+Sk;
    error=abs(Sk_nuevo-Sk); %Calcular error
    Sk=Sk_nuevo;
    k=k+1;
  endwhile  
endfunction
