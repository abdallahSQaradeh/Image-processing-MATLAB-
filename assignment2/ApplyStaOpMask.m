function [Output] = ApplyStaOpMask(inputImage,Filter,FilterSize)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    [rowst colst] = size(inputImage);
    templateImg = zeros(rowst,colst);
    h=3;
    statistical = zeros(FilterSize,FilterSize);
    while h<= FilterSize
        inputImage = ExpanIMGandBo(inputImage , (h-1)/2);
        h = h+2;
    end                
     inputImage =  inputImage;
     sumation =0;
    for i=1 : rowst
        for j=1 : colst
            for s=0 : (FilterSize-1)%rows of filter
                for t=0:( FilterSize -1)%cols of filter
                statistical((1+s),(1+t))  = inputImage((i+s),(j+t));
                end
            end
           statistical = reshape(statistical,1,[]);
            statistical = sort(statistical);
            if strcmp('max',lower(Filter)) == 1
                
              templateImg(i,j) = max(statistical);
     
            elseif strcmp('min',lower(Filter)) == 1
                templateImg(i,j) = min(statistical);
             
            elseif strcmp('median',lower(Filter)) == 1
                templateImg(i,j) = median(statistical);
            
            elseif strcmp('mean',lower(Filter)) == 1
                 templateImg(i,j) = mean(statistical);
              
            end
                  statistical = zeros(FilterSize,FilterSize);
        end
    end
    Output = uint8(templateImg);

end

