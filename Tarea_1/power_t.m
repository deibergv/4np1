%
%Función Transcendental de a^x
%
function [Sk] = power_t(x,a)
  if(x>0)
    Sk=x^a;
  endif
endfunction


%[Sk] = exp_t(1,10^-3)