*cube(5);
*cube(5,true);
*cube([2,4,8]);
*cube([2,4,8],true);
*sphere(10, $fn=10);
*sphere(d=22, $fn=25);
*cylinder(10,r1=5,d2=5,$fn=20);
*polyhedron(
    points=[[0,0,0],[5,-5,5],[3,-9,7]],
    faces=[[0,1,2]]
);
*translate([5,6,7])cube(5,true);
*rotate([30,0,0])cube(5,true);
*union(){
    cylinder(15,3,3,true,$fn=25);
    rotate([60,0,0])cylinder(15,3,3,true,$fn=25);
}
*difference(){
    cylinder(15,3,3,true,$fn=100);
    rotate([60,0,0])cylinder(15,3,3,true,$fn=100);
}
*difference(){
    rotate([60,0,0])cylinder(15,3,3,true,$fn=100);
    cylinder(15,3,3,true,$fn=100);
}
*rotate([150,0,0])intersection(){
    rotate([60,0,0])cylinder(15,3,3,true,$fn=100);
    cylinder(15,3,3,true,$fn=100);
}
*scale([1,1,0.25])sphere(10,$fn=100);
*kubic();
module kubic(){
    
    h=0.3;
    difference(){
    intersection(){
        cube(12,true);
        sphere(12-24/9,$fn=200);
    }
    translate([6,2,0])cube([h,h,20],true);
    translate([6,-2,0])cube([h,h,20],true);
    translate([-6,2,0])cube([h,h,20],true);
    translate([-6,-2,0])cube([h,h,20],true);
    rotate([90,0,0]){
    translate([6,2,0])cube([h,h,20],true);
    translate([6,-2,0])cube([h,h,20],true);
    translate([-6,2,0])cube([h,h,20],true);
    translate([-6,-2,0])cube([h,h,20],true);
    }
    rotate([0,90,0]){
    translate([6,2,0])cube([h,h,20],true);
    translate([6,-2,0])cube([h,h,20],true);
    translate([-6,2,0])cube([h,h,20],true);
    translate([-6,-2,0])cube([h,h,20],true);
    }
    rotate([90,90,0]){
    translate([6,2,0])cube([h,h,20],true);
    translate([6,-2,0])cube([h,h,20],true);
    translate([-6,2,0])cube([h,h,20],true);
    translate([-6,-2,0])cube([h,h,20],true);
    }
    rotate([0,0,90]){
    translate([6,2,0])cube([h,h,20],true);
    translate([6,-2,0])cube([h,h,20],true);
    translate([-6,2,0])cube([h,h,20],true);
    translate([-6,-2,0])cube([h,h,20],true);
    }
    rotate([90,0,90]){
    translate([6,2,0])cube([h,h,20],true);
    translate([6,-2,0])cube([h,h,20],true);
    translate([-6,2,0])cube([h,h,20],true);
    translate([-6,-2,0])cube([h,h,20],true);
    }
}
}
*import("K:/OpenSCAD-2015.03-2-x86-64/openscad-2015.03-2/firstbegin.stl");