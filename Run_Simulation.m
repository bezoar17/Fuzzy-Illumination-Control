%*******************************************************%
          %*********************************%
          %* NEURAL NETWORKS & FUZZY LOGIC *%
          %*         BITS F312             *%
          %*      VAIBHAV KASHYAP          *%
          %*        28/11/2014             *%          
          %*********************************%          
%*******************************************************%
% Before running the script put the following files in  %
% 				the MATLAB/bin folder                   %
% smart_illumination.fis,openscopes.m,Demonstration.slx %
%*******************************************************%

smart_illumination=readfis('smart_illumination.fis');% Loads the fis file into the Workspace for Simulink model to use.
fuzzy(smart_illumination)% Opens the fis structure in Fuzzy Logic Design.
open('Demonstration.slx')% Opens the Simulink Model 'Demonstration'.
set_param('Demonstration','StopFcn','openscopes')%  Set parameters such that openscopes.m is executed after Simulation of 'Demonstration' ends.
sim('Demonstration')% Runs Demonstration.slx

