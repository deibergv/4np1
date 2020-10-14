%pkg load symbolic;
%Función Transcendental de logaritmo base a de x: log_t(x,a)
% Se sabe que loga(x)=ln(x)/ln(a)
%
function [Sk] = log_t(x,a,tol)
  if (x>0 && a>0 && a=! 1) 
    Sk=ln_t(x,tol)*(div_t(ln_t(a,tol),tol))
   endif
endfunction


%[Sk] = sin_t(90*pi/180,10^-3)
