function cost=objective(X)
global img;

global K
global r
global c
global l

cnt=reshape(X,[K,l]);
[idx,C,sumd] = kmeans(img,K,'Start',cnt);
cost=sum(sumd);
end
