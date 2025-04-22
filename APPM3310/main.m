clc; clear; close all;
% Read file in
matrix = readmatrix("SECMatrix.xlsx",'Range','B2:Q17');

for i = 1:length(matrix)
    %matrix(i,i) = 0.5;
    matrix(i,i) = sum(matrix(i,:))/18;
end

try chol(matrix)
    disp('Matrix is symmetric positive definite.')
catch ME
    disp('Matrix is not symmetric positive definite')
end
[U,S] = eig(matrix);
team_ranks = (matrix*U(:,1))';
writematrix(team_ranks,"SECMatrix.xlsx",'Range','B20:Q20')



