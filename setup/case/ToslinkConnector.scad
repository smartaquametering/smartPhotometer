// Toslink connector.
//
fiber_height=2.25;
fiber_diameter=2.5 + 0.1;

connector_height=6.0 + 0.1;
connector_width=6.5 + 0.1;
connector_length=7.25;

connector_edge=connector_width/4;

case_diameter = 10.5;
RastNaseRadius = 1.5;

wt = 2.5;

difference(){
    translate([-(connector_length+2*wt)/2, -(connector_width+2*wt)/2, 0])
        cube (size=[connector_length+2*wt, connector_width+2*wt, fiber_height+connector_height]);

    // Bohrung fiber
	cylinder(d=fiber_diameter,h=2*(fiber_height+connector_height),$fn=32);

    // Connector
    translate([0, 0, fiber_height])
        linear_extrude(height = connector_height, center = false, convexity = 10, twist = 0)
            polygon(points = [
                [ connector_length/2                , -connector_width/2+connector_edge],
                [ connector_length/2-connector_edge , -connector_width/2               ],
                [-connector_length/2+connector_edge , -connector_width/2               ],
                [-connector_length/2                , -connector_width/2+connector_edge],
                [-connector_length/2                ,  connector_width/2               ],
                [ connector_length/2                ,  connector_width/2               ]
            ]);

    // Rast-Nase
    translate([-connector_length/2,0,fiber_height])
    hull() {
        translate([connector_length,0,0]) cylinder(d=RastNaseRadius, h=connector_height, $fn=32);
        cylinder(d=RastNaseRadius, h=connector_height, $fn=32);
    }
}


//translate ([0,0, -10]) import("C:/Users/A410882/Downloads/Toslink_connector_/files/Toslink_connector.stl");