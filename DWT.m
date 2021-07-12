a=imread('goldfish.tif'); 
imshow(a);
title('origional image');

[p, q, r, s]=dwt2(single(a),'db1');
b=[uint8(p), q; r,s];
figure,imshow(b);
title('first level decomposition');
[p1, q1, r1, s1]=dwt2(p,'db1');
b1=[p1,q1;r1, s1];
b2=[uint8(b1), q; r s];
figure,imshow(b2);

title('second level decomposition');