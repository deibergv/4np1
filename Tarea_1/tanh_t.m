% Función Transcendental de tanh(x)
% Se sabe que tanh(x)=sinh(x)/cosh(x)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parámetros:
% x : valor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Salidas
% Sk  : Resultado la aproximación 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function Sk = tanh(x) 
  Sk=sinh(x)*div_t(cosh(x));
endfunction

% tanh(0.3) = 0.29131
% tanh_t(0.3)