clc;
clear all;
RGB = imread('kids.tif');

%imwrite(RGB,'test_image.png','png');
RGB=double(RGB);
K=10;
r=size(RGB,1);
c=size(RGB,2);
l=size(RGB,3);
img=reshape(RGB,[r*c,l]);
save img
% [IDX, C] = kmeans(img, K);
% img=reshape(img,[384,512,3]);
% imshow(uint8(img))
% compressed_image=C(IDX,:);
% %%
% compressed_image=reshape(compressed_image,[384,512,3]);
% imshow(uint8(compressed_image));
% compressed_image=uint8(compressed_image)
% %%
% imwrite(compressed_image,'compressed_image.png','png');
LB=min(min(img));
UB=max(max(img));
C=(UB-LB).*rand(K*l,1)+LB;
%%
cnt=reshape(C,[K,l]);
cost=0;
for i=1:size(img,1)
    for j=1:K
        d(i,j)=norm(img(i,:)-cnt(j,:));
    end
    idx(i)=argmin(d(i,:));
    cost=cost+min(d(i,:));
end
