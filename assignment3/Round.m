function [RoundI] = Round(cdf,pdf)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

heq=zeros(256,256);
cdfmin =1000;
for o=1:256
    for k=1:256
        if(cdf(o,k) < cdfmin & cdf(o,k)~=0)
            cdfmin = cdf(o,k);
        end
    end
end

    for i=1:256
        for j=1:256
           % tempmult = pdf(i,j)* 256;
           temp = (((256-1)/((256*256)-1)))*(cdf(i,j)-cdfmin);
           heq(i,j) = round(temp * 255);
        end
    end
    
        RoundI = uint8(heq);  
end

