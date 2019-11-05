function Edgefilter(image)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
Hsobel = [-1 -2 -1 ; 0 0 0 ; 1 2 1];
Vsobel = [-1 0 1 ; -2 0 2; -1 0 1];
Hedge =applyMask(image , Hsobel);
Vedge = applyMask(image , Vsobel);
%imshow(Hedge);
%figure
%imshow(Vedge);
magnitude = abs(Hedge) + abs(Vedge);
%imshow(magnitude);
laplacianmask = [-1 -1 -1;-1 8 -1 ; -1 -1 -1];
laplacian = applyMask(image , laplacianmask);

subplot(1,3,1),imshow(image),title('Original Image ');
subplot(1,3,2),imshow((magnitude)),title('Edge sobel');
subplot(1,3,3),imshow((laplacian)),title('Laplacian');
end

