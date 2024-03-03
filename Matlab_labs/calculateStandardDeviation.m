function [meanValue, stdDev] = computeStatistics(data)
   data = input('Enter values : ') ;
   % Compute mean
       meanValue = mean(data);
   % Compute standard deviation
     stdDev = std(data);
     disp(stdDev);
end
