include <cicloid_test_gear.scad>
//gear(count, bul=true,hd=1,dc=1,R=15,pol1=0.1,pol2=4)
Rbgear=22;
sizes=22;
r_bolt=sizes*0.8/Rbgear;
gears=[10,12,15,17,20,30,40,41,45,48,50,60];
pols=[0.09,0.09,0.09,0.09,0.09,0.09,0.09];
luchs=[6,7,10,17,13,12,13,13,7];

//projection(){
//gears();
board();
gears_for_board();
//translate([0,-50,0])planka(50);
//translate([0,-45,0])planka(50);
//translate([0,-55,0])planka(50);
//translate([0,-40,0])planka(40);
//}
    
module gears(){
for(a=[0:11]){
    translate([a*23,50,0])
    difference(){
    gear(gears[a],(a==11)? true:false,sizes/22/2,r_bolt,sizes/2,0.19,a*10/11+2);
    translate([(22*gears[a]/60/2-0.8)/2,0,0])cube([22*gears[a]/60/2-0.8,r_bolt,0.6], true);
    }
}
}

module board(){
difference(){
cube([sizes*30/Rbgear,sizes*40/Rbgear,sizes*0.5/Rbgear],true);
translate([sizes*(30/2-4)/Rbgear,sizes*(40/2-Rbgear/2-Rbgear/2/2-4)/Rbgear,0])cylinder(sizes/22,r_bolt/2,r_bolt/2,true,$fn=100);
    translate([sizes*(30/2-4)/Rbgear,sizes*(40/2-4)/Rbgear,0])cylinder(sizes/22,r_bolt/2,r_bolt/2,true,$fn=100);
    translate([sizes*(-0.5)/Rbgear,-sizes*(40/2-3)/Rbgear,0])cube([sizes*(30-4-3)/Rbgear,r_bolt,sizes/Rbgear],true);
    for(i=[-5:3]){
        translate([sizes*(30/2-4)/Rbgear,0,0])rotate([0,0,360/20*i+180])translate([sizes*(Rbgear/2+(luchs[i+5])/2)/Rbgear,0,0])cube([sizes*(luchs[i+5])/Rbgear,r_bolt,sizes/Rbgear],true);
    }
}
}
module gears_for_board(){
translate([sizes*(30/2-4)/Rbgear,sizes*(40/2-Rbgear/2-Rbgear/2/2-4)/Rbgear,sizes*0.5/Rbgear])rotate([0,0,$t*90]){gear(60,true,sizes*0.5/Rbgear,r_bolt,sizes/2,0.09);
}
 translate([sizes*(30/2-4)/Rbgear,sizes*(40/2-4)/Rbgear,sizes*0.5/Rbgear])rotate(360/60)rotate([0,0,-90*2*$t]){
     gear(30,false,sizes*0.5/Rbgear,r_bolt,sizes/2,0.09,4);
 }
    translate([-sizes*(Rbgear/2/60*54)/Rbgear,0,sizes*0.5/Rbgear])rotate([0,0,360/56/2])rotate([0,0,-90*60/54*$t]){
        gear(54,false,sizes*0.5/Rbgear,r_bolt,sizes/2,0.09,4);
        
    }
}
module planka(leny){
    difference(){
    union(){
    cube([leny-3,3,0.5], true);
    translate([(leny-3)/2,0,0])cylinder(d1=3,d2=3,h=0.5,center=true, $fn=100);
    translate([(leny-3)/-2,0,0])cylinder(d1=3,d2=3,h=0.5,center=true, $fn=100);
    }
    cube([leny-3,0.8,0.6],true);
    translate([(leny-3)/-2,0,0])cylinder(d1=0.8,d2=0.8,h=1,center=true, $fn=100);
    translate([(leny-3)/2,0,0])cylinder(d1=0.8,d2=0.8,h=1,center=true, $fn=100);
    }
}
