function [nsx,nsy]=findlimits(n,nsx,nsy,Lb,Ub)
%% Make sure the fireflies are within the bounds/limits
% @author: Shangru Zhong
% @email: draco.mystack@gmail.com
% @date: 11/01/2013

for i=1:n,
 %-------nsx-----------------
     % Apply the lower bound
  ns_tmp=nsx(i,:);
  I=ns_tmp<Lb;
  ns_tmp(I)=Lb(I);
  
  % Apply the upper bounds
  J=ns_tmp>Ub;
  ns_tmp(J)=Ub(J);
  % Update this new move
  nsx(i,:)=ns_tmp;
  %-------nsy--------------------
  ns_tmp=nsy(i,:);
  I=ns_tmp<Lb;
  ns_tmp(I)=Lb(I);
  
   J=ns_tmp>Ub;
  ns_tmp(J)=Ub(J);
  % Update this new move
  nsy(i,:)=ns_tmp;
   
end