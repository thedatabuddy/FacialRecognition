g1=[];
for i=1:240
    for j=i+1:240
        g=mse(feat1(:,i),feat1(:,j));
        g1=cat(2,g1,g);
    end
end

t=[];
for i=39:-1:0
    for j=5:-1:0
        t=cat(2,t,ones(1,j));
        t=cat(2,t,zeros(1,i*6));
    end
end
  