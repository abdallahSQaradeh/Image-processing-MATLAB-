function [out] = histequalizesingleimg( image)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
graylevel = Graylevel(image);
cdf = zeros(1,256);
pdf = zeros(1,256);
for i=1:256
    for j=1:i
    cdf(1,i) = cdf(1,i) + graylevel(1,j);
    end
end
total =cdf(256);
for p=1:256
    pdf(p) = cdf(p)/total;
end
Round = pdf;
for u=1:256
    Round(u) = round(pdf(u) * 256);
end
[r c] = size(image);
newimage = image;
for i=1:r
    for j=1:c
        newimage(i,j) = Round(image(i,j));
    end
end

    out = newimage;
    
end

