/*
clear;
clc;
xdel(winsid());
*/


// Question 1
/*I=imread('Base\000002.png');
G=rgb2gray(I);
figure; imshow(G);
*/

// Question 2

/*I=imread('Base\000002.png');
G=rgb2gray(I);
B =im2bw(G,0.5);
B2=imcomplement(B);*/

/*for i= 1:length(B(:,1))
    for j=1:length(B(1,:))
        if B(i,j)==-1 then
            B(i,j)=0;
        else B(i,j)=-1
        end
    end
end*/

//figure; imshow(B2);

// Question 3

/*I=imread('Base\000002.png');
G=rgb2gray(I);
seuil = imgraythresh(G);
B =im2bw(G,seuil);
B2=imcomplement(B);
figure; imshow(B2)*/


// Question 4
/*
I=imread('Base\000002.png');
G=rgb2gray(I);
seuil = imgraythresh(G);
B =im2bw(G,seuil);
B2=imcomplement(B);
e=imcreatese('cross',3,3);
Ir=imerode(B2,e);
Id=imdilate(Ir,e);
figure; imshow(Id);

*/

// Question 5
/*
clear;
clc;

I=imread('Base\000002.png');
G=rgb2gray(I);
seuil = imgraythresh(G);
B =im2bw(G,seuil);
B2=imcomplement(B);
e=imcreatese('cross',3,3);
Ir=imerode(B2,e);
Id=imdilate(Ir,e);
[Ii,r]=imlabel(Id);

figure; imshow(Ii,jetcolormap(r));

*/

// Question 6
/*
I=imread('Base\000002.png');
G=rgb2gray(I);
seuil = imgraythresh(G);
B =im2bw(G,seuil);
B2=imcomplement(B);
e=imcreatese('cross',3,3);
Ir=imerode(B2,e);
Id=imdilate(Ir,e);
[Ii,r]=imlabel(Id);
[S,Bb,Cg]=imblobprop(Ii);
disp(S,Bb,Cg);
*/

// Question 7

/*
I=imread('Base\000002.png');
G=rgb2gray(I);
seuil = imgraythresh(G);
B =im2bw(G,seuil);
B2=imcomplement(B);
e=imcreatese('cross',3,3);
Ir=imerode(B2,e);
Id=imdilate(Ir,e);
[Ii,r]=imlabel(Id);
[S,Bb,Cg]=imblobprop(Ii);
disp(S,Bb,Cg);

*/

// Question 8
/*
clear;

I=imread('Base\000002.png');
G=rgb2gray(I);
seuil = imgraythresh(G);
B =im2bw(G,seuil);
B2=imcomplement(B);
e=imcreatese('cross',3,3);
Ir=imerode(B2,e);
Id=imdilate(Ir,e);
E=edge(Id,'prewitt');
E2=imcomplement(E);
figure; imshow(E2);

*/


// Question 9
/*

I=imread('Base\000061.png');
G=rgb2gray(I);
seuil = imgraythresh(G);
B =im2bw(G,seuil);
B2=imcomplement(B);
e=imcreatese('cross',3,3);
Ir=imerode(B2,e);
Id=imdilate(Ir,e);
E=edge(Id,'prewitt');
E2=imcomplement(E);
figure; imshow(E2);
Per = sum(E==%T);
disp(Per);

*/
//Question 10
/*

clear;

I=imread('Base\000061.png');
G=rgb2gray(I);
seuil = imgraythresh(G);
B =im2bw(G,seuil);
B2=imcomplement(B);
e=imcreatese('cross',3,3);
Ir=imerode(B2,e);
Id=imdilate(Ir,e);
[Ii,r]=imlabel(Id);
[Si,Bbi,Cgi]= imblobprop(Ii);

[Maximum_aire,indice_max] = max(Si);

S=Si(indice_max);
Bb=Bbi(:,indice_max);
Cg=Cgi(:,indice_max);
figure; imshow(Ii);
*/

// Question 12
/*
clear;

exec AttributsForme.sce; 
 
I=imread('Base\000061.png');
G=rgb2gray(I);
[aire,perimetre,longueur,largeur] = AttributsForme(G);

*/

// CLASSIFICATION

