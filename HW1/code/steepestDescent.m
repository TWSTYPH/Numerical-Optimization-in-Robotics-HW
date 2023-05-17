function [x,val,k,pos] = steepestDescent(x0)
%  ����x0�ж�ά��
% ����: �������½��������Լ������:  min f(x)
%����:  x0�ǳ�ʼ��, objectiveFunction, objectiveFunctionGradient�ֱ���Ŀ�꺯�����ݶ�
%���:  x, val�ֱ��ǽ������ŵ������ֵ,  k�ǵ�������.
maxk=50000;   %����������
rho=0.5;sigma=0.4;
k=1;  epsilon=1e-2;
searchpos=x0;
while(k<maxk)
    g = objectiveFunctionGradient(x0);	 %�����ݶ�
    d=-g;
    if(norm(d)<epsilon), break; end
    m=0; mk=0;
    while(m<20)   %Armijo����ͨ�����ַ����ϵ���
        if((objectiveFunction(x0+rho^m*d))<(objectiveFunction(x0)+sigma*rho^m*g'*d))
            mk=m; break;
        end
        m=m+1;
    end
    x0=x0+rho^mk*d;%����x
    searchpos=[searchpos,x0];%��¼�����߹���x��
    k=k+1;
end
x=x0;
pos=searchpos;
val=objectiveFunction(x0);