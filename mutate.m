function pop = mutate (pop, mjumps, mprob, genmprob);

 [pn,sn] = size (pop);
 for j=1:pn
    if (rand <= mprob)
      r  = rand ([sn,1]);
      ng = randi([0,1], [sn,1]);
      pop(j,r <= genmprob) = ng(r <= genmprob);
    end
 end

