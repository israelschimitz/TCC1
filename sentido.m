% Função do sentido do estímulo visual
function [] = sentido(lado)

imcinza = imread('C:\Israel\Engenharia_Elétrica\Disciplinas\TCC1\Coletas\images estímulo\Apresentação1\slide1.jpg');
imcruz = imread('C:\Israel\Engenharia_Elétrica\Disciplinas\TCC1\Coletas\images estímulo\Apresentação1\slide2.jpg');

imdireita1 = imread('C:\Israel\Engenharia_Elétrica\Disciplinas\TCC1\Coletas\images estímulo\Apresentação1\slide3.jpg');
imdireita2 = imread('C:\Israel\Engenharia_Elétrica\Disciplinas\TCC1\Coletas\images estímulo\Apresentação1\slide4.jpg');
imdireita3 = imread('C:\Israel\Engenharia_Elétrica\Disciplinas\TCC1\Coletas\images estímulo\Apresentação1\slide5.jpg');
imdireita4 = imread('C:\Israel\Engenharia_Elétrica\Disciplinas\TCC1\Coletas\images estímulo\Apresentação1\slide6.jpg');
imdireita5 = imread('C:\Israel\Engenharia_Elétrica\Disciplinas\TCC1\Coletas\images estímulo\Apresentação1\slide7.jpg');
imdireita6 = imread('C:\Israel\Engenharia_Elétrica\Disciplinas\TCC1\Coletas\images estímulo\Apresentação1\slide8.jpg');
imdireita7 = imread('C:\Israel\Engenharia_Elétrica\Disciplinas\TCC1\Coletas\images estímulo\Apresentação1\slide9.jpg');
imdireita8 = imread('C:\Israel\Engenharia_Elétrica\Disciplinas\TCC1\Coletas\images estímulo\Apresentação1\slide10.jpg');
imdireita9 = imread('C:\Israel\Engenharia_Elétrica\Disciplinas\TCC1\Coletas\images estímulo\Apresentação1\slide11.jpg');
imdireita10 = imread('C:\Israel\Engenharia_Elétrica\Disciplinas\TCC1\Coletas\images estímulo\Apresentação1\slide12.jpg');

imesquerda1 = imread('C:\Israel\Engenharia_Elétrica\Disciplinas\TCC1\Coletas\images estímulo\Apresentação1\slide14.jpg');
imesquerda2 = imread('C:\Israel\Engenharia_Elétrica\Disciplinas\TCC1\Coletas\images estímulo\Apresentação1\slide15.jpg');
imesquerda3 = imread('C:\Israel\Engenharia_Elétrica\Disciplinas\TCC1\Coletas\images estímulo\Apresentação1\slide16.jpg');
imesquerda4 = imread('C:\Israel\Engenharia_Elétrica\Disciplinas\TCC1\Coletas\images estímulo\Apresentação1\slide17.jpg');
imesquerda5 = imread('C:\Israel\Engenharia_Elétrica\Disciplinas\TCC1\Coletas\images estímulo\Apresentação1\slide18.jpg');
imesquerda6 = imread('C:\Israel\Engenharia_Elétrica\Disciplinas\TCC1\Coletas\images estímulo\Apresentação1\slide19.jpg');
imesquerda7 = imread('C:\Israel\Engenharia_Elétrica\Disciplinas\TCC1\Coletas\images estímulo\Apresentação1\slide20.jpg');
imesquerda8 = imread('C:\Israel\Engenharia_Elétrica\Disciplinas\TCC1\Coletas\images estímulo\Apresentação1\slide21.jpg');
imesquerda9 = imread('C:\Israel\Engenharia_Elétrica\Disciplinas\TCC1\Coletas\images estímulo\Apresentação1\slide22.jpg');
imesquerda10 = imread('C:\Israel\Engenharia_Elétrica\Disciplinas\TCC1\Coletas\images estímulo\Apresentação1\slide23.jpg');    

if (lado == 'dir')
    tic
    imshow(imcinza);
    pause (1.976);    
    
    beep;
    imshow(imcruz);
    pause (0.96);
      
    imshow(imdireita1);
    pause (0.5);
    imshow(imdireita2);
    pause (0.5);
    imshow(imdireita3);
    pause (0.5);
    imshow(imdireita4);
    pause (0.5);
    imshow(imdireita5);
    pause (0.5);
    imshow(imdireita6);
    pause (0.5);
    imshow(imdireita7);
    pause (0.5);
    imshow(imdireita8);
    pause (0.5);
    imshow(imdireita9);
    pause (0.5);
    imshow(imdireita10);
    pause (1.02);
    tdir = toc
    
elseif (lado == 'esq')
    tic
    imshow(imcinza);
    pause (1.976);    

    beep;
    imshow(imcruz);
    pause (0.96);

    imshow(imesquerda1);
    pause (0.5);
    imshow(imesquerda2);
    pause (0.5);
    imshow(imesquerda3);
    pause (0.5);
    imshow(imesquerda4);
    pause (0.5);
    imshow(imesquerda5);
    pause (0.5);
    imshow(imesquerda6);
    pause (0.5);
    imshow(imesquerda7);
    pause (0.5);
    imshow(imesquerda8);
    pause (0.5);
    imshow(imesquerda9);
    pause (0.5);
    imshow(imesquerda10);
    pause (1.02);
    tesq = toc
else
    close;
    
end
  
