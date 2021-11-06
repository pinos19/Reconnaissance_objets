exec calc_correlation.sce

function [classe] = classifieur_sift(apprentissage,Img,num_classe)
    max_ligne=4062;
    fobj=imdetect_SIFT(Img);
    des=imextract_DescriptorSIFT(Img,fobj);
    des=[des;zeros(max_ligne-length(des(:,1)),128)];
    for i=1:20
        temp(i) = calc_correlation(apprentissage(:,:,i),des);
    end
    
    [M,ind]=max(temp);
    classe = num_classe(ind);
    
    
    
endfunction
