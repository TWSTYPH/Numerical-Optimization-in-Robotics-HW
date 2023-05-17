function [x,val,k,pos] = steepestDescent(x0)
%  根据x0判断维度
% 功能: 用最速下降法求解无约束问题:  min f(x)
%输入:  x0是初始点, objectiveFunction, objectiveFunctionGradient分别是目标函数和梯度
%输出:  x, val分别是近似最优点和最优值,  k是迭代次数.
maxk=50000;   %最大迭代次数
rho=0.5;sigma=0.4;
k=1;  epsilon=1e-2;
searchpos=x0;
while(k<maxk)
    g = objectiveFunctionGradient(x0);	 %计算梯度
    d=-g;
    if(norm(d)<epsilon), break; end
    m=0; mk=0;
    while(m<20)   %Armijo搜索通过二分法不断迭代
        if((objectiveFunction(x0+rho^m*d))<(objectiveFunction(x0)+sigma*rho^m*g'*d))
            mk=m; break;
        end
        m=m+1;
    end
    x0=x0+rho^mk*d;%更新x
    searchpos=[searchpos,x0];%记录所有走过的x点
    k=k+1;
end
x=x0;
pos=searchpos;
val=objectiveFunction(x0);