
function [classe]=classifieur_barycentre(attributs_normalises,img_gris,moyenne,ecart_type,num_classe)
    C=zeros(1,4);
    [aire,perimetre,longueur,largeur]=AttributsForme(img_gris);
    res=[aire,perimetre,longueur,largeur];
    for i=1:4
        res(i)=(res(i)-moyenne(i))./ecart_type(i);
    end
    
    l=1;
    for i=1:4
        attributs_barycentre(i,:)=[sum(attributs_normalises((l:l+4),1))/5,sum(attributs_normalises((l:l+4),2))/5,sum(attributs_normalises((l:l+4),3))/5,sum(attributs_normalises((l:l+4),4))/5];
        l=l+5;
    end
    
    for app = 1:4
        distance(app)=sum(abs(attributs_barycentre(app,:)-res(1,:)));
    end
        
    [dist_mini,ind] = min(distance);
    classe=ind;
endfunction
