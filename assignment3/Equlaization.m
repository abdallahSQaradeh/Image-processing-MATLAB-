function [equalizedimage] = Equlaization(image,round)
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here
[r c]=size(image);
newimage = zeros(r,c);
        for i=1:r
            for j=1:c
                temp =  image(i,j);
                image(i,j) = round(temp,temp);
            end
        end
       equalizedimage = uint8(image);
                
end

