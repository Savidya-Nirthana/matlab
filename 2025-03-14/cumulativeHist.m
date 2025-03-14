function H = cumulativeHist(h)

K = length(h);
H = zeros(1,K);

H(1) = h(1);
for i = 2:K
    H(i) = H(i-1) + h(i);
end 
