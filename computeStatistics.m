function [MeanValue,StandardDev] = computeStatistics(RowVector)
RowVector = input('Enter some data : ');
N = input('Enter nuber of elements of data : ');
MeanValue = RowVector/N
% Compute the squared differences from the mean
squaredDifferences = (RowVector - MeanValue).^2;
% Compute the average of the squared differences
averageSquaredDifference = mean(squaredDifferences);
% Take the square root of the average squared difference to get the standard deviation
stdDev = sqrt(averageSquaredDifference);
end
