% Load the microplate data
dataStruct = load('HW3Q2_microplate96.mat');
fieldNames = fieldnames(dataStruct);
microplateData = dataStruct.(fieldNames{1}); % Access the matrix


% Remove edge wells (first and last rows and columns)
coreData = microplateData(2:end-1, 2:end-1)

% Count the remaining elements
numRemainingWells = numel(coreData)

% Display the result
fprintf('After removing edge wells, %d wells remain for analysis.\n', numRemainingWells);
