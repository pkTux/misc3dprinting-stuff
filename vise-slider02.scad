//10mm hole block test.
spc=22;
$fn=30;
module btest(){
difference (){
  translate([-7,-7,0])cube([14,14,20],center=false);
  cylinder(d=10,h=21,center=false);  
    
}; };
module cham(){
  difference(){  
  cube([3,20,20],center=false);
   translate([-.1,20,0]) rotate([45,0,0])cube([4,15,30],center=false);  
};};
module flng(yt){
difference(){
cube([50,35,3],center=false);
translate([9,20,-.3])cylinder(d=4,h=4,center=false);
translate([25,30,-.3])cylinder(d=4,h=4,center=false);
    translate([41,20,-.3])cylinder(d=4,h=4,center=false);
};
translate([0,yt,3])cham();
translate([15.66,yt,3])cham();
translate([31.33,yt,3])cham();
translate([47,yt,3])cham();
};

module rods(hgt1, hgt2, hgt3,dt1,dt2,bearingd,bearingh){
translate([7,-.1,hgt1])rotate([270,0,0])cylinder(d=8.7,h=11,center=false);  
translate([9,-.1,hgt3])rotate([270,0,0])cylinder(d=4,h=11,center=false);
  union(){
translate([25,dt1,hgt2])rotate([270,0,0])cylinder(d=bearingd,h=bearingh,center=false);
 
translate([25,dt2,hgt2])rotate([270,0,0])cylinder(d=15.5,h=6.2,center=false);       
        };
translate([43,-.1,hgt1])rotate([270,0,0])cylinder(d=8.7,h=11,center=false);
translate([41,-.1,hgt3])rotate([270,0,0])cylinder(d=4,h=11,center=false);
    
};    
    
module ebraka(){
// 8mm rods 22m spacing  
  union(){  
    difference(){
       cube([50,10,40],center=false);
  rods(30,25,15,-.1,5.9,22.5,6.2);
//offset hole
        translate([32,-.1,37])rotate([270,0,0])cylinder(d=3,h=14,center=false);
translate([22,-.1,-.1])cube([4,3,3],center=false);
};
difference(){
flng(10);
translate([22,-.1,-.1])cube([4,2,2],center=false);
};
};
};//end blk

module ebrakb(){
//    
     union(){  
    difference(){
       cube([50,7,40],center=false);
   rods(30,25,15,-.1,-9,17,10);
//offset hole
translate([18,-.1,37])rotate([270,0,0])cylinder(d=3,h=14,center=false); 
      
 //clamp rods       
        translate([51,3.5,37])rotate([0,270,0])cylinder(d=2,h=12.6,center=false);
      translate([-1,3.5,37])rotate([0,90,0])cylinder(d=2,h=12.6,center=false);
        translate([13,-.1,28])cube([2,8,20],center=false);
        translate([11.5,-.1,34])cube([2,8,10],center=false);
        translate([6,-.1,30])cube([2,8,20],center=false);
      translate([35,-.1,28])cube([2,8,20],center=false);
 translate([36.5,-.1,34])cube([2,8,10],center=false);
translate([42,-.1,30])cube([2,8,20],center=false);
translate([22,-.1,-.1])cube([4,3,3],center=false);
};
   difference(){
 flng(7);   
translate([22,-.1,-.1])cube([4,3,3],center=false);
   };
};
};//end blk
module sblok(){
  //
    difference(){
       cube([50,30,40],center=false);
  translate([7,-.1,15])rotate([270,0,0])cylinder(d=9,h=31,center=false);  
        translate([25,-.1,10])rotate([270,0,0])cylinder(d=10,h=31,center=false);       
      translate([43,-.1,15])rotate([270,0,0])cylinder(d=9,h=31,center=false);
       // translate([18,-.1,17])cube([14,32,2],center=false);
        translate([25,15,20])cylinder(d=10.1,h=30,center=false);
   translate([25,15,-.1])cylinder(d=3,h=41,center=false);
translate([22,-.1,-.1])cube([4,2,2],center=false);
};
    
};//end blk

//cham();
//ebrakb();
//translate([-51,0,0])ebraka();
//translate([-102,0,0])sblok();
rotate([90,0,0])sblok();
