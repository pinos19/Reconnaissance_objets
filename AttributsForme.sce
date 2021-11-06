// Question 11

function [Aire,Perimetre,Longueur,Largeur]=AttributsForme(Img_gris)
    
    s=imgraythresh(Img_gris);
    Img_binaire = im2bw(Img_gris,s);
    Img_binaire = imcomplement(Img_binaire);
    e=imcreatese('cross',3,3);
    Ir=imerode(Img_binaire,e);
    Id=imdilate(Ir,e);
    E=edge(Id,'prewitt');
    
    [Ii,r]=imlabel(Id);
    [Si,Bbi,Cgi]= imblobprop(Ii);
    [max_aire,indice_max_aire] = max(Si);
    
    Aire = Si(indice_max_aire);
    Perimetre = sum(E==%T);
    if Bbi(3)>Bbi(4) then
        Largeur = Bbi(4);
        Longueur =Bbi(3);
    else
        Largeur = Bbi(3);
        Longueur =Bbi(4);
    end
    
    
    
endfunction
