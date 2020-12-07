function bestSoFar=IDSGOA20()
clc;
clear;
close all;
warning ('off','all');
D=load('DS.mat');
Dataset=D.dataset;
InputsIDS =Dataset(:,1:end-1);
OutputIDS =Dataset(:,end);
InputsSample=Dataset(:,1:end-1);
OutputSample=Dataset(:,end);
TotalSamples = size(InputsSample,1);
Features = size(InputsSample,2);
OutputNum = size(OutputSample,2);
TN=0;
TP=0;
FN=0;
FP=0;
a=0;
b=+1;
FitnessANN = 'CostNetwork';
N =20;%100
MaxIt =40;%100
globalBest.Cost = inf;
globalBest.Pos = [];
globalBest.CostArray = [];
MinSamples = min(InputsSample);
MaxSamples = max(InputsSample);
MinClass = min(OutputSample);
MaxClass = max(OutputSample);
InputsNormalsSample= InputsSample;
OutputNormalsSample = OutputSample;
for ii = 1:Features
     InputsNormalsSample(:,ii) = a+(InputsSample(:,ii) -MinSamples(ii)) / (MaxSamples(ii) -MinSamples(ii)) * (b-a) ;
end

for ii = 1:OutputNum
      OutputNormalsSample(:,ii) =a+ (OutputSample(:,ii) -MinClass(ii)) / (MaxClass(ii) -MinClass(ii)) *(b-a);
end
a=-1;
b=+1;
% Test and Train Data Sample
TraingPer = 70;
TraingSamples = round(TotalSamples * TraingPer / 100);
TestSamples = TotalSamples - TraingSamples;%#ok
R = randperm(TotalSamples);
TraingIndex = R(1 : TraingSamples);
TestIndex = R(1+TraingSamples : end);
InputTraing = InputsNormalsSample(TraingIndex,:);
ClassTraing = OutputNormalsSample(TraingIndex,:);
InputTest = InputsNormalsSample(TestIndex,:);
ClassTest = OutputNormalsSample(TestIndex,:);

% %Start ANN


%%
InPutMaxMin = [a b];
InPutMaxMinTotal = repmat(InPutMaxMin,Features,1);
TF={'logsig','logsig','purelin'};
Network = newff(InPutMaxMinTotal,[20 20 OutputNum],TF);
%  view(Network);
% Training
W1 = Network.IW{1,1};
NumberElementW1 = numel(W1);
W2 = Network.LW{2,1};
NumberElementW2 = numel(W2);
b1 = Network.b{1,1};
NumberElementb1= numel(b1);
b2 = Network.b{2,1};
NumberElementb2 = numel(b2);
SizeArray = NumberElementW1 +NumberElementW2 +NumberElementb1 +NumberElementb2;
VarMin = -10;
VarMax = +10;
VarSize=[1 SizeArray]; 

CMin=0.00004;
CMax=5;
f=0.5;
l=1.5;
solution=[];
solution.Position=[];
solution.Cost=0;
%% Initialization Step
pop=repmat(solution,N,1);
BestSol.Cost=inf;
for i=1:N
   pop(i).Position=unifrnd(VarMin,VarMax,VarSize);
   pop(i).Cost=feval(FitnessANN,pop(i).Position,InputTraing,ClassTraing,Network);
  if pop(i).Cost<=BestSol.Cost
       BestSol=pop(i);
   end
end
bestSoFar=zeros(1,MaxIt);

% Main loop
for it=1:MaxIt
    c=CMax-it*((CMax-CMin)/MaxIt); 
    for i=1:N
        sum=0;
        d1=(VarMax-VarMin)./2;
        c1= c.*d1;
        for j=1:N
            if i~=j
                Dij=norm(pop(i).Position-pop(j).Position);               
                t= (pop(j).Position-pop(i).Position)./Dij;
                r=abs(pop(i).Position-pop(j).Position);
                r=1+rem(r,3);
                S=f.*exp(-r./l)-exp(-r);
                tmp= c1 .*S.*rand(1,SizeArray).*t;
                %%
                sum=sum+tmp;
            end
        end
        pop(i).Position= c.*sum+rand(1,SizeArray).*BestSol.Position; 
        pop(i).Position=max(pop(i).Position,VarMin);
        pop(i).Position=min(pop(i).Position,VarMax);
         pop(i).Cost=feval(FitnessANN,pop(i).Position,InputTraing,ClassTraing,Network);
        %update Leader
        if pop(i).Cost<BestSol.Cost
            BestSol=pop(i);
           globalBest.Pos=BestSol.Position;
        end
    end
     bestSoFar(it)=BestSol.Cost;
