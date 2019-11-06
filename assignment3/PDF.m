function [pdf] = PDF(cdfh)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
sumation = cdfh(256,256);
pdfh = zeros(256,256);
for i=1:256
    for j=1:256
        pdfh(i,j) = cdfh(i,j)/sumation;
    end
end
pdf = pdfh;
end

