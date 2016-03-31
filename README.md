# Matlab code for Content Based Image Retrieval

This repository contains Matlab code for paper entitled "An Integrated Approach to Content Based Image Retrieval" [1]. The images are downloaded from [2]

# Program Design

The program can be run using Matlab. I tried to use as less toolbox as possible so the program is portable to all versions of Matlab. Therefore, I avoid using GUI as I am not quite sure that the library of the GUI for each version of matlab is similar. The main program is on cbir.m.

For the moment, I point the folder of images to img_test to make my test faster. However, if you want to try the algorithm to all set of the images, you just change imgpath in cbir.m into ‘image.orig’. So, it will be like this

imgpath =‘image.orig’

The query image is set by filename variable in cbir.m. So, if you want to change the query image, just change this into any image you want. I made this program to be smart. So, when it walks to all images in image set, when it find the file similar with query image, it will skip and will not find the feature vector. I already put comment in each different part of the program. So, you should be able to track the program logic from the comments available. Threshold Values and Parameter Values The threshold I set on this program can be found in “th” variable. For me, I set the threshold to be 3.6e3. That threshold is found after doing some tests on img_test.

# How to Compile and Run

1. Open Matlab
2. Open this project folder
3. Open cbir.m
4. You can do one of this: press play button above the code, or go to command window and type cbir then enter

# Limitations, if any

Because it uses histogram for LBP, then it is quite robust to image size. I haven’t investigate for the limitations yet.

# Details of What the Modules Do

1. colorMoment.m : find the color moment based on Stricker Orengo algorithm
2. Euclid.m : find Euclidian distance between two feature vectors
3. Lbp.m : find histogram value of local binary pattern of the input image
4. featureVector.m : combine color moment and lbp into single feature vector

# Explanation of Input and Output Parameters
1. colorMoment
    a. Input: RGB image
    b. Output: color moment of the RGB image
2. Euclid
    a. Input: feature vector of query image, feature vector of compared image
    b. Output: eucledian distance between two feature vectors
3. Lbp
    a. Input: image where the histogram value of LBP feature will be find, the radius of the sampling points
    b. Output: histogram value of LBP feature
4. featureVector
    a. Input: image where the feature vector will be find
    b. Output: feature vector consisting color moment and the LBP

[1] http://ieeexplore.ieee.org/xpl/articleDetails.jsp?reload=true&arnumber=6968394 
[2] http://wang.ist.psu.edu/docs/related/
