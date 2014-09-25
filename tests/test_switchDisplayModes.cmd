% TEST_SWITCHDISPLAYMODES Testing the switching of display modes (x,y,z).
%
% Part of a standard test procedure making sure that updating of panels
% works fine.
%
% Please note: The command "pause" is necessary to have Matlab(r) change
% the panels. (Graphics operations do need some time in Matlab(r) GUIs.)

% Copyright (c) 2014, Till Biskup
% 2014-09-25

% Switch existing display modes in regular order
disp x
pause 0.1
disp y
pause 0.1
disp z
pause 0.5

% Switching display modes in arbitrary order
disp x
pause 0.1
disp z
pause 0.1
disp y
pause 0.1
disp z
pause 0.1
disp x

pause 0.5

% Switching non-existent display modes
disp 1D along y
pause 0.1
disp 2D
pause 0.1
disp foo
