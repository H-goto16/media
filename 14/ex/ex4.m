I = imread('circuit.tif');
figure, imshow(I)

BW1 = edge(I, "prewitt");  
BW2 = edge(I, "log");  
BW3 = edge(I, "canny");  

multi = cat(2,BW1,BW2,BW3);
figure, montage(multi)
