d = 100;
Ub = ones(1,d).*100; %/*upper bounds of the parameters. */
Lb = zeros(1,d);   %/*lower bound of the parameters.*/
Range = Ub - Lb;
n = 25;

for i = 1:n,    
nsx(i,:) = 0 + Range.*rand(1,d);     
nsy(i,:) = 0 + Range.*rand(1,d);    
end

% % generate solutions around the random guess
% for i = 1:n,
% nsx(i,:) = 1 + randn(1,d);
% nsy(i,:) = 1 + randn(1,d);
% end