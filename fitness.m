function fits = fitness (pop)
   fits = zeros(size(pop,1),1);
   for i=1:size(pop,1)
      fits(i) = sum(pop(i,:));
   end
