function [equalizedimage] = Equlaization(image,image2,round )
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here
[r c]=size(image);
newimage = zeros(r,c);
        for i=1:r
            for j=1:c
                temp =  image(i,j);
               newimage(i,j) = round(image(i,j)+1,image2(i,j)+1);
            end
        end
       equalizedimage = uint8(newimage);
                
end

