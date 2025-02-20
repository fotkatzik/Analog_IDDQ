% Clear the workspace and command window
clear all;
clc;

%% ALL DISABLED
% Current consumption
figure(1)
plotData1 = importdata('cfu_all_disabled.csv');
% Current Consumption
clf
hold on;
grid on
plot(plotData1.data(:,1),plotData1.data(:,2)*1e6,'r','LineWidth',1)
plot(plotData1.data(:,3),plotData1.data(:,4)*1e6,'g','LineWidth',1)
plot(plotData1.data(:,5),plotData1.data(:,6)*1e6,'b','LineWidth',1)
plot(plotData1.data(:,7),plotData1.data(:,8)*1e6,'cyan','LineWidth',1)
title('Current Consumption - All Disabled');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["VDDP5V" "VDDP1V5" "VDD5VPD" "VDD1V5PD"]);

% Buffers - Voltage outputs
figure(2)
plotData2 = importdata('cfu_all_disabled_voltage.csv');
% Current Consumption
clf
hold on;
grid on
plot(plotData2.data(:,1),plotData2.data(:,2),'r','LineWidth',1)
plot(plotData2.data(:,3),plotData2.data(:,4),'g','LineWidth',1)
title('Buffers - Voltage Outputs - All Disabled');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Voltage (V) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["Vref Buffer" "NVM Buffer"]);

%% 1V2 Bandgap circuit Enabled
% Current consumption
figure(3)
plotData3 = importdata('cfu_1v2_enabled.csv');
% Current Consumption
clf
hold on;
grid on
plot(plotData3.data(:,1),plotData3.data(:,2)*1e6,'r','LineWidth',1)
plot(plotData3.data(:,3),plotData3.data(:,4)*1e6,'g','LineWidth',1)
plot(plotData3.data(:,5),plotData3.data(:,6)*1e6,'b','LineWidth',1)
plot(plotData3.data(:,7),plotData3.data(:,8)*1e6,'cyan','LineWidth',1)
title('Current Consumption - 1V2 Bandgap circuit Enabled');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["VDDP5V" "VDDP1V5" "VDD5VPD" "VDD1V5PD"]);

% Delta calculation
figure(4)
% Overall current consumption
clf
hold on;
grid on
plot(plotData1.data(:,3), plotData1.data(:,4)*1e6, 'g', 'LineWidth', 1);
plot(plotData3.data(:,3), plotData3.data(:,4)*1e6, 'r', 'LineWidth', 1);
title('Current consumption delta on VDDC for 1v2 bandgap circuit');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
legend(["All Disabled" " 1v2 Bandgap Circuit Enabled" ]);

