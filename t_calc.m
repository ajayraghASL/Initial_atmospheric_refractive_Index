% Title: Atmospheric temperature variation with altitude in indian region
% variables: h: height index 
% reference for temperature variation with altitude in indian region: https://www.ias.ac.in/article/fulltext/reso/013/10/0971-0977
% Author: Ajay Ragh
% date: 06/01/2021
function t = t_calc(h)
  if h == 1 
    t = 303.15;
  endif
  if h <= 7
    scale = 13*h;
    t = 303.15-scale;
  endif
  if h > 7
    t = 216.65;
  endif
endfunction
