	
% Tomar en cuenta el valor de last sign
% para poder hacer ejecuciones de datos
function DataOut = RX_ConvertHDB32Data(Data)

nextSign = true;
dataCopy = [];
count_zeros = 0;
zerosFlag = false;

for (index = 1:1:length(Data))
 
    if (nextSign == true)
        if (Data(index) == 1)
            count_zeros = 0;
            if (zerosFlag == true)
                dataCopy = [dataCopy, 0];
                zerosFlag = false;
            else
                dataCopy = [dataCopy, 1];
                nextSign = ~nextSign;           
            end
         
        elseif (Data(index) == 0)
            count_zeros = count_zeros + 1;
            dataCopy = [dataCopy, 0];
         
        elseif (Data(index) == - 1)
            count_zeros = 0;
            if (zerosFlag == true)
                dataCopy = [dataCopy, 0];
                zerosFlag = false;
            else
                dataCopy = [dataCopy, 1];
                nextSign = ~nextSign;           
            end
            
        end
     
    elseif nextSign == false
        if (Data(index) == - 1)
            count_zeros = 0;
            if (zerosFlag == true)
                dataCopy = [dataCopy, 1];
                zerosFlag = false;
            else
                dataCopy = [dataCopy, 0];
                nextSign = ~nextSign;           
            end
         
        elseif (Data(index) == 0)
            count_zeros = count_zeros + 1;
            dataCopy = [dataCopy, 0];
         
        elseif (Data(index) == 1)
            count_zeros = 0;
            if (zerosFlag == true)
                dataCopy = [dataCopy, 0];
                zerosFlag = false;
                nextSign = ~nextSign; 
            else
                dataCopy = [dataCopy, 1];
                nextSign = ~nextSign;           
            end
         
        end
    end
 
    if (count_zeros >= 3)
        zerosFlag = true;
        count_zeros = 0;
    end
 
end

DataOut = dataCopy;
end

