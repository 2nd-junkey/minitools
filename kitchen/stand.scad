hoot = 40;
width = 150;
depth = 150;
breadth = 10;
thin = 2;

plate(width, depth, thin);
clogs(width, depth, hoot, thin, breadth);


module plate(width, depth, height)
{
    translate([0, 0, height/2]){
        cube([width, depth, height], true);
    }
}

module clogs(width, depth, height, thin, breadth)
{
    translate([(width-thin)/2, (depth-breadth)/2, height/2])
    {
        cube([thin, breadth, height], true);
    }
    translate([(width-thin)/2, -(depth-breadth)/2, height/2])
    {
        cube([thin, breadth, height], true);
    }
    translate([-(width-thin)/2, (depth-breadth)/2, height/2])
    {
        cube([thin, breadth, height], true);
    }
    translate([-(width-thin)/2, -(depth-breadth)/2, height/2])
    {
        cube([thin, breadth, height], true);
    }
}