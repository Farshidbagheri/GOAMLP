function   Main()
clc;

close all;
clear;
Run=1;
MaxIt=40;
BestCostANNGOA20_Sum=zeros(1,MaxIt);
for index=1 :Run

BestCostANNGOA20=IDSGOA20();

BestCostANNGOA20_Sum=BestCostANNGOA20_Sum+BestCostANNGOA20;
end

BestCostANNGOA20_Avg=BestCostANNGOA20_Sum/Run;


BestCostANNGOA20_Avg(MaxIt)=BestCostANNGOA20_Avg(MaxIt);
semilogy(BestCostANNGOA20_Avg , 'r','LineWidth',2.3);

   xlim([1 MaxIt])
   xlabel('Iter');
   ylabel('MSE');


end




