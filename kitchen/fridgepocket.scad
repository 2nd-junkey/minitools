width = 40;
// width = 80;
depth = 20;
height = 30;
thin = 2;
belt = 10;
hook = 8;

translate([0, -(depth)/2, 0])
{
    pocket(width, depth, height, thin);
}
translate([0, (hook)/2-thin, 0])
{
    hooks(width, hook, height, belt, thin);
}

module pocket(width, depth, height, thin)
{
    // 本体
    difference()
    {
        // 素体
        cube([width, depth, height], true);
        // 空洞
        cube([width-thin*2, depth-thin*2, height], true);
    }
    // 底
    translate([0, 0, -(height-thin)/2])
    {
        cube([width, depth, thin], true);
    }
}

module hooks(width, hook, height, belt, thin)
{
    // 縦のフック
    difference()
    {
        // 素体
        cube([width, hook, height], true);
        // 軽量化用の穴
        translate([0, 0, belt])
        {
            cube([width-belt*2, hook, height], true);
        }
        // 引っ掛ける部分
        translate([0, 0, -thin])
        {
            cube([width, hook-thin*2, height], true);
        }
    }
}
