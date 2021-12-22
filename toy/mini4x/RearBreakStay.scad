width = 150;
depth = 12;
height = 70;
R = 685;

r = (R^2 + (depth/2)^2)^(1/2);
echo("r=", r);

difference()
{
    cube([width, depth, height], true);
    translate([0, r, 0]){
        cylinder(height, R, R, true);
    }
}
