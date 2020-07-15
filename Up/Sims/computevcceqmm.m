function [v,c,z]=computevcceqmm(x)
x
    InitSetUp;
    [x0p,alr,tFlF] = Striderest(xSt0,x);tFlF
    xSt0 = xSt0(5:12);
    z=x0p(2:end)-xSt0;zn=norm(z)
    delx=1e-7;%VERIFY delx
%     thre=1;
%      if zn<thre
          try
                [v,~]=Floqfunopt([phasphi(1);xSt0],x,delx,x0p,alr)
           catch
                 v=(10+4*zn)*ones(9,1);
           end
%      else
%         v=20+10*zn;
%      end
    %[v,~]=Floqfunopt([phasphi(1);xSt0],x,delx,x0p,alr);
    c=[0.005-tFlF;
       tFlF-0.48;]
   max(v)
end
% 
% 
% phasphi=x(1:2);
% Aznom=x(3);
% tau0=x(4);
% kdtau=x(5);
% kpLe=1900*x(6);
% kpAz=190*x(7);
% kdLe=x(8);
% kdAz=x(9);