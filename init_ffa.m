function [nsx,nsy,Lightn]=init_ffa(n,d,Lb,Ub,u0)
%% The initial locations of n fireflies
% 初始化萤火虫位置函数
Range = Ub-Lb;  % default: 100
Lower = Lb;     % default: 0
  % if there are bounds/limits,
  % 此处限制存疑
if length(Lb) > 0,
   for i = 1:n,    
   nsx(i,:) = Lower + Range.*rand(1,d);     
   nsy(i,:) = Lower + Range.*rand(1,d);    
   end
else
   % generate solutions around the random guess
   for i = 1:n,
   nsx(i,:) = u0 + randn(1,d);
   nsy(i,:) = u0 + randn(1,d);
   end
end
% initial value before function evaluations
Lightn=ones(n,1);%*10^100;