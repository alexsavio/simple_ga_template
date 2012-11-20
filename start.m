%population size
pn = 100;

%subject size
sn = 25;

%number of crossover operations
cjumps = pn;

%number of mutations
mjumps = 50;

%probability of crossover
cprob = 0.5;

%probability of mutation
mprob    = 0.25;
genmprob = 0.1;

%proportion of population to be selected (be careful changing this)
sperc = 0.5;

%random initial population
pop = round(rand([pn,sn], 'single'));

%number of generations
gn = 1000;

for i=1:gn
  nup  = cross (pop, cjumps, cprob);

  mp   = mutate([nup;pop], mjumps, mprob, genmprob);

  fits = fitness(mp);

  pop  = select(mp, fits, sperc);
end
