clear all;close all

theta=0:pi/180:2*pi;
x=cos(theta);
y=sin(theta);
stringLine=0:0.5:10;
colors=gray(length(stringLine));
colorNumber=1;
while 1
for radium=10:-0.5:0
    rgb=colors(colorNumber,:);
    plot(radium*x,radium*y,'color',rgb)
    colorNumber=colorNumber+1;
    axis square
    hold on
    if colorNumber==length(stringLine)
        colorNumber=1;
    end
end
hold off
pause(0.03)
end