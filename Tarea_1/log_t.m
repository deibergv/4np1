%pkg load symbolic;
%Función Transcendental de logaritmo base a de x: log_t(x,a)
% Se sabe que loga(x)=ln(x)/ln(a)
%
function [Sk] = log_t(x,a,tol)
  sk=ln_t(x,tol)*(div_t(ln_t(a,tol),tol))
endfunction


%[Sk] = sin_t(90*pi/180,10^-3)
