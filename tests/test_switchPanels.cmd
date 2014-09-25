% TEST_SWITCHPANELS Testing the switching of panels.
%
% Part of a standard test procedure making sure that updating of panels
% works fine.
%
% Please note: The command "pause" is necessary to have Matlab(r) change
% the panels. (Graphics operations do need some time in Matlab(r) GUIs.)

% Copyright (c) 2014, Till Biskup
% 2014-09-25

% Switch existing panels in regular order
panel load
pause 0.1
panel datasets
pause 0.1
panel slider
pause 0.1
panel measure
pause 0.1
panel display
pause 0.1
panel processing
pause 0.1
panel analysis
pause 0.1
panel internal
pause 0.1
panel configure

pause 0.5

% Switching some panels in arbitrary order
panel display
pause 0.1
panel processing
pause 0.1
panel datasets
pause 0.1
panel measure
pause 0.1
panel load
pause 0.1
panel configure
pause 0.1
panel analysis
pause 0.1
panel internal
pause 0.1
panel slider

pause 0.5

% Switching non-existent panels
panel foo
pause 0.1
panel bar

