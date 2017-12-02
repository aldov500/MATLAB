% Function:     Gets the HDB3 code from data
% Parameters:   Data - Input binary secuence
%               Data - Output binary secuence on HDB3
% Coder:        A.Vargas

function Data = TX_ConvertData2HDB3(Data)
    
    DataX = Data;     
    DataY = DataX;   
 
    counter_ones = 0;                                                                

    % AMI Code Generation
    for k=1:length(DataX)
        
        if DataX(k)==1
            counter_ones = counter_ones+1;

            if (counter_ones/2 == fix(counter_ones/2))         
                DataY(k)= -1;  % V
            else 
                DataY(k)= 1;   % B                     
            end
            
        end
        
    end

    DataHDB3 = DataY;
    counter_ones = 0;                                           
    sign = 0; 

    % Vectors for Violations 
    V = zeros(1,length(DataY));   
    B = zeros(1,length(DataY));                          

    for k=1:length(DataY)
    
        if DataY(k)==0
            counter_ones = counter_ones + 1;                              
            
            if counter_ones == 4
                counter_ones = 0;

                DataHDB3(k)= 1*DataHDB3(k-4);  
                V(k)=DataHDB3(k);
                
                if DataHDB3(k)==sign
                    % Sign invertion for Violations
                    DataHDB3(k)= -1*DataHDB3(k);
                    % Code Generation B00V
                    DataHDB3(k-3) = DataHDB3(k);
                    B(k-3)= DataHDB3(k);
                    V(k)= DataHDB3(k);
                    % Sign alternate
                    DataHDB3(k+1:length(DataY)) = -1*DataHDB3(k+1:length(DataY));              
                end
                sign = DataHDB3(k);                         
            end
            else
            counter_ones = 0;                          
          
        end
    end

    re=[DataX',DataY',DataHDB3',V',B'];                     

    % Signal Codification
    input = DataHDB3; 
    % Reconstruct HDB3
    decode = input;
    sign = 0;

    for k=1:length(DataHDB3)
        if input(k)~=0
          %Multiple 1's Violation Alternate
          if sign == DataHDB3(k)                        
             decode(k-3:k)=[0 0 0 0];           
          end
          
          sign = input(k);
        end
    end

    decode = abs(decode);                       

    % Output
    Data = DataHDB3;
end

