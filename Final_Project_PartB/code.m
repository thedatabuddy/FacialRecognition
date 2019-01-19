%% target 1s and 0s

targtr=[];
targtt=[];
for i=0:39
    a=[zeros(1,(i*6)) ones(1,6) zeros(1,234-(i*6))];
    targtr=cat(1,targtr,a);
    b=[zeros(1,(i*4)) ones(1,4) zeros(1,156-(i*4))];
    targtt=cat(1,targtt,b);
end


%% Network 1
%nntrain={};

%for i=1:40
%    net=patternnet(10);
%    net = train(net,feat1,targtr(i,:));
%    figa=figure(ezroc3(net(feat1),targtr(i,:)));
%    y = net(featt);
%    figb=ezroc3(y,targtt(i,:));
%end

%% Network 2
net=patternnet(10);
net = train(net,feat1,targtr(40,:));
figa=figure(ezroc3(net(feat1),targtr(40,:)));
y = net(featt);
figb=ezroc3(y,targtt(40,:));

