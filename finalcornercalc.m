%Duddlie Yu a1802188
%given the lower left and top right coordinates of a rectangle, calculate
%the coordinates of the other two corners

%initialise vectors (prewritten for this part)
rect1Lowleft=[-3 5];
rect1Topright=[0 10];

%opposite sides of a rectangle are parallel, top corners share y coord and left corners share x coord
rect1Topleft=[rect1Lowleft(1) rect1Topright(2)];

%low corners share y coord and and right corners share x coord
rect1Lowright=[rect1Topright(1) rect1Lowleft(2)];

disp(rect1Topleft);
disp(rect1Lowright);