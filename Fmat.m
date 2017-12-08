t=table2array(T.Edges(:,2:3));% T is graph object of Tree 
t2=table2array(T.Edges);
L=rmedge(G,t2(:,1)',t2(:,2)');% L is the graph object of Links formed by removing edged of T from G
l=table2array(L.Edges(:,2:3));
A=A(1:size(A,1)-1,:);% Reduced incidence matrix 
l=sortrows(l,1);
t=sortrows(t,1);
At=A(:, t(:,2)');
Al=A(:,l(:,2)');
F=-(inv(At)*Al)';%Calculating F matrix
s=nnz(l(:,1)==-1);
c=nnz(t(:,1)==-1);
r=nnz(l(:,1)==0);
g=nnz(t(:,1)==0);
ll=nnz(l(:,1)==1);
tau=nnz(t(:,1)==1);
Fsc=F(1:s,1:c);%Different necessary partitioning of F matrix;
Frc=F(s+1:s+r,1:c);
Frg=F(s+1:s+r,c+1:c+g);
Flc=F(s+r+1:s+r+ll,1:c);
Flg=F(s+r+1:s+r+ll,c+1:c+g);
Flt=F(s+r+1:s+r+ll,c+g+1:c+g+tau);
matrix;

