% Clear the workspace and command window
clear all;
clc;
%% ALL MONs DISABLED
NormalCurrent = importdata('MON_ALL_DISABLED.csv');
figure(1)
% Current Consumption
clf
hold on;
grid on
plot(NormalCurrent.data(:,1),NormalCurrent.data(:,2)*1e6,'r','LineWidth',1)
plot(NormalCurrent.data(:,3),NormalCurrent.data(:,4)*1e6,'g','LineWidth',1)
plot(NormalCurrent.data(:,5),NormalCurrent.data(:,6)*1e6,'b','LineWidth',1)
title('Current Consumption - All MONs disabled');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["VDD5V" "VDDP1V5" "VDDVS"]);

%% MON1 ENABLED
plotData = importdata('MON1_ENABLED.csv');
figure(2)
% Current Consumption
clf
hold on;
grid on
plot(plotData.data(:,1),plotData.data(:,2)*1e6,'r','LineWidth',1)
plot(plotData.data(:,3),plotData.data(:,4)*1e6,'g','LineWidth',1)
plot(plotData.data(:,5),plotData.data(:,6)*1e6,'b','LineWidth',1)
title('Current consumption o - MON1 Enabled');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["VDD5V" "VDDP1V5" "VDDVS"]);

%% ALL MONs ENABLED
plotData2 = importdata('MON_ALL_ENABLED.csv');
figure(3)
% Current Consumption
clf
hold on;
grid on
plot(plotData2.data(:,1),plotData2.data(:,2)*1e6,'r','LineWidth',1)
plot(plotData2.data(:,3),plotData2.data(:,4)*1e6,'g','LineWidth',1)
plot(plotData2.data(:,5),plotData2.data(:,6)*1e6,'b','LineWidth',1)
title('Current Consumption - All MONs Enabled');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["VDD5V" "VDDP1V5" "VDDVS"]);

%% ALL MONs DISABLED PD1 ENABLED
plotData3 = importdata('ALL_MON_DISABLED_PD1_ENABLED.csv');
figure(4)
% Current Consumption
clf
hold on;
grid on
plot(plotData3.data(:,1),plotData3.data(:,2)*1e6,'r','LineWidth',1)
plot(plotData3.data(:,3),plotData3.data(:,4)*1e6,'g','LineWidth',1)
plot(plotData3.data(:,5),plotData3.data(:,6)*1e6,'b','LineWidth',1)
title('Current Consumption - All MONs Disabled, Pull down x enabled');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["VDD5V" "VDDP1V5" "VDDVS"]);

%% ALL MONs DISABLED PU1 ENABLED
plotData4 = importdata('ALL_MON_DISABLED_PD1_ENABLED.csv');
figure(5)
% Current Consumption
clf
hold on;
grid on
plot(plotData4.data(:,1),plotData4.data(:,2)*1e6,'r','LineWidth',1)
plot(plotData4.data(:,3),plotData4.data(:,4)*1e6,'g','LineWidth',1)
plot(plotData4.data(:,5),plotData4.data(:,6)*1e6,'b','LineWidth',1)
title('Current Consumption - All MONs Disabled, Pull up x enabled');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["VDD5V" "VDDP1V5" "VDDVS"]);

%% MON1 ENABLED PD1 ENABLED
plotData5 = importdata('MON1_ENABLED_PD_ENABLED.csv');
figure(6)
% Current Consumption
clf
hold on;
grid on
plot(plotData5.data(:,1),plotData5.data(:,2)*1e6,'r','LineWidth',1)
plot(plotData5.data(:,3),plotData5.data(:,4)*1e6,'g','LineWidth',1)
plot(plotData5.data(:,5),plotData5.data(:,6)*1e6,'b','LineWidth',1)
title('Current Consumption - MONx Enabled Pull Down x Enabled');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["VDD5V" "VDDP1V5" "VDDVS"]);

