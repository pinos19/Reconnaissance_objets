function [sigma] = calc_sigma(des)
    mu=calc_mu(des);
    sigma=sqrt(sum((des-mu).^2));
endfunction
