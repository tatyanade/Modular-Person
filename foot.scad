r = 17/2;
scale([2,2,2]){
sphere (r=r/2, h=r, center=false, $fn=50);
difference(){
    minkowski(){
    
    
scale([.8,.8,.8]) union() {//translate([3,-r/2,-r/2]) cube([6,12,20], center=true);
    intersection(){
    translate([0,0,-6]) translate([7.5,0,6]) cube([8,10,20], center=true);
     translate([0,0,-3]) translate([7.5,0,6]) cube([8,10,20], center=true);
        }   
translate([0,0,6]) difference() { translate([7.5,0,6]) cube([8,10,20], center=true);
translate([3.5,0,16]) rotate([0,35,0]) cube([12,r*2,r*2], center=true);
    //translate([0,5,12]) rotate([80,0,0]) cube([12,12,12]);
}
}
sphere(r=1,h=1);
}

sphere (r=r/1.7, h=r, center=false, $fn=50);}


rotate([0,90,0]) cylinder(r=2,h=7);

}