%% MON1 ENABLED PU1 ENABLED
plotData6 = importdata('MON1_ENABLED_PU1_ENABLED.csv');
figure(7)
% Current Consumption
clf
hold on;
grid on
plot(plotData6.data(:,1),plotData6.data(:,2)*1e6,'r','LineWidth',1)
plot(plotData6.data(:,3),plotData6.data(:,4)*1e6,'g','LineWidth',1)
plot(plotData6.data(:,5),plotData6.data(:,6)*1e6,'b','LineWidth',1)
title('Current Consumption - MON1 Enabled Pull Up 1 Enabled');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["VDD5V" "VDDP1V5" "VDDVS"]);
%% DELTA MON1 ENABLED - ALL DISABLED
figure(8)
% Overall current consumption
clf
hold on;
grid on
plot(plotData.data(:,1), plotData.data(:,2)*1e6 + plotData.data(:,4)*1e6 + plotData.data(:,6)*1e6, 'r', 'LineWidth', 1);
plot(NormalCurrent.data(:,1), NormalCurrent.data(:,2)*1e6 + NormalCurrent.data(:,4)*1e6 + NormalCurrent.data(:,6)*1e6, 'g', 'LineWidth', 1);
title('Current consumption delta on VS for MONx');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
legend(["MONx enabled current" "Base current"  ]);

%% DELTA ALL MONs ENABLED - ALL DISABLED
figure(9)
% Overall current consumption
clf
hold on;
grid on
plot(plotData2.data(:,1), plotData2.data(:,2)*1e6 + plotData2.data(:,4)*1e6 + plotData2.data(:,6)*1e6, 'r', 'LineWidth', 1);
plot(NormalCurrent.data(:,1), NormalCurrent.data(:,2)*1e6 + NormalCurrent.data(:,4)*1e6 + NormalCurrent.data(:,6)*1e6, 'g', 'LineWidth', 1);
title('Current Consumption Comparison - All MONs Enabled');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
legend(["ALL EN Current" "All DIS Current" ]);

%% DELTA MON1 ENABLED PD1 ENABLED - ALL DISABLED
figure(10)
% Overall current consumption
clf
hold on;
grid on
plot(plotData5.data(:,1), plotData5.data(:,2)*1e6 + plotData5.data(:,4)*1e6 + plotData5.data(:,6)*1e6, 'r', 'LineWidth', 1);
plot(NormalCurrent.data(:,1), NormalCurrent.data(:,2)*1e6 + NormalCurrent.data(:,4)*1e6 + NormalCurrent.data(:,6)*1e6, 'g', 'LineWidth', 1);
title('Current consumption comparison on VS - MONx and pull down x enabled');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
legend(["MONx EN Current PDx EN" "All DIS Current"  ]);

