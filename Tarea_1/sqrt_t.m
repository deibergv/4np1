% Función que calcula la raíz cuadrada de un número dado

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parámetros:
% x : radicando
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Salidas
% Sk  : Resultado (Retorna el valor de la raíz x^(1/2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Se emplea la función root_t

function Sk = sqrt_t(x)
    % La raiz cuadrada solo recibe numeros >= 0
    if(x < 0)
      disp('ERROR: El valor de x debe ser mayor que cero');
    endif
    elseif (x == 0)% La raíz cuadrada de 0 es 0
      Sk = 0;
    end
    else
      Sk = root_t(x, 2);%Llama a la función root_t(radicando, índice)
                        %Donde el radicando es x y el índice es 2
    end
end
