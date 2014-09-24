% DOKUWIKI-2D-1D Create wiki lab book entry figures (2D and 1D along y)
%
% Useful for those people using a dokuwiki instance as a lab book (such as
% the author of the script).
%
% The script saves both the 2D overview and one single 1D AVG (user-defined
% window that will be interactively asked for) spectrum.
%
% WARNING: The script makes use of the command "pdf2bitmap" not available
%          for the MS Windows(r) platform yet (due to relying on the 
%          program ImageMagick internally).

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

% Export 2D plot
disp z
export fig type=pdf caption=n $date-$savefilename-2D
pdf2bitmap $date-$savefilename-2D

% AVG and export 1D plot
input avgxwindow
avg x $avgxwindow
show $ndatasets
show only active
disp y
export fig type=pdf caption=false $date-$savefilename-1D
pdf2bitmap $date-$savefilename-1D
remove force
disp z

% Restore previous view
show $currentDataset