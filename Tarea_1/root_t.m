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
  endif
  %Caso: índice par
  if ( rem(a, 2) == 0)%Cálculo del residuo
    if(x > 0)
      Sk = r_aux(x, a);
    endif
    else
      disp('Error: El radicando debe ser mayor o igual a cero.')
    end
  endif
  %Caso: índice impar
  if ( rem(a, 2) == 1 )% Cálculo del residuo de dos
    Sk = r_aux(x, a);
  end 
    % Si el grado es negativo, el numero
    % debe ser diferente de 0
    % Caso: índice negativo
  if (a < 0)
    if(x == 0)% El radicando debe ser diferente a 0
      disp('Error: El radicando debe ser diferente a 0.')
    endif
    else %calcular raíz
      Sk = r_aux(x, a);
    endif
  endif
endfunction