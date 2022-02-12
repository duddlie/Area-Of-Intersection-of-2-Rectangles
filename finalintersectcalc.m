%Duddlie Yu a1802188
%given the corners of 2 rectangles, find the coordinates of intersection

%initialise vectors (prewritten for this part)
rect1Lowleft=[1 2];
rect1Topright=[5 4];
rect1Topleft=[1 4];
rect1Lowright=[5 2];

rect2Lowleft=[-2 -1];
rect2Topright=[2 3];
rect2Topleft=[-2 3];
rect2Lowright=[2 -1];

rect3Left=[];%rect3 is rectangle created by overlap of rect1 and rect2
rect3Right=[];
rect3Top=[];
rect3Low=[];

rect3Lowleft=[0 0]; 
rect3Topright=[0 0];
rect3Topleft=[0 0];
rect3Lowright=[0 0];


%vectors of rect3 will have some shared coord values, eg: Lowleft and
%Topleft have same x coord. This is due to parallel opposite sides of
%rectangles. 

%Shared coord values ie left, right, top, low are worked out first then
%used to build rect 3 corners

%x coord of the most rightward left corner will be intersect, and vice
%versa, same logic applies to top and bottom
rect3Left=max(rect1Lowleft(1), rect2Lowleft(1)); %any left coord(ie top or low) is OK to use, they have the same x coord
rect3Right=min(rect1Lowright(1), rect2Lowright(1));%any right coord is ok to use, same x coord
rect3Top=min(rect1Topleft(2), rect2Topleft(2));%any top coord is ok to use, same y coord
rect3Low=max(rect1Lowleft(2), rect2Lowleft(2));%any low coord is ok to use, same y coord


%build rect3 corner vectors
if rect3Left < rect3Right && rect3Low < rect3Top %check for intersection
    rect3Lowleft=[rect3Left rect3Low]; 
    rect3Topright=[rect3Right rect3Top];
    rect3Topleft=[rect3Left rect3Top];
    rect3Lowright=[rect3Right rect3Low];
    
    %disp results
    disp(rect3Lowleft);
    disp(rect3Topright);
    disp(rect3Topleft);
    disp(rect3Lowright);
else
    disp("Your rectangles do not intersect, try again"); 
end
    






