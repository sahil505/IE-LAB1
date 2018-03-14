% coded by SAHIL KHOKHAR (2015ME20758)
clc;close all;clear all;
func = @(x) x(1)^2 + exp((x(2)^2+2*x(3)^2))+4*x(3);
A = [1,-1,10];
B = [0,-1,1];
q = fmincon(func, [2;2;2], A, -2, B, 1)