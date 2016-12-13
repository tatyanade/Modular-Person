baseJointSize = 17;
baseHolderSize = baseJointSize*1.5;
cutoutHeight = baseHolderSize*.6;

translate([0,0, -baseJointSize*1.3 +baseJointSize/2.48]) sphere (r=(baseJointSize/2), h=baseJointSize, center=false, $fn=50);
translate([0,0,baseJointSize/2.5]) sphere (r=(baseJointSize/2), h=baseJointSize, center=false, $fn=50);
translate([0,0,-baseJointSize/2]) cylinder(r=baseJointSize/2,h=baseJointSize*.5,$fn=34);
