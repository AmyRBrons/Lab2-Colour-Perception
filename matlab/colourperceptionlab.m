%___Task 10___

%Image info
imfinfo('peppers.png')

%image shpw
RGB = imread('peppers.png');  
%imshow(RGB)

%convert to grey
I = rgb2gray(RGB);
figure              % start a new figure window
%imshow(I)

%print pair side-by-side
%imshowpair(RGB, I, 'montage')
title('Original colour image (left) grayscale image (right)')


%___Task 11___

%split RGB channels
[R,G,B] = imsplit(RGB);
%montage({R, G, B},'Size',[1 3])

%convert to HSV
HSV = rgb2hsv(RGB);
[H,S,V] = imsplit(HSV);
%montage({H,S,V}, 'Size', [1 3])

%___Task 13___


%map xyz
XYZ = rgb2xyz(RGB);
%imshow(XYZ)
[X,Y,Z] = imsplit(XYZ);
montage({X,Y,Z}, 'Size', [1 3])

