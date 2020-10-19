% Función Transcendental de cos^-1(x)
% Se sabe que arcos(x)= pi/2 - arcsin(x)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parámetros:
% x : valor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Salidas
% Sk  : Resultado aproximación de 1/x
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function Sk = acos_t(x)
  Sk=sym((pi_t()*div_t(2))-asin_t(x))
endfunction


%[k = sin_t(90*pi/180,10^-3)
