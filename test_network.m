function test_network(net, image)

I = imread(image);
G = imresize(I, [224, 224]);

[Label, Prob] = classify(net,G);

figure;
imshow(G);
title({char(Label), num2str(max(Prob),2)});
end