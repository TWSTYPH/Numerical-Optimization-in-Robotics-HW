function f=objectiveFunction(x)
n=numel(x);
f=0;
for i=1:1:n/2
    f=f+100*((x(2*i-1))^2-x(2*i))^2+(x(2*i-1)-1)^2;
end

