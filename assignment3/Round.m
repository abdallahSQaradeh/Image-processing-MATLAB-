function [RoundI] = Round(cdf,image)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
[r c] = size(image);
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
           temp = (((256-1)/((r*c)-1)))*(cdf(i,j)-cdfmin);
           heq(i,j) = round(temp );
        end
    end
    
        RoundI = heq;  
end

