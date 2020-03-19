%This Program will simulate Absorption of Water into a plane from top to
%bottom using Monte-Carlo Simmulation Method 
%The Algorithm Of Depth First Search is applied (DFS.m)
%Written By Amin Abrishami Moghadam Spring 2019


clc %Clears Command Window 
clear all %Eliminates the Variables created before
set(0,'RecursionLimit',100000)
Experiment=1000;
Probability=zeros(Experiment,1);
for Step=1:Experiment
global n; %The Matrix Dimension
n=50;
i=1;  %Loop Start
Spectrum=70; %Spectrum of Color
Iteration=n*n; %Number of Randomized Points
global PlaneMatrix;
PlaneMatrix=zeros(n)+60; %Initializing Our Plane Matrix within the Color of Red
global Color;
Color=zeros(n);
global Open;
Open=0;

%Main Loop Starts From Here

for i=1:Iteration
        RandomPositionX=floor(n*rand)+1;
        RandomPositionY=floor(n*rand)+1;
        PlaneMatrix(RandomPositionX,RandomPositionY)=40;
end
%End of Main Loop

%The Neighbour Search Begins Here

i=1;
   
    for j=1:n
        if PlaneMatrix(i,j)==40
              if Color(i,j)==0
              DFS(i,j);
              end
        end
    end
    

for i=1:n
    for j=1:n
     if PlaneMatrix(i,j)==40
             if Color(i,j)==1
                 PlaneMatrix(i,j)=1;
             end
     end
    end
end

image(PlaneMatrix);
Probability(Step,1)=Open/(n*n);
end
Probability
plot(1:Experiment,Probability(1:Experiment,1))
image(PlaneMatrix);
