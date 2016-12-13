baseJointSize = 17/2;
baseHolderSize = baseJointSize*1.5;
cutoutHeight = baseHolderSize*.6;

scale([2,2,2]){difference() {
    rotate([0,90,0]) rotate([0,0,-45])  translate([0,0, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);
    
    //square removal from top
    translate([1.5,0,0]) rotate([0,90,0])  rotate([0,0,-45]) translate([-baseHolderSize/2,-baseHolderSize/2,baseJointSize/17]) cube([baseHolderSize,baseHolderSize,cutoutHeight],center = false);
    
    //inner circle removal
    translate([0,0,0]) rotate([0,90,0])  rotate([0,0,-45]) translate([0,0, -r/10]) sphere (r=baseJointSize/2, h=r, center=false, $fn=50);
    
    // expander removalsunion(){
        translate([0,0,-5]) translate([17,0,0]) cube([5,1,5]);
        rotate([90,0,0]) translate([17,00]) cube([5,1,5]);
        rotate([90,0,0]) translate([17,0,-5]) cube([5,1,5]);
    //}
    
    // bend forward thing
    translate([0,0,6]) rotate([0,90,0])  rotate([0,0,-45])  translate([0,0, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);
    

translate([-3,0,0]) union(){
        
          rotate([45+90,0,0]) translate([0,0,0]) cube([7,1,5]);
  rotate([45-180,0,0]) translate([0,-.5,0]) cube([7,1,5]); 
    }
    }
 
    
    
//translate([-baseJointSize,0,0]) rotate([0,90,0])  rotate([0,0,-45]) translate([0,0, -r/10]) sphere (r=baseJointSize/2, h=r, center=false, $fn=50);
    
translate([-baseJointSize*1.2,0,0]) rotate([180,180,00]) difference() {
    rotate([0,90,0]) rotate([0,0,-45])  translate([0,0, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);
    
    //square removal from top
    translate([1.5,0,0]) rotate([0,90,0])  rotate([0,0,-45]) translate([-baseHolderSize/2,-baseHolderSize/2,baseJointSize/17]) cube([baseHolderSize,baseHolderSize,cutoutHeight],center = false);
    
    //inner circle removal
    translate([0,0,0]) rotate([0,90,0])  rotate([0,0,-45]) translate([0,0, -r/10]) sphere (r=baseJointSize/2, h=r, center=false, $fn=50);
    
    // expander removalsunion(){
        translate([0,0,-5]) translate([17,0,0]) cube([5,1,5]);
        rotate([90,0,0]) translate([17,00]) cube([5,1,5]);
        rotate([90,0,0]) translate([17,0,-5]) cube([5,1,5]);
    //}
    
    // bend forward thing
    translate([0,0,6]) rotate([0,90,0])  rotate([0,0,-45])  translate([0,0, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);
    

translate([-3,0,0]) union(){
        
          rotate([45+90,0,0]) translate([0,0,0]) cube([7,1,5]);
  rotate([45-180,0,0]) translate([0,-.5,0]) cube([7,1,5]); 
    }
    }}