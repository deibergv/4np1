%
%Función Transcendental de tanh(x)1
%Se sabe que tanh(x)=sinh(x)/cosh(x)
%
function [Sk] = tanh(x)
  tol=10^-8;
  Sk=sinh(x)*div_t(cosh(x))
endfunction
