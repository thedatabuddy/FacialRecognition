c=cat(2,c1,c2,c3,c4,c5,...
    c6,c7,c8,c9,c10,c11,c12,...
    c13,c14,c15,c16,c17,c18,c19,c20,...
    c21,c22,c23,c2,c25,c26,c27,c28,c29,c30,...
    c31,c32,c33,c34,c35,c36,c37,c38,c39,c40);       %replace at xTrainImages
tT=[ones(1,10) zeros(1,390);...
    zeros(1,10) ones(1,10) zeros(1,380);...         %replace at tT
    zeros(1,20) ones(1,10) zeros(1,370);...
    zeros(1,30) ones(1,10),zeros(1,360);...
    zeros(1,40) ones(1,10) zeros(1,350);...
    zeros(1,50) ones(1,10) zeros(1,340);...
    zeros(1,60) ones(1,10) zeros(1,330);...
    zeros(1,70) ones(1,10) zeros(1,320);...
    zeros(1,80) ones(1,10) zeros(1,310);...
    zeros(1,90) ones(1,10) zeros(1,300);...
    zeros(1,100) ones(1,10) zeros(1,290);...
    zeros(1,110) ones(1,10) zeros(1,280);...
    zeros(1,120) ones(1,10) zeros(1,270);...
    zeros(1,130) ones(1,10) zeros(1,260);...
    zeros(1,140) ones(1,10) zeros(1,250);...
    zeros(1,150) ones(1,10) zeros(1,240);...
    zeros(1,160) ones(1,10) zeros(1,230);...
    zeros(1,170) ones(1,10) zeros(1,220);...
    zeros(1,180) ones(1,10) zeros(1,210);...
    zeros(1,190) ones(1,10) zeros(1,200);...
    zeros(1,200) ones(1,10) zeros(1,190);...
    zeros(1,210) ones(1,10) zeros(1,180);...
    zeros(1,220) ones(1,10) zeros(1,170);...
    zeros(1,230) ones(1,10) zeros(1,160);...
    zeros(1,240) ones(1,10) zeros(1,150);...
    zeros(1,250) ones(1,10) zeros(1,140);...
    zeros(1,260) ones(1,10) zeros(1,130);...
    zeros(1,270) ones(1,10) zeros(1,120);...
    zeros(1,280) ones(1,10) zeros(1,110);...
    zeros(1,290) ones(1,10) zeros(1,100);...
    zeros(1,300) ones(1,10) zeros(1,90);...
    zeros(1,310) ones(1,10) zeros(1,80);...
    zeros(1,320) ones(1,10) zeros(1,70);...
    zeros(1,330) ones(1,10) zeros(1,60);...
    zeros(1,340) ones(1,10) zeros(1,50);...
    zeros(1,350) ones(1,10) zeros(1,40);...
    zeros(1,360) ones(1,10) zeros(1,30);...
    zeros(1,370) ones(1,10) zeros(1,20);...
    zeros(1,380) ones(1,10) zeros(1,10);...
    zeros(1,390) ones(1,10) ];