% Funci�n Transcendental de cos^-1(x)
% Se sabe que arcos(x)= pi/2 - arcsin(x)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Par�metros:
% x : valor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Salidas
% Sk  : Resultado aproximaci�n
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function Sk = acos_t(x)
  Sk=(pi_t()*div_t(2)) - asin_t(x);
endfunction

