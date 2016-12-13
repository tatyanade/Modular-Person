baseJointSize = 17/2;
baseHolderSize = baseJointSize*1.5;
cutoutHeight = baseHolderSize*.6;
legHeight = 8;
difference() { 
    union() {
            translate([0,0,-legHeight]) union(){
                translate([0,0,-baseJointSize/2]) translate([0,0, -baseJointSize*1.3 +baseJointSize/2.48]) sphere (r=(baseJointSize/2), h=baseJointSize, center=false, $fn=50);
                 translate([0,0,-baseJointSize*1.1]) cylinder(h=baseJointSize, r=baseJointSize/1.7, center=false);
        }
        hull(){
            translate([0,0,-baseJointSize*1.1]) cylinder(h=baseJointSize, r=baseJointSize/1.7, center=false);
            translate([0,0, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);
        }
        hull(){
            translate([0,0,-legHeight]) translate([0,0,-baseJointSize*1.1]) cylinder(h=baseJointSize, r=baseJointSize/1.7, center=false);
            translate([0,0,-baseJointSize*1.1]) cylinder(h=baseJointSize, r=baseJointSize/1.7, center=false);
        }
    }
    translate([-baseHolderSize/2,-baseHolderSize/2,baseJointSize/17]) cube([baseHolderSize,baseHolderSize,cutoutHeight],center = false);
    translate([0,0, -baseJointSize/10]) sphere (r=baseJointSize/2, h=baseJointSize, center=false, $fn=50);
    translate([-.5, -baseJointSize*2,-baseJointSize/2.5]) cube([1,baseJointSize*2,baseJointSize/2]);
    translate([-baseJointSize*2, -.5,-baseJointSize/2.5]) cube([baseJointSize*2,1,baseJointSize/2]);    
    translate([baseJointSize*.6,baseJointSize*.6, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);
    
}