% This Program contains the initialization parameters for the adaptive
% control system. 
% Name: Narasimha Prasad Prabhu
% Reg No. A0090717
% Submission for EE5104 CA1

clear
% Observor Characteristics
zeta = 0.1; % Damping factor of the observor system
wn = 2.5; % Natural frequency for the observor system
T = [1 2*zeta*wn wn^2]; % Observor Polynomial


% Reference Model System Parameter
am = 5; % Reference model system is given by G = am/(s+am)

% Exact Controller Parameters
g1 = 13.8; 
g2 = 41.1089;
f1 = 5.0991;
f2 = 85.3455;
kr = -45.4545;