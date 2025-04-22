clc; clear; close all;
% Read file in
matrix = readmatrix("SECMatrix.xlsx",'Range','B2:Q17');

try chol(A)
    disp('Matrix is symmetric positive definite.')
catch ME
    disp('Matrix is not symmetric positive definite')
end
[V,D] = eig(matrix);