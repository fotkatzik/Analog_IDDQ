% Clear the workspace and command window
clear all;
clc;
%% ENABLE ON
% Normal operation conditions - DC Voltage outputs - Vddext enabled
plotData3 = importdata('normal_enable_on.csv');
figure(1)
% Voltage outputs
% Add a title to the figure
clf
hold on;
grid on
plot(plotData3.data(:,1),plotData3.data(:,2),'r','LineWidth',1)
plot(plotData3.data(:,3),plotData3.data(:,4),'g','LineWidth',1)
plot(plotData3.data(:,5),plotData3.data(:,6),'b','LineWidth',1)
plot(plotData3.data(:,7),plotData3.data(:,8),'cyan','LineWidth',1)
title('Voltage outputs of the VDDEXT regulator');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Voltage (V) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["output 5V" "overtemperature" "undervoltage" "sense"]);

figure(2)
% Vddext output
clf
grid on
hold on;
plot(plotData3.data(:,1),plotData3.data(:,2),'r','LineWidth',1)
title('Vddext output');
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Voltage (V) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
hold on;

plotData4 = importdata('normal_enable_on_current.csv');

figure(3)
% Current Consumption
clf
hold on;
grid on
plot(plotData4.data(:,1),plotData4.data(:,2)*1e6,'r','LineWidth',1)
plot(plotData4.data(:,3),plotData4.data(:,4)*1e6,'g','LineWidth',1)
plot(plotData4.data(:,5),plotData4.data(:,6)*1e6,'b','LineWidth',1)
title('Current consumptions per supply');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["VDD1V5 PD" "VDDP5V PD" "VDDVS"]);

figure(4)
% Overall current consumption
clf
hold on;
grid on
plot(plotData4.data(:,1), plotData4.data(:,2)*1e6 + plotData4.data(:,4)*1e6 + plotData4.data(:,6)*1e6, 'r', 'LineWidth', 1);
title('Overall Current Consumption');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');

%% ENABLE OFF

% Normal operation conditions - DC Voltage outputs - Vddext disabled
plotData = importdata('normal_enable_off.csv');
figure(5)
% Voltage outputs
% Add a title to the figure
clf
hold on;
grid on
plot(plotData.data(:,1),plotData.data(:,2),'r','LineWidth',1)
plot(plotData.data(:,3),plotData.data(:,4),'g','LineWidth',1)
plot(plotData.data(:,5),plotData.data(:,6),'b','LineWidth',1)
plot(plotData.data(:,7),plotData.data(:,8),'cyan','LineWidth',1)
title('Voltage outputs');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Voltage (V) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["output 5V" "overtemperature" "undervoltage" "sense"]);

figure(6)
% Vddext output
clf
grid on
hold on;
plot(plotData.data(:,1),plotData.data(:,2),'r','LineWidth',1)
title('Vddext output');
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Voltage (V) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
hold on;

plotData2 = importdata('normal_enable_off_current.csv');

figure(7)
% Current Consumption
clf
hold on;
grid on
plot(plotData2.data(:,1),plotData2.data(:,2)*1e6,'r','LineWidth',1)
plot(plotData2.data(:,3),plotData2.data(:,4)*1e6,'g','LineWidth',1)
plot(plotData2.data(:,5),plotData2.data(:,6)*1e6,'b','LineWidth',1)
title('Current Consumptions per Supply');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["VDD1V5 PD" "VDD5V PD" "VDDVS"]);

figure(8)
% Overall current consumption
clf
hold on;
grid on
plot(plotData2.data(:,1), plotData2.data(:,2)*1e6 + plotData2.data(:,4)*1e6 + plotData2.data(:,6)*1e6, 'r', 'LineWidth', 1);
title('Overall Current Consumption');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');

% Delta calculation
figure(9)
% Overall current consumption
clf
hold on;
grid on
plot(plotData4.data(:,1), plotData4.data(:,2)*1e6 + plotData4.data(:,4)*1e6 + plotData4.data(:,6)*1e6, 'r', 'LineWidth', 1);
plot(plotData2.data(:,1), plotData2.data(:,2)*1e6 + plotData2.data(:,4)*1e6 + plotData2.data(:,6)*1e6, 'g', 'LineWidth', 1);
title('Current consumption delta on VS (VS+VDD5VPD+VDD1V5PD)');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
legend(["VDDEXT module enabled current" "VDDEXT module base current" ]);

