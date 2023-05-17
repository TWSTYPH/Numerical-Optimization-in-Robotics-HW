clc;clear;
x1=-2:0.1:2; x2=-1:0.1:3;
[X,Y]=meshgrid(x1,x2);
Z=100*(X.^2-Y).^2+(Y-1).^2;
figure(1),contour3(X,Y,Z,'ShowText','on');hold on;					% 三维轮廓图
figure(2),contour(X,Y,Z,'ShowText','on'); hold on;axis equal;		% 二维轮廓图，确保x和y等尺度
figure(3),mesh(X,Y,Z);hold on;									    % 三维mesh图显示迭代点的优化轨迹
x0=[2 2]';
[x,val,k,pos]=steepestDescent(x0);
pos=pos';
pos(:,3)=100*(pos(:,1).^2-pos(:,2)).^2+(pos(:,2)-1).^2;
figure(1),plot3(pos(:,1),pos(:,2),pos(:,3), 'r.','markersize',10);	
figure(2),plot(pos(:,1),pos(:,2),'r.','markersize',10);			
figure(3),plot3(pos(:,1),pos(:,2),pos(:,3), 'r.','markersize',10);	
figure(1),line(pos(:,1),pos(:,2),pos(:,3));
figure(2),line(pos(:,1),pos(:,2),pos(:,3));
figure(3),line(pos(:,1),pos(:,2),pos(:,3),'color','k');		