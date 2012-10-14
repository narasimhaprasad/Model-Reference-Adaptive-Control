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

% Adaptive Parameters
gamma = 5000*[1 0 0 0 0; 
         0 1 0 0 0;
         0 0 1 0 0;
         0 0 0 1 0;
         0 0 0 0 1]; % Gamma is a symmetric Positive definite matrix
ulim = inf; % Upper Limit for integrals in "adaptive control strategy"
llim = -inf; % Lower Limit for integrals in "adaptive control strategy"

% Reference Model System Parameter
am = 5; % Reference model system is given by G = am/(s+am)

% Exact Controller Parameters
% Note: These have been calculated only to view progression of \theta and
% are not required in the control mechanism
g1 = 13.8; 
g2 = 41.1089;
f1 = 5.0991;
f2 = 85.3455;
kexact = -45.4545;