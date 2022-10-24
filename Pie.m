function [outputArg1,outputArg2] = Pie(degree_weight)

% degree_weight: degree(120),N
degree=length(degree_weight);
a=ones(degree,1);
p=pie(a);
% colormap(hsv);
c=floor(mapminmax(degree_weight,0,1)*5);
c(find(c==0))=1;
color=hot(5);
for i=1:degree
    p(i*2-1).FaceColor=color(c(i),:);
end  

colormap("hsv")




end

