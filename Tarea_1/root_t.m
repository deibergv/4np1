% Funci�n que calcula la ra�z de n grado de un n�mero dado
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Par�metros:
% x : radicando
% a : �ndice
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Salidas
% Sk  : Resultado (Retorna el valor de la ra�z x^(1/a)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Se emplea la funci�n r_aux

function Sk = root_t(x,a)
  if(a == 0)%Caso: Exponente igual a cero
    disp('El �ndice debe ser diferente a cero.')
  endif
  %Caso: �ndice par
  if ( rem(a, 2) == 0)%C�lculo del residuo
    if(x > 0)
      Sk = r_aux(x, a);
    endif
    else
      disp('Error: El radicando debe ser mayor o igual a cero.')
    end
  endif
  %Caso: �ndice impar
  if ( rem(a, 2) == 1 )% C�lculo del residuo de dos
    Sk = r_aux(x, a);
  end 
    % Si el grado es negativo, el numero
    % debe ser diferente de 0
    % Caso: �ndice negativo
  if (a < 0)
    if(x == 0)% El radicando debe ser diferente a 0
      disp('Error: El radicando debe ser diferente a 0.')
    endif
    else %calcular ra�z
      Sk = r_aux(x, a);
    endif
  endif
endfunction