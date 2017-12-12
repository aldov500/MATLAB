% Miguel Espinosa 
% Angel Gonzalez
% Aldo Vargas

clear all;
clc;

word = 'Ingenierias'
outMatrix = [];
outVector = [];
asciiWord = double(word)
%asciiWordNoised = asciiWord + (rand(1,length(asciiWord)))
%asciiWordRounded = round(asciiWordNoised)
outMatrixOriginal = [];

for(index = 1:1:length(word))
    % binary convertion
    vector = de2bi(asciiWord(index));
    outMatrixOriginal = [outMatrixOriginal; vector];
    
    % get parity
    vectorPar = getVRC(vector);
    
    % concatenate
    outVector = [outVector, vectorPar];
    outMatrix = [outMatrix; vectorPar];
end

outMatrixOriginal
outMatrix = getLRC(outMatrix)
outVector

crcResult = getCRC(outVector);
dataCRC = [outVector, crcResult];
crcComp = getCRC(dataCRC);