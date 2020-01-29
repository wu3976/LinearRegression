
x = [20 40 60 80];
y = [0.14 1.35 1.56 2.12];


scatter (x, y);
hold on;
x_ = 0;
for i = 1:1:length(x)
   x_ = x_ + x(i); 
end
x_  = x_ / length(x)

y_ = 0 ;

for i = 1:length(y)
   y_ = y_ + y(i);  
end
y_ = y_ / length(y)

Sxy = 0;
for i = 1:length(x)
    Sxy = Sxy + (x(i)-x_)*(y(i)-y_);
end
Sxy

Sxx = 0;
for i = 1:length(x)
   Sxx = Sxx + (x(i)-x_)^2; 
end
Sxx

b1 = Sxy/Sxx
b0 = y_ - b1*x_

yhat = b1*x + b0
plot (x, yhat);
hold off;

SSE = 0;
for i = 1:length(y)
    SSE = SSE + (y(i) - yhat(i))^2;
end
SSE

SST = 0;
for i = 1:length(y)
    SST = SST + (y(i)-y_)^2;
end
SST

Rsq = 1-SSE/SST