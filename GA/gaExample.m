%% Basic GA parameters
gaDat.Objfun='objective';
RGB = imread('test_image.png');
RGB=double(RGB);
global img
global K
global r
global c
global l
K=10;
r=size(RGB,1);
c=size(RGB,2);
l=size(RGB,3);
img=reshape(RGB,[r*c,l]);
K=64;
l=size(img,2);
lb=ones(1,K*l).*min(min(img));
ub=ones(1,K*l).*max(max(img));
gaDat.FieldD=[lb; ub];
% Execute GA
gaDat=ga(gaDat);
% Result are in
gaDat.xmin
gaDat.fxmin
%%
[idx,C,sumd] = kmeans(img,K,'Start',(gaDat.xmin)');
img1=C(idx);
img1=reshape(img1,[r,c,l]);
imshow(uint8(img1))
imwrite(img1,'compressed.png')
