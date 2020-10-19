%
% Funcion que calcula la raiz cuadrada de un numero dado
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parametros:
% x : radicando
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Salidas
% Sk  : Resultado (Retorna el valor de la raiz x^(1/2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Se emplea la funcion root_t
function Sk = sqrt_t(x)
  % La raiz cuadrada solo recibe numeros >= 0
  if(x < 0)
    disp('ERROR: El valor de x debe ser mayor o igual a cero');
  elseif (x == 0)% La raiz cuadrada de 0 es 0
    Sk = 0;
  else
    Sk = root_t(x, 2);%Llama a la funcion root_t(radicando, indice)
  endif                %Donde el radicando es x y el indice es 2
endfunction


% sqrt(16) = 4 
% sqrt_t(16)