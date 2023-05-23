function [output]=shift(input)
save('P:\Yongjuan\Yongjuan\Cosmulation\sun\Sun_outage.vtmu_pack\Inputs/input.mat','input');
output = input;
a=0.278*pi;
%theta=0:pi/100:pi/2.1
R=0.1;
A=pi.*(R^2);
b=cos(a);
lengthBand=length(input{1,1}.bands{1,1}.Ex);
if lengthBand                                                                     
    for band=1:lengthBand
        if length(input.bands{band}.E)>0
           output.bands{band}.E=0.5*(abs(input.bands{band}.E).^2)/(length(input.bands{band}.E)).*(b+abs(b));
        else
           output{1,1}.bands{1,1}.Ex(band) = 0.5*(abs(input.bands{band}.Ex).^2)/length(input.bands{band}.Ex).*(b+abs(b));
           output{1,1}.bands{1,1}.Ey(band) = 0.5*(abs(input.bands{band}.Ey).^2)/length(input.bands{band}.Ey).*(b+abs(b));
          save('P:\Yongjuan\Yongjuan\Cosmulation\sun\Sun_outage.vtmu_pack\Outputs/output.mat','output');
        end
    end
end