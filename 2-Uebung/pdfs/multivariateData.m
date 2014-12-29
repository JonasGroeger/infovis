function multivariateData()
% generate examples af univariate, bivariate data
% plot results into png images

t = 0:0.01:2;
a = 1.5;
f = a*t;
close all;
sqsize = 600;
figNr = 1;
gfc = figure (figNr);
set(gfc,'Visible','off');
set(gfc,'PaperUnits', 'inches', 'PaperPosition', [0 0 sqsize sqsize]/200);
plot(t,f);
axis square
Tstr = '$f(x) = \alpha \cdot x$';
title(Tstr,'Interpreter','latex','fontsize',10);
print -dpng -r200 linFunc.png

close all;
a = 2*pi;
f = cos(a*t);
figNr = 1;
gfc = figure (figNr);
set(gfc,'Visible','off');
set(gfc,'PaperUnits', 'inches', 'PaperPosition', [0 0 sqsize sqsize]/200);
plot(t,f);
axis square
Tstr = '$f(x) = \cos( \alpha \cdot x)$';
h = title(Tstr,'Interpreter','latex','fontsize',10);
print -dpng -r200 cosFunc.png

b = 2;
f = exp (-b*(t.*t)).*cos(2*a*t);
close all;
figNr = 1;
gfc = figure (figNr);
set(gfc,'Visible','off');
set(gfc,'PaperUnits', 'inches', 'PaperPosition', [0 0 sqsize sqsize]/200);
plot(t,f);
axis square
Tstr = '$f(x) = \exp(-\beta\cdot x^2) \cdot \cos( \alpha \cdot x)$';
title(Tstr,'Interpreter','latex','fontsize',10);
print -dpng -r200 expSinFunc.png

%
%  2D function
%

close all;

Nx = 50;
Ny = 50;
xmin = -5;
xmax =  5;
ymin = -5;
ymax =  5;
dx = (xmax - xmin)/(Nx - 1);
dy = (ymax - ymin)/(Ny - 1);
x = zeros(1,Nx);
y = zeros(1,Ny);
z = zeros(Nx,Ny);
xv = xmin;
for i=1:Nx
    x(i) = xv;
    yv = ymin;
    for j=1:Ny
        y(j) = yv;
        z(i,j) = exp(-0.2*(xv*xv + yv*yv)) * cos(pi*(sqrt(xv*xv + yv*yv)));
        yv = yv + dy;
    end
    xv = xv + dx;
end



figNr = 1;
gfc = figure (figNr);
set(gfc,'Visible','off');
set(gfc,'PaperUnits', 'inches', 'PaperPosition', [0 0 sqsize sqsize]/200);
surf(x,y,z); %plot(t,f);
%axis square
Tstr = '$f(x,y) = \exp(-\beta\cdot (x^2+y^2)) \cdot \cos( \alpha \cdot (x^2+y^2))$';
title(Tstr,'Interpreter','latex','fontsize',8);
print -dpng -r200 surfacePlot.png


close all;

N = 200;
x = zeros(1,N);
y = zeros(1,N);
z = zeros(1,N);
for i=1:N
    x(i) = rand;
    y(i) = rand;
end
z = x.*(1-y)  + 0.03*rand(1,N);

xx = 0:0.1:1;
yy = 0:0.1:1;
Nx = length(xx);
zz = zeros(Nx,Nx);
for i=1:Nx
    xv = xx(i);
    for j=1:Nx
        yv = yy(j);
        zz(i,j) = (1-xv)*yv;
    end
end 

c = colormap(jet(N));

figNr = 1;
gfc = figure (figNr);
set(gfc,'Visible','off');
set(gfc,'PaperUnits', 'inches', 'PaperPosition', [0 0 sqsize sqsize]/200);
scatter3(x,y,z,5,'m','*'); %plot(t,f);
hold on;
surf(xx,yy,zz);
%axis square
Tstr = '3D scatter plot';
title(Tstr,'Interpreter','latex','fontsize',8);
print -dpng -r200 surfaceScatterPlot.png


