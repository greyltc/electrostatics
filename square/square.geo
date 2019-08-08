Point(1) = {-0.5, 0.5, 0, 0.1};
//+
Point(2) = {-0.5, -0.5, 0, 0.1};
//+
Point(3) = {0, -0.5, 0, 0.1};
//+
Point(4) = {0.5, -0.5, 0, 0.1};
//+
Point(5) = {0.5, 0.5, 0, 0.1};
//+
Point(6) = {-0, 0.5, 0, 0.1};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 5};
//+
Line(5) = {5, 6};
//+
Line(6) = {6, 1};
//+
Line(7) = {6, 3};
//+
Curve Loop(1) = {1, 2, 3, 4, 5, 6};
//+
Plane Surface(1) = {1};
//+
Curve{7} In Surface{1};
//+
Transfinite Curve {7} = 50 Using Progression 1;
//+
Physical Curve("lo") = {1};
//+
Physical Curve("hi") = {4};
//+
Physical Curve("mid") = {7};
//+
Physical Curve(4) = {6};
//+
Physical Curve(5) = {5};
//+
Physical Curve(6) = {3};
//+
Physical Curve(7) = {2};
//+
Physical Surface("face") = {1};
