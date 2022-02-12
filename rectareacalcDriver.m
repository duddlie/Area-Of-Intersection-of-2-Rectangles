rect3Lowleft=[1 2];
rect3Topright=[2 3];
rect3Topleft=[1 3];
rect3Lowright=[2 2];

rect3Area=rectareacalc(rect3Lowleft, rect3Topright, rect3Topleft, rect3Lowright);

testLowleft=[0 0];
testTopright=[10 5];
testTopleft=[0 10];
testLowright=[5 0];

testArea=rectareacalc(testLowleft, testTopright, testTopleft, testLowright);
