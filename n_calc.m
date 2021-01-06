% Title: Atmospheric refractive index calculator
% variables: p (pressure), t (temperature), e (saturation vapour pressure)  
% calculating radio refractivity for radio waves according to ITU-R P.453-11 07/2015
% Author: Ajay Ragh
% date: 06/01/2021

function [N,n] = n_calc(p,t,e)
  N = (77.6*(p/t))+(5.6*(e/t))+(3.75*(10**5)*(e/(t**2)));
  n = 1+(N*10**-6);
endfunction
