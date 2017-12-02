% Miguel Espinosa 
% Angel Gonzalez
% Aldo Vargas

clear all;
clc;

word = 'Ingenierias'
outMatrix = [];
outVector = [];
asciiWord = double(word)
asciiWordNoised = asciiWord + (rand(1,length(asciiWord)))
asciiWordRounded = round(asciiWordNoised)

for(index = 1:1:length(word))
    vector = de2bi(asciiWord(index));
    vectorPar = getVRC(vector);
    outVector = [outVector, vectorPar];
    outMatrix = [outMatrix; vectorPar];
end

crcOut = getCRC(outVector)