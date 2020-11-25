function [dxdt] = dynamical_system_x(t,x)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
dxdt = zeros(2,1);
dxdt(1) = x(2);
dxdt(2) = -3*x(1)*t - 4*x(2)*t;
end

