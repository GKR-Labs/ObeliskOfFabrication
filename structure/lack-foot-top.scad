resolution = 60; // 10; don't increase too much, or you'll get performance issues
wall = 8;

xoffset = (50.7+(wall-2))/2+1.1;
zoffset = 50;

rotate([0,180,0]) difference() {
	union() {
		minkowski() {
			difference() {
				translate([0,0,-60]) cube([50.7+(wall-2),50.7+(wall-2),60], center=true);
			}
			sphere(r=2, $fn=resolution, center=true);
		}
			
		// holder nub
		//translate([0,-xoffset2,-zoffset-20]) cube([2,2,1.8]);
	}
	
	translate([3,3,-(25+35-1)+1]) minkowski() {
		cube([50.7+4,50.7+4,48-1], center=true);
		sphere(r=2, $fn=resolution, center=true);
	}
	translate([3,3,-(25+35-1)+1]) cube([50.7+4+4,50.7+4+4,48-1+4], center=true);
	
	translate([-1.35+1,-1.35+1,-(25+35-1)-20]) minkowski() {
		cube([46+2,46+2,48], center=true);
		sphere(r=2, $fn=resolution, center=true);
	}
	
	translate([10,10,-(25+35-1)-20]) minkowski() {
		cube([68.5,68.5,50], center=true);
		sphere(r=2, $fn=resolution, center=true);
	}
	
	translate([-xoffset,0,zoffset]) rotate([0,90,0]) cylinder(h=4, d=6, $fn=resolution, center=true);
	translate([-xoffset,0,-zoffset-20]) rotate([0,90,0]) cylinder(h=40, d=6, $fn=resolution, center=true);
	translate([0,-xoffset,zoffset]) rotate([90,0,0]) cylinder(h=4, d=6, $fn=resolution, center=true);
	translate([0,-xoffset,-zoffset-20]) rotate([90,0,0]) cylinder(h=40, d=6, $fn=resolution, center=true);

	xoffset2 = (50.7+(wall-2))/2+2.8;
	translate([-xoffset2,0,zoffset]) rotate([0,-90,0]) cylinder(h=4, d1=12, d2=18, $fn=resolution, center=true);
	translate([-xoffset2,0,-zoffset-20]) rotate([0,-90,0]) cylinder(h=4, d1=12, d2=18, $fn=resolution, center=true);
	translate([0,-xoffset2,zoffset]) rotate([90,0,0]) cylinder(h=4, d1=12, d2=18, $fn=resolution, center=true);
	translate([0,-xoffset2,-zoffset-20]) rotate([90,0,0]) cylinder(h=4, d1=12, d2=18, $fn=resolution, center=true);
}