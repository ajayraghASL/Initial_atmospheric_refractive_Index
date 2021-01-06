% Title: Saturation vapor pressure calculation
% Author: Ajay Ragh
% Variables: t (temperature), p (pressure)
% calculating saturation vapor pressure according to ITU-R P.453-11 07/2015
% date: 06/01/2021
function e = e_calc(t,p)
  a = 6.1121;
  b = 18.678;
  c = 257.14;
  d = 234.5;
  tc = t-273.15;
  % e = EF.a.exp(((b-(t/d))*t)/(t+c))
  % EF water = 1+(10**-4)(7.2+p(0.00320+5.9*(10**-7)*t**2))
  % represent this as EF = 1+x
  x = (7.2 + p*(0.00320+(5.9*10**-7)*tc**2))*10**-4;
  ef = 1+x;
  e = ef*a*exp(((b-(tc/d))*tc)/(tc+c));
endfunction
