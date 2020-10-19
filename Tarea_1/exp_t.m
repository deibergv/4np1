%
%Función Transcendental de e^x
%
function Sk = exp_t(x)
  tol=10^-8;
  Sk=1;%Resultado
  k=1;%iteracion
  error=tol+1;
  
  while error>=tol %Condición de parada error Mayor o igual que la tolerancia
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


%[Sk] = exp_t(1,10^-3)