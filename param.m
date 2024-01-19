%% Flight Simulation
clc, clear

h_0 = 0;                        % initial height relative to ground
m_0 = 200;                      % initial total mass of the rocket

C_d = 0.75;                     % drag coefficient of the rocket
diameter = 0.3;                 % diameter of the rocket
A = pi*(diameter/2)^2;          % reference area of the rocket

v_exh = 900;                    % exhaust velocity
dm_dt = 3;                      % exhaust's mass flow rate
m_fuel = 120;                   % initial mass of the fuel in the tank of the rocket

assert(h_0 >= 0)
assert(m_fuel < m_0)
%Defining the Parameters 

%Engine Model Parameters. 
m_dot = 132;
burn_time = 162.25;

%Airplane Model Parameters. 
m_pay = 5000; 
m_dry = 1360.7;
m_zfw = m_pay + m_dry;

% Initiial Simulation Conditions
v_0 = 0.01; 
g = 9.81; 
gam_0 = pi/2;
R_3 = 6371e3;
h_0 = 0; 
x_0 = 0;

%Pulse gam input after every t seconds. 
%Initiating the gravity turn function. 
t_turn = 30.0;
gam_in = 0.10;