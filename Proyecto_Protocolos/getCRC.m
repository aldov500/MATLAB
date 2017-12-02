	
% Function:     Error detection by Cyclic Redundancy Verification
% Parameters:   data - binary secuence
% Returns:      Modify data
% Coder:        A.Vargas

function data = getCRC(dataVector)
while(dataVector(1)==0)
    dataVector(1) = [];
end
G = [1 0 0 1];
r = length(G) - 1;

% Add zeros
for (i = 1:1:r)
    dataVector = [dataVector, 0];
end

indexGlobal = 1;
tempXOR = [];
resultXOR = [];
okFlag = false;

% Fill temp vector
for i = 1:1:length(G)
    tempXOR(indexGlobal) = dataVector(indexGlobal);
    indexGlobal = indexGlobal + 1;
end

for index = 1:1:length(dataVector)
    % temp XOR G
    if (length(tempXOR) == length(G))
        resultXOR = double(xor(G, tempXOR));
        tempXOR = resultXOR;
    end
    
    % Adds next bit from dataVector
    if(indexGlobal <= length(dataVector))
        tempXOR = [tempXOR, dataVector(indexGlobal)];
        indexGlobal = indexGlobal + 1;    
    end  
    
    while(tempXOR(1) == 0)
        tempXOR(1) = [];
        if isempty(tempXOR)
            tempXOR(1) = 1;
            okFlag = true;
        end
    end
    
    
end

if(length(tempXOR) == length(G) && indexGlobal < length(dataVector))
    resultXOR = double(xor(G, tempXOR));
    tempXOR = resultXOR;
end

if(okFlag)
    tempXOR = 0;
end

while( length(tempXOR) < r )
    tempXOR = [0, tempXOR]; 
end

data = tempXOR;
end
