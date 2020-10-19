% Función para aproximar el valor de pi
% Por medio del método de Gauss-Legendre
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parámetros:
% N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Salidas
% Sk  : Resultado aproximación de pi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function Sk = pi_t()
  a=1;
  b=div_t(sqrt_t(2));
  t=div_t(4);
  p=1;
  k=1;%Iteracion
  Sk=1;%Resultado
  error=tol+1;%Inicializar error
  iterMax = 2500;
  tol=10^-8;
  while (error>=tol || iterMax > k) %Condición de parada
    x=(a+b)*div_t(2);
    y=sqrt_t(a*b);
    t=t-(p*(a-x)^2);
    a=x+1;
    b=y+1;
    p=2*p;
    error=abs(a-b);%Calcular error
    k=k+1;
  endwhile
  temp=(a+b)^2
  Sk=temp*div_t(4*t);
endfunction