%     disp(['Iter = ' num2str(it) '; BestCost = ' num2str( BestSol.Cost) ';'])
%     globalBest.CostArray = [globalBest.CostArray BestSol.Cost];
%     figure(1);
%     plot(globalBest.CostArray ,'b','linewidth',2.0);
%    xlim([1 MaxIt])
%    legend('MSE');
%    title('Intrusion Detection error in mse index by GOA algorithms ');
%    xlabel('Iter');
%    ylabel('Error')
%    figure(2);
%     plot(sqrt(globalBest.CostArray) ,'r','linewidth',2.0);
%    xlim([1 MaxIt])
%    legend('RMSE');
%    title('Intrusion Detection error in rmse index by GOA algorithms');
%    xlabel('Iter');
%    ylabel('Error')
%     avgSoFar(it)=mean([pop.Cost]);
end
globalBest.Pos;
W1 = Network.IW{1,1};
NumberElementW1 = numel(W1);
W2 = Network.LW{2,1};
NumberElementW2 = numel(W2);
b1 = Network.b{1,1}; 
NumberElementb1 = numel(b1);
b2 = Network.b{2,1}; 
NumberElementb2 = numel(b2);
W1s = globalBest.Pos(1:NumberElementW1); 
W1 = reshape(W1s,size(W1,1),size(W1,2));
W2s = globalBest.Pos(NumberElementW1+1:NumberElementW1+NumberElementW2);
W2 = reshape(W2s,size(W2,1),size(W2,2));
b1s = globalBest.Pos(NumberElementW1+NumberElementW2+1:NumberElementW1+NumberElementW2+NumberElementb1);
b1 = reshape(b1s,size(b1,1),size(b1,2));
b2s = globalBest.Pos(NumberElementW1+NumberElementW2+NumberElementb1+1:NumberElementW1+NumberElementW2+NumberElementb1+NumberElementb2); 
b2 = reshape(b2s,size(b2,1),size(b2,2));
NewNetwork = Network;
NewNetwork.IW{1,1} = W1;
NewNetwork.LW{2,1} = W2;
NewNetwork.b{1,1} = b1;
NewNetwork.b{2,1} = b2;
Network=NewNetwork;
ClassTraingANN = sim(Network,InputTraing')';
ClassTestANN = sim(Network,InputTest')';
MSETraningANN = mse(ClassTraingANN - ClassTraing);%#ok
MSETestANN= mse(ClassTestANN - ClassTest);%#ok
ClassTraingANN = sim(Network,InputTraing')';
ClassTestANN = sim(Network,InputTest')';
MSETraningANN = mse(ClassTraingANN - ClassTraing);%#ok
MSETestANN= mse(ClassTestANN - ClassTest);%#ok
TP=0;
TN=0;
FP=0;
FN=0;
for i=1:numel(ClassTest)
    if  ClassTest(i)==0  &&  ClassTestANN(i)<0.25
        TP=TP+1;
    end
     if  ClassTest(i)==1  &&  ClassTestANN(i)>0.25
        TN=TN+1;
     end
     if  ClassTest(i)==0 && ClassTestANN(i)>0.5
        FN=FN+1;
     end
    if  ClassTest(i)==1 && ClassTestANN(i)<0.25
      FP=FP+1;
     end

end

outfunction= [(TP+TN)/(TP+TN+FP+FN)  (TP)/(TP+FN) (TP)/(TP+FP)];
accuracy=outfunction(1)%#ok
sensitivity=outfunction(2)%#ok
percision =outfunction(3)%#ok



end


