%Duddlie Yu a1802188
%read in lowerleft and topright coordinates of 2 rectangles, store coordinates of rectangles in vectors

%initialise vectors
xvals=[];
yvals=[];

disp("The first corner of each rectangle is the lowerleft, the second corner is the topright");

%loop to read in x and y coordinates
for numrect=1:2 %2 rectangles
    for cornerX=1:2
        fprintf("Enter the x-coordinate for rectangle %d, corner %d",numrect,cornerX);
        xvals=[xvals input(":")]; %x values of both rectangles are stored in the format:
    end                           %[rect1lowerleft, rect1topright, rect2lowerleft, rect2 topright]
    for cornerY=1:2
        fprintf("Enter the y-coordinate for rectangle %d, corner %d",numrect,cornerY);
        yvals=[yvals input(":")];
    end
end

if length(xvals)==4 && length(yvals)==4
disp (xvals);
disp (yvals);
else
    disp("You must enter a number upon being prompted");
end