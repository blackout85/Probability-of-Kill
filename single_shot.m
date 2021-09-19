
%Define REP (range error probable)
prompt1 = 'What is the length of the REP? (in meters) ';
REP = input(prompt1);

%Define target length 
prompt2 = 'What is the target_length? (in meters) ';
x = input(prompt2);

%known LEP(linear error probable)
LEP = 0.6745;

%define sigma by dividing REP (range error probable)
%by LEP
sigma = REP/LEP;

%define u
u = (x/2)/sigma;

%Compute normal Guassian probability
p1 = normcdf(u,'upper');

%Define PSSH (Single-shot probability of hitting target)
PSSH = 1-2*p1

%Define single-shot probability of miss
PSSH_miss = 1-PSSH


