%pkg load symbolic;
%Funci�n Transcendental de cos(x)
%
function [Sk] = cos_t(x)
  tol=10^-8;
  k=1;%Iteracion
  Sk=1;%Resultado
  error=tol+1;%Inicializar error
  while error>=tol %Condici�n de parada
    temp=div_t(factorial(2*k))
    Sk_nuevo=((-1)^k)*(x^(2*k))*temp + Sk; %Aproximaci�n de la funci�n cos
    error=abs(Sk_nuevo-Sk);%Calcular error
    Sk_nuevo=Sk;
    k=k+1;
  endwhile
endfunction


%[Sk] = sin_t(90*pi/180,10^-3)
