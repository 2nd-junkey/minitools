hook = 20;
arm = 60;
width = 20;
thin = 3;
hole = width - thin*2;

translate([(hook+thin)/2, 0, (arm+thin)/2])
{
    difference()
    {
        cube([hook+thin, width, arm+thin], true);
        translate([-thin/2, 0, -thin/2])
        {
            cube([hook, width, arm], true);
        }
        translate([0, 0, -(arm+thin-hole)/2])
        {
        cube([hook+thin, hole, hole], true);
        }
    }
    translate([(hook)/2-thin, 0, -arm/2])
    {
        cube([thin, width, thin], true);
    }
}
