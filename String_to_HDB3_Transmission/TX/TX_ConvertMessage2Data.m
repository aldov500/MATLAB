% Function:     Convert String Char to Binary Data
% Parameters:   Data - Output binary secuence
%               Message - Input String Char
% Coder:        A.Vargas


function Data = TX_ConvertMessage2Data(Message)
    Data = double(Message);
    DataElement = [];
    dataBuff = [];
    
    for(i=1:1:length(Data)) 
        dataElement = de2bi(Data(i));
        dataElement = TX_AddParity(dataElement);
        dataBuff = [dataBuff, dataElement];
    end
    
    Data = dataBuff;
     
end
