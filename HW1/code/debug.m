clc;clear;close all;
%%������˼·Ϊ���ݳ�ʼֵ�ж�Ŀ�꺯����ά��
x0=ones(100,1).*2;%% ά��Ϊ100
%x0=[2,2,2,2]';  %���߼ٶ�ά��Ϊ4
%%���ά��Ϊ4��Ŀ�꺯����4�������� ����ͨ���޸�����ĳ�ʼֵ������ά�ȣ�����ά��Ϊż����
[x,val,k,pos]=steepestDescent(x0);
%%���:  x, val�ֱ��ǽ������ŵ������ֵ,  k�ǵ�������. pos�ǵ�����