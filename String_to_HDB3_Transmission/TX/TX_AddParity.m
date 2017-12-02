% Function:     Add a vertical parity bit
% Parameters:   Data - Input binary secuence
%               Data - Output binary secuence with parity
% Coder:        A.Vargas

% Vector de entrada completa
% Dividir vector en bites
% Eliminar el bit sobrante
% Aplicar paridad a cada bite
% Regenerar vector

function DataOut = TX_AddParity(Data)
    count_ones = 0;
    
    for index = 1:1:(length(Data))
       if Data(index) == 1
        count_ones = count_ones + 1;
       elseif Data(index) == -1
        count_ones = count_ones - 1;
       end
    end
    
    if (mod(count_ones,2) == 0)
        Data = horzcat(Data,0);
    else
        Data = horzcat(Data,1);
    end  
    
    DataOut = Data;
end
