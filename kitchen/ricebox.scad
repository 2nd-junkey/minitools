width = 100;
depth = 50;
flame = 10;

difference(){
    cube([width+flame, width+flame, depth], true);
    cube([width, width, depth], true);
}
