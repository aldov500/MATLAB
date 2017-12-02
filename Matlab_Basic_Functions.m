% Operators

% Square root of a number
x = sqrt(y);

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
