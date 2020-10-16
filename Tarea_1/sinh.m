%
%Funci�n Transcendental de sinh(x)
%
function [Sk] = sinh(x)
  tol=10^-8;
  Sk=1;%Condicion inicial
  k=1;%iteracion
  error=tol+1;
  while error>=tol %Condici�n de parada error Mayor o igual que la tolerancia
    Sk_temp=power_t(x,2*k+1)*div_t(factorial(2*k));
    Sk_nuevo=Sk_temp+Sk;
    error=abs(Sk_nuevo-Sk); %Calcular error
    Sk=Sk_nuevo;
    k=k+1;
  endwhile  
endfunction