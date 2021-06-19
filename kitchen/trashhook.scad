drawer = 20;
hook = 100;
width = 10;
anker = 10;
ram = 10;
thin = 2;

hook(drawer, anker, width, thin);
bridge(hook, width, ram, thin);

module hook(drawer, anker, width, thin)
{
    translate([width/2, -drawer/2, thin/2])
    {
        cube([width, drawer, thin], true);
    }
    translate([width/2, -(drawer+thin/2), (-anker+thin)/2])
    {
        cube([width, thin, anker+thin], true);
    }
    translate([-width*3/2, -drawer/2, thin/2])
    {
        cube([width, drawer, thin], true);
    }
    translate([-width*3/2, -(drawer+thin/2), (-anker+thin)/2])
    {
        cube([width, thin, anker+thin], true);
    }
}

module bridge(hook, width, ram, thin)
{
    translate([0, 0, thin])
    {
        rotate([0, 90, -180])
        {
            linear_extrude(height=width)
            {
                difference(){
                    polygon([[0, 0], [hook, 0], [0, -hook]]);
                    offset(r = -thin)
                    {
                                    polygon([[0, 0], [hook, 0], [0, -hook]]);
                    }
                }
            }
        }
    }
    translate([width/2, (hook+ram)/2, thin/2])
    {
        cube([width, hook+ram, thin], true);
    }
    translate([-(width*3)/2, (hook+ram)/2, thin/2])
    {
        cube([width, hook+ram, thin], true);
    }
}
