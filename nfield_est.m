% Title: Initial Estimate atmospheric refractive index reconstruction 
% Author: Ajay Ragh
% date: 06/01/2021
clear;
k=1;
output_precision(8);
for i=10:-1:1
  for j=25:-1:1
    temp = t_calc(i);
    pressure = p_calc(i);
    sat_vap_pressure = e_calc(temp,pressure);
    [N,n] = n_calc(pressure,temp,sat_vap_pressure);
    nfield_init(k,j) = n;
    Nfield_init(k,j) = N;
    
  endfor
  k=k+1;
endfor

disp(nfield_init);
image(Nfield_init);