%Duddlie Yu 
%This program calculates the area of overlap between two rectangles upon
%being provided the lower left and top right corner coordinates of each one

disp("This program reads in the coordinates of opposite corners (lower left and top right) of two intersecting rectangles,");
disp("then outputs the area of their intersection");

programstatus=1;%while loop to allow user to use program again

while programstatus==1
%initialise vectors to be read in
rect=[];
rect1Lowleft=[];
rect1Topright=[];
rect2Lowleft=[];
rect2Topright=[];

%loop to read in x and y coordinates
for numrectval=1:2 %2 rectangles
     
    if numrectval==1 %asks user for "lower left" instead of "corner 1"
            numrect='first';
        elseif numrectval==2
           numrect='second';
     end
     
    for cornerval=1:2 %2 corners to ask for on each rectangle
        if cornerval==1 %asks user for "lower left" instead of "corner 1"
            corner='lower left';
        elseif cornerval==2
            corner='top right';
        end
        
        for coordval=1:2 %asks user for "x" coord instead of "coord 1"
            if coordval==1
                coord='x';
            elseif coordval==2
                    coord='y';
            end
            
            fprintf("Enter the %s-coordinate for the %s rectangle's %s corner", coord,numrect,corner);
            rect=[rect input(":")]; %stores inputs in rect
             
            end
      end
end

%check to make sure user has entered something for each input
if length(rect)==8
    rect1Lowleft=rect(1:2); %split rect vector into vectors representing the coordinates of each corner
    rect1Topright=rect(3:4);
    rect2Lowleft=rect(5:6);
    rect2Topright=rect(7:8);
    
     %check coords are valid, ie Topright corner has greater x and y than Lowleft
    if rect1Topright(1)>rect1Lowleft(1) && rect1Topright(2)>rect1Lowleft(2) && rect2Topright(1)>rect2Lowleft(1) && rect2Topright(2)>rect2Lowleft(2)  
        rect1Lowleft=rect(1:2); 
        rect1Topright=rect(3:4);
        rect2Lowleft=rect(5:6);
        rect2Topright=rect(7:8);
    else
        disp("Your inputs are invalid (Make sure your top right corners are positioned above and to the right of the lower left corners)");
        return
    end
else 
    disp("You must enter a number upon being prompted, do not leave any answers blank");
    return
end

%find coordinates of other two corners on each rectangle

%opposite sides of a rectangle are parallel, top corners share y coord and left corners share x coord
rect1Topleft=[rect1Lowleft(1) rect1Topright(2)];

%low corners share y coord and and right corners share x coord
rect1Lowright=[rect1Topright(1) rect1Lowleft(2)];

rect2Topleft=[rect2Lowleft(1) rect2Topright(2)];
rect2Lowright=[rect2Topright(1) rect2Lowleft(2)];

%initialise vectors that represent rect3
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
  
   %calculate area of intersection of two rectangles, as well as the total area of rectangles just for fun 
   %call rectareacalc function
    rect3Area=rectareacalc(rect3Lowleft, rect3Topright, rect3Topleft, rect3Lowright);
    rect1Area=rectareacalc(rect1Lowleft, rect1Topright, rect1Topleft, rect1Lowright);
    rect2Area=rectareacalc(rect2Lowleft, rect2Topright, rect2Topleft, rect2Lowright);

    totalrectArea=rect1Area+rect2Area-rect3Area;
    
    %print result
    fprintf("The area of intersection between your two rectangles is %d units^2, also, the total area of your overlapping rectangles is %d!\n", rect3Area,totalrectArea);

else
    disp("Your rectangles do not intersect, try again"); 
    return
end

%switch statenment to show original rectangles
n=input("Would you like to see the area of your original rectangles? \n(Enter 1 to display rectangle 1, 2 for rectangle 2, 3 for both, any other number to skip this step):");
switch n
    case 1
        fprintf("The area of rectangle 1 is %d units^2\n", rect1Area);
    case 2
        fprintf("The area of rectangle 2 is %d units^2\n", rect2Area);
    case 3
        fprintf("The area of rectangle 1 is %d units^2, the area of rectangle 2 is %d units^2\n", rect1Area, rect2Area);
    otherwise %otherwise skips to next part
end

   
%connected to while loop at the start
programstatus=input('Would you like to run the program again? (Enter 1 to run again, any other number to exit):');
if programstatus~=1
    break
end

end





