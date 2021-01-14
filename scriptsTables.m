% Recipes to work with tables in MATLAB
% example about read/add/delete rows in tables
% read csv from file and get a table
% create a .csv to save data.

% define columns to save data
% add rows to a tabla, and save table to file .csv

%% read csv from file and get a table
fileName_reading1='table_example1.csv';
fileName_writing1='table_writing1.csv';
home_user=pwd;
% 
pathTraining=fullfile(home_user,'development/matlabCodeSnippetsAndRecipes/tablesExamples');
fileHandler_reading1=fullfile(pathTraining,fileName_reading1); %handler for file example
fileHandler_writing1=fullfile(pathTraining,fileName_writing1);
addpath(pathTraining);

% header specs: 
% image_name;meanLABL;meanLABa;meanLABb;stdLABL;stdLABa;stdLABb;meanNIR1;stdNIR1
formatSpec='%s%f%f%f%f%f%f%f%f%s';
% tablaDSTraining = readtable(fileHandlerTraining); % automatically by default
tablaDSTraining = readtable(fileHandler_reading1,'Delimiter',';','Format',formatSpec);


%% create a .csv, save fro table to save data.
writetable(tablaDSTraining,fileHandler_writing1,'Delimiter',';')


%% create a table
image_name={'other_record'};
meanLABL=[0.10];
meanLABa=[0.10];
meanLABb=[0.10];
stdLABL=[0.10];
stdLABa=[0.10];
stdLABb=[0.10];
meanNIR1=[0.10];
stdNIR1=[0.10];
label_class={'other_label'};

Trecord=table(image_name, meanLABL, meanLABa, meanLABb, stdLABL, stdLABa, stdLABb, meanNIR1, stdNIR1, label_class);

%% add rows to a table, and save table to file .csv
cellRecord = {'image2',0,0,0,0,0,0,0,0,'label2'}; % data to save in table
tnew=Trecord;
tnew=[tnew;cellRecord]
tablaDSTest = cell2table(cellRecord(1:end,:)); % creates a table without headers
headers_t={'image_name', 'meanLABL', 'meanLABa', 'meanLABb', 'stdLABL', 'stdLABa', 'stdLABb', 'meanNIR1', 'stdNIR1', 'label_class'}
TwithHeaders = cell2table(cellRecord(1:end,:),'VariableNames',headers_t)


%T6 = table('image2',0.6,0.6,0.6,0.2,0.2,0.2,0.6,0.1,'label2', 'VariableNames',{'image_name', 'meanLABL', 'meanLABa', 'meanLABb', 'stdLABL', 'stdLABa', 'stdLABb', 'meanNIR1', 'stdNIR1', 'label_class'});
%T6 = table(average_in_bin.',num_per_bin.', 'VariableNames', {'NameOne', 'NameTwo'});
%writetable(T6, 'avg_num_per_bin.csv', 'WriteVariableNames', True) 
