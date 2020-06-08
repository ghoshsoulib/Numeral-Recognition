function [Angle]=getAngle(point_O,point_P)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

X=point_P(:,1)-point_O(:,1);
Y=point_P(:,2)-point_O(:,2);
Z=sqrt(X.^2+Y.^2);
Angle=zeros(size(Z));
Amax=360;
X1=point_O(:,1);
X2=point_P(:,1);
Y1=point_O(:,2);
Y2=point_P(:,2);
X=X2-X1;
Y=Y2-Y1;
X=X./Z;
Y=Y./Z;
Angle(sign(Y2)>0)=acosd(X(sign(Y2)>0));
Angle(sign(Y2)<0  & sign(X2)>0)=Amax+asind(Y(sign(Y2)<0  & sign(X2)>0));
Angle(~(sign(Y2)>0  | (sign(Y2)<0  & sign(X2)>0)))=Amax-acosd(X(~(sign(Y2)>0  | (sign(Y2)<0  & sign(X2)>0))));
Angle(Angle==Amax)=0;
%Radian=Angle*pi/180;

if(point_O(1) == point_P(1) && point_O(2) > point_P(2))
    Angle = 270;
end

% if(point_O(1) < point_P(1) && point_O(2) > point_P(2))
%     Angle = Angle + 270;
% end

if(Angle == 360)
    Angle = 0;
end





end

