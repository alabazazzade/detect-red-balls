clc
clear all
close all
n =0;
rgbImage = imread('C:\Users\Mehrdad1\Desktop\term7\img-1718.png');
r=rgbImage(:,:,1);
g=rgbImage(:,:,2);
b=rgbImage(:,:,3);
for i=1:size(r,1)
    for j=1:size(r,2)
        % get pixel value
        pixel=r(i,j);

          %% check pixel value and assign new value
          if (pixel>200 && b(i,j)<100 && g(i,j)<80)
             n=n+1;
              if(n==50)
                m=i;
                z=j;  
              end
              if(n==600)
                 s=i; 
                 p=j;
              end
          end
    end
end 
figure() 
                   imshow(rgbImage); hold on;
                   plot(z,m, 'w+', 'markersize', 15);
                   hold on;
                   plot(p,s, 'w+', 'markersize', 15);
