
stepSize = 1;

img = im2bw(imread('3.bmp'));
[rows, columns, numberOfColorChannels] = size(img);
hold on;
lineSpacing = 5; % Whatever you want.
for row = 1 : stepSize : rows
    line([1, columns], [row, row], 'Color', 'r', 'LineWidth', 1);
end
for col = 1 : stepSize : columns
    line([col, col], [1, rows], 'Color', 'r', 'LineWidth', 1);
end
