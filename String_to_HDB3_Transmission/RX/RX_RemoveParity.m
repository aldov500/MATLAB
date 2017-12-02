% Function:     Removes a vertical parity bit
% Parameters:   Data - Input binary secuence with parity
%               Data - Output binary secuence
% Coder:        A.Vargas
function DataOut = RX_RemoveParity( Data )
    count_ones = 0;
    
    for index = 1:1:(length(Data))
       if Data(index) == 1
        count_ones = count_ones + 1;
       elseif Data(index) == -1
        count_ones = count_ones - 1;
       end
    end
   
    if (mod(count_ones,2) == 0)
        Data(end) = [];
        
    elseif (mod(count_ones,2) == 1)
        Data = zeros(1, length(Data)); 
        
    end
    
    DataOut = Data;
    end


