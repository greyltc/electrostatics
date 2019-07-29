// Gmsh project created on Mon Jul 29 21:18:12 2019
//+
Mesh.MshFileVersion = 2.2;
//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {0, 2, 0, 1.0};
//+
Point(3) = {0, -2, 0, 1.0};
//+
Point(4) = {1+1/(2*Pi), 0, 0, 1.0};
//+
Point(5) = {1, 0, 0, 1.0};
//+
Point(6) = {1-1/(2*Pi), 0, 0, 1.0};
//+
Point(7) = {-1-1/(2*Pi), 0, 0, 1.0};
//+
Point(8) = {-1, 0, 0, 1.0};
//+
Point(9) = {-1+1/(2*Pi), 0, 0, 1.0};
//+
Circle(1) = {2, 1, 3};
//+
Circle(2) = {3, 1, 2};
//+
Circle(3) = {7, 8, 9};
//+
Circle(4) = {9, 8, 7};
//+
Circle(5) = {6, 5, 4};
//+
Circle(6) = {4, 5, 6};
//+
Curve Loop(1) = {1, 2};
//+
Curve Loop(2) = {4, 3};
//+
Curve Loop(3) = {6, 5};
//+
Plane Surface(1) = {1, 2, 3};
//+
Physical Curve(1) = {4, 3};
//+
Physical Curve(2) = {6, 5};
//+
Physical Curve(3) = {1, 2};
//+
Physical Surface(4) = {1};
//+
Point(10) = {0, 0.5, 0, 1.0};
//+
Point(11) = {0, -0.5, 0, 1.0};
//+
Line(7) = {2, 10};
//+
Line(8) = {11, 3};
//+
Line(9) = {10, 11};
//+
Curve{7, 8, 9} In Surface{1};
//+
Transfinite Curve {7, 9, 8} = 10 Using Progression 1;
//+
Physical Curve("pass") = {9};
