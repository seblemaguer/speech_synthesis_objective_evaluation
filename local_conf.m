

EVALHOME='/data/users/rkarhila/speech_synthesis_objective_evaluation/';

addpath ([ EVALHOME, '/scripts'])
addpath ([ EVALHOME, '/include/columbia_ee_dtw'])
addpath ([ EVALHOME, '/include/voicebox'])
addpath ([ EVALHOME, '/include/colea'])
addpath ([ EVALHOME, '/include/audioread'])
addpath ([ EVALHOME, '/include/gmmbayestb-v1.0'])

addpath /akulabra/projects/T40511/Modules/opt/STRAIGHT/V40_003



USE_STRAIGHT        = 1;

if USE_STRAIGHT == 1
    prm.F0frameUpdateInterval  = 10;     
    prm.F0searchUpperBound     = 450;            
    prm.F0searchLowerBound     = 40;             
    prm.spectralUpdateInterval = 10;      
end

CACHE_FEATURES = 0;
CACHE_STRAIGHT = 1;
LOCAL_FEATDIR ='/akulabra/projects/T40511/synthesis/blizzard_eval/features/';


%Save copies of distance maps for DTW testing
CACHE_DISTMAPS = 1;
LOCAL_MAPDIR   ='/akulabra/projects/T40511/synthesis/blizzard_eval/distmaps/';


LOCAL_MIXTUREMODELDIR   ='/akulabra/projects/T40511/synthesis/blizzard_eval/gmms/';





BLIZZARD2009_RESULTDIR = '/data/users/rkarhila/blizzard_results/blizzard_wavs_and_scores_2009_release_version_1/';
BLIZZARD2010_RESULTDIR = '/data/users/rkarhila/blizzard_results/blizzard_wavs_and_scores_2010_release_version_1/';


%BLIZZARD2009_RESULTDIR = '/akulabra/projects/T40511/synthesis/blizzard_results/blizzard_wavs_and_scores_2009_release_version_1/'


fs = 16000;
mel_dim = 21;
frame_ms = 25;


step_ms = 10 ; % 5 ms step
frame_rate = ceil(1000/step_ms);


spectrum_dim=1024;

