function [poweredimage] = powimage(c,gama)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
img = im2double(imread('Fig0308(a)(fractured_spine).tif'));
poweredimage = c.*(img).^gama;
subplot(1,2,1),imshow(img),title('Original Image');
subplot(1,2,2),imshow((poweredimage)),title('Pow Transformation Image');

end

