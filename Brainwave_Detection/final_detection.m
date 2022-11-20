%% Introduction
% Any Electrode Configuration
% Input the Frequency in Hz
% Raw and Pre-processed Signal are plotted and Saved
% AR coefficients use different algorithms (YW,Burg & Cov)
% Principle Component Analysis 
% User Interfaced to Save the file 
% INPUT: Csv/xls File; Output: Csv File
% Neural Netwrok: 1.Epilepsy; 2. Depression 3. Anxiety 4.Autism
clc;clear;close all;
%% Initailizing and Reading the input EEG file (Raw Signal)
max_data = [];
total_data = [];  
Fs = input('Enter the Sampling Frequency from the dataset in Hz:');
[fname,path]=uigetfile('*.*', 'Select EEG Signal File');
DS = readmatrix(fname);
[r, c] = size(DS);
num = c;  
for ii=1:num
x = DS(:,ii);
N = length(x); 
tn = ((0:N-1)/Fs)';
subplot(2,1,1)
hold on; grid on;
x=x(:,1);
plot(tn,x,'b');
title('Raw Signal');
xlabel('Time (s)');
ylabel('Voltage (uV)');
%% PreProcessing
xPP=x-smooth(x,Fs);
subplot(2,1,2)
hold on; grid on;
plot(tn,xPP);
title('Preprocessed Signal');
xlabel('Time (s)');
ylabel('Voltage (uV)');
set(0,'DefaultFigureWindowStyle','docked')
%% AR Modeling
m = ar(xPP,4);
ARs = polydata(m); 
a1=levinson(xPP,4);
YW_Method=aryule(xPP,4);a2 = YW_Method(2:5);
Burg_Method=arburg(xPP,4);a3 = Burg_Method(2:5);
Cov_Method=arcov(xPP,4);a4 = Cov_Method(2:5);
%% Principal Component Analysis
[coeff,score,latent,tsquared,explained,mu] = pca(xPP);
%% Paramater Calculation
avg = mean(abs(x));
sd = std(x);
med = median(x);
rm = rms(x);
max_data(:,ii) = [avg sd rm a2 a3 a4 latent mu];
end
saveas(gcf,'TestSignal.jpg')
disp('Enter Any Key to Continue')
pause
%% Overall Average
[mr, mc] = size(max_data);
for j  = 1:mr
    OA = mean(max_data(j,:));
    total_data(j,:) = OA;
end
%% Display Data and Saving based on User's Input
fprintf('<strong>/// Stastical Parameters ///\n</strong>')
table(total_data(1:3),'VariableName',{'Overall'},'RowNames',{'Mean';'SD';'RMS'})
fprintf('<strong>/// AR Modelling Methods ///\n</strong>')
ArM = table([total_data(4:7),total_data(8:11),total_data(12:15)],'VariableNames',{'mytab'});
splitvars(ArM,'mytab','NewVariableNames',{'Yuke-Walker','Burgs','Covariance'})
fprintf('<strong>/// Principle Component Analysis ///\n</strong>')
table([total_data(16);total_data(17)],'RowNames',{'Latent','Mu'},'VariableNames',{'PCA'})
[filename, pathname] = uiputfile('*.csv','Please enter the name of file to save:');
csvwrite(filename,total_data);
%% Using Trained Neural Network to Determine the Data
td = transpose(total_data);
val = round(brainwave(td));
if val == 1
    fprintf('The Entered Data is Epilepsy.\n')
elseif val == 2
    fprintf('The Entered Data is Depression.\n')
elseif val == 3
    fprintf('The Entered Data is Anxiety.\n')
elseif val == 4
    fprintf('The Entered Data is Autism.\n')
else
    fprintf('Enter Valid Data./n')
end
msgbox('Operation Completed');
close all