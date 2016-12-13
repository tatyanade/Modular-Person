
baseJointSize = 17/2;
baseHolderSize = baseJointSize*1.5;
cutoutHeight = baseHolderSize*.6;






//upper torso height
upH = 40*.5;
//upperTorsoWidth
utW = 30*.5;
//upperTorsoDepth
utD = 20*.5;
split = 3/7;

extraWidth=0;


scale([2,2,2]){
    





translate([-upH*(1.7)*split,0,utD*1.3]) translate([0,0, -baseJointSize*1.3 +baseJointSize/2.48]) sphere (r=(baseJointSize/2), h=baseJointSize, center=false, $fn=50);

//translate([upH*split*2.75,-extraWidth/2  + utW,0]) translate([-upH*(1.7)*split,0,utD*1.3]) translate([0,0, -baseJointSize*1.3 +baseJointSize/2.48]) sphere (r=(baseJointSize/2), h=baseJointSize, center=false, $fn=50);



//translate([upH*split*2.75,+extraWidth/2  - utW,0]) translate([-upH*(1.7)*split,0,utD*1.3]) translate([0,0, -baseJointSize*1.3 +baseJointSize/2.48]) sphere (r=(baseJointSize/2), h=baseJointSize, center=false, $fn=50);


difference() { 
    union() {
        intersection() {
            //basebod
            minkowski() {
                hull(){
                    
                    translate([0,-extraWidth/2,0])difference() {
                        //body cube
                        translate([-upH*split,-utW/2,0]) cube([upH, utW, utD]);
                        
                        //top back removal
                        translate([upH*1.05,0,0]) rotate([0,-45,0]) translate([0,-1,0])         translate([-upH*split,-utW/2,0]) cube([utW*2, utW*1.1, utD]);
                        
                        //top front removal
                        translate([-utD/3,0,.55*upH])rotate([0,20,0]) translate([0,-1,0])       translate([-upH*split,-utW/2,0]) cube([utW*2, utW*1.1, utD]);
                        
                        //bottom back removal
                        translate([upH/3,0,-7]) mirror([1,0,0]) translate([upH*1.05,0,0]) rotate([0,-30,0]) translate([0,-1,4]) translate([-upH*split,-utW/2,0]) cube([utW*2, utW*1.1, utD]);
                    }
            
                }
                sphere(5, $fn=25);
            }
            //remove cylinder for body roundsness
            hull(){
                translate([-16,3,5]) rotate([0,90,0])  cylinder(r=utD,h=upH*2);
                translate([-16,-3,5]) rotate([0,90,0])  cylinder(r=utD,h=upH*2);
            }
        }
        
        //neck sphere

    }
    
    
    

    //no idea
    //translate([0,0,0]) rotate([0,90,0]) translate([0,0,utD*2]) rotate([0,0,-45]) translate([baseJointSize*.6,baseJointSize*.6, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);
    
    //right arm socker inset
    //translate([upH*split*2.75,-extraWidth/2  + utW,0]) translate([-upH*(1.7)*split,0,utD*1.3]) translate([0,0, -baseJointSize*1.3 +baseJointSize/2.48]) sphere (r=(baseJointSize/1.7), h=baseJointSize, center=false, $fn=50);
    
    //hip connecter remvoe inset
    translate([-upH*(1.7)*split,0,utD*1.3]) translate([0,0, -baseJointSize*1.3 +baseJointSize/2.48]) sphere (r=(baseJointSize/1.6), h=baseJointSize, center=false, $fn=50);
    
    //left arm socket removal thign
    //translate([upH*split*2.75,+extraWidth/2  - utW,0]) translate([-upH*(1.7)*split,0,utD*1.3]) translate([0,0, -baseJointSize*1.3 +baseJointSize/2.48]) sphere (r=(baseJointSize/1.7), h=baseJointSize, center=false, $fn=50);
    
    //neck bend forward thing
    translate([0,0,16]) rotate([0,90,0]) translate([0,0,utD*2]) rotate([0,0,-45])  translate([0,0, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);
    
    
    
    
    
    
        //inner circle removal
    //right shoulder
translate([upH*.97,-6,5]) rotate([0,180,0]) rotate([90,0,90]) translate([0,0,10])translate([0,0,0]) rotate([0,90,0]) translate([0,0,utD*2]) rotate([0,0,-45]) translate([0,0, -r/10]) sphere (r=baseJointSize/2, h=r, center=false, $fn=50);
    
    
        //inner circle removal
    //left shoulder
translate([upH*.97,6,5]) rotate([0,180,0]) rotate([-90,0,-90]) translate([0,0,10])translate([0,0,0]) rotate([0,90,0]) translate([0,0,utD*2]) rotate([0,0,-45]) translate([0,0, -r/10]) sphere (r=baseJointSize/2, h=r, center=false, $fn=50);
    
    
        //inner neck circle removal
    translate([-1.5,0,-1.5]) translate([0,0,10])translate([0,0,0]) rotate([0,90,0]) translate([0,0,utD*2]) rotate([0,0,-45]) translate([0,0, -r/10]) sphere (r=baseJointSize/2, h=r, center=false, $fn=50);
    
    
}


//hip joint connector cylinder
intersection() {
    //translate([0,0,0]) translate([-upH*(1.7)*split,0,utD*1.3]) translate([0,0, -baseJointSize*1.3 +baseJointSize/2.48]) sphere (r=(baseJointSize/1.7), h=baseJointSize, center=false, $fn=50);
    translate([-16,0,6]) rotate([0,90,0]) cylinder(h=30, r=2, $fn=25);
}




//translate([12,18,6]) rotate([90,90,0]) cylinder(h=35, r=2, $fn=25);


//neck socket
translate([-1.5,0,-1.5]) difference() {
            translate([0,0,10]) rotate([0,90,0]) translate([0,0,utD*2]) rotate([0,0,-45])  translate([0,0, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);
    
        //square removal from top of neck
    translate([0,0,10])translate([1,0,0]) rotate([0,90,0]) translate([0,0,utD*2]) rotate([0,0,-45]) translate([-baseHolderSize/2,-baseHolderSize/2,baseJointSize/17]) cube([baseHolderSize,baseHolderSize,cutoutHeight],center = false);
    
    //inner neck circle removal
    translate([0,0,10])translate([0,0,0]) rotate([0,90,0]) translate([0,0,utD*2]) rotate([0,0,-45]) translate([0,0, -r/10]) sphere (r=baseJointSize/2, h=r, center=false, $fn=50);
    
    //neck expander removals
    translate([0,0,10])union(){
        translate([0,0,-5]) translate([17,0,0]) cube([5,1,5]);
    }
    
    //neck bend forward thing
    translate([0,0,16]) rotate([0,90,0]) translate([0,0,utD*2]) rotate([0,0,-45])  translate([0,0, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);
    
    
    
}

    




//left shoulder
translate([upH*.97,6,5]) rotate([0,180,0]) rotate([-90,0,-90]) difference() {
            translate([0,0,10]) rotate([0,90,0]) translate([0,0,utD*2]) rotate([0,0,-45])  translate([0,0, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);
    
    //square removal from top
    translate([0,0,10])translate([1,0,0]) rotate([0,90,0]) translate([0,0,utD*2]) rotate([0,0,-45]) translate([-baseHolderSize/2,-baseHolderSize/2,baseJointSize/17]) cube([baseHolderSize,baseHolderSize,cutoutHeight],center = false);
    
    //inner circle removal
    translate([0,0,10])translate([0,0,0]) rotate([0,90,0]) translate([0,0,utD*2]) rotate([0,0,-45]) translate([0,0, -r/10]) sphere (r=baseJointSize/2, h=r, center=false, $fn=50);
    
    // expander removals
    translate([0,0,10])union(){
        translate([0,0,-5]) translate([17,0,0]) cube([5,1,5]);
    }
    
    // bend forward thing
    translate([0,0,16]) rotate([0,90,0]) translate([0,0,utD*2]) rotate([0,0,-45])  translate([0,0, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);
}






//right shoulder
translate([upH*.97,-6,5]) rotate([0,180,0]) rotate([90,0,90]) difference() {
            translate([0,0,10]) rotate([0,90,0]) translate([0,0,utD*2]) rotate([0,0,-45])  translate([0,0, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);
    
    //square removal from top
    translate([0,0,10])translate([1,0,0]) rotate([0,90,0]) translate([0,0,utD*2]) rotate([0,0,-45]) translate([-baseHolderSize/2,-baseHolderSize/2,baseJointSize/17]) cube([baseHolderSize,baseHolderSize,cutoutHeight],center = false);
    
    //inner circle removal
    translate([0,0,10])translate([0,0,0]) rotate([0,90,0]) translate([0,0,utD*2]) rotate([0,0,-45]) translate([0,0, -r/10]) sphere (r=baseJointSize/2, h=r, center=false, $fn=50);
    
    // expander removals
    translate([0,0,10])union(){
        translate([0,0,-5]) translate([17,0,0]) cube([5,1,5]);
    }
    

    
    // bend forward thing
    translate([0,0,16]) rotate([0,90,0]) translate([0,0,utD*2]) rotate([0,0,-45])  translate([0,0, -baseJointSize/10]) sphere (r=baseJointSize/1.7, h=baseJointSize, center=false, $fn=50);
}







}






