/*
clear;
// Apprentissage

nb_classe = 4;
nb_image =30;
nb_ima = nb_classe*nb_image;
nb_ima_train=nb_ima/6;
ima_label=0;
max_ligne=4062;
for i_train=1:nb_ima
    if(((i_train>=1)&&(i_train<=5))||((i_train>=31)&&(i_train<=35))||((i_train>=61)&&(i_train<=65))||((i_train>=91)&&(i_train<=95))) then
        ima_label=ima_label+1;
        num_classe(ima_label)=floor((i_train-1)/nb_image)+1;
        if(i_train/10 <1)
            fichier_train = strcat(['Base\00000',msprintf('%d',i_train),'.png']);
        else
            if(i_train/100<1)
                fichier_train = strcat(['Base\0000',msprintf('%d',i_train),'.png']);
            else
                fichier_train = strcat(['Base\000',msprintf('%d',i_train),'.png']);
            end
        end
        Img=imread(fichier_train);
        Ima_train=rgb2hsv(Img);
        fobj=imdetect_SIFT(Ima_train);
        des=imextract_DescriptorSIFT(Ima_train,fobj);
        apprentissage_temp(:,:,ima_label)=[des;zeros(max_ligne-length(des(:,1)),128)];
        
    end
end


*/
/*

// Classification

exec classifieur_sift.sce

ima_label=0;
reussite=0;
for i_train=1:nb_ima
    if(((i_train>=6)&&(i_train<=30))||((i_train>=36)&&(i_train<=60))||((i_train>=66)&&(i_train<=90))||((i_train>=96)&&(i_train<=120)))
        ima_label=ima_label+1;
        num_classe_test(ima_label)=floor((i_train-1)/nb_image)+1;
        if(i_train/10 <1)
            fichier_train = strcat(['Base\00000',msprintf('%d',i_train),'.png']);
        else
            if(i_train/100<1)
                fichier_train = strcat(['Base\0000',msprintf('%d',i_train),'.png']);
            else
                fichier_train = strcat(['Base\000',msprintf('%d',i_train),'.png']);
            end
        end
        Img=imread(fichier_train);
        Ima_train=rgb2hsv(Img);
        //Ima_train=imread(fichier_train);
        classe_estimee=classifieur_sift(apprentissage_temp,Ima_train);
        
        if(classe_estimee==num_classe_test(ima_label))
            reussite=reussite+1;
        end
        
    end
end

taux=(reussite*100)/100;

*/

