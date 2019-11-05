function [Output] = applyMask(inputImage,Filter)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    
    [rowsF  colsF ] = size(Filter);
    k = (rowsF-1)/2;
    z = (colsF-1)/2;
    [rowst colst] = size(inputImage);
    templateImg = zeros(rowst,colst);
    h=3;
    statistical = zeros(rowsF,colsF);
    while h<= rowsF
        inputImage = ExpanIMGandBo(inputImage , (h-1)/2);
        h = h+2;
    end
    [rows cols] = size(inputImage);                 
   inputImage =  inputImage;
     sumation =0;
    for i=1 : rowst
        for j=1 : colst
            for s=0 : (rowsF-1)%rows of filter
                for t=0:( colsF -1)%cols of filter
                 sumation  =sumation + inputImage((i+s),(j+t))*Filter((1+s),(1+t));
                end
            end
              templateImg(i,j) = sumation;
              sumation=0;
        end
    end
    Output = uint8(templateImg);
   
    
end

