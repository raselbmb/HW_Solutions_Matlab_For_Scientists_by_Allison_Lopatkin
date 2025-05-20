%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Name: HW_04_A.m
%   Author: Manik, MRK
%   Date: 05.06.2025
%   Details: This Matlab script solves all the questions from HW_04_Q.txt
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc, clearvars, close all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Question_1

% Question_1_Part_a
randVector = randi([0, 10], 1, 5);
if any(randVector == 10)
    disp('Question_1a: At least 1 number equals 10!');
end

% Question_1_Part_b
if any(randVector == 10) %Using the previous vector
    disp('Question_1b: At least 1 number equals 10!');
elseif any(randVector == 5) && ~any(randVector == 10)
    disp('Question_1b: At least 1 number equals 5!');
else
    disp('Question_1b: No number equals 10 or 5!')
end

% Question_1_Part_c
 for Q = 1:20
     randVector2 = randi([0, 10], 1, 5);
     X = sum(randVector2 == 10);
     fprintf('Question_1c: There are %d 10''s generated on loop #%d.\n', X, Q);
 end

% Question_1_Part_d
randVector3 = randi([0, 10], 1, 12);
Tens = 0;
for n = 1:length(randVector3)
    if randVector3(n) == 10
        disp('Question_1d: Number 10 identified');
        Tens = Tens + 1;
    elseif randVector3(n) == 3
        disp('Question_1d: Number 3 identified');
        break
    end
end
fprintf('Question_1d: The number of 10''s generated: %d\n', Tens);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Question_2

%Created a separate function file as "Check_OddEven.m"

%Random odd and even number Vector
OddNum = 2* randi([1, 50], 1) - 1;
EvenNum = 2* randi([1, 50], 1);

% Testing the function with odd number
fprintf('Testing with an odd number, which is: %d \n', OddNum);
Check_OddEven(OddevNum);

% Testing the function with even number
fprintf('Testing with an even number, which is: %d \n', EvenNum);
Check_OddEven(EvenNum);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Question_3


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Question_4


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Question_5


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Question_6

% Question_6_Part_a

% Question_6_Part_b


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

