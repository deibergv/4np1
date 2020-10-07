%
%Función Transcendental de ln(x)
%
function [Sk] = ln_t(x,tol)
  Sk=0;%Condicion inicial
  k=1;%iteracion
  error=tol+1;
  while error>=tol %Condición de parada error Mayor o igual que la tolerancia
    temp=(2*(x-1))*div_t(x+1,tol)
    aux1=div_t(2*k+1,tol);
    aux2=((x-1)*div_t(x+1,tol))^2*k;
    Sk_temp = aux1*aux2+Sk;
    Sk_nuevo=temp*Sk_temp;
    error=abs(Sk_nuevo-Sk); %Calcular error
    Sk=Sk_nuevo;
    k=k+1;
  endwhile
endfunction


%[Sk] = ln_t(1,10^-3)