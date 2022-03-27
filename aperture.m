% Angelina Yang
% Optics 211
% 04/22/2021
% Final Project, Apertures
% Plotting the apertures and fft

%SQUARE APERTURE
% Define Aperture field
apl=5000; % Size of the aperture field 
ap=zeros(apl); % Define actual aperture plane

% Define square aperture
sql=500; % Define square length 

for ijk=round(1+apl/2-sql/2):round(1+apl/2+sql/2)
    for lmn=round(1+apl/2-sql/2):round(1+apl/2+sql/2)
        ap(ijk,lmn)=1;
    end
end

% Plot the aperture field
figure(1)
hold on
imagesc(ap) % Plot image of the aperture field
colormap gray % Set the color of the aperture field plot
axis equal % Set the display scale of the axes
axis([0 apl 0 apl]) % Set axes limits to size of aperture field
title('square aperture graph')
hold off

% Plot the far-field interference pattern
Y = fft2(ap).^0.5;
figure(2)
hold on
imagesc(abs(fftshift(Y)))
axis equal % Set the display scale of the axes
axis([0 apl 0 apl]) % Set axes limits to size of aperture field
% xlim([2375 2625])
% ylim([2375 2625])
title('square aperture far-field interference')
colormap gray
hold off

% Plot the center-field interference pattern
Y = fft2(ap).^0.5;
figure(3)
hold on
imagesc(abs(fftshift(Y)))
axis equal % Set the display scale of the axes
axis([0 apl 0 apl]) % Set axes limits to size of aperture field
xlim([2375 2625])
ylim([2375 2625])
title('square aperture center-field interference')
colormap gray
hold off

% Plot intensity of graph along y axis
H = abs(fftshift(fft2(ap).^2));
T = H(2375:2624,2500);
figure(4)
hold on
plot(T);
axis square
title('square aperture y side')
hold off

% Plot intensity of graph along x axis
F = rot90(H(2500,2375:2624),3);
figure(5)
hold on
plot(F);
axis square
title('square aperture x side')
hold off


%SINGLE SLIT APERTURE
% Define Aperture field
apl=5000; % Size of the aperture field 
ap=zeros(apl); % Define actual aperture plane

% Define single slit aperture
sl=2500; % Define slit length 
sw=200;

for ijk=round(1+apl/2-sl/2):round(1+apl/2+sl/2)
    for lmn=round(1+apl/2-sw/2):round(1+apl/2+sw/2)
                   ap(ijk,lmn)=1;
    end
end

% Plot the aperture field
figure(10)
hold on
% imagesc(ap) % Plot image of the aperture field
colormap gray % Set the color of the aperture field plot
axis equal % Set the display scale of the axes
axis([0 apl 0 apl]) % Set axes limits to size of aperture field
title('single slit aperture graph')
hold off

% Plot the far-field interference pattern
Y = fft2(ap).^0.5;
figure(11)
hold on
imagesc(abs(fftshift(Y)))
axis equal % Set the display scale of the axes
axis([0 apl 0 apl]) % Set axes limits to size of aperture field
% xlim([2375 2625])
% ylim([2375 2625])
title('square aperture far-field interference')
colormap gray
hold off

% Plot the center-field interference pattern
Y = fft2(ap).^0.5;
figure(12)
hold on
imagesc(abs(fftshift(Y)))
axis equal % Set the display scale of the axes
axis([0 apl 0 apl]) % Set axes limits to size of aperture field
xlim([2375 2625])
ylim([2375 2625])
title('square aperture center-field interference')
colormap gray
hold off

% Plot intensity of graph along y axis
H = abs(fftshift(fft2(ap).^2));
T = H(2375:2624,2500);
figure(13)
hold on
plot(T);
axis square
title('square aperture y side')
hold off

% Plot intensity of graph along x axis
F = rot90(H(2500,2375:2624),3);
figure(14)
hold on
plot(F);
axis square
title('square aperture x side')
hold off


%DOUBLE SLIT APERTURE
% Define Aperture field
apl=5000; % Size of the aperture field 
ap=zeros(apl); % Define actual aperture plane

% Define double slit aperture
sl=2500; % Define slit length 
sw=200;

for ijk=round(1+apl/2-sl/2):round(1+apl/2+sl/2)
    for lmn=round(1+apl/2-sw/2-250):round(1+apl/2+sw/2-250)
                   ap(ijk,lmn)=1;
    end
end
for ijk=round(1+apl/2-sl/2):round(1+apl/2+sl/2)
    for lmn=round(1+apl/2-sw/2+250):round(1+apl/2+sw/2+250) 
                   ap(ijk,lmn)=1;
    end
