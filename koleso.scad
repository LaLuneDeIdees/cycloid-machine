polys=100;
r_os=1;
r_kolesa=15;
r_spic=4;
count_spic=5;
r_zub=0.3;
count_zub=40;
projection()rotate([0,0,0])koleso();
module koleso(){
difference(){
intersection(){
cylinder(5,r_kolesa,r_kolesa,$fn=polys,true);
scale([r_kolesa/10,r_kolesa/10,0.45])sphere(10.5, $fn=polys);
}
cylinder(6,r_os,r_os,true,$fn=polys);
translate([0,0,3])scale([r_kolesa/10,r_kolesa/10,0.2])sphere(10,$fn=polys);
translate([0,0,-3])scale([r_kolesa/10,r_kolesa/10,0.2])sphere(10,$fn=polys);
for(i=[0:count_spic]){
    rotate([0,0,i*360/count_spic])translate([r_kolesa-r_spic-2,0,0])cylinder(6,r_spic,r_spic,true,$fn=polys);
}
for(i=[1:count_zub]){
    rotate([0,0,i*360/count_zub])translate([r_kolesa,0,0])cylinder(12,r_zub,r_zub,true,$fn=polys);
}
}
}