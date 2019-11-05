function [img1r,img2r] = readtwoimages(img1,img2)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here


    
 
img1r = imread(img1);
if ndims(img1r ) ~=2 
j =rgb2gray(img1r);
img1r = j;
end
img2r = imread(img2);
if ndims(img2r ) ~=2
d=rgb2gray(img2r);
img2r = d;
end
end

