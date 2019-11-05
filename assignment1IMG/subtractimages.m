function [subtractedimage] = subtractimages(img1,img2)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
subtractedimage = imsubtract(img1 , img2);
subplot(1,3,1),imshow(img1),title('Original Image #1');
subplot(1,3,2),imshow((img2)),title('Original image #2');
subplot(1,3,3),imshow((subtractedimage)),title('Result of subtraction');
end

