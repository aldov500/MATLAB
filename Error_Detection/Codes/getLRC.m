% Function:     Calculate Longitudinal Parity
% Parameters:   data - binary secuence
% Returns:      Modify data
% Coder:        A.Vargas

function data = getLRC(dataMatrix)
    
    parityBite = 0;
    count_ones = 0;
    count_global = 1;
    
    [row, col] = size(dataMatrix);
    
    while count_global <= length(dataMatrix)
   
        for i = 1:1:row
            for j = 1:1:col
                if (j == count_global) && (dataMatrix(i,j) == 1)               
                    count_ones = count_ones + 1;
                end
            end
        end
        
        
        if (mod(count_ones,2) == 0)
            parityBite = horzcat(parityBite,1);
        else
            parityBite = horzcat(parityBite,0);
        end
        
        count_ones = 0;
        count_global = count_global + 1;
               
    end 
   parityBite(:,1) = [];
   
   while( (length(parityBite)) > 8  )
       parityBite(end) = [];
       
   end
   parityBite
   data = [dataMatrix; parityBite]
end
