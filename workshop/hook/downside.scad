width = 20;
high = 30;
depth = 30;
thin = 3;
clearance = 1;
hole = width - (thin*2+clearance);

translate([-(depth+thin*2)/2, 0, -(high+thin)/2])
{
    difference()
    {
        cube([depth+thin*2, width+thin, high+thin], true);
        translate([0, 0, thin])
        {
            cube([depth, width+thin, high], true);
        }
    }
}

translate([(thin*2+clearance)/2, 0, -thin*3/2])
{
    difference()
    {
        cube([thin*2+clearance, hole, thin*3], true);
        translate([-thin/2, 0, -thin/2])
        {
           cube([thin+clearance, hole, thin*2], true);
        }
    }
}
