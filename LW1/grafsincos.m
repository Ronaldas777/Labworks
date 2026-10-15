function varargout = grafsincos(varargin)
% GRAFSINCOS Calculates sine and cosine of a row vector.
%   [S,C] = GRAFSINCOS(X) returns sine and cosine.
%   S = GRAFSINCOS(X) returns only sine.
%   GRAFSINCOS(X) plots sine and cosine if no outputs are requested.
%
%   Input:
%       X - row vector of values
%
%   Outputs:
%       S - sine of X
%       C - cosine of X

    % Check the number of inputs
    if nargin ~= 1
        error('The function requires exactly one input vector.');
    end

    x = varargin{1};

    % Check that the input is a row vector
    if ~isnumeric(x) || ~isrow(x)
        error('Input must be a numeric row vector.');
    end

    % Calculate sine and cosine
    s = sin(x);
    c = cos(x);

    % Check the number of requested outputs
    if nargout == 0
        plot(x, s, 'b-', x, c, 'r--');
        grid on;
        xlabel('x');
        ylabel('Function value');
        title('Sine and Cosine');
        legend('sin(x)', 'cos(x)');

    elseif nargout == 1
        varargout{1} = s;

    elseif nargout == 2
        varargout{1} = s;
        varargout{2} = c;

    else
        error('The function supports at most two outputs.');
    end
end