function graphPlot()
%画图论中的图
%treeplot([2 4 3 0 6 4 6]);%每个分量的意思是父节点是第几个分量,0为根节点


% Create the onnectivity ????graph of the Buckminster ?Fuller geodesic dome
[B, V] = bucky;
H = sparse(60, 60);
k = 31:60;
H(k, k) = B(k, k);

% Visualize the graph using the gplot function (blue)
figure;
gplot(B - H, V, 'b-');
hold on;

% Visualize a rotation of the graph (red)
gplot(H, V, 'r-');
axis off equal;
end

