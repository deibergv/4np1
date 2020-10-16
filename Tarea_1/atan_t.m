%pkg load symbolic;
%Funci�n Transcendental de tan^-1(x)
%
function [Sk] = atan_t(x)
  tol=10^-8;
  k=1;%Iteracion
  Sk=1;%Resultado
  error=tol+1;%Inicializar error
  while error>=tol %Condici�n de parada
    temp=div_t(2*k+1);
    Sk_nuevo=(-1)^k*(x^(2*k+1))*temp + Sk; %Aproximaci�n de la funci�n senoidal
    error=abs(Sk_nuevo-Sk);%Calcular error
    Sk=Sk_nuevo;
    k=k+1;
  endwhile
endfunction


%[Sk] = sin_t(90*pi/180,10^-3)