end

% Plot the aperture field
figure(20)
hold on
imagesc(ap) % Plot image of the aperture field
colormap gray % Set the color of the aperture field plot
axis equal % Set the display scale of the axes
axis([0 apl 0 apl]) % Set axes limits to size of aperture field
title('double slit aperture graph')
hold off

% Plot the far-field interference pattern
Y = fft2(ap).^0.5;
figure(21)
hold on
imagesc(abs(fftshift(Y)))
axis equal % Set the display scale of the axes
axis([0 apl 0 apl]) % Set axes limits to size of aperture field
% xlim([2375 2625])
% ylim([2375 2625])
title('square aperture far-field interference')
colormap gray
hold off

% Plot the center-field interference pattern
Y = fft2(ap).^0.5;
figure(22)
hold on
imagesc(abs(fftshift(Y)))
axis equal % Set the display scale of the axes
axis([0 apl 0 apl]) % Set axes limits to size of aperture field
xlim([2375 2625])
ylim([2375 2625])
title('square aperture center-field interference')
colormap gray
hold off

% Plot intensity of graph along y axis
H = abs(fftshift(fft2(ap).^2));
T = H(2375:2624,2500);
figure(23)
hold on
plot(T);
axis square
title('square aperture y side')
hold off

% Plot intensity of graph along x axis
F = rot90(H(2500,2375:2624),3);
figure(24)
hold on
plot(F);
axis square
title('square aperture x side')
hold off

%CIRCLE APERTURE
% Define Aperture field
apl=5000; % Size of the aperture field 
ap=zeros(apl); % Define actual aperture plane

% Define circle aperture
r=275; % Define slit radius 
sr=r.^2; % radius squared
center = round(1+apl/2); % center

for ijk=round(1+apl/2-r):round(1+apl/2+r)
    for lmn=round(1+apl/2-r):round(1+apl/2+r) 
        temp = (ijk-center).^2+(lmn-center).^2;
        if (temp<=sr)
                   ap(ijk,lmn)=1;
        end
    end
end

% Plot the aperture field
figure(30)
hold on
% imagesc(ap) % Plot image of the aperture field
colormap gray % Set the color of the aperture field plot
axis equal % Set the display scale of the axes
axis([0 apl 0 apl]) % Set axes limits to size of aperture field
title('circle aperture graph')
hold off

% Plot the far-field interference pattern
Y = fft2(ap).^0.5;
figure(31)
hold on
imagesc(abs(fftshift(Y)))
axis equal % Set the display scale of the axes
axis([0 apl 0 apl]) % Set axes limits to size of aperture field
% xlim([2375 2625])
% ylim([2375 2625])
title('square aperture far-field interference')
colormap gray
hold off

% Plot the center-field interference pattern
Y = fft2(ap).^0.5;
figure(32)
hold on
imagesc(abs(fftshift(Y)))
axis equal % Set the display scale of the axes
axis([0 apl 0 apl]) % Set axes limits to size of aperture field
xlim([2375 2625])
ylim([2375 2625])
title('square aperture center-field interference')
colormap gray
hold off

% Plot intensity of graph along y axis
H = abs(fftshift(fft2(ap).^2));
T = H(2375:2624,2500);
figure(33)
hold on
plot(T);
axis square
title('square aperture y side')
hold off

% Plot intensity of graph along x axis
F = rot90(H(2500,2375:2624),3);
figure(34)
hold on
plot(F);
axis square
title('square aperture x side')
hold off

%EQUILATERAL APERTURE
% Define Aperture field
apl=5000; % Size of the aperture field 
ap=zeros(apl); % Define actual aperture plane

% % Define equilateral aperture
% tl=900; % Define equilateral length 
% th=sqrt(3).*(900./2); % Define equilateral height
% center=round(1+apl/2); % center
% ct=center-th./2; % Top of triangle
% 
% for ijk=round(1+apl/2-th/2):round(1+apl/2+th/2)
%     for lmn=round(1+apl/2-tl/2):round(1+apl/2+tl/2)
%         temp = (ijk-ct).^2+(center-lmn).^2;
%         ts=((2.*(lmn-center)).^2);
%         test2=sqrt(3).*(lmn-center);
%         if ((ct-ijk)<=test2 && ts<=tl.^2)
%                    ap(ijk,lmn)=1;
%         end
%     end
%     for lmn=round(1+apl/2-tl/2):round(1+apl/2+tl/2)
%         temp = (ijk-ct).^2+(center-lmn).^2;
%         ts=((2.*(lmn-center)).^2);
%         test2=sqrt(3).*(center-lmn);
%         if ((ct-ijk)<=test2 && ts<=tl.^2)
%                    ap(ijk,lmn)=1;
%         end
%     end       
% end

