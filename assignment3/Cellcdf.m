function [cdf] = Cellcdf(h,m,n)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
sum =0;
    for i=1:m
        for j=1:n
            sum =sum + h(i,j);
        end
    end
    cdf =sum;
            
end

