
% Square root of a number
x = sqrt(y);

% Round number
x = round(y)

% Vector definitions H - V
x = [1 23 9 0];
x = [1; 23; 9; 0];
x = first:last;
x = first:step:last;
x = linspace(first,last,number_of_elements);

% Matrix definitions
x = [1 2 3; 4 5 6; 7 8 9];

% Random
x = rand(2); 		% Random 2x2 Matrix
x = rand(1,4);      % Random 4 bits Vector

% Zeros
x = zeros(1,2);     % Zeros Vector

% Extract
x = A(5,7);			% Extract bit in n row, m col
x = A(end,2);
x = A(end-1,end-2)
x = A(2,:);			% All the elements in the col
x = A(1:3,:)		% Rows 1 to 3, and all the col

% Modify
A(2,5) = 11			

% Array Operations
x = y + 1;			
x = y + z;
z = 2*x
y = x/3
z = [3 4] .* [10 20]	% Bit

% Max Value from Vector
xMax = max(x)
[xMax,idx] = max(x)		% Gets Index also

% Vector Size
s = size(x)		% all dimensions
[xrow,xcol] = size(x)

s = length(x) 	% just length


 



