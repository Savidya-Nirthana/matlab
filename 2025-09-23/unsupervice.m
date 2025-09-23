load fisheriris
X = meas;

[idx, C] = kmeans(X,3);
gscatter(X(:,1),X(:,2), idx)
title('K-means Clustering (Sepal Features)')

Z = linkage(X, 'ward');
figure; dendrogram(Z)

[coeff,score, ~,~, explained] = pca(X);
figure; gscatter(score(:,1), score(:,2), species)
xlabel('PC1');ylabel('PC2');title('PCA Projection');