function [graylevel1,graylevel2] = Graylevel(image)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
 [r c] = size(image);
 his1= zeros(1,256);
% his2= zeros(256);
 for i=1:r 
     for j =1:c
         his1(image(i,j)+1) = his1(image(i,j)+1) + 1;
     end
 end
 % for i=1:r 
   %  for j =1:c
      %   his2(image2(i,j)) = his2(image2(i,j)) + 1;
    % end
 % end
 graylevel1 = his1;
% graylevel2=his2;
end

