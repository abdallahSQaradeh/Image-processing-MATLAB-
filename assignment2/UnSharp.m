function [unsharppingimage] = UnSharp(image)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
mask = [1 1 1 1 1;1 1 1 1 1 ;1 1 1 1 1;1 1 1 1 1 ; 1 1 1 1 1 ]/25;
blur = uint8(applyMask(image , mask));
edgeimage = uint8(imsubtract(image,blur));
subplot(1,4,1),imshow(image),title('Original Image ');
subplot(1,4,2),imshow((blur)),title('Blur');
subplot(1,4,3),imshow((edgeimage)),title('Edge');
subplot(1,4,4),imshow((imadd(image,edgeimage))),title('Unsharp');
unsharppingimage = uint8(imadd(image,edgeimage));
end

