function [dydt] = dynamical_system_y(t,y)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
dydt = zeros(2,1);
dydt(1) = y(2);
dydt(2) = -2*y(1)*t - 3*y(2)*t;
end

