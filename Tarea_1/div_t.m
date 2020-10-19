% Funci�n Transcendental de la divisi�n
% Calcula x^-1 o 1/x
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Par�metros:
% x : denominador
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Salidas
% Sk  : Resultado aproximaci�n de 1/x
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [Xk] = div_t(x)
  tol=10^-8;
  Xk=0;#Resultado
  eps=2.2204*10^(-16); %Precisi�n relativa del punto flotante
  error=tol+1; %Error
  k=1;%Iteraciones
  tol = 10^-8; % Tolerancia
  iterMax = 2500; %Iteraciones m�ximas del c�lculo
  %-------------------------------------
  %%Establecer el valor inicial de X0
  if (factorial(80)<x<=factorial(100))
    Xk=eps^15;
  endif
  if (factorial(60)<x<=factorial(80))
    Xk=eps^11
  endif
  if (factorial(40)<x<=factorial(60))
    Xk=eps^8;
  endif
  if (factorial(20)<x<=factorial(40))
    Xk=eps^4;
  endif
  if (factorial(0)<x<=factorial(20))
    Xk=eps^2;
  endif
  %----------------------------------
  while (tol < error && k < iterMax) %Condici�n de parada
    Xk_nuevo=Xk*(2-(x*Xk));%%Aproximaci�n de la divisi�n
    error=abs((Xk_nuevo-Xk)/Xk_nuevo);%%Calcular error
    Xk=Xk_nuevo;
    k=k+1;%Iteraciones
  endwhile
endfunction

% 1/5 = 0.2
% div_t(5,10^-3)