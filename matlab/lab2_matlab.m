%Task 10: Convert RGB image to Grayscale

%Image info
imfinfo('assets/peppers.png')

%image shpw
RGB = imread('assets/peppers.png');  
%imshow(RGB)

%convert to grey
I = rgb2gray(RGB);
figure              % start a new figure window
%imshow(I)

%print pair side-by-side
%imshowpair(RGB, I, 'montage')
title('Original colour image (left) grayscale image (right)')


%Task 11: Splitting an RGB image into seperate channels
%split RGB channels
[R,G,B] = imsplit(RGB);
%montage({R, G, B},'Size',[1 3])

%Task 12: Map RGB image to HSV space and into seperate channels
HSV = rgb2hsv(RGB);
[H,S,V] = imsplit(HSV);
%montage({H,S,V}, 'Size', [1 3])

%Task 13: Map RGB image to XYZ space
%map xyz
XYZ = rgb2xyz(RGB);
%imshow(XYZ)
[X,Y,Z] = imsplit(XYZ);
montage({X,Y,Z}, 'Size', [1 3])