tri=900;
hei=900*sqrt(3)/2;
cen=round(1+apl/2);
ter=cen-(hei/2);
for opq=round(1+apl/2-hei/2):round(1+apl/2+hei/2)
    for rst=round(1+apl/2-tri/2):round(1+apl/2+tri/2)
        perim=((opq-ter).^2 + (cen-rst).^2);
        leng=(2.*(rst-cen)).^2;
        if rst<cen
            perim=sqrt(3).*(rst-cen);
        else
            perim=sqrt(3).*(cen-rst);
        end
        if (ter-opq)<=perim && leng<=tri^2
            ap(opq,rst)=1;
        end
    end
end

% Plot the aperture field
figure(40)
hold on
imagesc(ap) % Plot image of the aperture field
colormap gray % Set the color of the aperture field plot
axis equal % Set the display scale of the axes
axis([0 apl 0 apl]) % Set axes limits to size of aperture field
title('equilateral aperture graph')
hold off


% Plot the far-field interference pattern
Y = fft2(ap).^0.5;
figure(41)
hold on
imagesc(abs(fftshift(Y)))
axis equal % Set the display scale of the axes
axis([0 apl 0 apl]) % Set axes limits to size of aperture field
% xlim([2375 2625])
% ylim([2375 2625])
title('square aperture far-field interference')
colormap gray
hold off

% Plot the center-field interference pattern
Y = fft2(ap).^0.5;
figure(42)
hold on
imagesc(abs(fftshift(Y)))
axis equal % Set the display scale of the axes
axis([0 apl 0 apl]) % Set axes limits to size of aperture field
xlim([2375 2625])
ylim([2375 2625])
title('square aperture center-field interference')
colormap gray
hold off

% Plot intensity of graph along y axis
H = abs(fftshift(fft2(ap).^2));
T = H(2375:2624,2500);
figure(43)
hold on
plot(T);
axis square
title('square aperture y side')
hold off

% Plot intensity of graph along x axis
F = rot90(H(2500,2375:2624),3);
figure(44)
hold on
plot(F);
axis square
title('square aperture x side')
hold off

xy = rot90(linspace(0,5000,5000),3);
for ijk=1:5000
    lmn=abs(round(ijk.*(tand(30))+(2500./tand(60))));
    xy(ijk)=H(ijk,lmn);
end
% lmn
figure(45)
hold on
plot(xy);
axis square
xlim([0 5000])
title('diagonal intensity test')
hold off

%SCREEN APERTURE
% Define Aperture field
apl=5000; % Size of the aperture field 
ap=ones(apl); % Define actual aperture plane

% Define screen aperture

for ijk=50:250:5000
    for i=0:150
        for lmn=1:5000
            ap(ijk+i,lmn)=0;
            ap(lmn,ijk+i)=0;
        end
    end
end

% Plot the aperture field
figure(50)
hold on
imagesc(ap) % Plot image of the aperture field
colormap gray % Set the color of the aperture field plot
axis equal % Set the display scale of the axes
axis([0 apl 0 apl]) % Set axes limits to size of aperture field
title('screen aperture graph')
hold off

% Plot the far-field interference pattern
Y = fft2(ap).^0.5;
figure(51)
hold on
imagesc(abs(fftshift(Y)))
axis equal % Set the display scale of the axes
axis([0 apl 0 apl]) % Set axes limits to size of aperture field
% xlim([2375 2625])
% ylim([2375 2625])
title('screen aperture far-field interference')
colormap gray
hold off

% Plot the center-field interference pattern
Y = fft2(ap).^0.5;
figure(52)
hold on
imagesc(abs(fftshift(Y)))
axis equal % Set the display scale of the axes
axis([0 apl 0 apl]) % Set axes limits to size of aperture field
xlim([2375 2625])
ylim([2375 2625])
title('screen aperture center-field interference')
colormap gray
hold off

% Plot intensity of graph along y axis
H = abs(fftshift(fft2(ap).^2));
T = H(2375:2624,2500);
x = linspace(0,250,250);
figure(53)
hold on
plot(T);
axis square
title('screen aperture y side')
hold off

% Plot intensity of graph along x axis
F = rot90(H(2500,2375:2624),3);
figure(54)
hold on
plot(T);
axis square
title('screen aperture x side')
hold off