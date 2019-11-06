function [joint] = JointHistogram(image)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
blurF = [1 1 1; 1 1 1; 1 1 1] /9;
blur = applyMask(image,blurF);
[Nr  Nc] = size(image);
h = zeros(256,256);
for i=1:Nr 
    for j=1:Nc
       % for M=1:Nr
           % for N=1:Nc
                tempI = image(i,j);
                tempB = blur(i,j);
        if(image(i,j)==blur(i,j))
            h(tempI +1, tempB+1) = h(tempI+1 , tempB+1) + 1;
        end
            end
        end
  
joint = h;
end

