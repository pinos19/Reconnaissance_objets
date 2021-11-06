
function [classe]=classifieur(attributs_normalises,img_gris,moyenne,ecart_type,num_classe)
    [aire,perimetre,longueur,largeur]=AttributsForme(img_gris);
    res=[aire,perimetre,longueur,largeur];
    for i=1:4
        res(i)=(res(i)-moyenne(i))./ecart_type(i);
    end
    for app = 1:20
        //distance(app)=sum(abs(attributs_normalises(app,:)-res(1,:)));
        //distance(app)=sqrt(sum((attributs_normalises(app,:)-res(1,:)).^2));
    end
    [dist_mini,ind] = min(distance);
    classe=num_classe(ind);
endfunction
      
