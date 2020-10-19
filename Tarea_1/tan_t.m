%
%Función Transcendental de tan(x)
%Dado que tan(x) = sen(x)/cos(x)
%
function [Sk] = tan_t(x)  
  Sk=1;%Resultado
  temp= div_t(cos_t(x))
  Sk= sin_t(x)*temp; %Aproximación de la función cos
endfunction

% tan(1) =  1.5574
% tan_t(1)