% Title: Atmospheric tpressure calculation with altitude
% Author: Ajay Ragh
% date: 06/01/2021
function p=p_calc(i)
  h = 2*i*1000;
  %calculating pressure in hPa from altitude in meters.
  p = 1013.25*exp(-0.000112681*h);
endfunction
