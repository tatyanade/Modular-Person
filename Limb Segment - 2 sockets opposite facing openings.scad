baseJointSize = 17/2;
baseHolderSize = baseJointSize*1.5;
cutoutHeight = baseHolderSize*.6;
legHeight = 27.5;
scale([2,2,2]) difference(){
difference() { 
    union() {

        hull(){
            translate([0,0,-baseJointSize*1.1]) cylinder(h=baseJointSize, r=baseJointSize/1.7, center=false);
            translate([0,0, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);
            translate([0,0,-baseJointSize*1.1]) translate([0,0,-legHeight]) rotate([0,180,0]) cylinder(h=baseJointSize, r=baseJointSize/1.7, center=false);
        }
        translate([0,0,-legHeight]) rotate([0,180,0]) hull(){
            translate([0,0,-baseJointSize*1.1]) cylinder(h=baseJointSize, r=baseJointSize/1.7, center=false);
            translate([0,0, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);
        }
    }
    
    
    rotate([0,0,180]) union() {
        translate([-baseHolderSize/2,-baseHolderSize/2,baseJointSize/17]) cube([baseHolderSize,baseHolderSize,cutoutHeight],center = false);
        translate([0,0, -baseJointSize/10]) sphere (r=baseJointSize/2, h=baseJointSize, center=false, $fn=50);
        translate([-.5, -baseJointSize*2,-baseJointSize/2.5]) cube([1,baseJointSize*2,baseJointSize/2]);
        translate([-baseJointSize*2, -.5,-baseJointSize/2.5]) cube([baseJointSize*2,1,baseJointSize/2]);    
        translate([baseJointSize*.6,baseJointSize*.6, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);
    }
    
    
    
    translate([0,0,-legHeight]) rotate([0,180,-90]) union() {
        translate([-baseHolderSize/2,-baseHolderSize/2,baseJointSize/17]) cube([baseHolderSize,baseHolderSize,cutoutHeight],center = false);
        translate([0,0, -baseJointSize/10]) sphere (r=baseJointSize/2, h=baseJointSize, center=false, $fn=50);
        translate([-.5, -baseJointSize*2,-baseJointSize/2.5]) cube([1,baseJointSize*2,baseJointSize/2]);
        translate([-baseJointSize*2, -.5,-baseJointSize/2.5]) cube([baseJointSize*2,1,baseJointSize/2]);    
        translate([baseJointSize*.6,baseJointSize*.6, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);
    }
    
}
 translate([0,0, -43]) cube([20,20,20], center=true);

}
