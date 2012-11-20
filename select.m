function elite = select (pop, fits, perc)

   [pn,sn] = size (pop);

   %calculating best fits
   fits = fits(:);
   en = floor(pn * perc);
   [x,idx] = sort(fits);

   %index of best fits
   idxe  = idx(end-en+1:end);
   elite = pop(idxe, :);
