function [julianMatlab,CUjulianMATLAB]=function_Matlab_julian(year,month,day,starting_year)

% USE: provides Julian day and cumulative Julian day
% How to: See Example 
% What happens: Requires MATLAB to run (Tested on 2018b)
% Who did: Swapan Masanta - 03-Apr-2019 11:21:47
% Why: Things look easy after it's done.

% 
% %% Example ---------------------------------
% % input dates
% t = datetime(2000,01,01):caldays(1):datetime(2013,12,31);
% [y,m,d] = ymd(t);
% % provides Julian day 
% % provides cumulative Julian day with respect to year 1900
% [julianDay,CUjulianDay]=function_Matlab_julian(y',m',d',1900);
% 
% %% Example ---------------------------------
% 

CUjulianMATLAB=juliandate(datetime(year,month,day,'InputFormat','yyyy-MM-dd'))-juliandate(datetime(starting_year-1,12,31,'InputFormat','yyyy-MM-dd'));
julianMatlab=juliandate(datetime(year,month,day,'InputFormat','yyyy-MM-dd'))-juliandate(datetime(year-1,12,31,'InputFormat','yyyy-MM-dd'));
end














