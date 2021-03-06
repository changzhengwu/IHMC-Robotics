clc, clear all
%close all
% PROBLEM SETUP, DO NOT CHANGE
Xfo=0.07;
Yfo=0.1;
Xha=0.05;
Yha=0.05;

rfo=[0;0;0];
rha=[0;0.5;1.6];%[0;0;0];%
rpoi={rfo,rha};
Mrfocr=cross(repmat(rfo,1,3),eye(3));
Mrhacr=cross(repmat(rha,1,3),eye(3));

T=10^-2;
g=9.81;gv=[0;0;-g];
m=100;

M03=zeros(3);
Mgcr=cross(repmat(gv,1,3),eye(3));
Apre=[M03 -m*Mgcr M03;M03 M03 eye(3);M03 M03 M03];

Bprefo=[Mrfocr eye(3); M03 M03; 1/m*eye(3) M03];
Bpreha=[Mrhacr eye(3); M03 M03; 1/m*eye(3) M03];
Bpre=[Bprefo,Bpreha];
nX=size(Apre,2);
nU=size(Bpre,2);
%
A_sys = eye(nX)+T*Apre;
B_sys = T*Bpre;
N = 100;

L0 = [0;0;0];
r0 = [-.4;-.6;1.1];
dr0= [0.5;2;-1];
rfd = [0;0.05;1.1];


Mdr0cr=cross(repmat(dr0,1,3),eye(3));

muf=0.5;
mupf=muf/sqrt(2);
muh=0.3;
muph=muh/sqrt(2);
mupv={mupf,muph};
Xlv={Xfo,Xha};
Ylv={Yfo,Yha};

pRf=[eye(3)];Rf=blkdiag(pRf,pRf);
pRh=[1 0 0; 0 0 -1; 0 1 0];Rh=blkdiag(pRh,pRh);
%pRv

for j=1:2
    mup=mupv{j};
    Xl=Xlv{j};
    Yl=Ylv{j};
Wcwcj{j}=[1 0 -mup 0 0 0
      -1 0 -mup 0 0 0
      0 1 -mup 0 0 0
      0 -1 -mup 0 0 0
      0 0 -1 0 0 0
      0 0 1 0 0 0
      0 0 -Yl 1 0 0 
      0 0 -Yl -1 0 0
      0 0 -Xl 0 1 0
      0 0 -Xl 0 -1 0
      Yl Xl -mup*(Xl+Yl) mup mup 1
      Yl -Xl -mup*(Xl+Yl) +mup -mup 1
      -Yl Xl -mup*(Xl+Yl) mup -mup 1
      -Yl -Xl -mup*(Xl+Yl) -mup -mup 1  
      Yl Xl -mup*(Xl+Yl) -mup -mup -1
      Yl -Xl -mup*(Xl+Yl) -mup +mup -1
      -Yl Xl -mup*(Xl+Yl) mup -mup -1
      -Yl -Xl -mup*(Xl+Yl) mup mup -1];

end
Wcwcf=Wcwcj{1};
Wcwch=Wcwcj{2};

Wredf=Wcwcf*Rf;
Wredh=Wcwch*Rh;


bcwcredf=zeros(size(Wredf,1),1);bcwcredf(6)=1.2*m*g;
bcwcredh=zeros(size(Wredh,1),1);bcwcredh(6)=0.3*m*g;

Wbcwc=blkdiag(Wredf,Wredh);bbcwc=[bcwcredf;bcwcredh];

%PW=[eye(3) zeros(3) eye(3) zeros(3); Mrfocr eye(3) Mrhacr eye(3)];
% addpath('polytopes_2017_10_04_v1.9');
% tic
% Vpgs=lcon2vert(Wbcwc,bbcwc);toc
% Vpps=Vpgs*PW';
%a
% nWred=size(Wred,1);
% bcwcred=zeros(size(Wred,1),1); bcwcred(6)=1.2*m*g;
% b3cwcred=bcwcred+Wred*([m*gv;-m*Mgcr*rfd]);
%
% QP SETUP HERE
%Qm=[P, [0;0];zeros(1,3)]/max(max(P))+[-Km 1]'*[-Km 1]/max(max([-Km 1]'*[-Km 1]));
Qm=diag([0.001 0.001 0.001 1 1 10000 0.01 0.01 0.01]);%diag(kron(ones(1,3),[1 1000 1]));%eye(nX);%
Rm=0.00001*eye(nU);

