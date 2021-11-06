exec calc_mu.sce
exec calc_sigma.sce


function [correlation]=calc_correlation(des_entrante,des_apprentissage)
    mu_apprentissage = calc_mu(des_apprentissage);
    mu_entrante =calc_mu(des_entrante);
    sigma_apprentissage = calc_sigma(des_apprentissage);
    sigma_entrante = calc_sigma(des_entrante);
    
    correlation = sum((des_entrante-mu_entrante).*(des_apprentissage-mu_apprentissage))/(sigma_apprentissage*sigma_entrante);
endfunction
