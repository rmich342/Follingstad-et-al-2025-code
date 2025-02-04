%pingoGPR.m
%Generate radargram figures for pingos 8 & 9, set vertical exaggeration 

%%Pingo 8
clear all; 

load('MS_pacman_PSDM.mat');
%PSDM = migrated GPR data
%xd = x-axis
%zd = depth axis

zmax = 108; %set maximum elevation (from DEM) 
z_plain = 96; %set off-pingo elevation
dz = (zd(2)-zd(1))/2; %convert from one-way to two-way
z = [zmax:-dz:z_plain-max(zd)]; %create elevation axis that encompasses depth range 
x = linspace(min(xd), max(xd), 6083); %create x-axis matching discretization of migrated data

%plot data
f = figure; %Pingo 8
pcolor(x, z(1:height(PSDM)),(PSDM)); shading interp;
clim([-1e7 1e7]);
set(gca, 'FontSize',20);
xlabel('Distance (m)', 'FontSize',30);
ylabel('Elevation (m a.s.l.)','FontSize',30);
ylim([85 zmax]);
f.Position(3) = 1000;
set(gca,'DataAspectRatio',[3.5 1 1])
colormap bone;

%% Pingo 9
clear all; 
load('Ringo.mat');
%PSDM = migrated GPR data
%xd = x-axis
%zd = depth axis

zmax = 111; 
z_plain = 105;
dz = (zd(2)-zd(1))/2;
z = [zmax:-dz:z_plain-max(zd)];
x = linspace(min(xd), max(xd), 5935);

%plot data
f = figure; %Pingo 9
pcolor(x, z(1:height(PSDM)),PSDM); shading interp;
clim([-1e7 1e7]);
set(gca, 'FontSize',20);
ylabel('Elevation (m a.s.l.)','FontSize',30);
ylim([95 zmax]);
f.Position(3) = 1000; 
xlabel('Distance (m)', 'FontSize',30);
set(gca,'DataAspectRatio',[10 1 1])
colormap bone;




