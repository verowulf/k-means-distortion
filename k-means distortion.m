% k-means distortion [cost] function in MatLab for the ML course of Ng in Coursera

% Insert into runkMeans.m in ex7 folder
% NOTE: Must change 'i' of existing 'for loop' into something like 'iter'

Centroids = zeros(m,n);
for i = 1:m
    Centroids(i,:) = centroids(idx(i), :);
end
Distortion = sum( sum((X - Centroids).^2) ) / m;

% More intuitive, but slower version
% SumD = 0;
% for i = 1:m
%    SumD = SumD + sum( ( X(i,:) - centroids(idx(i), :) ) .^ 2 );
% end
% Distortion = SumD / m;
