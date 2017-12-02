addpath('C:\Users\Aldo Vargas\Documents\MATLAB\Error_Detection\Codes')
clear;
clc;

dataVector = round(rand(1,30))    
%dataVector = [1 1 0 1 0 1]
crcModulo = getCRC(dataVector)
dataVector2 = [dataVector, crcModulo]
crcVerification = getCRC(dataVector2)

