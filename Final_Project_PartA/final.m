%% Layer1
rng('default')
hiddenSize1 = 100;
autoenc1 = trainAutoencoder(c,hiddenSize1, ...
    'MaxEpochs',100, ...
    'L2WeightRegularization',0.217, ...
    'SparsityRegularization',28, ...
    'SparsityProportion',0.05, ...
    'ScaleData', false);

%figure()
%plotWeights(autoenc1);

feat1 = encode(autoenc1,c);
%% Layer2
hiddenSize2 = 50;
autoenc2 = trainAutoencoder(feat1,hiddenSize2, ...
    'MaxEpochs',100, ...
    'L2WeightRegularization',0.666, ...
    'SparsityRegularization',44, ...
    'SparsityProportion',0.11, ...
    'ScaleData', false);

%figure()
%plotWeights(autoenc2);

feat2 = encode(autoenc2,feat1);
%% Combining MSEs
g1=[];
for i=1:240
    for j=i+1:240
        g=mse(feat2(:,i),feat2(:,j));
        g1=cat(2,g1,g);
    end
end
%% Output 1s & 0s
t=[];
for i=39:-1:0
    for j=5:-1:0
        t=cat(2,t,ones(1,j));
        t=cat(2,t,zeros(1,i*6));
    end
end
%% Plotting ROC
ezroc3(-1*g1,t);
%% Testing Calculation
featt=encode(autoenc1,cTest);
%% Test result
%y1=autoenc1(cT);
%% Combining MSEs for Test
g2=[];
for i=1:160
    for j=i+1:160
        g=mse(featt(:,i),featt(:,j));
        g2=cat(2,g2,g);
    end
end
%% Output 1s and 0s for Test
t1=[];
for i=39:-1:0
    for j=3:-1:0
        t1=cat(2,t1,ones(1,j));
        t1=cat(2,t1,zeros(1,i*4));
    end
end
%% Plotting ROC for Test
ezroc3(-1*g2,t1);