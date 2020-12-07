function Cost = CostNetwork(XX,InputTraing,ClassTraing,Network)
Cost = zeros(size(XX,1),1);
for i = 1:size(XX,1)
    X = XX(i,:);
W1 = Network.IW{1,1};
NumberElementW1 = numel(W1);
W2 = Network.LW{2,1};
NumberElementW2 = numel(W2);
b1 = Network.b{1,1}; 
NumberElementb1 = numel(b1);
b2 = Network.b{2,1}; 
NumberElementb2 = numel(b2);
W1s = X(1:NumberElementW1); W1 = reshape(W1s,size(W1,1),size(W1,2));
W2s = X(NumberElementW1+1:NumberElementW1+NumberElementW2); W2 = reshape(W2s,size(W2,1),size(W2,2));
b1s = X(NumberElementW1+NumberElementW2+1:NumberElementW1+NumberElementW2+NumberElementb1); b1 = reshape(b1s,size(b1,1),size(b1,2));
b2s = X(NumberElementW1+NumberElementW2+NumberElementb1+1:NumberElementW1+NumberElementW2+NumberElementb1+NumberElementb2); b2 = reshape(b2s,size(b2,1),size(b2,2));
NewNetwork = Network;
NewNetwork.IW{1,1} = W1;
NewNetwork.LW{2,1} = W2;
NewNetwork.b{1,1} = b1;
NewNetwork.b{2,1} = b2;    
ClassTraingANN = sim(NewNetwork,InputTraing')';
C = sum((ClassTraingANN - ClassTraing).^2)/(size(ClassTraing,1));
Cost(i,1) = C;    
end
end
