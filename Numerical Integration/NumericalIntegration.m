%The work produced by a constant temperature, pressure-volume thermodynamic process can be computed as
%W=∫pdV
%Where W is work, p is pressure and V is volume. Using a combination of the trapezoidal rule, Simpson’s 1/3 rule and Simpson’s 3/8 rule, use the following data to compute the work in kN.m:

pressure_vals=[336 294.4 266.4 260.8 260.5 249.6 193.6 165.6];
volume_vals=[0.5 2 3 4 6 8 10 11];
 
h = diff(volume_vals);
 
% We have data unequally spaced. We divide into 4 parts based on the
% heights
 
% TRAPOZOIDAL RULE ON 1ST INTERVAL
I1_trap = h(1)*((pressure_vals(1)+pressure_vals(2))/2);
 
% TRAPOZOIDAL RULE ON 7TH INTERVAL
I2_trap = h(7)*((pressure_vals(7)+pressure_vals(8))/2);
 
% SIMPSON'S (1/3) RULE ON 2ND AND 3RD INTERVAL
I3_1BY3 = (h(2)/3)*(pressure_vals(2) + 4*pressure_vals(3) + pressure_vals(4));
 
% SIMPSON'S (3/8) RULE ON 4TH, 5TH AND 6TH INTERVAL
I4_3BY8 = (h(4)*3/8)*(pressure_vals(4) + 3*pressure_vals(5) + 3*pressure_vals(6) + pressure_vals(7));
 
% TOTAL WORK IS I1 + I2 + I3 + I4
WORK = I1_trap + I2_trap + I3_1BY3 + I4_3BY8
