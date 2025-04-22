function H = cumulativeHist(h)

K = length(h);
H = zeros(1,K);
H(1) = h(1);
for i=1:K-1
    H(i+1) = H(i) + h(i+1); 

end

