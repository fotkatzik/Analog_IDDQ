% Clear the workspace and command window
clear all;
clc;

%% ENABLE OFF
% Normal operation conditions - DC Voltage outputs - Vddext enabled
plotData = importdata('VAREF_REG_DIS_VOLTAGE.csv');
figure(1)
% Voltage output
% Add a title to the figure
clf
hold on;
grid on
plot(plotData.data(:,1),plotData.data(:,2),'r','LineWidth',1)
title('VAREF regulator output - Disabled');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Voltage (V) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["VAREF 5V Output"]);

figure(2)
plotData2 = importdata('VAREF_REG_DIS_CURRENT.csv');
% Current Consumption
clf
hold on;
grid on
plot(plotData2.data(:,1),plotData2.data(:,2)*1e6,'r','LineWidth',1)
plot(plotData2.data(:,3),plotData2.data(:,4)*1e6,'g','LineWidth',1)
plot(plotData2.data(:,5),plotData2.data(:,6)*1e6,'b','LineWidth',1)
title('Current Consumption - Disabled');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["VAREFSUP" "VDDP1V5PD" "VDD1V5"]);

figure(3)
% Overall current consumption
clf
hold on;
grid on
plot(plotData2.data(:,1), plotData2.data(:,2)*1e6 + plotData2.data(:,4)*1e6 , 'r', 'LineWidth', 1);
plot(plotData2.data(:,5),plotData2.data(:,6)*1e6,'b','LineWidth',1)
title('Overall Current Consumption - Disabled');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
legend(["VS" "VDDC"]);

%% ENABLE ON
% Normal operation conditions - DC Voltage outputs - Vddext enabled
plotData = importdata('VAREF_REG_EN_VOLTAGE.csv');
figure(4)
% Voltage output
% Add a title to the figure
clf
hold on;
grid on
plot(plotData.data(:,1),plotData.data(:,2),'r','LineWidth',1)
title('VAREF regulator output - Enabled');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Voltage (V) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend("VAREF 5V Output");

figure(5)
plotData3 = importdata('VAREF_REG_EN_CURRENT.csv');
plotData4 = importdata('VAREF_IBP10u.csv');
% Current Consumption
clf
hold on;
grid on
plot(plotData3.data(:,1),plotData3.data(:,2)*1e6,'r','LineWidth',1)
plot(plotData3.data(:,3),plotData3.data(:,4)*1e6,'g','LineWidth',1)
plot(plotData3.data(:,5),plotData3.data(:,6)*1e6+plotData4.data(:,2)*1e6 ,'b','LineWidth',1)
title('Current consumptions - Enabled');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["VAREFSUP" "VDDP1V5PD" "VDD1V5"]);

figure(6)
% Overall current consumption
clf
hold on;
grid on
plot(plotData3.data(:,1), plotData3.data(:,2)*1e6 + plotData3.data(:,4)*1e6 , 'r', 'LineWidth', 1);
plot(plotData3.data(:,5),plotData3.data(:,6)*1e6 +plotData4.data(:,2)*1e6,'b','LineWidth',1)
title('Current consumptions per supply');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
legend(["VS" "VDDC"]);

%% DELTA CALCULATION

figure(7)
% Overall current consumption
clf
hold on;
grid on
plot(plotData2.data(:,1), plotData2.data(:,2)*1e6 + plotData2.data(:,4)*1e6 , 'g', 'LineWidth', 1);
plot(plotData3.data(:,1), plotData3.data(:,2)*1e6 + plotData3.data(:,4)*1e6 , 'r', 'LineWidth', 1);
title('Current consumption delta on VS');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
legend(["Disabled" "Enabled" ]);

% Calculate the difference between the two plots at x=-40
x1 = -40;
y2 = plotData2.data(find(plotData2.data(:,1) == -40), 2)*1e6 + plotData2.data(find(plotData2.data(:,1) == -40), 4)*1e6 ;
y1 = plotData3.data(find(plotData3.data(:,1) == -40), 2)*1e6 + plotData3.data(find(plotData3.data(:,1) == -40), 4)*1e6 ;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 + 1, (y1+y2)/2-20, sprintf('ΔI = %g μA @ -40 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

% Calculate the difference between the two plots at x=25
x1 = 24.6;
y2 = plotData2.data(find(plotData2.data(:,1) == 24.6), 2)*1e6 + plotData2.data(find(plotData2.data(:,1) == 24.6), 4)*1e6 ;
y1 = plotData3.data(find(plotData3.data(:,1) == 24.6), 2)*1e6 + plotData3.data(find(plotData3.data(:,1) == 24.6), 4)*1e6 ;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 + 1, (y1+y2)/2, sprintf('ΔI = %g μA @ 25 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

% Calculate the difference between the two plots at x=150
x1 = 150;
y2 = plotData2.data(find(plotData2.data(:,1) == 150), 2)*1e6 + plotData2.data(find(plotData2.data(:,1) == 150), 4)*1e6 ;
y1 = plotData3.data(find(plotData3.data(:,1) == 150), 2)*1e6 + plotData3.data(find(plotData3.data(:,1) == 150), 4)*1e6 ;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 - 80, (y1+y2)/2+20, sprintf('ΔI = %g μA @ 150 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

legend('', '', '')
legend(["VAREF regulator module base current" "VAREF regulator module enabled current"  ]);

figure(8)
% Overall current consumption
clf
hold on;
grid on
plot(plotData2.data(:,1), plotData2.data(:,6)*1e6  , 'g', 'LineWidth', 1);
plot(plotData3.data(:,1), plotData3.data(:,6)*1e6 +plotData4.data(:,2)*1e6  , 'r', 'LineWidth', 1);
title('Current consumption delta on VDDC');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
legend(["Disabled" "Enabled" ]);

% Calculate the difference between the two plots at x=-40
x1 = -40;
y2 = plotData2.data(find(plotData2.data(:,1) == -40), 6)*1e6  ;
y1 = plotData3.data(find(plotData3.data(:,1) == -40), 6)*1e6 + plotData4.data(find(plotData4.data(:,1) == -40), 2)*1e6 ;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 + 1, (y1+y2)/2-3, sprintf('ΔI = %g μA @ -40 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

% Calculate the difference between the two plots at x=25
x1 = 24.6;
y2 = plotData2.data(find(plotData2.data(:,1) == 24.6), 6)*1e6  ;
y1 = plotData3.data(find(plotData3.data(:,1) == 24.6), 6)*1e6 + plotData4.data(find(plotData4.data(:,1) == -40), 2)*1e6 ;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 + 1, (y1+y2)/2, sprintf('ΔI = %g μA @ 25 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

% Calculate the difference between the two plots at x=150
x1 = 150;
y2 = plotData2.data(find(plotData2.data(:,1) == 150), 6)*1e6  ;
y1 = plotData3.data(find(plotData3.data(:,1) == 150), 6)*1e6 + plotData4.data(find(plotData4.data(:,1) == -40), 2)*1e6 ;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 - 80, (y1+y2)/2+3, sprintf('ΔI = %g μA @ 150 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

legend('', '', '')
legend(["VAREF regulator module base current" "VAREF regulator module enabled current"  ]);
