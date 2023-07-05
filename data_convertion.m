%Nines Pantos 



%------------------------------------------------------------------------------------------------------------------------------
format short

%---------------------------------------------------------------
data = xlsread('Wind data'); % Gets data
%---------------------------------------------------------------
%Define Variables
year = data(:,1);                   
month = data(:,2);
day = data(:,3);
time = data(:,4);               % UTC
speed_knot = data(:,5);         % speed in knots
wind_direction = data(:,6);
%---------------------------------------------------------------
%Convert speed from knots to m/s
speed_ms = speed_knot*0.51;
%---------------------------------------------------------------    
%Determind first and last year of measurements  
year_min = min(year);
year_max = max(year);
%---------------------------------------------------------------  
%Choose a random number in interval [year_min - year_max-5]
randomIndex = randi(length(year),1);
year_1 = year(randomIndex);     
while year_1 > year_max -5     
   randomIndex = randi(length(year),1);
    year_1 = year(randomIndex);
end
%---------------------------------------------------------------
 %Define loop and new data variables
 i = 1;                             %loop variable
 k = 1;                             %loop variable
 interval_year = [i;k];             %Years in desired interval
 interval_month = [i;k];            %Months in desired interval
 interval_day = [i;k];              %Days in desired interval
 interval_time = [i;k];             %Time in desired interval
 interval_speed = [i;k];            %Speed in desired interval
 interval_wind_direction = [i;k];   %Wind dierection in desired interval
%---------------------------------------------------------------
%Choose data in interval [year-1 - year_1 +5]
 while year(i) ~= year_1 
    i = i+1;
 end
 if year(i) == year_1
    while year(i) == year_1 || year(i) < year_1 + 6
         interval_year(k) = year(i);
         interval_month(k) = month(i);
         interval_day(k) = day(i);
         interval_time(k) = time(i);
         interval_speed(k) = speed_ms(i);
         interval_wind_direction(k) = wind_direction(i);
         i = i+1;
         k = k+1;
    end
 end
%---------------------------------------------------------------
%Convert years to strings
str_year = string(year_1);
str_year_max = string(max(interval_year));
title_string = str_year +'-' +str_year_max;
%---------------------------------------------------------------
