%pkg load symbolic;
%Funci�n Transcendental de tan(x)
%Dada la tan(x)=sen(x)/cos(x)
%
function [Sk] = tan_t(x)  
  Sk=1;%Resultado
  temp=div_t(cos_t(x))
  Sk=sen_t(x)*temp; %Aproximaci�n de la funci�n cos
  endwhile
endfunction


%[Sk] = sin_t(90*pi/180,10^-3)
