%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Name: HW_03_A.m
%   Author: Manik, MRK
%   Date: 03.06.2025
%   Details: This Matlab script solves all the questions from HW_03_Q.txt
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc, clearvars, close all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Question_1

% Question_1_Part_a
mat = rand(3, 5);
[rows, cols] = size(mat);
disp('Original Matrix: ');
disp(mat);

% Question_1_Part_a_(i): Delete the entire 3rd row
mat_without_row3 = mat;
mat_without_row3 (3, :) = [];
[rows_1ai, cols_1ai] = size(mat_without_row3);
fprintf ("Question_1a(i): After deleting the 3rd row, the matrix has %d rows and %d columns.\n", rows_1ai, cols_1ai);

% Question_1_Part_a_(ii): Adding a row of all zeros
mat_with_zeros = mat;
mat_with_zeros (end+1, :) = zeros (1, cols);
[rows_1aii, cols_1aii] = size(mat_with_zeros);
fprintf ("Question_1a(ii): After adding a new row of all zeros, the matrix has %d rows and %d columns.\n", rows_1aii, cols_1aii);

% Question_1_Part_a_(iii): Sum of values gt 0.5
values_gt_half = mat(mat >0.5);
sum_gt_half = sum (values_gt_half);
fprintf ("Question_1a(iii): The sum of all values greater than half is: %.3f.\n", sum_gt_half);

% Question_1_Part_a_(iv)
mat_value_replaced = mat;
mat_value_replaced (:, 2:4) = (6);
fprintf ("Question_1a(iv): The sintax used to replace particular values with the number 6 is: 'mat_value_replaced (:,:) = (6);'\n");


% Question_1_Part_b
A = [-10, 9, -9; 1, -3, 3; 0, 2, -2];
B = [-1, -1, -1; 5, 3, 19; -4, 0, -2];

% Question_1_Part_b_(i)
elements_of_A_lt_one = A(A < 1);
fprintf ("Question_1b(i): Elements of A that are less than 1:\n");
fprintf ("%d\n", elements_of_A_lt_one);

% Question_1_Part_b_(ii)
indeces_of_B_lt_one = find(B < 1);
fprintf ("Question_1b(ii): Elements of B that are less than 1:\n");
fprintf ("%d\n", B(indeces_of_B_lt_one));

% Question_1_Part_b_(iii)
logical_matrix = (A<1) & (B<1);
fprintf("Question_1b(iii): Elements in A where both A and B are less than 1:\n");
disp(logical_matrix);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Question_2

% Importing Data
load("HW3Q2_microplate96.mat")
Original_Data = microplate_data;

% Removing Edge Values
Inner_Wells = Original_Data(2:end-1, 2:end-1);

% Counting Wells
num_Inner_Wells = numel(Inner_Wells);

fprintf('Question_02: After removing the edge wells, %d wells are remaining for analysis.', num_Inner_Wells);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Question_3

%Load Data
load("HW3Q3_WNV_per_year.mat");
Original_WNV = WNVdata;

%Creating New Vector
Logical_Ind_100_700 = find(100 > Original_WNV(:, 2) | Original_WNV(:, 2) > 700);
Filtered_WNV = Original_WNV;
Filtered_WNV(Logical_Ind_100_700, :) =[];

%Saving .mat file
save("HW3Q3_WNV_per_year_updated.mat", "Original_WNV", "Filtered_WNV");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Question_4

%Loading Drug Test Data
load("HW3Q4_sol147.mat");
Original_Test_Data = survival;

%Manipulating Drug Test Data
Test_Data_500 = Original_Test_Data (:, end);
Control_Data = Original_Test_Data (:, 1:end-1);
Corresponding_Days = (0:size(Original_Test_Data, 1)-1)';
%Corresponding_Days = (0:5)'; Can also be used

%Saving .mat file
save("sol147_new.mat", "Control_Data", "Test_Data_500", "Corresponding_Days")

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Question_5



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%