% Define constants
l1 = 0.1;  % replace with your constant value
l2 = 0.1;  % replace with your constant value

% Generate a range of heights for the plot
h_values = linspace(0.1, 0.2, 100);  % adjust the range and number of points as needed

% Calculate corresponding d values
d = calculate_d(l1, l2, h_values);

h = 0.15;
dDesired = calculate_d(l1, l2, h);
display(dDesired);


% Plot the graph
plot(h_values, d, 'LineWidth', 2);
xlabel('The height from shoulder to foot (m)');
ylabel('The length (d) of leg placement space (m)');
title('Distance (d) as a function of Height');
grid on;



function d = calculate_d(l1, l2, h)
    % Ensure that the input values are numeric
    if ~isnumeric(l1) || ~isnumeric(l2) || ~isnumeric(h)
        error('Input values must be numeric.');
    end
    
    % Calculate S
    S = (l1 + l2 + h) / 2;
    
    % Calculate d using the given formula
    s = S;
    d = 2 .* sqrt(s .* (s - l1) .* (s - l2) .* (s - h)) ./ h;
end
