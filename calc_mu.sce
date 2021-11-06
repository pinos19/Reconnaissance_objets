function [mu]=calc_mu(des)
    [X,Y]=size(des);
    mu=sum(des)/(X*Y);
endfunction
