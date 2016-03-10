clear all;close all

theta=0:pi/180:2*pi;  %creat angle for sin & cos.
x=cos(theta); 
y=sin(theta);
stringLine=0:0.5:10;  %count circle we plot. it's equal to first for-loop 'radium'.
colors=gray(length(stringLine));  %creat gray with 'how many circle'.
colorNumber=1;  %to know how many time we plot, and it always follow the circle.
while 1
    for radium=10:-0.5:0
        rgb=colors(colorNumber,:);  %catch gray's 'rgb' information.
        plot(radium*x,radium*y,'color',rgb)  %plot circle with diff radium and add the gray 'rgb'.
        colorNumber=colorNumber+1;  %to change the color
        axis square  %make figure look as square.
        hold on
        if colorNumber==length(stringLine)
            colorNumber=1;
        end
    end
hold off
pause(0.03)
end
