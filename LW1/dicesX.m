function dicesX(n)
% DICESX Simulates a specified number of dice rolls.
%   DICESX(N) simulates N rolls of a six-sided die,
%   with outcomes from 1 to 6.
%   All results are displayed as a row vector.
%
%   Example:
%       dicesX(10)
%
%   Input:
%       n - number of dice rolls (positive integer)
%
%   Output:
%       None. Results are printed in the Command Window.

    if ~isscalar(n) || ~isnumeric(n) || n < 0 || n ~= fix(n)
        error('n must be a non-negative integer scalar.');
    end

    rolls = randi([1, 6], 1, n);
    disp(rolls);
end