%H = 2*[kron(eye(N+1),Qm), zeros(nX*(N+1),nU*N);zeros(nX*(N+1),nU*N)', kron(eye(N),Rm)];
%
zeros(size(Wredf,1),1);


% bcwcred=zeros(size(Wred,1),1); bcwcred(6)=1.2*m*g;
% b3cwcred=bcwcred+Wred*([m*gv;-m*Mgcr*rfd]);
%
nWred=size(Wbcwc,1);
Wred=Wbcwc;
b3cwcred=bbcwc+Wred*([m*gv;-m*Mgcr*rfd;zeros(6,1)]);

Aqp = [zeros(nWred*N,nX*(N+1)) kron(eye(N),Wred) zeros(nWred*N,3)];
bqp = kron(ones(N,1),b3cwcred);
%%

B1=[kron(eye(N),A_sys) zeros(nX*N,nX) kron(eye(N),B_sys) zeros(nX*N,3)];
BMPC1=[eye(nX*(N+1)) zeros(nX*(N+1),nU*N) [-[-m*Mdr0cr;eye(3);zeros(3)];zeros(nX*N,3)]]-[zeros(nX,nX*(N+1)+nU*N+3);B1];
BMPC2=[zeros(nX,nX*N) eye(nX) zeros(nX,nU*N) zeros(nX,3)];
c1 = [[L0;-rfd;dr0];zeros(nX*N,1)];
c2 = zeros(nX,1);
B = [BMPC1;BMPC2];
c = [c1;c2];
% SOLVE QP
options = optimset('Display','Off');
    %[z,fval,exitflag] = quadprog(H,f,Aqp,bqp,B,c,[],[],[],options);

rVt=[];
eFlag=[];
Voutp={};
Z={};   
nVjsplit=4;
for thvj=linspace(0,2*pi,nVjsplit)
for phivj=linspace(0,pi,nVjsplit)
    tic
    vj=[sin(phivj)*cos(thvj);sin(phivj)*sin(thvj);cos(phivj)];
    f = [zeros(nX*(N+1)+nU*N,1);vj];
    [z,fval,exitflag,outp] = linprog(f,Aqp,bqp,B,c,[],[],[],options);
    exitflag
    while(exitflag~=1)
        disp('Warning: Exitflag not 1')
        phivj=phivj+(pi/(2*nVjsplit))*(2*rand-1);thvj=thvj+(2*pi/(2*nVjsplit))*(2*rand-1);
    vj=[sin(phivj)*cos(thvj);sin(phivj)*sin(thvj);cos(phivj)];
    f = [zeros(nX*(N+1)+nU*N,1);vj];
    [z,fval,exitflag,outp] = linprog(f,Aqp,bqp,B,c,[],[],[],options);
    end
    Voutp{end+1}=outp;
    Z{end+1}=z;
    eFlag(end+1)=exitflag;
    rVt(:,end+1)=z(end-2:end);
    toc
    plot3(vj(1),vj(2),vj(3),'x'),hold on, grid on, drawnow
end
end
%%
figure(4);
rVt1ef=find(eFlag>0);
plot3(rVt(1,rVt1ef),rVt(2,rVt1ef),rVt(3,rVt1ef),'ob'), hold on, grid on
rVtn1ef=find(eFlag<0);
plot3(rVt(1,rVtn1ef),rVt(2,rVtn1ef),rVt(3,rVtn1ef),'or')
rVtx=rVt(1,:);
rVty=rVt(2,:);
rVtz=rVt(3,:);
kk=convhull(rVtx,rVty,rVtz);
trisurf(kk,rVtx,rVty,rVtz);
%%
bcwcred=bbcwc;
for Vn=1:size(Z,2)
z=Z{Vn};
u=z(nX*(N+1)+1:end-3);
u=reshape(u,[nU N]);
xtraj=z(1:nX*(N+1));
xtraj=reshape(xtraj,[nX N+1]);
%
zeta=u-[m*gv;-m*Mgcr*rfd;zeros(6,1)]*ones(1,N);
nv{1}=pRf*[0;0;1];
nv{2}=pRh*[0;0;1];

for j=1:2
taun=(sum(zeta((1:3)+6*(j-1),:).*zeta((4:6)+6*(j-1),:)))./(nv{j}'*zeta((1:3)+6*(j-1),:));
tau2P=zeta((4:6)+6*(j-1),:)-nv{j}*taun;
for i=1:N
    if norm(zeta((1:3)+6*(j-1),i))>0.001
    lambP(i)=-(cross(zeta((1:3)+6*(j-1),i),tau2P((1:3),i))/norm(zeta((1:3)+6*(j-1),i))^2)'*nv{j}/(nv{j}'*zeta((1:3)+6*(j-1),i));
    rP{j}(:,i)=rpoi{j}+cross(zeta((1:3)+6*(j-1),i),tau2P((1:3),i))/norm(zeta((1:3)+6*(j-1),i))^2+lambP(i)*zeta((1:3)+6*(j-1),i);
    else
    rP{j}(:,i)=rpoi{j};%[0;0;0]; 
    end
end
end

%
% %
Wgl=kron(eye(N),Wred);
Hol=Wgl*zeta(:)<kron(ones(N,1),bcwcred);
if isempty(find(Hol==0))
    disp('Inside CWC - Succed!')
else
    disp('Not inside CWC')
    max(Wgl*zeta(:)-kron(ones(N,1),bcwcred))
end
% 
% [~,Sm]=lqr(Apre,Bpre,Qm,Rm);
% K=lqr(Apre,Bpre,Sm,0.001*diag([1 1 1 1 1 1]));

x(:,1)=[L0;rVt(:,Vn);dr0];
x(:,1)=x(:,1);%+0.03*x(:,1).*(2*rand(nX,1)-1);
% x(:,1)=[
%          0
%          0
%          0
%    -0.4049
%    -0.5956
%     1.1282
%     2.0349
%     2.0750
%    -1.0025];

for i=1:N
%     xm=[x(1:3,i)-m*cross(x(4:6,i),x(7:9,i));x(4:6,i);x(7:9,i)]-[zeros(3,1);rfd;zeros(3,1)];
%     v4lamfeed=(Wred*u(:,i)-b3cwcred)./(Wred*K*(xm-xtraj(:,i)));
%     lambfeed(i)=min(min(v4lamfeed(find(v4lamfeed>0))),1)*1;%1;%
%     uc(:,i)=u(:,i)-lambfeed(i)*K*(xm-xtraj(:,i));%lambfeed(i)*
%     zetac(:,i)=uc(:,i)-[m*gv;-m*Mgcr*rfd];
    zetac(:,i)=zeta(:,i);
    x(:,i+1)=x(:,i)+T*[zetac(4:6,i)-cross(x(4:6,i)-rfo,zetac(1:3,i))+zetac(10:12,i)-cross(x(4:6,i)-rha,zetac(7:9,i));x(7:9,i);1/m*(zetac(1:3,i)+zetac(7:9,i))+gv];%A_sys*x(:,i)+B_sys*u(:,i);
    ddx4p(:,i)=1/m*(zetac(1:3,i)+zetac(7:9,i))+gv;
%     if max(Wred*zetac(:,i)>bcwcred)==1
%         disp('error')
%         break
%     end
end

rCMP=x(4:6,1:N)-(ones(3,1)*((nv{1}'*x(4:6,1:N))./(nv{1}'*zeta(1:3,:)))).*zeta(1:3,:);

%plot(x')
figure(1)
subplot(311)
plot(T*(1:size(x,2)),x(1:3,:)')
legend('Lx','Ly','Lz')
subplot(312)
plot(T*(1:size(x,2)),x(4:6,:)')
legend('x','y','z')
subplot(313)
plot(T*(1:size(x,2)),x(7:9,:)')
legend('$\dot{x}$','$\dot{y}$','$\dot{z}$')
%
figure(2)
subplot(131)
title('Total Force'),hold on, grid on
plot(T*(1:size(u,2)),(zeta(1:3,:)+zeta(7:9,:))')
legend('$f_x$','$f_y$','$f_z$')
subplot(132)
title('Total Torque around CoM'),hold on, grid on
plot(T*(1:size(u,2)),(zetac(4:6,:)-cross(x(4:6,1:end-1)-rfo*ones(1,size(u,2)),zetac(1:3,:))+zetac(10:12,:)-cross(x(4:6,1:end-1)-rha*ones(1,size(u,2)),zetac(7:9,:)))')
legend('$\tau_x$','$\tau_y$','$\tau_z$')
subplot(133)
title('CoM Accelerations'),hold on, grid on
plot(T*(1:size(u,2)),ddx4p(1:3,:)')
legend('$\ddot{x}$','$\ddot{y}$','$\ddot{z}$')
%
figure(3)
%
plot3(x(4,:),x(5,:),x(6,:)); hold on, grid on
plot3(x(4,1),x(5,1),x(6,1),'xr')
plot3(x(4,end),x(5,end),x(6,end),'ok')
plot3([Xfo Xfo -Xfo -Xfo Xfo],[Yfo -Yfo -Yfo Yfo Yfo],zeros(5,1),'r')
R4pha=pRh*[[Xha Xha -Xha -Xha Xha];[Yha -Yha -Yha Yha Yha];zeros(1,5)]+rha*ones(1,5);
plot3(R4pha(1,:),R4pha(2,:),R4pha(3,:),'r')
axis([-3 3 -3 3 -0.5 3])
%pause
for j=1:2
plot3(rP{j}(1,:),rP{j}(2,:),rP{j}(3,:),'g');
end
%plot3(rCMP(1,:),rCMP(2,:),rCMP(3,:),'r');
%pause
% for i=1:N
% plot3(x(4,i),x(5,i),x(6,i),'bx');
% plot3(rP(1,i),rP(2,i),rP(3,i),'bx');
% plot3(rCMP(1,i),rCMP(2,i),rCMP(3,i),'ro');
% %pause
% end
%plot3(rCMP(1,:),rCMP(2,:),rCMP(3,:),'r');
xlabel('x')
ylabel('y')
zlabel('z')
%
figure(4)
subplot(311)
title('CoM'),hold on, grid on
plot(T*(1:size(x,2)),x(4:6,:)')
legend('x','y','z')
subplot(312)
title('CoP Fo'),hold on, grid on
plot(T*(1:size(rP{1},2)),rP{1}(1:3,:)'-(rpoi{1}*ones(1,size(rP{1},2)'))');
legend('rCoPx','rCoPy','rCoPz')
subplot(313)
title('CoP Ha'),hold on, grid on
plot(T*(1:size(rP{2},2)),rP{2}(1:3,:)'-(rpoi{2}*ones(1,size(rP{2},2)'))');
legend('rCoPx','rCoPy','rCoPz')

figure(5)
subplot(131)
title('Total Force Foot'),hold on, grid on
plot(T*(1:size(u,2)),(zeta(1:3,:))')
legend('$f_x$','$f_y$','$f_z$')
subplot(132)
title('Total Force Hand'),hold on, grid on
plot(T*(1:size(u,2)),(zeta(7:9,:))')
legend('$f_x$','$f_y$','$f_z$')
% title('CMP'),hold on, grid on
% plot(T*(1:size(rP,2)),rCMP(1:3,:)')
% legend('rCMPx','rCMPy','rCMPz')
% figure(5) 
% title('$\lambda$ Feedback'),hold on, grid on
% plot(T*(1:size(lambfeed,2)),lambfeed)
% legend('$\lambda$')
figure(3)
drawnow
end