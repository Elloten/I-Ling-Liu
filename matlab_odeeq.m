function [dy] = odeeq(t,y)
global a1 k1 b1 r1 a2 b2 r2 a3 u1 u2
%
dy= zeros(3,1);    % a column vector
dy(1)= a1*y(1)*(1-y(1)/k1)-b1*y(1)*y(2)-r1*y(1)*y(3);
dy(2)= a2*y(2)-b2*y(1)*y(2)-r2*y(2)*y(3);
dy(3)=-a3*y(3)+u1*y(1)*y(3)+u2*y(2)*y(3);
