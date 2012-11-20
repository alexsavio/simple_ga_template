function np = cross (pop, cjumps, cprob)
%returns a population of the same size as cjumps

   %random new pop size
   [pn,sn] = size (pop);

   %if only a percentage of selected parents will produce siblings
   %npn = sum  (rand([cjumps,1], 'single') > cprob);

   %if all selected parents will produce siblings
   npn = cjumps;

   np  = zeros([npn,sn]);

%   %roulette-wheel crossover
%   ens = popenergy(pop)
%   for j=1:npn
%      randi(pn);
%   
%   end

   %Uniform Crossover
   for j=1:npn
      p1 = pop(randi(pn),:);
      p2 = pop(randi(pn),:);
      c  = [p1;p2]';
      sel = randi([1,2], [1,sn])';
      idx = sub2ind(size(c),[1:sn]',sel);
      np(j,:) = c(idx);
   end

%   %two-point crossover
%   for j=1:npn
%      p1 = pop(randi(pn),:);
%      p2 = pop(randi(pn),:);
%      x  = randi(sn-1,2,1);
%      a  = min(x);
%      b  = max(x);

%      np(j,1:a)   = p1(1:a);
%      np(j,a:b)   = p2(a+1:b);
%      np(j,b:end) = p1(b+1:end);
%   end

%   %one-point crossover
%   for j=1:npn
%      p1 = pop(randi(pn),:);
%      p2 = pop(randi(pn),:);
%      a  = randi(sn-1);
%      np(j,1:a)   = p1(1:a);
%      np(j,a:end) = p2(a+1:end);
%   end
