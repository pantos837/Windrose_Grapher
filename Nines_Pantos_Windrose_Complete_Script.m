%Nines Pantos 




%------------------------------------------------------------------------------------------------------------------------------
Wind_Rose_Diagram                    %This script creates the windrose.
%---------------------------------------------------------------
criteria =1;



Wind_dirction_Spring = [1;1];        %Wind direction data for Spring months will be stored in this vector.
Wind_dirction_Summer = [1;1];        %Wind direction data for Summer months will be stored in this vector.
k = 1;
if criteria == 1                     %In this case is odd.
  for i =1 : numel(interval_month)   %This loop asing values for the spring months.
      if interval_month(i) == 9 || interval_month(i) == 10 || interval_month(i) == 11
          Wind_dirction_Spring(k) = interval_wind_direction(i);
          k = k+1;
      end 
  end
  Mode_of_wind_direction = mode(Wind_dirction_Spring);
  fprintf('The mode of wind direction for the spring months is: %d',Mode_of_wind_direction);
end

if criteria == 0                     %In this case is even.
   for i =1 : numel(interval_month)  %This loop asing values for the Summer months.
      if interval_month(i) == 6 || interval_month(i) == 7 || interval_month(i) == 8
          Wind_dirction_Summer(k) = interval_wind_direction(i);
          k = k+1;
      end 
   end
  Mode_of_wind_direction = mode(Wind_dirction_Summer);
  fprintf('The mode of wind direction for the summer months is: %d',Mode_of_wind_direction);
end

