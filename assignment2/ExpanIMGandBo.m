function [output] = ExpanIMGandBo(inputImage , expandby)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    [rows cols] = size(inputImage);
    EIR =rows+2;% x 1,2,3,
    EIC=cols+2;
    EI = zeros(EIR, EIC);%expand image
   
                    EI(1,2:EIC-1) = inputImage(1,:);%to copy the top edge
                    EI(2:EIR-1,1) = inputImage(:,1);
                    EI(EIR,2:EIC-1) = inputImage(rows,:);
                    EI(2:EIR-1,EIC) = inputImage(:,cols);
                    EI(1:2,1:2)= inputImage(1,1);
                    EI(2,2) =0;
                    EI(1,EIC-1:EIC)= inputImage(1,cols);
                    EI(2,EIC) =  inputImage(1,cols);
                    EI(EIR-1:EIR,1)= inputImage(rows,1);
                    EI(EIR-1,2) =0;
                    EI(EIR,EIC-1:EIC) = inputImage(rows,cols);
                    EI(EIR-1 ,EIC) = inputImage(rows,cols);
                    EI(2:EIR-1 , 2:EIC-1) = inputImage(:,:);
                    
                    output = EI;
                    
end

