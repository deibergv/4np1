%pkg load symbolic;
%Función Transcendental de logaritmo base a de x: log_t(x,a)
% Se sabe que log_a(x)=ln(x)/ln(a)
%
function [Sk] = log_t(x,a)
  
  if (x<0)
    disp ("El argumento debe ser mayor a 0");
  elseif (a<0) 
    disp ("La base debe ser mayor a 0");
  elseif (a== 1) 
    disp ("La base debe ser diferente de 1");
  elseif (x>0 && a>0 && a!= 1) 
    Sk=ln_t(x)*(div_t(ln_t(a)));
   endif
endfunction



% log_t(1,10)