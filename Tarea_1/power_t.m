%
%Función Transcendental de a^x
%x Exponente de una potencia
%a Base de la potencia
%
function   Sk = power_t(x,a)
  if(x>0)% Caso exponente positivo
    Sk=x^a;
  endif
  if(x==0)% Caso exponente igual a cero
    Sk=1;
  endif
  if(x<0)% Caso exponente negativo
    k=0;
    Sk=1;
    while (k>x)
      Sk=Sk*div_t(a);
      --k;
  endif
endfunction


%[Sk] = exp_t(1,10^-3)