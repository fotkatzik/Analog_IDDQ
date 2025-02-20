% Clear the workspace and command window
clear all;
clc;
%% ENABLE ON
% Normal operation conditions - DC Voltage outputs - Vddext enabled
plotData = importdata('error12_enable_on.csv');
Normal = importdata('normal_enable_on.csv');
NormalCurrent = importdata('normal_enable_on_current.csv');

figure(1)
% Voltage outputs
% Add a title to the figure
clf
hold on;
grid on
plot(plotData.data(:,1),plotData.data(:,2),'r','LineWidth',1)
plot(plotData.data(:,3),plotData.data(:,4),'g','LineWidth',1)
plot(plotData.data(:,5),plotData.data(:,6),'b','LineWidth',1)
plot(plotData.data(:,7),plotData.data(:,8),'cyan','LineWidth',1)
plot(Normal.data(:,1),Normal.data(:,2),'r','LineWidth',1)
plot(Normal.data(:,3),Normal.data(:,4),'g','LineWidth',1)
plot(Normal.data(:,5),Normal.data(:,6),'b','LineWidth',1)
plot(Normal.data(:,7),Normal.data(:,8),'cyan','LineWidth',1)
title('Normal DC outputs - Enable ON');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Voltage (V) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["Vddext5V" "OverTemperature" "UnderVoltage" "Sense" "Vddext5Vnormal" "OverTemperatureNormal" "UnderVoltageNormal" "SenseNormal" ]);

figure(2)
% Vddext output
clf
grid on
hold on;
plot(plotData.data(:,1),plotData.data(:,2),'r','LineWidth',1)
plot(Normal.data(:,1),Normal.data(:,2),'g','LineWidth',1)
title('Vddext output - Enable ON');
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Voltage (V) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
hold on;
legend(["Vddext5V" "Vddext5Vnormal"]);

plotData2 = importdata('error12_enable_on_current.csv');

figure(3)
% Current Consumption
clf
hold on;
grid on
plot(plotData2.data(:,1),plotData2.data(:,2)*1e6,'r','LineWidth',1)
plot(plotData2.data(:,3),plotData2.data(:,4)*1e6,'g','LineWidth',1)
plot(plotData2.data(:,5),plotData2.data(:,6)*1e6,'b','LineWidth',1)
plot(NormalCurrent.data(:,1),NormalCurrent.data(:,2)*1e6,'r','LineWidth',1)
plot(NormalCurrent.data(:,3),NormalCurrent.data(:,4)*1e6,'g','LineWidth',1)
plot(NormalCurrent.data(:,5),NormalCurrent.data(:,6)*1e6,'b','LineWidth',1)
title('Current Consumption - Enable ON');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["VDD1V5" "VDDP5V" "VDDVS" "VDD1V5normal" "VDDP5Vnormal" "VDDVSnormal"]);

figure(4)
% Overall current consumption
clf
hold on;
grid on
plot(plotData2.data(:,1), plotData2.data(:,2)*1e6 + plotData2.data(:,4)*1e6 + plotData2.data(:,6)*1e6, 'r', 'LineWidth', 1);
plot(NormalCurrent.data(:,1), NormalCurrent.data(:,2)*1e6 + NormalCurrent.data(:,4)*1e6 + NormalCurrent.data(:,6)*1e6, 'g', 'LineWidth', 1);
title('Current Consumption Comparison - Enable ON');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
legend(["Error Current" "Normal Current" ]);

%% ENABLE OFF
% Normal operation conditions - DC Voltage outputs - Vddext enabled
plotData = importdata('error12_enable_off.csv');
Normal = importdata('normal_enable_off.csv');
NormalCurrent = importdata('normal_enable_off_current.csv');

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
plot(Normal.data(:,1),Normal.data(:,2),'r','LineWidth',1)
plot(Normal.data(:,3),Normal.data(:,4),'g','LineWidth',1)
plot(Normal.data(:,5),Normal.data(:,6),'b','LineWidth',1)
plot(Normal.data(:,7),Normal.data(:,8),'cyan','LineWidth',1)
title('Normal DC outputs - Enable OFF');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Voltage (V) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["Vddext5V" "OverTemperature" "UnderVoltage" "Sense" "Vddext5Vnormal" "OverTemperatureNormal" "UnderVoltageNormal" "SenseNormal" ]);

