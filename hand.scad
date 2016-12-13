r = 17/2;
sphere (r=r/2, h=r, center=false, $fn=50);
hull(){intersection(){
    translate([0,0,7])sphere (r=r/2, h=r, center=false, $fn=50);
translate([0,-4.3,3]) cube([9,9,9]);}
translate([0,0,2])intersection(){
    translate([0,0,7])sphere (r=r/2, h=r, center=false, $fn=50);
translate([0,-4.3,3]) cube([9,9,9]);}}