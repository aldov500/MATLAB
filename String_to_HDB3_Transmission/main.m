% Function:     Main function 
% Parameters:   Data - Output binary HDB3 w/vert_parity secuence 
%               Message - Input String Char
% Coder:        A.Vargas

addpath('C:\Users\Aldo Vargas\Documents\MATLAB\HDB3 Transmission\TX');
addpath('C:\Users\Aldo Vargas\Documents\MATLAB\HDB3 Transmission\RX');
clear all;
clc;

Message = ' ';
Data = TX_ConvertMessage2Data(Message)
%Data = TX_ConvertData2HDB3(Data)