figure(6)
% Vddext output
clf
grid on
hold on;
plot(plotData.data(:,1),plotData.data(:,2),'r','LineWidth',1)
plot(Normal.data(:,1),Normal.data(:,2),'g','LineWidth',1)
title('Vddext output - Enable OFF');
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Voltage (V) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
hold on;
legend(["Vddext5V" "Vddext5Vnormal"]);

plotData2 = importdata('error12_enable_off_current.csv');

figure(7)
% Current Consumption
clf
hold on;
grid on
plot(plotData2.data(:,1),plotData2.data(:,2)*1e6,'r','LineWidth',1)
plot(plotData2.data(:,3),plotData2.data(:,4)*1e6,'g','LineWidth',1)
plot(plotData2.data(:,5),plotData2.data(:,6)*1e6,'b','LineWidth',1)
plot(NormalCurrent.data(:,1),NormalCurrent.data(:,2)*1e6,'r','LineWidth',1)
plot(NormalCurrent.data(:,3),NormalCurrent.data(:,4)*1e6,'g','LineWidth',1)
plot(NormalCurrent.data(:,5),NormalCurrent.data(:,6)*1e6,'b','LineWidth',1)
title('Current Consumption - Enable OFF');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["VDD1V5" "VDDP5V" "VDDVS" "VDD1V5normal" "VDDP5Vnormal" "VDDVSnormal"]);

figure(8)
% Overall current consumption
clf
hold on;
grid on
plot(plotData2.data(:,1), plotData2.data(:,2)*1e6 + plotData2.data(:,4)*1e6 + plotData2.data(:,6)*1e6, 'r', 'LineWidth', 1);
plot(NormalCurrent.data(:,1), NormalCurrent.data(:,2)*1e6 + NormalCurrent.data(:,4)*1e6 + NormalCurrent.data(:,6)*1e6, 'g', 'LineWidth', 1);
title('Current Consumption Comparison - Enable OFF');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
legend(["Error Current" "Normal Current"]);

plotData2 = importdata('normal_enable_on_current.csv');
plotData4 = importdata('error12_enable_on_current.csv');
% Delta calculation
figure(10)
% Overall current consumption
clf
hold on;
grid on
plot(plotData4.data(:,1), plotData4.data(:,2)*1e6 + plotData4.data(:,4)*1e6 + plotData4.data(:,6)*1e6, 'r', 'LineWidth', 1);
plot(plotData2.data(:,1), plotData2.data(:,2)*1e6 + plotData2.data(:,4)*1e6 + plotData2.data(:,6)*1e6, 'g', 'LineWidth', 1);
title('Current consumption comparison between faulty and fault-free module');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
legend(["VDDEXT faulty module enabled current" "VDDEXT fault-free module current" ]);

% Calculate the difference between the two plots at x=-40
x1 = -40;
y1 = plotData4.data(find(plotData4.data(:,1) == -40), 2)*1e6 + plotData4.data(find(plotData4.data(:,1) == -40), 4)*1e6 +plotData4.data(find(plotData4.data(:,1) == -40), 6)*1e6;
y2 = plotData2.data(find(plotData2.data(:,1) == -40), 2)*1e6 + plotData2.data(find(plotData2.data(:,1) == -40), 4)*1e6 +plotData2.data(find(plotData2.data(:,1) == -40), 6)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 + 1, (y1+y2)/2 - 25, sprintf('ΔI = %g μA @ -40 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

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
text(x1 - 95, (y3+y4)/2 + 25 , sprintf('ΔI = %g μA @ 150 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y3, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y4, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point
legend('', '', '')
legend(["VDDEXT faulty module enabled current" "VDDEXT fault-free module current" ]);