%
% =========================================================================
%
close all;
t = [0:0.05:2];
sz = length(t);
d = normrnd(0,0.1,[1,sz]);
a = 1.5;
f = a*t;

sqsize = 600;
figNr = 1;
gfc = figure (figNr);
set(gfc,'Visible','off');
set(gfc,'PaperUnits', 'inches', 'PaperPosition', [0 0 sqsize sqsize]/200);
plot(t,f+d,'s','MarkerEdgeColor','k','MarkerFaceColor','r','MarkerSize',3);
hold
plot(t,f);
axis square
Tstr = '$linear dependency$';
h = title(Tstr,'Interpreter','latex','fontsize',10);
print -dpng -r200 linFuncMess.png

a = 2*pi;
f = cos(a*t);
close all;
figNr = 1;
gfc = figure (figNr);
set(gfc,'Visible','off');
set(gfc,'PaperUnits', 'inches', 'PaperPosition', [0 0 sqsize sqsize]/200);
plot(t,f+d,'s','MarkerEdgeColor','k','MarkerFaceColor','r','MarkerSize',3);
hold
plot(t,f);
axis square
Tstr = '$sinusoidal$';
h = title(Tstr,'Interpreter','latex','fontsize',10);
print -dpng -r200 cosFuncMess.png

b = 2;
f = exp (-b*(t.*t)).*cos(2*a*t);
close all;
figNr = 1;
gfc = figure (figNr);
set(gfc,'Visible','off');
set(gfc,'PaperUnits', 'inches', 'PaperPosition', [0 0 sqsize sqsize]/200);
plot(t,f+d,'s','MarkerEdgeColor','k','MarkerFaceColor','r','MarkerSize',3);
hold
plot(t,f);
axis square
Tstr = '$exponential$';
h = title(Tstr,'Interpreter','latex','fontsize',4);
print -dpng -r200 expSinFuncMess.png

%
% =========================================================================
%
close all;
xd = normrnd(0,1.5,[1,300]);
yd = normrnd(0,8,[1,300]);
th = 36*pi/180;
rt = [cos(th),sin(th);-sin(th),cos(th)];
x = xd*cos(th) + yd*sin(th);
y = -xd*sin(th) + yd*cos(th);
figNr = figNr + 1;
gfc = figure (figNr);
set(gfc,'Visible','off');
set(gfc,'PaperUnits', 'inches', 'PaperPosition', [0 0 sqsize sqsize]/200);
plot(x,y,'s','MarkerEdgeColor','k','MarkerFaceColor','r','MarkerSize',3);
axis square
Tstr = '2D Scatter plot';
h = title(Tstr,'Interpreter','latex','fontsize',4);
print -dpng -r200 scatterPlot2D.png

%
% =========================================================================
%
close all;
fontSizeText = 6;
fontSizeAxes = 6;
close all;
labels = {'X','Y'};
t = [0:0.05:1];
a = 1;
f = a*t;

sqsize = 600;
figNr = 1;
gfc = figure (figNr);
set(gfc,'Visible','off');
set(gfc,'PaperUnits', 'inches', 'PaperPosition', [0 0 sqsize sqsize]/200);
parallelcoords([t',f'],'labels',labels,'LineSmoothing','on','LineWidth',0.75);
axis on
legend('off');
set(gca,'box','on');
set(gca,'ytick',[]);
set(gca,'FontSize',10)
axis square
set(findall(gcf,'type','text'),'FontName','Arial','FontSize',fontSizeText,'FontWeight','bold');
set(findall(gcf,'type','axes'),'FontName','Arial','FontSize',fontSizeAxes,'FontWeight','bold');
%Tstr = '$f(x) = x$';
%h = title(Tstr,'Interpreter','latex','fontsize',10);
print -dpng -r200 linFuncParCoords_01.png


