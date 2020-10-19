%
% Funci�n que calcula la ra�z cuadrada de un n�mero dado
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Par�metros:
% x : radicando
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Salidas
% Sk  : Resultado (Retorna el valor de la ra�z x^(1/2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Se emplea la funci�n root_t
function Sk = sqrt_t(x)
  % La raiz cuadrada solo recibe numeros >= 0
  if(x < 0)
    disp('ERROR: El valor de x debe ser mayor que cero');
  elseif (x == 0)% La ra�z cuadrada de 0 es 0
    Sk = 0;
  else
    Sk = root_t(x, 2);%Llama a la funci�n root_t(radicando, �ndice)
  endif                %Donde el radicando es x y el �ndice es 2
endfunction



% sqrt(16) = 4 
% sqrt_t(16)