% Calculate the difference between the two plots at x=-40
x1 = -40;
y1 = plotData4.data(find(plotData5.data(:,1) == -40), 2)*1e6 + plotData5.data(find(plotData4.data(:,1) == -40), 4)*1e6 +plotData5.data(find(plotData4.data(:,1) == -40), 6)*1e6;
y2 = plotData2.data(find(NormalCurrent.data(:,1) == -40), 2)*1e6 + NormalCurrent.data(find(NormalCurrent.data(:,1) == -40), 4)*1e6 +NormalCurrent.data(find(NormalCurrent.data(:,1) == -40), 6)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 + 1, (y1+y2)/2-0.15, sprintf('ΔI = %g μA @ -40 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

% Calculate the difference between the two plots at x=-40
x1 = 24.6;
y1 = plotData4.data(find(plotData5.data(:,1) == 24.6), 2)*1e6 + plotData5.data(find(plotData4.data(:,1) == 24.6), 4)*1e6 +plotData5.data(find(plotData4.data(:,1) == 24.6), 6)*1e6;
y2 = plotData2.data(find(NormalCurrent.data(:,1) == 24.6), 2)*1e6 + NormalCurrent.data(find(NormalCurrent.data(:,1) == 24.6), 4)*1e6 +NormalCurrent.data(find(NormalCurrent.data(:,1) == 24.6), 6)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 + 1, (y1+y2)/2, sprintf('ΔI = %g μA @ 25 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

% Calculate the difference between the two plots at x=-40
x1 = 150;
y1 = plotData4.data(find(plotData5.data(:,1) == 150), 2)*1e6 + plotData5.data(find(plotData4.data(:,1) == 150), 4)*1e6 +plotData5.data(find(plotData4.data(:,1) == 150), 6)*1e6;
y2 = plotData2.data(find(NormalCurrent.data(:,1) == 150), 2)*1e6 + NormalCurrent.data(find(NormalCurrent.data(:,1) == 150), 4)*1e6 +NormalCurrent.data(find(NormalCurrent.data(:,1) == 150), 6)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 -75, (y1+y2)/2+0.05, sprintf('ΔI = %g μA @ 150 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

legend('', '', '')
legend(["MONx and PDx enabled current" "Base current"  ]);
%% DELTA MON1 ENABLED PU1 ENABLED - ALL DISABLED
figure(11)
% Overall current consumption
clf
hold on;
grid on
plot(plotData6.data(:,1), plotData6.data(:,2)*1e6 + plotData6.data(:,4)*1e6 + plotData6.data(:,6)*1e6, 'r', 'LineWidth', 1);
plot(NormalCurrent.data(:,1), NormalCurrent.data(:,2)*1e6 + NormalCurrent.data(:,4)*1e6 + NormalCurrent.data(:,6)*1e6, 'g', 'LineWidth', 1);
title('Current consumption comparison on VS - MONx and pull up x enabled');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
legend(["MONx EN Current PUx EN" "All DIS Current"  ]);


% Calculate the difference between the two plots at x=-40
x1 = -40;
y1 = plotData6.data(find(plotData6.data(:,1) == -40), 2)*1e6 + plotData6.data(find(plotData6.data(:,1) == -40), 4)*1e6 +plotData6.data(find(plotData6.data(:,1) == -40), 6)*1e6;
y2 = plotData2.data(find(NormalCurrent.data(:,1) == -40), 2)*1e6 + NormalCurrent.data(find(NormalCurrent.data(:,1) == -40), 4)*1e6 +NormalCurrent.data(find(NormalCurrent.data(:,1) == -40), 6)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 + 1, (y1+y2)/2-5, sprintf('ΔI = %g μA @ -40 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

% Calculate the difference between the two plots at x=-40
x1 = 24.6;
y1 = plotData6.data(find(plotData6.data(:,1) == 24.6), 2)*1e6 + plotData6.data(find(plotData6.data(:,1) == 24.6), 4)*1e6 +plotData6.data(find(plotData6.data(:,1) == 24.6), 6)*1e6;
y2 = plotData2.data(find(NormalCurrent.data(:,1) == 24.6), 2)*1e6 + NormalCurrent.data(find(NormalCurrent.data(:,1) == 24.6), 4)*1e6 +NormalCurrent.data(find(NormalCurrent.data(:,1) == 24.6), 6)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 + 1, (y1+y2)/2, sprintf('ΔI = %g μA @ 25 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

% Calculate the difference between the two plots at x=-40
x1 = 150;
y1 = plotData6.data(find(plotData6.data(:,1) == 150), 2)*1e6 + plotData6.data(find(plotData6.data(:,1) == 150), 4)*1e6 +plotData6.data(find(plotData6.data(:,1) == 150), 6)*1e6;
y2 = plotData2.data(find(NormalCurrent.data(:,1) == 150), 2)*1e6 + NormalCurrent.data(find(NormalCurrent.data(:,1) == 150), 4)*1e6 +NormalCurrent.data(find(NormalCurrent.data(:,1) == 150), 6)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 -75, (y1+y2)/2+5, sprintf('ΔI = %g μA @ 150 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

legend('', '', '')
legend(["MONx and PUx enabled current" "Base current"  ]);