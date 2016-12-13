
baseJointSize = 17/2;
baseHolderSize = baseJointSize*1.5;
cutoutHeight = baseHolderSize*.6;






//upper torso height
upH = (150/4)*.5*.8;
//upperTorsoWidth
utW = 30*.5;
//upperTorsoDepth
utD = 20*.5;
split = 3/7;
scale([2,2,2]){
extraWidth=0;
//cylinder(h=50,r=50);
difference() { 
    intersection(){
        difference() { 
            union() {
                //base shape
                minkowski() {
                    intersection(){
                        hull(){
                            translate([0,-extraWidth/2,0])difference() {
                                translate([-upH*split,-utW/2,0]) cube([upH, utW, utD]);
                                translate([upH*1.05,0,0]) rotate([0,-45,0]) translate([0,-1,0])         translate([-upH*split,-utW/2,0]) cube([utW*2, utW*1.1, utD]);
                                translate([upH*.5,0,utD]) translate([(150/4)*.5/3,0,-7]) mirror([1,0,0]) translate([upH*1.05,0,0]) rotate([0,30,0]) translate([0,-1,4]) translate([-upH*split,-utW/2,0]) cube([utW*2, utW*1.1, utD]);
                            }       
                        }
                    }
                    sphere(5, $fn=25);
                }
            }
        }
        hull(){
            union() {
                translate([-upH/1.25,0,utD/2])rotate([0,90,0]) cylinder(h=3,r=utD, $fn=50);
                translate([-upH/1.25,0,utD/2])rotate([0,90,0]) cylinder(h=3,r=utD, $fn=50);
                }            
            translate([23,0,0]) union(){
                translate([-upH/1.25,utW/3,utD/2])rotate([0,90,0]) cylinder(h=3,r=utD, $fn=50);
                translate([-upH/1.25,-utW/3,utD/2])rotate([0,90,0]) cylinder(h=3,r=utD, $fn=50);
            }
        }}
    translate([0,0,upH/1.5]) rotate([0,180,90]) translate([0,10,0]) rotate([90,90,180]) translate([-upH/2,0,utD/2]) rotate([0,0,90+45]) translate([0,0, -r/10]) sphere (r=baseJointSize/2, h=r, center=false, $fn=50);

    union() { 
        translate([0,-3,0])translate([-2.5,0,0]) translate([2,-utD/1.4,-2]) rotate([22.5,0,180]) translate([0,0,upH/1.5]) rotate([0,180,90]) translate([0,10,0]) rotate([90,90,180]) translate([-upH/2,0,utD/2]) rotate([0,0,90+45])  translate([0,0, -r/10]) sphere (r=baseJointSize/2, h=r, center=false, $fn=50);
        translate([0,3,0]) translate([-2.5,0,0]) translate([2,utD/1.4,-2]) rotate([-22.5,0,180]) translate([0,0,upH/1.5]) rotate([0,180,90]) translate([0,10,0]) rotate([90,90,180]) translate([-upH/2,0,utD/2]) rotate([0,0,90+45])  translate([0,0, -r/10]) sphere (r=baseJointSize/2, h=r, center=false, $fn=50);
    }
}

translate([0,0,upH/1.5]) rotate([0,180,90]) translate([0,10,0]) rotate([90,90,180]) translate([-upH/2,0,utD/2]) rotate([0,0,90+45])  difference() { 
    translate([0,0, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);
    translate([0,0,1.75]) translate([-baseHolderSize/2,-baseHolderSize/2,baseJointSize/17]) cube([baseHolderSize,baseHolderSize,cutoutHeight],center = false);
    translate([0,0, -r/10]) sphere (r=baseJointSize/2, h=r, center=false, $fn=50);
    translate([-.5, -baseJointSize*2,-baseJointSize/2.5]) cube([1,baseJointSize*2,baseJointSize/2]);
    translate([-baseJointSize*2, -.5,-baseJointSize/2.5]) cube([baseJointSize*2,1,baseJointSize/2]);    
    translate([baseJointSize*.6,baseJointSize*.6, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);   
    }



translate([-2,0,0]) union(){
    translate([0,3,0]) translate([2,utD/1.4,-2]) rotate([0,0,180]) translate([0,0,upH/1.5]) rotate([0,180,90]) translate([0,10,0]) rotate([90,90,180]) translate([-upH/2,0,utD/2]) rotate([0,0,90+45])  difference() { 
        translate([0,0, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);
        //
        translate([0,0,1.75]) translate([-baseHolderSize/2,-baseHolderSize/2,baseJointSize/17]) cube([baseHolderSize,baseHolderSize,cutoutHeight],center = false);
        //sallwspheresocker
        translate([0,0, -r/10]) sphere (r=baseJointSize/2, h=r, center=false, $fn=50);
        //rightlowerlegcutour
        translate([-.5, -baseJointSize*2,-baseJointSize/2.5]) cube([1,baseJointSize*2,baseJointSize/2]);
        //right lowerlegcutout
        translate([-baseJointSize*2, -.5,-baseJointSize/2.5]) cube([baseJointSize*2,1,baseJointSize/2]);
    
        //right lower leg bend cutour    
        translate([baseJointSize*.6,baseJointSize*.6, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);    
    }
    translate([0,-3,0])translate([2,-utD/1.4,-2]) rotate([0,0,180]) translate([0,0,upH/1.5]) rotate([0,180,90]) translate([0,10,0]) rotate([90,90,180]) translate([-upH/2,0,utD/2]) rotate([0,0,90+45])  difference() { 
        translate([0,0, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);
        
        
        
        //
        translate([0,0,1.75]) translate([-baseHolderSize/2,-baseHolderSize/2,baseJointSize/17]) cube([baseHolderSize,baseHolderSize,cutoutHeight],center = false);
        translate([0,0, -r/10]) sphere (r=baseJointSize/2, h=r, center=false, $fn=50);
        translate([-.5, -baseJointSize*2,-baseJointSize/2.5]) cube([1,baseJointSize*2,baseJointSize/2]);
        translate([-baseJointSize*2, -.5,-baseJointSize/2.5]) cube([baseJointSize*2,1,baseJointSize/2]);    
        translate([baseJointSize*.6,baseJointSize*.6, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);    
    }
}
}