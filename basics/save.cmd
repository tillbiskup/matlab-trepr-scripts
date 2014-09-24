% SAVE Save currently loaded dataset in toolbox format after basic
% preprocessing (POC, convert G2mT).
%
% Useful for a consistent set of datasets in toolbox format if applied 
% directly after loading the dataset.
%
% Asks the user interactively for a filename to save the dataset to.

% Copyright (c) 2014, Till Biskup
% 2014-09-24

% Get current dataset number
define currentDataset = $current

% Preprocessing
proc poc

% Unit conversion
convert G2mT

% Save dataset to file
input savefilename Name to save the dataset to
save $savefilename