// Question 13
/* 

// Apprentissage

clear;
exec AttributsForme.sce
nb_classe = 4;
nb_image =30;
nb_ima = nb_classe*nb_image;
nb_ima_train=nb_ima/6;
ima_label=0;
for i_train=1:nb_ima
    if(((i_train>=1)&&(i_train<=5))||((i_train>=31)&&(i_train<=35))||((i_train>=61)&&(i_train<=65))||((i_train>=91)&&(i_train<=95))) then
        ima_label=ima_label+1;
        // Enregistrement du numéro de la classe dans un tableau
        num_classe(ima_label)=floor((i_train-1)/nb_image)+1;
        // Concaténation des chaînes de caractères
        // pour constituer le chemin d'accès au fichier image
        if(i_train/10 <1)
            fichier_train = strcat(['Base\00000',msprintf('%d',i_train),'.png']);
        else
            if(i_train/100<1)
                fichier_train = strcat(['Base\0000',msprintf('%d',i_train),'.png']);
            else
                fichier_train = strcat(['Base\000',msprintf('%d',i_train),'.png']);
            end
        end
        disp([fichier_train 'Classe' msprintf('%d',num_classe(ima_label))]);
        // ouverture de l'image
        Ima_train=imread(fichier_train);
        
        Ima_gray=rgb2gray(Ima_train);
        [aire,perimetre,longueur,largeur]=AttributsForme(Ima_gray);
        Attributs(ima_label,1)= aire;
        Attributs(ima_label,2)= perimetre;
        Attributs(ima_label,3)= longueur;
        Attributs(ima_label,4)= largeur;
    end
end


*/

// Question 15

/*
for i=1:4
    moyenne(i)=mean(Attributs(:,i));
    ecart_type(i)=stdev(Attributs(:,i));
    Attributs_normalises(:,i)=(Attributs(:,i)-moyenne(i))./ecart_type(i);
end

*/


// Question 14

/*
xdel(winsid());

tabi=[1 2;
      1 3;
      1 4;
      2 3;
      2 4;
      3 4];


for i=1:6
    subplot(2,3,i);
    
    p1=scatter(Attributs((1:5),tabi(i,1)),Attributs((1:5),tabi(i,2)));
    p2=scatter(Attributs((6:10),tabi(i,1)),Attributs((6:10),tabi(i,2)));
    p3=scatter(Attributs((11:15),tabi(i,1)),Attributs((11:15),tabi(i,2)));
    p4=scatter(Attributs((16:20),tabi(i,1)),Attributs((16:20),tabi(i,2)));
    
    p1.mark_background=color("red");
    p1.mark_foreground=color("red");
    p2.mark_background=color("blue");
    p2.mark_foreground=color("blue");
    p3.mark_background=color("green");
    p3.mark_foreground=color("green");
    p4.mark_background=color("purple");
    p4.mark_foreground=color("purple");

end

*/

// Question 16

/*

// Classification

exec classifieur_barycentre.sce
exec AttributsForme.sce
exec classifieur.sce

nb_classe = 4;
nb_image =30;
nb_ima = nb_classe*nb_image;
nb_ima_train=nb_ima/6;
reussite=0;
ima_label=0;
for i_test=1:nb_ima
    if(((i_test>=6)&&(i_test<=30))||((i_test>=36)&&(i_test<=60))||((i_test>=66)&&(i_test<=90))||((i_test>=96)&&(i_test<=120))) then
        ima_label=ima_label+1;
        num_classe_test(ima_label)=floor((i_test-1)/nb_image)+1;
        if(i_test/10 <1)
            fichier_test = strcat(['Base\00000',msprintf('%d',i_test),'.png']);
        else
            if(i_test/100<1)
                fichier_test = strcat(['Base\0000',msprintf('%d',i_test),'.png']);
            else
                fichier_test = strcat(['Base\000',msprintf('%d',i_test),'.png']);
            end
        end
        Ima_test=imread(fichier_test);
        Ima_gray=rgb2gray(Ima_test);
        classe_estimee=classifieur_barycentre(Attributs_normalises,Ima_gray,moyenne,ecart_type,num_classe);
        if(classe_estimee==num_classe_test(ima_label))
            reussite=reussite+1;
        end
    end
end
taux=(reussite*100)/100;

*/





