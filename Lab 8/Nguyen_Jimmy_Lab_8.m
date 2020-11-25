
clear all
close all
clc
% %Problem 1a

% %Define initial conditions
y0 = [1;0];
 
% %Define the simulation time vector
t0 = 0; %Start Time
tf = 20; % End time
dt = 1E-1; %Time Step
tvec = t0:dt:tf; %Time vector
[t_ode45, y_ode45] = ode45('dynamical_system_y',tvec, y0);

% %Plotting using ode45
figure,
plot(t_ode45,y_ode45(:,1),'c');
xlabel('Time [seconds]');
ylabel('Displacement y(t)');
title('y(t) vs t using ode45');
set(findall(gcf,'type','line'),'linewidth',3);
set(gca,'fontsize',15);

figure,
plot(t_ode45, y_ode45(:,2),'y');
xlabel('Time [seconds]');
ylabel('Velocity v(t) [m/s]');
title('v(t) vs t using ode45', 'fontsize', 15);
set(findall(gcf,'type','line'),'linewidth',3);
set(gca,'fontsize',15);



%Problem 1b
open_system('sim_y.slx');
out = sim('sim_y.slx');

figure,
plot(out.sim_y(:,1), out.sim_y(:,2),'r');
xlabel('Time [s]');
ylabel('Displacement y(t)');
title('y(t) vs. t using Simulink');
set(findall(gcf,'type','line'), 'linewidth',5);
set(gca,'fontsize',15);

figure,
plot(out.ydot_sim(:,1), out.ydot_sim(:,2),'m');
xlabel('Time [s]');
ylabel('Velocity v(t) [m/s]');
title('v(t) vs t using Simulink', 'fontsize',15);
set(findall(gcf,'type','line'),'linewidth',5);
set(gca,'fontsize',15);


%Problem 1c
figure,
plot(t_ode45,y_ode45(:,1),'c');
hold on
plot(out.sim_y(:,1), out.sim_y(:,2),'r');
hold on
plot(t_ode45, y_ode45(:,2),'y');
hold on
plot(out.ydot_sim(:,1), out.ydot_sim(:,2),'m');
hold off

legend('y(t) MATLAB','y(t) SIMUL','ydot(t) MATLAB','ydot(t) SIMUL','Location','northeast');

xlabel('Time [s]');
ylabel('Velocity v(t) [m/s]');
title('v(t) vs t using Simulink', 'fontsize',15);
set(findall(gcf,'type','line'),'linewidth',5);
set(gca,'fontsize',15);



%Problem 2a
%Define initial conditions
x0 = [1;1];

% %Define the simulation time vector
t0 = 0; %Start Time
tf = 20; % End time
dt = 1E-1; %Time Step
tvec = t0:dt:tf; %Time vector
[t_ode45, x_ode45] = ode45('dynamical_system_x',tvec, x0);

%Plotting using ode45
figure,
plot(t_ode45,x_ode45(:,1),'c');
xlabel('Time [seconds]');
ylabel('Displacement x(t)');
title('x(t) vs t using ode45');
set(findall(gcf,'type','line'),'linewidth',3);
set(gca,'fontsize',15);

figure,
plot(t_ode45, x_ode45(:,2),'y');
xlabel('Time [seconds]');
ylabel('Velocity v(t) [m/s]');
title('v(t) vs t using ode45', 'fontsize', 15);
set(findall(gcf,'type','line'),'linewidth',3);
set(gca,'fontsize',15);

%Problem 2b
out = sim('sim_x.slx');

figure,
plot(out.sim_x(:,1), out.sim_x(:,2),'r');
xlabel('Time [s]');
ylabel('Displacement x(t)');
title('x(t) vs. t using Simulink');
set(findall(gcf,'type','line'), 'linewidth',5);
set(gca,'fontsize',15);

figure,
plot(out.xdot_sim(:,1), out.xdot_sim(:,2),'m');
xlabel('Time [s]');
ylabel('Velocity v(t) [m/s]');
title('v(t) vs t using Simulink', 'fontsize',15);
set(findall(gcf,'type','line'),'linewidth',5);
set(gca,'fontsize',15);

%Problem 2c
figure,
plot(t_ode45,x_ode45(:,1),'c');
hold on
plot(out.sim_x(:,1), out.sim_x(:,2),'r');
hold on
plot(t_ode45, x_ode45(:,2),'y');
hold on
plot(out.xdot_sim(:,1), out.xdot_sim(:,2),'m');
hold off

legend('x(t) MATLAB','x(t) SIMUL','xdot(t) MATLAB','xdot(t) SIMUL','Location','northeast');

xlabel('Time [s]');
ylabel('Velocity v(t) [m/s]');
title('v(t) vs t using Simulink', 'fontsize',15);
set(findall(gcf,'type','line'),'linewidth',3);
set(gca,'fontsize',15);