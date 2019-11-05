function [loggedimage] = logeimage(c)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
img = im2double(imread('Fig0308(a)(fractured_spine).tif'));
Image = c.*(log10(img+1));
subplot(1,2,1),imshow(img),title('Original Image');
subplot(1,2,2),imshow((Image)),title('Log Transformation Image');
loggedimage = img;

end

