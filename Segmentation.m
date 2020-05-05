%%
rgb_image = imread('AVM_image.png');
%rgb_image = imread('in.jpg');
hsv_image = rgb2hsv(rgb_image);

H = hsv_image(:,:,1);
S = hsv_image(:,:,2);
V = hsv_image(:,:,3);

H_thr_l = 0.1; H_thr_h = 0.2;
%H_thr_l = 0.6; H_thr_h = 0.7; %blue
S_thr_l = 0.22; S_thr_h = 1;
V_thr_l = 0.22; V_thr_h = 1;

H_Thr = (H_thr_l < H & H < H_thr_h);
S_Thr = (S_thr_l < S & S < S_thr_h);
V_Thr = (V_thr_l < V & V < V_thr_h);

binary_image = H_Thr & S_Thr & V_Thr;

figure(); imshow(rgb_image);
figure(); imshow(binary_image);
