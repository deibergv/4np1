%
%Función Transcendental de a^x
%x Exponente de una potencia
%a Base de la potencia
%
function Sk = power_t(x,a)
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
    endwhile
  endif
endfunction

% power(2,3) = 8
% power_t(2,3)
% power(2,-3) = 0.12500
% power_t(2,-3)