%Nines Pantos 




%------------------------------------------------------------------------------------------------------------------------------
format short
clear 
%---------------------------------------------------------------
%Give option and call fuction to create Windrose                                          
aem_script
data_convertion                   %This fuction creates data arrays used for windrose and title string
name=getenv('COMPUTERNAME');                                %Takes Computers name
Options = {'anglenorth',0,'angleeast',90,'labels',{'N (0)','E (90)','S (180)','W(270)'},'freqlabelangle',22.5,'radialgridnumber',16,'TitleString',{'Wind Rose';title_string;''}};

WindRose(interval_wind_direction,interval_speed,Options);   %This fuction creates the windrose
%---------------------------------------------------------------
%Graph Information
dim = [0 0 0 0.1];                                          %Determine text position (botom left)
dim_2 = [0.7853 0 0 0.1];                                   %Determine text position (botom right)
dim_3 = [0.44 0 0 0.07];                                    %Determine text position (botom mid)
my_name = 'Nines Pantos';                                   %Text that will be diplayed in the graph 							       botom Right
					                             
annotation('textbox',dim_2,'String',my_name,'FitBoxToText','on'); %Creates a textbox in botom Right
%---------------------------------------------------------------