% Calculate the difference between the two plots at x=-40
x1 = -40;
y2 = plotData1.data(find(plotData1.data(:,1) == -40), 4)*1e6;
y1 = plotData3.data(find(plotData3.data(:,1) == -40), 4)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 + 1, (y1+y2)/2-40, sprintf('ΔI = %g μA @ -40 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

% Calculate the difference between the two plots at x=25
x1 = 24.6;
y2 = plotData1.data(find(plotData1.data(:,1) == 24.6), 4)*1e6;
y1 = plotData3.data(find(plotData3.data(:,1) == 24.6), 4)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 + 1, (y1+y2)/2, sprintf('ΔI = %g μA @ 25 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

% Calculate the difference between the two plots at x=25
x1 = 150;
y2 = plotData1.data(find(plotData1.data(:,1) == 150), 4)*1e6;
y1 = plotData3.data(find(plotData3.data(:,1) == 150), 4)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 -75, (y1+y2)/2+40, sprintf('ΔI = %g μA @ 150 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

legend('', '', '')
legend(["CFU module base current" "1v2 bandgap circuit enabled current" ]);
%% 1V2 Bandgap circuit and IBIAS Enabled
% Current consumption
figure(5)
plotData4 = importdata('cfu_1v2_ibias_enabled.csv');
% Current Consumption
clf
hold on;
grid on
plot(plotData4.data(:,1),plotData4.data(:,2)*1e6,'r','LineWidth',1)
plot(plotData4.data(:,3),plotData4.data(:,4)*1e6,'g','LineWidth',1)
plot(plotData4.data(:,5),plotData4.data(:,6)*1e6,'b','LineWidth',1)
plot(plotData4.data(:,7),plotData4.data(:,8)*1e6,'cyan','LineWidth',1)
title('Current Consumption - 1V2 Bandgap circuit and IBIAS Enabled ');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["VDDP5V" "VDDP1V5" "VDD5VPD" "VDD1V5PD"]);

% Delta calculation
figure(6)
% Overall current consumption
clf
hold on;
grid on
plot(plotData3.data(:,3), plotData3.data(:,4)*1e6, 'g', 'LineWidth', 1);
plot(plotData4.data(:,3), plotData4.data(:,4)*1e6, 'r', 'LineWidth', 1);
title('Current consumption delta on VDDC for IBIAS circuit');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
legend(["1v2 Bandgap Circuit Enabled" "1v2 Bandgap Circuit and IBIAS Enabled" ]);

% Calculate the difference between the two plots at x=-40
x1 = -40;
y2 = plotData3.data(find(plotData3.data(:,1) == -40), 4)*1e6;
y1 = plotData4.data(find(plotData4.data(:,1) == -40), 4)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 + 1, (y1+y2)/2-40, sprintf('ΔI = %g μA @ -40 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

% Calculate the difference between the two plots at x=25
x1 = 24.6;
y2 = plotData3.data(find(plotData3.data(:,1) == 24.6), 4)*1e6;
y1 = plotData4.data(find(plotData4.data(:,1) == 24.6), 4)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 + 1, (y1+y2)/2, sprintf('ΔI = %g μA @ 25 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

% Calculate the difference between the two plots at x=25
x1 = 150;
y2 = plotData3.data(find(plotData3.data(:,1) == 150), 4)*1e6;
y1 = plotData4.data(find(plotData4.data(:,1) == 150), 4)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 - 75, (y1+y2)/2+40, sprintf('ΔI = %g μA @ 150 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

legend('', '', '')
legend(["1v2 bandgap circuit enabled current" "1v2 bandgap circuit and IBIAS enabled current" ]);
%% 1V2 Bandgap circuit, IBIAS and VREF Buffer Enabled
% Current consumption
figure(7)
plotData5 = importdata('cfu_1v2_ibias_vref_enabled.csv');
% Current Consumption
clf
hold on;
grid on
plot(plotData5.data(:,1),plotData5.data(:,2)*1e6,'r','LineWidth',1)
plot(plotData5.data(:,3),plotData5.data(:,4)*1e6,'g','LineWidth',1)
plot(plotData5.data(:,5),plotData5.data(:,6)*1e6,'b','LineWidth',1)
plot(plotData5.data(:,7),plotData5.data(:,8)*1e6,'cyan','LineWidth',1)
title('Current Consumption - 1V2 Bandgap circuit, IBIAS and Vref Buffer Enabled ');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["VDDP5V" "VDDP1V5" "VDD5VPD" "VDD1V5PD"]);

% Delta calculation
figure(8)
% Overall current consumption
clf
hold on;
grid on
plot(plotData4.data(:,3), plotData4.data(:,4)*1e6, 'g', 'LineWidth', 1);
plot(plotData5.data(:,3), plotData5.data(:,4)*1e6, 'r', 'LineWidth', 1);
title('Current consumption delta on VDDC for VREF buffer');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
legend(["1v2 Bandgap Circuit and IBIAS Enabled" "1v2 Bandgap Circuit, IBIAS and VREF Enabled " ]);

% Calculate the difference between the two plots at x=-40
x1 = -40;
y2 = plotData4.data(find(plotData4.data(:,1) == -40), 4)*1e6;
y1 = plotData5.data(find(plotData5.data(:,1) == -40), 4)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 + 1, (y1+y2)/2, sprintf('ΔI = %g μA @ -40 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

% Calculate the difference between the two plots at x=-40
x1 = 24.6;
y2 = plotData4.data(find(plotData4.data(:,1) == 24.6), 4)*1e6;
y1 = plotData5.data(find(plotData5.data(:,1) == 24.6), 4)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 + 1, (y1+y2)/2, sprintf('ΔI = %g μA @ 25 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

% Calculate the difference between the two plots at x=-40
x1 = 150;
y2 = plotData4.data(find(plotData4.data(:,1) == 150), 4)*1e6;
y1 = plotData5.data(find(plotData5.data(:,1) == 150), 4)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 -75, (y1+y2)/2, sprintf('ΔI = %g μA @ 150 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

legend('', '', '')
legend(["1v2 bandgap circuit and IBIAS enabled" "1v2 Bandgap circuit, IBIAS and VREF enabled " ]);

% Delta calculation
figure(9)
% Overall current consumption
clf
hold on;
grid on
plot(plotData4.data(:,1), plotData4.data(:,2)*1e6, 'g', 'LineWidth', 1);
plot(plotData5.data(:,1), plotData5.data(:,2)*1e6, 'r', 'LineWidth', 1);
title('Current consumption delta on VDDP for VREF buffer');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
legend(["1v2 Bandgap Circuit and IBIAS Enabled" "1v2 Bandgap Circuit, IBIAS and VREF buffer Enabled " ]);

% Calculate the difference between the two plots at x=-40
x1 = -40;
y2 = plotData4.data(find(plotData4.data(:,1) == -40), 2)*1e6;
y1 = plotData5.data(find(plotData5.data(:,1) == -40), 2)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 + 1, (y1+y2)/2-25, sprintf('ΔI = %g μA @ -40 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

% Calculate the difference between the two plots at x=25
x1 = 24.6;
y2 = plotData4.data(find(plotData4.data(:,1) == 24.6), 2)*1e6;
y1 = plotData5.data(find(plotData5.data(:,1) == 24.6), 2)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 + 1, (y1+y2)/2, sprintf('ΔI = %g μA @ 25 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

% Calculate the difference between the two plots at x=25
x1 = 150;
y2 = plotData4.data(find(plotData4.data(:,1) == 150), 2)*1e6;
y1 = plotData5.data(find(plotData5.data(:,1) == 150), 2)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 - 75, (y1+y2)/2+25, sprintf('ΔI = %g μA @ 150 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point
legend('', '', '')
legend(["1v2 bandgap circuit and IBIAS enabled" "1v2 Bandgap circuit, IBIAS and VREF buffer enabled " ]);


% Buffers - Voltage outputs
figure(10)
plotData6 = importdata('cfu_varef_voltage.csv');
% Current Consumption
clf
hold on;
grid on
plot(plotData6.data(:,1),plotData6.data(:,2),'g','LineWidth',1)
plot(plotData6.data(:,3),plotData6.data(:,4),'r','LineWidth',1)
title('Buffers - Voltage Outputs - Vref Buffer Enabled');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Voltage (V) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["Vref Buffer" "NVM Buffer"]);

%% 1V2 Bandgap circuit, IBIAS and NVM Buffer Enabled
% Current consumption
figure(11)
plotData7 = importdata('cfu_1v2_ibias_nvm_enabled.csv');
% Current Consumption
clf
hold on;
grid on
plot(plotData7.data(:,1),plotData7.data(:,2)*1e6,'r','LineWidth',1)
plot(plotData7.data(:,3),plotData7.data(:,4)*1e6,'g','LineWidth',1)
plot(plotData7.data(:,5),plotData7.data(:,6)*1e6,'b','LineWidth',1)
plot(plotData7.data(:,7),plotData7.data(:,8)*1e6,'cyan','LineWidth',1)
title('Current Consumption - 1V2 Bandgap circuit, IBIAS and NVM Buffer Enabled ');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["VDDP5V" "VDDP1V5" "VDD5VPD" "VDD1V5PD"]);

% Delta calculation
figure(12)
% Overall current consumption
clf
hold on;
grid on
plot(plotData4.data(:,3), plotData4.data(:,4)*1e6, 'g', 'LineWidth', 1);
plot(plotData7.data(:,3), plotData7.data(:,4)*1e6, 'r', 'LineWidth', 1);
title('Current consumption delta on VDDC for NVM buffer');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
legend(["1v2 Bandgap Circuit and IBIAS Enabled" "1v2 Bandgap Circuit, IBIAS and NVM Enabled " ]);

% Calculate the difference between the two plots at x=-40
x1 = -40;
y2 = plotData4.data(find(plotData4.data(:,1) == -40), 4)*1e6;
y1 = plotData7.data(find(plotData7.data(:,1) == -40), 4)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 + 1, (y1+y2)/2-10, sprintf('ΔI = %g μA @ -40 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

% Calculate the difference between the two plots at x=25
x1 = 24.6;
y2 = plotData4.data(find(plotData4.data(:,1) == 24.6), 4)*1e6;
y1 = plotData7.data(find(plotData7.data(:,1) == 24.6), 4)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 + 1, (y1+y2)/2, sprintf('ΔI = %g μA @ 25 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point


% Calculate the difference between the two plots at x=150
x1 = 150;
y2 = plotData4.data(find(plotData4.data(:,1) == 150), 4)*1e6;
y1 = plotData7.data(find(plotData7.data(:,1) == 150), 4)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 -75, (y1+y2)/2+10, sprintf('ΔI = %g μA @ 150 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

legend('', '', '')
legend(["1v2 bandgap circuit and IBIAS enabled" "1v2 Bandgap circuit, IBIAS and NVM buffer enabled " ]);

% Delta calculation
figure(13)
% Overall current consumption
clf
hold on;
grid on
plot(plotData4.data(:,1), plotData4.data(:,2)*1e6, 'g', 'LineWidth', 1);
plot(plotData7.data(:,1), plotData7.data(:,2)*1e6, 'r', 'LineWidth', 1);
title('Current consumption delta on VDDP for NVM Buffer');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Current (uA) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
legend(["1v2 Bandgap Circuit and IBIAS Enabled" "1v2 Bandgap Circuit, IBIAS and NVM Enabled " ]);

% Calculate the difference between the two plots at x=-40
x1 = -40;
y2 = plotData4.data(find(plotData4.data(:,1) == -40), 2)*1e6;
y1 = plotData7.data(find(plotData7.data(:,1) == -40), 2)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 + 1, (y1+y2)/2-10, sprintf('ΔI = %g μA @ -40 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

% Calculate the difference between the two plots at x=-40
x1 = 24.6;
y2 = plotData4.data(find(plotData4.data(:,1) == 24.6), 2)*1e6;
y1 = plotData7.data(find(plotData7.data(:,1) == 24.6), 2)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 + 1, (y1+y2)/2, sprintf('ΔI = %g μA @ 25 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

% Calculate the difference between the two plots at x=150
x1 = 150;
y2 = plotData4.data(find(plotData4.data(:,1) == 150), 2)*1e6;
y1 = plotData7.data(find(plotData7.data(:,1) == 150), 2)*1e6;
diff = y1 - y2;

% Plot the line between the two points with the calculated difference
plot([x1 x1], [y2 y1], 'k--', 'LineWidth', 1);
text(x1 - 75, (y1+y2)/2+10, sprintf('ΔI = %g μA @ 150 oC', diff), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');

% Plot circles at the start and end points
plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Circle at start point
plot(x1, y2, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g'); % Circle at end point

legend('', '', '')
legend(["1v2 bandgap circuit and IBIAS enabled" "1v2 Bandgap circuit, IBIAS and NVM buffer enabled " ]);
% Buffers - Voltage outputs
figure(14)
plotData8 = importdata('cfu_nvm_voltage.csv');
% Current Consumption
clf
hold on;
grid on
plot(plotData8.data(:,1),plotData8.data(:,2),'g','LineWidth',1)
plot(plotData8.data(:,3),plotData8.data(:,4),'r','LineWidth',1)
title('Buffers - Voltage Outputs - NVM Buffer Enabled');
% Add x-axis label with custom font and color
xlabel('Temperature (celsius)', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'blue');
% Add y-axis label with custom font and color
ylabel('Voltage (V) ', 'FontWeight', 'normal', 'FontSize', 12, 'Color', 'red');
%Add a table
legend(["Vref Buffer" "NVM Buffer"]);