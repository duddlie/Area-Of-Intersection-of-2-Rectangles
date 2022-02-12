function [Area] = rectareacalc(Lowleft, Topright, Topleft, Lowright)
%This function calculates the area of a rectangle defined by its four
%corners

length = abs(Lowleft(1)-Lowright(1)); %would yield same result as topleft/topright
height = abs(Topleft(2)-Lowleft(2)) ;

Area = length*height;
end

