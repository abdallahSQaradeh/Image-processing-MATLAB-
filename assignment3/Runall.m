function Runall(image)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%image = imread('fffff.bmp');
%image = rgb2gray(image);
Nim = histequalizesingleimg(image);
h = JointHistogram(image);
x= GenaricCDF(h);
o =Round(x,image);
blur = ApplyStaOpMask(image,'mean',3);
eq = Equlaization(image,blur,o);
imshow(eq);
figure
imshow(Nim);
figure
imhist(eq);
figure
imhist(Nim);
figure
imshow(image);
figure
imhist(image);
end

