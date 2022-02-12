%Duddlie Yu a1802188
%read in lowerleft and topright coordinates of 2 rectangles, store coordinates of rectangles in vectors

%initialise vectors
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

%check to make sure user has enter something for each question
if length(rect)==8
    rect1Lowleft=rect(1:2); %split rect vector into vectors representing the coordinates of each corner in (x,y)
    rect1Topright=rect(3:4);
    rect2Lowleft=rect(5:6);
    rect2Topright=rect(7:8);
    
     %check coords are valid, ie Topright corner has greater x and y than Lowleft
    if rect1Topright(1)>rect1Lowleft(1) && rect1Topright(2)>rect1Lowleft(2) && rect2Topright(1)>rect2Lowleft(1) && rect2Topright(2)>rect2Lowleft(2)  
        %display result
        disp(rect1Lowleft);
        disp(rect1Topright);
        disp(rect2Lowleft);
        disp(rect2Topright);
    else
        disp("Your inputs are invalid (Make sure your top right corners are positioned above and to the right of the lower left corners)");
    end
else 
    disp("You must enter a number upon being prompted, do not leave any answers blank");
end
 

    