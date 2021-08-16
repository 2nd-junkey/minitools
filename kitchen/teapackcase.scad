height = 70;
width = 60;
thickness = 5;

scum = 2;
set = 20;

translate([0, 0, thickness*set/2]){
    difference(){
        cube([height+scum*2, width+scum*2, thickness*set+scum], true);
        translate([0, 0, scum]){
            cube([height, width, thickness*set], true);
                }
        translate([height/2, 0, 0]){
            cube([height, width/3, thickness*set+scum], true);
        }
    }
}
