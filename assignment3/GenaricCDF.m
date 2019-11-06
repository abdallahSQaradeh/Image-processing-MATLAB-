function [CDF] = GenaricCDF(h)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
[Nr Nc] = size(h);
hCDF = zeros(256,256);
for i=1:Nr
    for j=1:Nc
        hCDF(i,j) = Cellcdf(h,i,j);
    end
end
CDF =uint8(hCDF);
        
end