% Calculate the difference between the two plots at x=-40
x1 = -40;
y1 = plotData4.data(find(plotData4.data(:,1) == -40), 2)*1e6 + plotData4.data(find(plotData4.data(:,1) == -40), 4)*1e6 +plotData4.data(find(plotData4.data(:,1) == -40), 6)*1e6;
y2 = plotData2.data(find(plotData2.data(:,1) == -40), 2)*1e6 + plotData2.data(find(plotData2.data(:,1) == -40), 4)*1e6 +plotData2.data(find(plotData2.data(:,1) == -40), 6)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 + 1, (y1+y2)/2 - 40, sprintf('ΔI = %g μA @ -40 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

% Calculate the difference between the two plots at x=+25
x1 = 25;
y1 = plotData4.data(find(plotData4.data(:,1) == 27.2), 2)*1e6 + plotData4.data(find(plotData4.data(:,1) == 27.2), 4)*1e6 +plotData4.data(find(plotData4.data(:,1) == 27.2), 6)*1e6;
y2 = plotData4.data(find(plotData4.data(:,1) == 22.4), 2)*1e6 + plotData4.data(find(plotData4.data(:,1) == 22.4), 4)*1e6 +plotData4.data(find(plotData4.data(:,1) == 22.4), 6)*1e6;
y3 = y1 + (y2 - y1) * (x1 - 27.2) / (22.4 - 27.2);

y1 = plotData2.data(find(plotData2.data(:,1) == 27.2), 2)*1e6 + plotData2.data(find(plotData2.data(:,1) == 27.2), 4)*1e6 +plotData2.data(find(plotData2.data(:,1) == 27.2), 6)*1e6;
y2 = plotData2.data(find(plotData2.data(:,1) == 22.4), 2)*1e6 + plotData2.data(find(plotData2.data(:,1) == 22.4), 4)*1e6 +plotData2.data(find(plotData2.data(:,1) == 22.4), 6)*1e6;
y4 = y1 + (y2 - y1) * (x1 - 27.2) / (22.4 - 27.2);

diff = y3 - y4;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y4 y3], 'k--', 'LineWidth', 1);
text(x1 + 1, (y3+y4)/2, sprintf('ΔI = %g μA @ 25 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y3, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y4, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point
legend('', '', '')
% Calculate the difference between the two plots at x=+150
x1 = 150;
y1 = plotData4.data(find(plotData4.data(:,1) == 27.2), 2)*1e6 + plotData4.data(find(plotData4.data(:,1) == 147.2), 4)*1e6 +plotData4.data(find(plotData4.data(:,1) == 147.2), 6)*1e6;
y2 = plotData4.data(find(plotData4.data(:,1) == 152), 2)*1e6 + plotData4.data(find(plotData4.data(:,1) == 152), 4)*1e6 +plotData4.data(find(plotData4.data(:,1) == 152), 6)*1e6;
y3 = y1 + (y2 - y1) * (x1 - 147.2) / (152 - 147.2);

y1 = plotData2.data(find(plotData2.data(:,1) == 147.2), 2)*1e6 + plotData2.data(find(plotData2.data(:,1) == 147.2), 4)*1e6 +plotData2.data(find(plotData2.data(:,1) == 147.2), 6)*1e6;
y2 = plotData2.data(find(plotData2.data(:,1) == 152), 2)*1e6 + plotData2.data(find(plotData2.data(:,1) == 152), 4)*1e6 +plotData2.data(find(plotData2.data(:,1) == 152), 6)*1e6;
y4 = y1 + (y2 - y1) * (x1 - 147.2) / (152 - 147.2);

diff = y3 - y4;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y4 y3], 'k--', 'LineWidth', 1);
text(x1 - 95, (y3+y4)/2 + 40 , sprintf('ΔI = %g μA @ 150 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y3, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y4, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point
legend('', '', '')
legend(["VDDEXT module enabled current" "VDDEXT module base current" ]);








