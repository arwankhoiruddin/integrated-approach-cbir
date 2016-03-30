% %=======================================================================
% this is the main function 
% author: Arwan Ahmad Khoiruddin
% last modified: 30 March 2016
% %=======================================================================

close all
clear
clc

% folder for the images
imgpath = 'image.orig';

% query image
filename = '0.jpg';
imgquery = imread([imgpath '/' filename]);

% =================
% pre processing

% ==================
% feature extraction

% color moment
imgcm = colorMoment(imgquery);

% local binary pattern
imglbp = lbp(imgquery, 3);
figure, imshow(imgquery);
figure, imshow(imglbp);

% final feature of color

% get feature vectors

% similarity matching using Eucledian distance

% choose highest similarity
