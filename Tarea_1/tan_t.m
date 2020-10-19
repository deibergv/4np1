% Función Transcendental de tanh(x)
% Se sabe que tan(x) = sen(x)/cos(x)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parámetros:
% x : valor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Salidas
% Sk  : Resultado la aproximación 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function Sk = tan_t(x)  
  Sk= sin_t(x)*div_t(cos_t(x)); %Aproximación de la función
endfunction

% tan(0.3) = 0.30934
% tan_t(0.3)