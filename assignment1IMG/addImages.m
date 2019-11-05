function [imager] = addImages(im1,im2)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[r1  col1] = size(im1)
[r2  col2 ]= size(im2)
if r1 > r2 
    if col1 > col2 
    im2 = imresize(im2, [ r1 col1 ] );
    elseif col2 > col1
        im2 = imresize(im2, [ r1 col2 ] );
        im1 = imresize(im1, [ r1 col2 ] );
    end
elseif r2 > r1
    if col2 > col1 
       im1 = imresize(im1 , [ r2 col2]); 
elseif col1 > col2 
        im1 = imresize(im1 , [ r2 col1] );
        im2 = imresize(im2 , [ r2 col1] );
    end
end
imager = imadd(im1,im2);  
%subplot(1,3,1),imshow(im1),title('Original Image #1');
%subplot(1,3,2),imshow((im2)),title('Original image #2');
%subplot(1,3,3),imshow((imager)),title('Result of adding');
end

