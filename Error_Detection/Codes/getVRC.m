% Function:     Calculate Vertical Parity 
% Parameters:   data - binary secuence
% Returns:      Modify data
% Coder:        A.Vargas

function data = getVRC(dataVector)
    
    count_ones = 0;
    for index = 1:1:(length(dataVector))
       if dataVector(index) == 1
        count_ones = count_ones + 1;
       end
    end
    
    if (mod(count_ones,2) == 0)
        dataVector = horzcat(dataVector,1);
    else
        dataVector = horzcat(dataVector,0);
    end 
    
    data = dataVector;
end
