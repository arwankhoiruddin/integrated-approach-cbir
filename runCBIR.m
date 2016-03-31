close all
clear
clc

% author: Arwan Ahmad Khoiruddin
% last modified: 30 March 2016

% folder for the images
imgpath = 'img_test';

% query image
filename = '320.jpg';
imagepath = [imgpath '/' filename];
imgquery = imread(imagepath);
