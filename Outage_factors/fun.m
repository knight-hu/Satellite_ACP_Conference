function [output]=fun(input);
save P:\Yongjuan\Yongjuan\Cosmulation\sun\debug_fun.mat
output=input;
% power=0;
lengthBand=length(input.bands);
if lengthBand                                                                     
     for i=1:lengthBand
         output.bands{i,:}.Ex=abs(input.bands{i}.Ex).^2/length(input.bands{i}.Ex)
         output.bands{i,:}.Ey=abs(input.bands{i}.Ey).^2/length(input.bands{i}.Ey)
         i=i+1
         if i==lengthBand
             i=1
         end
    end
end
save( P:\Yongjuan\Yongjuan\Cosmulation\sun\fun.mat)
end

