% Función que calcula la raíz de n grado de un número dado
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parámetros:
% x : radicando
% a : índice
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Salidas
% Sk  : Resultado (Retorna el valor de la raíz x^(1/a)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Se emplea la función r_aux

function Sk = root_t(x,a)
  if(a == 0)%Caso: Exponente igual a cero
    disp('El índice debe ser diferente a cero.')
  %Caso: índice par
  elseif ( rem(a, 2) == 0 && a>0)%Cálculo del residuo
    if(x > 0)
      Sk = r_aux(x, a);
    else
      disp('Error: El radicando debe ser mayor o igual a cero.')
    endif
  %Caso: índice impar
  elseif ( rem(a, 2) == 1 && a>0 )% Cálculo del residuo de dos
    Sk = r_aux(x, a);
  % Si el grado es negativo, el numero
  % debe ser diferente de 0
  % Caso: índice negativo
  elseif (a < 0)
    if(x == 0)% El radicando debe ser diferente a 0
      disp('Error: El radicando debe ser diferente a 0.');
    else %calcular raíz
      Sk = r_aux(x, a);
    endif
  endif
endfunction