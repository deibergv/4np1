% Funci�n Transcendental de tanh(x)
% Se sabe que tan(x) = sen(x)/cos(x)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Par�metros:
% x : valor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Salidas
% Sk  : Resultado la aproximaci�n 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function Sk = tan_t(x)  
  Sk= sin_t(x)*div_t(cos_t(x)); %Aproximaci�n de la funci�n
endfunction

% tan(0.3) = 0.30934
% tan_t(0.3)