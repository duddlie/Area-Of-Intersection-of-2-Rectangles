%Duddlie Yu a1802188
%calculate area of intersection of two rectangles, as well as the total area of rectangles just for fun

%call rectareacalc function
rect3Area=rectareacalc(rect3Lowleft, rect3Topright, rect3Topleft, rect3Lowright);
rect1Area=rectareacalc(rect1Lowleft, rect1Topright, rect1Topleft, rect1Lowright);
rect2Area=rectareacalc(rect2Lowleft, rect2Topright, rect2Topleft, rect2Lowright);

totalrectArea=rect1Area+rect2Area-rect3Area;

fprintf("The area of intersection between your two rectangles is %d, also, the total area of your overlapping rectangles is %d!\n" rect3Area,totalrectArea);

fprintf("The %d" rect3Area)