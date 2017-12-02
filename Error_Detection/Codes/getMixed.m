function Data = getMixed(dataMatrix)
    
    [r,c] = size(dataMatrix);
    
    matrixBuff = [];
    vectorBuff = [];
        
    for(index2 = 1:1:c)
        
        for(index = 1:1:r)
            vectorBuff = [vectorBuff,dataMatrix(index2,index)];  
        end
        vectorBuff = getVRC(vectorBuff);
        matrixBuff = [matrixBuff; vectorBuff];
        vectorBuff = [];
    
    end
    
    matrixBuff = getLRC(matrixBuff);
     
    Data = matrixBuff;
end

