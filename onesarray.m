ttt=[];
for i=39:-1:0
    for j=5:-1:0
        ttt=cat(2,ttt,ones(1,j));
        ttt=cat(2,ttt,zeros(1,i*6));
    end
end
  