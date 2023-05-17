function gradf= objectiveFunctionGradient(x)
n=numel(x);
gradf=zeros(n,1);
for i=1:1:n
    if mod(i,2)==1%返回i除以2之后的余数
        gradf(i)=400*x(i)*(x(i)^2-x(i+1))+2*(x(i)-1);
    else
        gradf(i)=-200*(x(i-1)^2-x(i));
    end
end

