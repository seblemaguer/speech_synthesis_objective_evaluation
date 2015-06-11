%
% Evaluate our tests2011 sets for 2011
%

local_conf


tests2011={ ...
    struct( ...  
        'name',                  '2011_EH1_similarity',...
        'objective_resultfile',  'results/2011/2011_EH1_objective_results_sim', ......
        'testfilelist',          'tests/2011/2011_EH1_sim.test.scp',...
        'reffilelist',           'tests/2011/2011_EH1_sim.ref.scp',...
        'subjective_resultfile', 'tests/2011/2011_EH1_sim_mean.ascii',...
        'opinionmatrix',         'tests/2011/significancematrix_2011_EH1_sim.ascii',...
        'systems',               'BCDEFGHIJKLM', ...
        'systemtypes',           'chhchcchccch', ...
        'sentencesperspeaker',    26, ...
	'testtype',              'sim', ...
        'language',              'english', ...
        'speaker',               'nancy', ...
        'scores',                [], ...
        'results',                []), ... 
    struct( ...  
        'name',                  '2011_EH1_naturalness',...
        'objective_resultfile',  'results/2011/2011_EH1_objective_results_nat', ......
        'testfilelist',          'tests/2011/2011_EH1_nat.test.scp',...
        'reffilelist',           'tests/2011/2011_EH1_nat.ref.scp',...
        'subjective_resultfile', 'tests/2011/2011_EH1_nat_mean.ascii',...
        'opinionmatrix',         'tests/2011/significancematrix_2011_EH1_nat.ascii',...
        'systems',               'BCDEFGHIJKLM', ...
        'systemtypes',           'chhchcchccch', ...
        'sentencesperspeaker',    26, ...
	'testtype',              'nat', ...
        'language',              'english', ...
        'speaker',               'nancy', ...
        'scores',                [], ...
        'results',                []) ...
      };


   

for n=1:length(tests2011)

    tests2011{n}.results = run_individual_test(tests2011{n}, BLIZZARD2011_RESULTDIR);

end


