baseJointSize = 17/2;
baseHolderSize = baseJointSize*1.5;
cutoutHeight = baseHolderSize*.6;
scale([2,2,2]){
difference() { 
    union() {
        translate([0,0, -baseJointSize*1.3 +baseJointSize/2.48]) sphere (r=(baseJointSize/2), h=baseJointSize, center=false, $fn=50);
        translate([0,0, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);
    }
    translate([-baseHolderSize/2,-baseHolderSize/2,baseJointSize/9]) cube([baseHolderSize,baseHolderSize,cutoutHeight],center = false);
    translate([0,0, -r/10]) sphere (r=baseJointSize/2, h=r, center=false, $fn=50);
    translate([-.5, -baseJointSize*2,-baseJointSize/2.5]) cube([1,baseJointSize*2,baseJointSize/2]);
    translate([-baseJointSize*2, -.5,-baseJointSize/2.5]) cube([baseJointSize*2,1,baseJointSize/2]);    
    translate([baseJointSize*.6,baseJointSize*.6, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);
    
}}