%
% %%
% %%
% linear function with 
close all;
a = 2;
f = a*t;

sqsize = 600;
figNr = 1;
gfc = figure (figNr);
set(gfc,'Visible','off');
set(gfc,'PaperUnits', 'inches', 'PaperPosition', [0 0 sqsize sqsize]/200);
parallelcoords([t',f'],'labels',labels,'LineSmoothing','on','LineWidth',0.75);
axis on
legend('off');
set(gca,'box','on');
set(gca,'ytick',[]);
set(gca,'FontSize',10)
axis square
set(findall(gcf,'type','text'),'FontName','Arial','FontSize',fontSizeText,'FontWeight','bold');
set(findall(gcf,'type','axes'),'FontName','Arial','FontSize',fontSizeAxes,'FontWeight','bold');
%Tstr = '$f(x) = x$';
%h = title(Tstr,'Interpreter','latex','fontsize',10);
print -dpng -r200 linFuncParCoords_02.png


%
%
% circular
close all;
t = [0:0.01:1];
a = 2*pi;
X = cos(a*t);
Y = sin(a*t);

sqsize = 600;
figNr = 1;
gfc = figure (figNr);
set(gfc,'Visible','off');
set(gfc,'PaperUnits', 'inches', 'PaperPosition', [0 0 sqsize sqsize]/200);
parallelcoords([X',Y'],'labels',labels,'LineSmoothing','on','LineWidth',0.75);
axis on
legend('off');
set(gca,'box','on');
set(gca,'ytick',[]);
set(gca,'FontSize',10)
axis square
set(findall(gcf,'type','text'),'FontName','Arial','FontSize',fontSizeText,'FontWeight','bold');
set(findall(gcf,'type','axes'),'FontName','Arial','FontSize',fontSizeAxes,'FontWeight','bold');
%Tstr = '$f(x) = x$';
%h = title(Tstr,'Interpreter','latex','fontsize',10);
print -dpng -r200 circularParCoords.png

a = 1.3;
X = t;
Y = a* (X.^2);
close all


%
% %%%
% normal 
close all;
gfc = figure (figNr);
set(gfc,'Visible','off');
set(gfc,'PaperUnits', 'inches', 'PaperPosition', [0 0 sqsize sqsize]/200);
parallelcoords([X',Y'],'labels',labels,'LineSmoothing','on','LineWidth',0.75);
axis on
legend('off');
set(gca,'box','on');
set(gca,'ytick',[]);
set(gca,'FontSize',10)
axis square
set(findall(gcf,'type','text'),'FontName','Arial','FontSize',fontSizeText,'FontWeight','bold');
set(findall(gcf,'type','axes'),'FontName','Arial','FontSize',fontSizeAxes,'FontWeight','bold');
%Tstr = '$f(x) = x$';
%h = title(Tstr,'Interpreter','latex','fontsize',10);
print -dpng -r200 quadraticParCoords.png

close all;
X = normrnd(0,1,[1,150]);
Y = normrnd(0,1,[1,150]);
sqsize = 600;
figNr = 1;
gfc = figure (figNr);
set(gfc,'Visible','off');
set(gfc,'PaperUnits', 'inches', 'PaperPosition', [0 0 sqsize sqsize]/200);
parallelcoords([X',Y'],'labels',labels,'LineSmoothing','on','LineWidth',0.75);
axis on
legend('off');
set(gca,'box','on');
set(gca,'ytick',[]);
set(gca,'FontSize',10)
axis square
set(findall(gcf,'type','text'),'FontName','Arial','FontSize',fontSizeText,'FontWeight','bold');
set(findall(gcf,'type','axes'),'FontName','Arial','FontSize',fontSizeAxes,'FontWeight','bold');
%Tstr = '$f(x) = x$';
%h = title(Tstr,'Interpreter','latex','fontsize',10);
print -dpng -r200 normalParCoords.png
