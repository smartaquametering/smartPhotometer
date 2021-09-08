/*

smart-LED-Array
smart-Spectrometer
smart-UV-Photometer
smart-Colorimeter
smart-RGB-Photometer
smart-IR-Turbidimeter

OpenSCAD 3D model
Version 0.2

smart-LED-Array © Copyright 2020 by smartAquaMetering. All Rights Reserved.
smart-Spectrometer © Copyright 2020 by smartAquaMetering. All Rights Reserved.
smart-UV-Photometer © Copyright 2020 by smartAquaMetering. All Rights Reserved.
smart-Colorimeter © Copyright 2020 by smartAquaMetering. All Rights Reserved.
smart-RGB-Photometer © Copyright 2020 by smartAquaMetering. All Rights Reserved.
smart-IR-Turbidimeter © Copyright 2020 by smartAquaMetering. All Rights Reserved.

https://github.com/smartaquametering
https://github.com/smartaquametering/smartPhotometer

smart-LED-Array by smartAquaMetering is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
smart-Spectrometer by smartAquaMetering is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
smart-UV-Photometer by smartAquaMetering is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
smart-Colorimeter by smartAquaMetering is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
smart-RGB-Photometer by smartAquaMetering is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
smart-IR-Turbidimeter by smartAquaMetering is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.

Based on a work at https://github.com/smartaquametering/smartPhotometer.
Permissions beyond the scope of this license may be available at https://github.com/smartaquametering/smartPhotometer/blob/main/LICENSE.

View terms of the license here:
http://creativecommons.org/licenses/by-sa/4.0/

Version history
---------------
0.2 2020-11-23 Translation into English.
0.1 2020-10-25 Initial release.

*/

// -------------------------------------------------------------------------
// smart-UV-Photometer
// -------------------------------------------------------------------------
// - UV-LED beam angle		: 180 Degree (Absorbance measurement)
// - UV-Sensor              : VEML6070

//sysmode = 1;									// UV-LED Photometer
	sys11 = "UV-LED";							// Labeling back side
	sys12 = "Photometer";
	sys13 = "Transmitted light";
	sys14 = "";                                 // Labeling left side
	sys15 = "";
	sys16 = "";

// -------------------------------------------------------------------------
// smart-Colorimeter
// -------------------------------------------------------------------------
// - RGB-LED beam angle		: 180 Degree (Absorbance measurement)
// - RGB-Sensor             : Adafruit TCS34725

//sysmode = 2;									// Colorimeter
	sys21 = "RGB-LED";							// Labeling back side
	sys22 = "Photometer";
	sys23 = "Transmitted light";
	sys24 = "";                                 // Labeling left side
	sys25 = "";
	sys26 = "";

// -------------------------------------------------------------------------
// smart-RGB-Photometer
// -------------------------------------------------------------------------
// - RGB-LED beam angle		: 180 Degree (Absorbance measurement)
// - IR-LED beam angle		:  90 Degree (Nephelometric turbidity measurement)
// - VIS and IR Sensor		: Adafruit TSL2591

//sysmode = 3;									// RGB-LED Photometer
	sys31 = "RGB-LED";							// Labeling back side
	sys32 = "Photometer";
	sys33 = "Transmitted light";
	sys34 = "IR-LED";							// Labeling left side
	sys35 = "Turbidimeter";
	sys36 = "Scattered light";

// -------------------------------------------------------------------------
// smart-IR-Turbidimeter
// -------------------------------------------------------------------------
// - IR-LED beam angle		: 180 Degree (Absorbance measurement)
// - IR-LED beam angle		:  90 Degree (Nephelometric turbidity measurement)
// - IR Sensor              : Adafruit TSL2591

//sysmode = 4;									// IR-LED Turbidimeter
	sys41 = "IR-LED";							// Labeling back side
	sys42 = "Photometer";
	sys43 = "Transmitted light";
	sys44 = "IR-LED";							// Labeling left side
	sys45 = "Turbidimeter";
	sys46 = "Scattered light";

// -------------------------------------------------------------------------
// smart-Cuvette-Holder
// -------------------------------------------------------------------------
// - Beam angle             : 180 Degree (Absorbance measurement)
// - Toslink connectors		: 2x

//sysmode = 5;									// Cuvette Holder
	sys51 = "";							        // Labeling back side
	sys52 = "";
	sys53 = "";
	sys54 = "";							        // Labeling left side
	sys55 = "";
	sys56 = "";
    
// -------------------------------------------------------------------------
// smartPhotometer-Case-Lid
// -------------------------------------------------------------------------
//sysmode = 11;									// Case lid

// -------------------------------------------------------------------------
// smartPhotometer-Cover-for-square-Cuvette
// -------------------------------------------------------------------------
//sysmode = 12;									// Cover for square cuvette

// -------------------------------------------------------------------------
// smartPhotometer-Cover-for-round-Cuvette
// -------------------------------------------------------------------------
//sysmode = 13;								    // Cover for round cuvette

// -------------------------------------------------------------------------
// smartSpectrometer-Grating-Holder
// -------------------------------------------------------------------------
//sysmode = 14;								    // Holder for grating

// -------------------------------------------------------------------------
// smartSpectrometer-USB-Camera-Holder
// -------------------------------------------------------------------------
//sysmode = 15;								    // Holder for USB camera

// -------------------------------------------------------------------------
// smartSpectrometer-Light-Slit-Holder
// -------------------------------------------------------------------------
//sysmode = 16;								    // Holder for light slit

// -------------------------------------------------------------------------
// smartSpectrometer-Case
// -------------------------------------------------------------------------
//sysmode = 17;								    // Case part 1
//sysmode = 18;								    // Case part 2

// -------------------------------------------------------------------------
// smartLED-Array
// -------------------------------------------------------------------------
//sysmode = 21;								    // LED-Case part 1
//sysmode = 22;								    // LED-Case part 2
//sysmode = 23;								    // LED-Case part 3
//sysmode = 24;								    // LED-Case part 4
//sysmode = 25;								    // LED-Case part 5
sysmode = 26;								    // LED-Case part 6

// -------------------------------------------------------------------------
// smartPhotometer-Case
// -------------------------------------------------------------------------
//casemode = 1;                                 // Case + Cuvette holder
//casemode = 2;                                 // Cuvette holder only

// -------------------------------------------------------------------------
// Microcontroller
// -------------------------------------------------------------------------

mcbs	= "ESP32-WROOM-32 NodeMCU WLAN/WiFi";   // Labeling front side
mcip	= "192.168.4.1";                        // Labeling case lid

// -------------------------------------------------------------------------
// Copyright
// -------------------------------------------------------------------------

cr1     = "Open Source";                        // Labeling right side
cr2     = "Smart, simple and easy";
cr3     = "Made in Germany";

// -------------------------------------------------------------------------

// Cuvette
cvmode	= 0;				    // 0:= Square cuvette , 1:= Round cuvette
cvow	= 13.0;				    // Outer edge length		(X,Y)
cvh     = 45.0;                 // Height                   (Z)
//cvow	= 16.0;				    // Outer diameter           (X,Y)
//cvh	= 160.0;                // Height                   (Z)
cvoe	=  0.9;				    // Extra outer edge length / diameter
cvhw    =  4.8;                 // Wall thickness cuvette holder

cvw	= cvow+cvoe;			    // Total outer edge length / diameter
cvhh     = cvh-7.5;             // Holder height            (Z)

// Microcontroller
mch     = 50.0;				    // Height (board, plugs and cables)	(X)
mcl     = 55.0;				    // Length				(Y)
mcw     = 28.0;				    // Width				(Z)
mcbh	=  6.0;				    // Height (MC board only)		(Y)
mcbhl	=  2.0;				    // Length of board holder
mcbbh	=  4.0;			        // Height of board base (height adjustment)

// USB port
usbw	=  8.0;				    // Width	(X)
usbh	= 11.0;				    // Height	(Z)
usbd	=  0.4;				    // Depth	(Y)

// Sensors
sbid	= 20.0;				    // Installation depth of sensor board (incl. board, plugs and cables)	(Y)

// Sensor - Adafruit TSL2591
sbh1	= 16.5;				    // Height of sensor board - measured from bottom edge			(X)
sbw1	= 19.0;				    // Width of sensor board - measured from side edge			(Z)
sbd1	=  3.5;				    // Depth of sensor board						(Y)
scb1	=  9.4;				    // Distance between center of sensor chip and board bottom edge		(X)
scr1	=  9.4;				    // Distance between center of sensor chip and board right side edge	(Z)
scd1	=  4.0;				    // Pinhole diameter for sensor chip

sb11	= "Sensor";			    // Labeling front side
sb12	= "TSL2591";

// Sensor - Adafruit TCS34725
sbh2	= 20.3;				    // Height of sensor board - measured from bottom edge			(X)
sbw2	= 20.3;				    // Width of sensor board - measured from side edge			(Z)
sbd2	=  3.0;				    // Depth of sensor board						(Y)
scb2	=  9.4;				    // Distance between center of sensor chip and board bottom edge		(X)
scr2	= 11.5;				    // Distance between center of sensor chip and board right side edge	(Z)
scd2	=  4.0;				    // Pinhole diameter for sensor chip

sb21	= "Sensor";			    // Labeling front side
sb22	= "TCS34725";

// Sensor - VEML6070
sbh3	= 12.0;				    // Height of sensor board - measured from bottom edge			(X)
sbw3	= 13.0;				    // Width of sensor board - measured from side edge			(Z)
sbd3	=  2.9;				    // Depth of sensor board						(Y)
scb3	=  5.0;				    // Distance between center of sensor chip and board bottom edge		(X)
scr3	=  6.5;				    // Distance between center of sensor chip and board right side edge	(Z)
scd3	=  4.0;				    // Pinhole diameter for sensor chip

sb31	= "Sensor";			    // Labeling front side
sb32	= "VEML6070";

// LEDs
ledh	= 20.0;				    // Installation height

led1l	=  8.5;				    // Length
led1w	=  5.4;				    // Width (Diameter)
led1p	= 13.5;				    // Length plugs
led1t	= led1l+led1p;          // Length total (incl. plugs)
led1m	= led1l+led1t;          // Mounting depth

led2l	=  8.5;				    // Length
led2w	=  5.6;				    // Width (Diameter)
led2p	= 13.5;				    // Length plugs
led2t	= led2l+led2p;          // Length total (incl. plugs)
led2m	= led2l+led2t;          // Mounting depth

// Toslink connector
tfy     = 2.25;                 // Fiber length                 [Y]
tfd     = 2.5 + 0.1;            // Fiber diameter               [X, Y, Z]

tcy     = 7.25;                 // Connector width              [Y]
tcz     = 6.0 + 0.1;            // Connector height             [Z]
tcx     = 6.5 + 0.1;            // Connector length             [X]
tch     = tcy+1.2;              // Toslink connector height

tce     = tcz/4;                // Connector edge

tcs     = 1.5;                  // Connector snapper (radius)

// smartSpectrometer - Holder for light slit
lshx    = 43.0;                 // Light slit holder            [X]
lshy    =  2.2;                 // Light slit holder            [Y]
lshz    = 43.0;                 // Light slit holder            [Z]

lsfx    =  5.8;                 // Light slit frame length      [X]
lsfy    =  4.0;                 // Light slit frame width       [Y]

lspx    = lshx/2;               // Light slit focus position    [X]
lspy    = lshy+lsfy+cvhw+cvw/2; // Light slit focus position    [Y]
lspz    = lshz/2;               // Light slit focus position    [Z]

// Screw connection for grating and USB camera holders
hscd    = 2.75;                 // Screw diameter

// Grating holder
gix     = 36.0;                 // Grating inlet length         [X]
giz     = 25.0;                 // Grating inlet high           [Z]

gfx     = 51.0;                 // Grating frame length         [X]
gfy     =  1.75;                // Grating frame width          [Y]
//gfz     = 51.0;               // Grating frame high           [Z]
gfz     = 41.0;                 // Grating frame high           [Z]

ghx     = gfx+4*gfy;            // Grating holder               [X]
ghy     = 5*gfy;                // Grating holder               [Y]
ghz     = lshz-6;               // Grating holder               [Z]

gbx     = ghx;                  // Grating holder base plate    [X]
gby     = 12.0+ghy;             // Grating holder base plate    [Y]
gbz     = gfy*3;                // Grating holder base plate    [Z]

gpx     = ghx/2;                // Grating focus position       [X]
gpy     = 0;                    //                              [Y]
gpz     = lspz;                 //                              [Z]

// USB camera holder
cambox  = 36.0;                 // USB camera board length      [X]
camboy  =  1.5;                 // USB camera board width       [Y]
camboz  = 36.0;                 // USB camera board high        [Z]

camhx   = cambox+4*camboy;      // USB camera holder            [X]
camhy   = 5*camboy;             // USB camera holder            [Y]

cambpx  = camhx;                // USB camera holder base plate [X]
cambpy  = 12.0+camhy;           // USB camera holder base plate [Y]
cambpz  = camboy*3;             // USB camera holder base plate [Z]

campz   = camboz/2+cambpz;      // USB camera focus position    [Z]
campaz  = gpz-campz;            // USB camera focus position adjustment [Z]
camhz   = camboz+cambpz+campaz; // USB camera holder        [Z]
  
// smart-LED-Array - Case dimensions
ledcwo  =   2.0;                // Wall thickness outside
ledcwi  =   1.0;                // Wall thickness inside

// smart-LED-Array - LED Board
ledbx   = 120.0-0.6-2*ledcwo;   // Lengtht                      [X]
ledby   =  70.0;                // Hight                        [Y]
ledbz   =   1.8;                // Width                        [Z]
ledbd   =   6.8;                // LED holder diameter

// smart-LED-Array - Case dimensions
ledcx   = 120.0-2*ledcwo;       // Width inside                 [X]
ledcy   = ledbx+0.6;            // Length inside                [Y]
ledcz   = 100.0;                // Height inside                [Z]

// smart-LED-Array - Board holder
ledhx   = ledcwo;               // Board holder                 [X]
ledhy   = ledcwo;               // Board holder                 [Y]
ledhz   = ledby;                // Board holder                 [Z]
ledhbt  = ledbz+0.5;            // Board thickness              [X]
ledhdx  =  10.0;                // Holder distance              [X]

// Case dimensions
wo      =  1.6;                 // Wall thickness outside
wi      =  0.8;                 // Wall thickness inside
wr      =  1.6;                 // Wall rounding - Edge radius
cw      = mch+wi+cvw+led2m;     // Width inside                 [X]
cl      = sbid+wi+cvw+led1m;    // Length inside                [Y]
ch      = 36.0;                 // Height inside                [Z]

cvx     = wo+led2m+wi+cvw/2;    // Cuvette holder position      [X]
cvy     = wo+sbid+wi+cvw/2;     //                              [Y]
cvz     = wo+ch-ledh;           //                              [Z]

// Case - Cover for square cuvette
cctw	=  1.2;				    // Thickness wall
ccwi	= cvw+1.0;			    // Width inside
cchi	= cvh-wo-ch+15.0;       // Height inside

// Case - Lid
clh     =  2.0;                 // Height / Thickness           [Z]
clg     =  0.8;                 // Guide groove
cle     =  0.2;                 // Extra guide groove

// Case - Snapper
csd     =  1.2;                 // Depth
csl     =  8.0;                 // Length

// Case - Imprints / Labelings
cid     =  0.4;                 // Depth
ciw     =  0.8;                 // Width
ciaw	=  4.0;                 // Arrow width
cial	= 10.0;                 // Arrow length
ciad	=  1.0;                 // Distance between arrow and cuvette holder

// Cylinder parameter
cfn     = 10;                   // Number of fragments in 360 degrees

// "cube" with rounded edges and radius = r
module roundcube(x,y,z,r){
	hull(){
		translate([  r,  r,  r]) sphere(r=r);
		translate([x-r,  r,  r]) sphere(r=r);
		translate([  r,y-r,  r]) sphere(r=r);
		translate([x-r,y-r,  r]) sphere(r=r);
		translate([  r,  r,z-r]) sphere(r=r);
		translate([x-r,  r,z-r]) sphere(r=r);
		translate([  r,y-r,z-r]) sphere(r=r);
		translate([x-r,y-r,z-r]) sphere(r=r);
	}
}

// Open Source HardWare Logo
module gear_tooth_2d(d) {
	polygon( points=[ 
			[0.0,10.0*d/72.0], [0.5*d,d/15.0],
			[0.5*d,-d/15.0]  , [0.0,-10.0*d/72.0] ] );
}

module oshw_logo_2d(d=10.0) {
	rotate(-135) {
		difference() {
			union() {
				circle(r=14.0*d/36.0,$fn=cfn);
				for(i=[1:7]) {
					rotAngle=45*i+45;
					rotate(rotAngle) gear_tooth_2d(d);
				}
			}
			circle(r=10.0*d/72.0,$fn=cfn);
			intersection() {
				rotate(-20) square(size=[10.0*d/18.0,10.0*d/18.0]);
				rotate(20)  square(size=[10.0*d/18.0,10.0*d/18.0]);
			}
		}
	}
}

// Case labelings
module labelings(cib1,cib2,cib3,cif1,cif2,cif3,cil1,cil2,cil3,cir1,cir2,cir3){
	// Back side
	translate ([wo+cw/2,wo+cl+wo-cid,30]) rotate([90,180,180]) {
		linear_extrude(height = cid){
			translate ([0,19,0]) text(cib1,
				font = "Liberation Sans:style=Bold", size = 3.5, valign = "center", halign = "center");
			translate ([0,12,0]) text(cib2,
				font = "Liberation Sans:style=Bold", size = 4.5, valign = "center", halign = "center");
			translate ([0,6,0]) text(cib3,
				font = "Liberation Sans:style=Bold", size = 2.5, valign = "center", halign = "center");
		}
	}
	// Front side
	translate ([wo+cw/2,cid,30]) rotate([90,180,0]) {
		linear_extrude(height = cid){
			translate ([0,19,0]) text(cif1,
				font = "Liberation Sans:style=Bold", size = 3.5, valign = "center", halign = "center");
			translate ([0,12,0]) text(cif2,
				font = "Liberation Sans:style=Bold", size = 4.5, valign = "center", halign = "center");
			translate ([0,6,0]) text(cif3,
				font = "Liberation Sans:style=Bold", size = 2.5, valign = "center", halign = "center");
		}
	}
	// Left side
	if(cil1!="") {
		translate ([cid,wo+cl/2,30]) rotate([270,0,90]) {
			linear_extrude(height = cid){
				translate ([0,19,0]) text(cil1,
					font = "Liberation Sans:style=Bold", size = 3.5, valign = "center", halign = "center");
				translate ([0,12,0]) text(cil2,
					font = "Liberation Sans:style=Bold", size = 4.5, valign = "center", halign = "center");
				translate ([0,6,0]) text(cil3,
					font = "Liberation Sans:style=Bold", size = 2.5, valign = "center", halign = "center");
			}
		}
	}
	// Right side
	translate ([2*wo+cw-cid,wo+cl/2,30]) rotate([90,180,90]) {
		linear_extrude(height = cid){
			translate ([-26,21,0]) oshw_logo_2d(12);
			translate ([0,19,0]) text(cir1,
				font = "Liberation Sans:style=Bold", size = 3.5, valign = "center", halign = "center");
			translate ([0,12,0]) text(cir2,
				font = "Liberation Sans:style=Bold", size = 4.0, valign = "center", halign = "center");
			translate ([0,6,0]) text(cir3,
				font = "Liberation Sans:style=Bold", size = 2.5, valign = "center", halign = "center");
		}
	}
}

// Outer case
module outercase(cib1,cib2,cib3,cif1,cif2,cif3,cil1,cil2,cil3,cir1,cir2,cir3){
	difference(){
		// Outer case
		translate([ 0, 0, 0]) roundcube(wo+cw+wo,wo+cl+wo,wo+ch+clh,wr);
		// Inner space
		translate([wo,wo,wo]) cube([cw,cl,ch+clh]);
		// USB port
		translate([wo+cw+wo-usbw,0,wo+mcw/2+mcbbh-usbh/2]) cube([usbw,wo+usbd,usbh]);
		// Inset for lid
		translate([wo,0,wo+ch]) cube([cw,wo+cl+wo,clh]);
		// Guide groove for lid
		translate([wo-clg,0,wo+ch]) cube([clg+cw+clg,wo+cl+wo,clh/2]);
		// Square cuvette holder - drilling hole
		if(cvmode==0) translate([cvx-cvw/2,cvy-cvw/2,0]) cube([cvw,cvw,wo]);
		// Round cuvette holder - drilling hole
		if(cvmode==1) translate([cvx,cvy,0]) cylinder(d=cvw,h=wo,$fn=cfn);
		// Labeling (arrow)
		translate([cvx-ciaw,cvy+cvw/2+wi+ciad,0]) linear_extrude(height = cid){difference(){
			polygon(points=[[ciaw,0],[0,ciaw],[1/2*ciaw,ciaw],[ciaw/2,ciaw+cial],[3*ciaw/2,ciaw+cial],[3*ciaw/2,ciaw],[2*ciaw,ciaw]]);
			polygon(points=[[ciaw,sqrt(2)*ciw],[sqrt(2)*ciw+ciw,ciaw-ciw],[1/2*ciaw+ciw,ciaw-ciw],[ciaw/2+ciw,ciaw+cial-ciw],
					[3*ciaw/2-ciw,ciaw+cial-ciw],[3*ciaw/2-ciw,ciaw-ciw],[2*ciaw-sqrt(2)*ciw-ciw,ciaw-ciw]]);}
		}
		labelings(cib1,cib2,cib3,cif1,cif2,cif3,cil1,cil2,cil3,cir1,cir2,cir3);
	}
	snapper();
}

// Snapper
module snapper(){
	// Snapper 1 top rounding
	translate([wo+cw/2-csl/2+csd/2,wo+csd/2   ,wo+ch    ]) sphere(, d=csd);
	// Snapper 1 holder
	translate([wo+cw/2-csl/2      ,wo         ,wo+ch-csd]) cube([csd,csd,csd]);
	// Snapper 1 base rounding
	translate([wo+cw/2-csl/2      ,wo         ,wo+ch-csd]) rotate ([-90,0,-90]) cylinder(h=csd,d=2*csd,$fn=cfn);
	// Snapper 1 top rounding
	translate([wo+cw/2+csl/2-csd/2,wo+csd/2   ,wo+ch    ]) sphere(, d=csd);
	// Snapper 1 holder
	translate([wo+cw/2+csl/2-csd  ,wo         ,wo+ch-csd]) cube([csd,csd,csd]);
	// Snapper 1 base rounding
	translate([wo+cw/2+csl/2-csd  ,wo         ,wo+ch-csd]) rotate ([-90,0,-90]) cylinder(h=csd,d=2*csd,$fn=cfn);
	// Snapper 2 top rounding
	translate([wo+cw/2-csl/2+csd/2,wo+cl-csd/2,wo+ch    ]) sphere(, d=csd);
	// Snapper 2 holder
	translate([wo+cw/2-csl/2      ,wo+cl-csd  ,wo+ch-csd]) cube([csd,csd,csd]);
	// Snapper 2 base rounding
	translate([wo+cw/2-csl/2      ,wo+cl      ,wo+ch-csd]) rotate ([-90,0,-90]) cylinder(h=csd,d=2*csd,$fn=cfn);
	// Snapper 2 top rounding
	translate([wo+cw/2+csl/2-csd/2,wo+cl-csd/2,wo+ch    ]) sphere(, d=csd);
	// Snapper 2 holder
	translate([wo+cw/2+csl/2-csd  ,wo+cl-csd  ,wo+ch-csd]) cube([csd,csd,csd]);
	// Snapper 2 base rounding
	translate([wo+cw/2+csl/2-csd  ,wo+cl      ,wo+ch-csd]) rotate ([-90,0,-90]) cylinder(h=csd,d=2*csd,$fn=cfn);
}

// MC board holder
module boardholder(){
	// Left side
	difference(){
		translate([wo+cw-mcbh-wi,wo,wo                   ]) cube([wi  ,mcbhl   ,ch  ]);
		// USB port
		translate([wo+cw+wo-usbw, 0,wo+mcw/2+mcbbh-usbh/2]) cube([usbw,wo+usbd ,usbh]);
	}
	// Base (height adjustment)
	translate([wo+cw-mcbh ,wo+mcl/8*1.5,wo]) cube([mcbh,wi,mcbbh]);
	translate([wo+cw-mcbh ,wo+mcl/8*4.0,wo]) cube([mcbh,wi,mcbbh]);
	translate([wo+cw-mcbh ,wo+mcl/8*6.5,wo]) cube([mcbh,wi,mcbbh]);
	// Right side
	difference(){
		translate([wo+cw-mcbh-wi,wo+mcl-mcbhl,wo]) cube([wi+mcbh,mcbhl+2*wi,ch]);
		// Thickness board
		translate([wo+cw-mcbh,wo+mcl-mcbhl,wo]) cube([2.0,mcbhl+wi,ch]);
		translate([wo+cw-mcbh,wo+mcl-mcbhl,wo]) cube([mcbh,1.0,ch]);
	}
}

// Cuvette, LED and sensor holder
module cuvetteholder(sbid,sbd,sbh,sbw,scb,scr,scd){

	// sbid	= Installation depth of sensor board (incl. board, plugs and cables) (Y)
	// sbd	= Depth of sensor board (Y)
	// sbh	= Height of sensor board - measured from bottom edge (X)
	// sbw	= Width of sensor board - measured from side edge (Z)
	// scb	= Distance between center of sensor chip and board bottom edge (X)
	// scr	= Distance between center of sensor chip and board right side edge (Z)
	// scd	= Pinhole diameter for sensor chip

	sct = sbh-scb+0.25;	// Distance between center of sensor chip and board top edge       (X)
	scl = sbw-scr;		// Distance between center of sensor chip and board left side edge (Z)

	difference(){
		union(){
			// Square cuvette holder
			if(cvmode==0) translate([cvx-cvw/2-wi,cvy-cvw/2-wi,wo]) cube([cvw+2*wi,cvw+2*wi,ch]);
			// Round cuvette holder
			if(cvmode==1) translate([cvx,cvy,wo]) cylinder(d=cvw+2*wi,h=ch,$fn=cfn);
			// LED 1 holder
			translate([cvx-(4*wi+led1w)/2,cvy+cvw/2-wi,wo]) cube([4*wi+led1w,led1l+2*wi,ch]);
			// LED 2 holder
			translate([cvx-cvw/2-wi-led2l,cvy-(4*wi+led2w)/2,wo]) cube([led2l+2*wi,4*wi+led2w,ch]);
			// Sensor board holder
			translate([cvx-sct-wi,cvy-cvw/2-wi-sbd-wi,wo]) cube([sbh+wi-2,sbd+2*wi,cvz+scl+0.5]);
		}
		// Square cuvette holder - drilling hole
		if(cvmode==0) translate([cvx-cvw/2,cvy-cvw/2,wo]) cube([cvw,cvw,ch]);
		// Round cuvette holder - drilling hole
		if(cvmode==1) translate([cvx,cvy,wo]) cylinder(d=cvw,h=ch,$fn=cfn);
		// LED 1 holder - drilling hole
		translate([cvx,cvy+cvw/2-2*wi ,cvz]) rotate ([-90,0,0]) cylinder(h=led1l+3*wi, d=led1w-2*wi  ,$fn=cfn);
		translate([cvx,cvy+cvw/2+2*wi ,cvz]) rotate ([-90,0,0]) cylinder(h=led1l     , d=led1w       ,$fn=cfn);
		translate([cvx,cvy+cvw/2+led1l,cvz]) rotate ([-90,0,0]) cylinder(h=wi        , d=led1w+2.1*wi,$fn=cfn);
		// LED 1 labeling
		translate([cvx,cvy+cvw/2+wi,wo+ch-cid]) rotate([0,0,90]) {
			linear_extrude(height = cid){
				translate ([4,0,0]) text("1",
					font = "Liberation Sans:style=Bold", size = 4, valign = "center", halign = "center");
			}
		}
        if ((sysmode==3) || (sysmode==4)) {
            // LED 2 holder - drilling hole
            translate([cvx-cvw/2-wi-led2l,cvy,cvz]) rotate ([0,90,0]) cylinder(h=led2l+3*wi, d=led2w-2*wi  ,$fn=cfn);
            translate([cvx-cvw/2-wi-led2l,cvy,cvz]) rotate ([0,90,0]) cylinder(h=led2l     , d=led2w       ,$fn=cfn);
            translate([cvx-cvw/2-wi-led2l,cvy,cvz]) rotate ([0,90,0]) cylinder(h=wi        , d=led2w+2.1*wi,$fn=cfn);
        }
		// LED 2 labeling
		translate([cvx-cvw/2-wi-led2l,cvy,wo+ch-cid]) rotate([0,0,90]) {
			linear_extrude(height = cid){
				translate ([0,-4,0]) text("2",
					font = "Liberation Sans:style=Bold", size = 4, valign = "center", halign = "center");
			}
		}
		// Sensor board holder
		translate([cvx-sct      ,cvy-cvw/2-wi-sbd   ,cvz-scr]) cube([sbh,sbd      ,sbw+1]);
		translate([cvx-sct+sbh-5,cvy-cvw/2-wi-sbd-wi,cvz-scr]) cube([5  ,sbd+2*wi ,sbw+1]);
		// Sensor chip pinhole
		hull(){
			translate([cvx,cvy-cvw/2-wi,cvz+scd/2]) rotate ([-90,0,0]) cylinder(h=3*wi, d=scd,$fn=cfn);
			translate([cvx,cvy-cvw/2-wi,cvz-scd/2]) rotate ([-90,0,0]) cylinder(h=3*wi, d=scd,$fn=cfn);
		}
		// Sensor chip position
		// translate([cvx,0,cvz]) rotate ([-90,0,0]) cylinder(h=sbid+wo+20*wi, d=0.5,$fn=cfn);
	}
}

// Cuvette holder with Toslink connectors
module cuvetteholdertoslink(){

    // tfy = Fiber length     [Y]
    // tfd = Fiber diameter   [X, Y, Z]
    // tcy = Connector width  [Y]
    // tcz = Connector height [Z]
    // tcx = Connector length [X]
    // tce = Connector edge
    // tcs = Connector snapper (radius)

	difference(){
		union(){
			// Square cuvette holder
			if(cvmode==0)
                translate([cvx-cvw/2-6*wi,cvy-cvw/2-6*wi,wo]) cube([cvw+12*wi,cvw+12*wi,ch]);
			// Round cuvette holder
			if(cvmode==1)
                translate([cvx,cvy,wo]) cylinder(d=cvw+2*wi,h=ch,$fn=cfn);
			// Toslink connector 1
			translate([cvx-tcx/2-3*wi,cvy+cvw/2+wi,wo])         cube([tcx+6*wi,tcy+tfy,ch]);
			// Toslink connector 2
			translate([cvx-tcx/2-3*wi,cvy-cvw/2-wi-tcy-tfy,wo]) cube([tcx+6*wi,tcy+tfy,ch]);
            //Plate
            translate([cvx,cvy,0]) cylinder(d=cvw+2*wi+2*tfy+2*tcy+3*wo,h=2*wo,$fn=cfn);
		}
		// Square cuvette holder - drilling hole
		if(cvmode==0)
            translate([cvx-cvw/2,cvy-cvw/2,wo]) cube([cvw,cvw,ch]);
		// Round cuvette holder - drilling hole
		if(cvmode==1)
            translate([cvx,cvy,wo]) cylinder(d=cvw,h=ch,$fn=cfn);
		// Toslink connector 1 - drilling holes
        // Fiber
		translate([cvx,cvy+cvw/2,cvz]) rotate ([-90,0,0]) cylinder(h=tfy+tcy+wi,d=tfd,$fn=cfn);

        // Connector
        translate([cvx,cvy+cvw/2+wi+tfy+tcy,cvz]) rotate ([90,0,0]) 
            linear_extrude(height = tcy, center = false, convexity = 10, twist = 0)
                polygon(points = [
                    [ tcx/2    , -tcy/2+tce],
                    [ tcx/2-tce, -tcy/2    ],
                    [-tcx/2+tce, -tcy/2    ],
                    [-tcx/2    , -tcy/2+tce],
                    [-tcx/2    ,  tcy/2    ],
                    [ tcx/2    ,  tcy/2    ]
                ]);
 
        // Toslink connector 1 - snapper
        translate([cvx-tcx/2,cvy+cvw/2+wi+tfy+tcy,cvz])rotate([90,0,0])
        hull() {
            translate([tcx,0,0])
                cylinder(d=tcs,h=tcy,$fn=cfn);
                cylinder(d=tcs,h=tcy,$fn=cfn);
        }

        // Toslink connector 1 labeling
		translate([cvx,cvy+cvw/2+wi,wo+ch-cid]) rotate([0,0,90]) {
			linear_extrude(height = cid){
				translate ([4.5,0,0]) text("◄",
					font = "Liberation Sans:style=Bold", size = 6, valign = "center", halign = "center");
			}
		}

        // Toslink connector 2 - drilling holes
        // Fiber
        translate([cvx,cvy-cvw/2-wi-tcy ,cvz]) rotate ([-90,0,0]) cylinder(h=tfy+tcy+wi,d=tfd,$fn=cfn);

        // Connector
        translate([cvx,cvy-cvw/2-wi-tfy,cvz]) rotate ([90,0,0]) 
            linear_extrude(height = tcy, center = false, convexity = 10, twist = 0)
                polygon(points = [
                    [ tcx/2    , -tcy/2+tce],
                    [ tcx/2-tce, -tcy/2    ],
                    [-tcx/2+tce, -tcy/2    ],
                    [-tcx/2    , -tcy/2+tce],
                    [-tcx/2    ,  tcy/2    ],
                    [ tcx/2    ,  tcy/2    ]
                ]);

         // Toslink connector 2 - snapper
        translate([cvx-tcx/2,cvy-cvw/2-wi-tfy,cvz])rotate([90,0,0])
        hull() {
            translate([tcx,0,0])
                cylinder(d=tcs, h=tcy, $fn=cfn);
                cylinder(d=tcs, h=tcy, $fn=cfn);
        }

		// Toslink connector 2 labeling
		translate([cvx,cvy-cvw/2-wi-tcy-tfy,wo+ch-cid]) rotate([0,0,90]) {
			linear_extrude(height = cid){
				translate ([4.5,0,0]) text("◄",
					font = "Liberation Sans:style=Bold", size = 6, valign = "center", halign = "center");
			}
		}
	}
}

// Case
module case(sbid,sbd,sbh,sbw,scb,scr,scd,cib1,cib2,cib3,cif1,cif2,cif3,cil1,cil2,cil3,cir1,cir2,cir3){
	if (casemode==1) {
		// Case + board holder
        outercase(cib1,cib2,cib3,cif1,cif2,cif3,cil1,cil2,cil3,cir1,cir2,cir3);
        boardholder();
	}
    cuvetteholder(sbid,sbd,sbh,sbw,scb,scr,scd);
}

// Case - Lid
module lid(cil1){
	// wo	= Wall thickness outside
	// wr	= Wall rounding - Edge radius

	// cw	= Width inside (X)
	// cl	= Length inside (Y)

	// clh	= Height / Thickness (Z)
	// clg	= Guide groove
	// cle	= Extra guide groove

	// csd	= Snapper depth
	// csl	= Snapper length

	// cil1	= Labeling lid

	difference(){
		union(){
			// Lid
			translate([wo+cle,0,0]) cube([cw-2*cle,wo+cl+wo,clh-wr  ]);
			// Rounded edge
			difference(){
				hull(){
					translate([wo+cle,0+wr       ,clh-wr]) rotate([0,90,0]) cylinder(h=cw-2*cle, r=wr, $fn=cfn);
					translate([wo+cle,wo+cl+wo-wr,clh-wr]) rotate([0,90,0]) cylinder(h=cw-2*cle, r=wr, $fn=cfn);
				}
				translate([wo-clg+cle-20,0-20,-20]) cube([clg+cw+clg-2*cle+40,wo+cl+wo+40,clh/2-2*cle+20]);
			}
			// Guide groove
			translate([wo-clg+cle,0,0]) cube([clg+cw+clg-2*cle,wo+cl+wo,clh/2-2*cle]);
		}
		// Snapper groove
		translate([wo+cw/2-csl/2-cle,wo      ,0]) cube([csl+2*cle,csd,csd]);
		// Snapper groove
		translate([wo+cw/2-csl/2-cle,wo+cl-csd,0]) cube([csl+2*cle,csd,csd]);
		// Labeling
		translate ([wo+cw/2,wo+cl/2,clh-cid]) rotate([0,0,0]) {
			linear_extrude(height = cid){
				translate ([0,0,0]) text(cil1,
					font = "Liberation Sans:style=Bold", size = 6, valign = "center", halign = "center");
			}
		}
	}
}

// Case - Cover for square cuvette
module cuvettecoversquare(tw, wi, hi){
	// tw = Thickness wall
	// wi = Width inside
	// hi = Height inside

	difference(){
		cube (size = [wi + 2*tw,wi + 2*tw,hi + tw]);
		translate ([tw,tw,tw]) cube (size = [wi,wi,hi+2*tw]);
		translate ([tw+wi/2,tw+wi/2,-tw]) cylinder(d=tw ,h =hi*2, $fn=cfn);
	}
}

// smartSpectrometer - Holder for grating
module gratingholder(){
	
    // Grating holder
    difference(){
        union(){
            // Holder
            cube (size = [ghx,ghy,ghz]);
            // Ground plate
            linear_extrude(height = gbz, center = false, convexity = 10, twist = 0)
                polygon(points = [
                    [0      , 0      ],
                    [gbx    , 0      ],
                    [gbx    , gby-7.5],
                    [gbx-7.5, gby    ],
                    [7.5    , gby    ],
                    [ 0     , gby-7.5]
                ]);
        }
        translate([(ghx-gfx)/2+gfy,0,gbz])
        cube (size = [gfx-2*gfy,ghy,gfz]);
        translate([(ghx-gfx)/2,(ghy-gfy)/2,1])
        cube (size = [gfx,gfy,gfz]);
        // Screw groover
        translate([(gbx-gfx*0.75)/2,gby-(gby-ghy)/2,0])
        cube (size = [gfx*0.75,hscd,gbz]);
        // Label X (ground plate)
        translate([gbx/2-0.25,0,gbz-0.5])
        cube (size = [0.5,gby,0.5]);
        // Label Z
        translate([0,ghy-0.5,gpz-0.25])
        cube (size = [ghx+50,0.5,0.5]);
        translate([0,0,gpz-0.25])
        cube (size = [ghx+50,0.5,0.5]);
    }
}

// smartSpectrometer - Holder for USB camera
module cameraholder(){

	union(){
        // USB camera holder
        difference(){
            cube (size = [camhx,camhy,camhz-camboz*0.25]);
            translate([(camhx-cambox)/2+camboy,0,camhz-camboz])
            cube (size = [cambox-2*camboy,camhy,camboz]);
            translate([(camhx-cambox)/2,(camhy-camboy)/2,camhz-camboz])
            cube (size = [cambox,camboy,camboz]);
            // Label X
            translate([0,camhy-0.5,gpz-0.25])
            cube (size = [ghx,0.5,0.5]);
            // Label Z
            translate([camhx/2-0.25,camhy-0.5,0])
            cube (size = [0.5,0.5,ghz]);
            // Label X
            translate([0,0,gpz-0.25])
            cube (size = [ghx,0.5,0.5]);
            // Label Z
            translate([camhx/2-0.25,0,0])
            cube (size = [0.5,0.5,ghz]);
        }
        // Case attachment
        difference(){
            linear_extrude(height = cambpz, center = false, convexity = 10, twist = 0)
                polygon(points = [
                    [0         , 0         ],
                    [cambpx    , 0         ],
                    [cambpx    , cambpy-7.5],
                    [cambpx-7.5, cambpy    ],
                    [7.5       , cambpy    ],
                    [ 0        , cambpy-7.5]
                ]);

            // Screw groover
            translate([(cambpx-cambox*0.75)/2,cambpy-(cambpy-camhy)/2,0])
            cube (size = [cambox*0.75,hscd,cambpz]);
            // Label
            translate([cambpx/2-0.25,0,cambpz-0.5])
            cube (size = [0.5,cambpy,0.5]);
        }
    }
}

// smartSpectrometer - Holder for light slit
module lightslitholder(){

    difference(){
        union(){
            // Light slit holder (inside Spectrometer)
            cube (size = [lshx,lshy,lshz]);
            translate([lspx-lsfx/2,lshy,5])
                cube (size = [lsfx,lsfy,lshz-5.0-12.0]);
            // Square cuvette holder
            if(cvmode==0)
                translate([lspx-cvw/2-cvhw,lspy-cvw/2-cvhw,0])
                    cube([cvw+2*cvhw,cvw+2*cvhw,cvhh]);
            // Round cuvette holder
            if(cvmode==1)
                translate([lspx,lspy,0])
                    cylinder(d=cvw+2*wi,h=2*ledh,$fn=cfn);
            // Toslink connector 180°
            translate([lspx-tcx/2-3*wi,lspy+cvw/2,0])
                cube([tcx+cvhw,tcy+tfy,cvhh]);
            // Toslink connector 90°
            translate([lspx-cvw/2-tcy-tfy,lspy-tcx/2-3*wi,0])
                cube([tcy+tfy,tcx+cvhw,cvhh]);
        }
        // Label X
        translate([0,0,lspz-0.25])
            cube (size = [lshx,0.5,0.5]);
        // Label Z
        translate([lshx/2-0.25,0,0])
            cube (size = [0.5,0.5,lshz]);

        // Square cuvette holder - drilling hole
        if(cvmode==0)
            translate([lspx-cvw/2,lspy-cvw/2,lspz-ledh])
                cube([cvw,cvw,cvh]);
        // Round cuvette holder - drilling hole
        if(cvmode==1)
            translate([lspx,lspy,wo])
                cylinder(d=cvw,h=ch,$fn=cfn);
        // Toslink connector 180° - drilling holes
        // Fiber
        translate([lspx,0,lspz]) rotate ([-90,0,0])
            cylinder(h=100,d=tfd,$fn=cfn);

        // Connector
        translate([lspx,lspy+cvw/2+tfy+tcy,lspz]) rotate ([90,0,0]) 
            linear_extrude(height = tcy, center = false, convexity = 10, twist = 0)
                polygon(points = [
                    [ tcx/2    , -tcy/2+tce],
                    [ tcx/2-tce, -tcy/2    ],
                    [-tcx/2+tce, -tcy/2    ],
                    [-tcx/2    , -tcy/2+tce],
                    [-tcx/2    ,  tcy/2    ],
                    [ tcx/2    ,  tcy/2    ]
                ]);
 
        //Snapper
        translate([lspx-tcx/2,lspy+cvw/2+tfy+tcy,lspz])rotate([90,0,0])
        hull() {
            translate([tcx,0,0])
                cylinder(d=tcs,h=tcy,$fn=cfn);
                cylinder(d=tcs,h=tcy,$fn=cfn);
        }

        // Labeling
        translate([lspx,lspy+cvw/2,cvhh-cid]) rotate([0,0,90]) {
            linear_extrude(height = cid){
                translate ([4.5,0,0]) text("◄",
                    font = "Liberation Sans:style=Bold", size = 6, valign = "center", halign = "center");
            }
        }

        // Toslink connector 90° - drilling holes
        // Fiber
        translate([lspx-cvw/2-tfy-tcy,lspy,lspz]) rotate ([0,90,0])
            cylinder(h=tfy+tcy,d=tfd,$fn=cfn);

        // Connector
        translate([lspx-cvw/2-tfy-tcy,lspy,lspz]) rotate ([-90,180,-90]) 
            linear_extrude(height = tcy, center = false, convexity = 10, twist = 0)
                polygon(points = [
                    [ tcx/2    , -tcy/2+tce],
                    [ tcx/2-tce, -tcy/2    ],
                    [-tcx/2+tce, -tcy/2    ],
                    [-tcx/2    , -tcy/2+tce],
                    [-tcx/2    ,  tcy/2    ],
                    [ tcx/2    ,  tcy/2    ]
                ]);

        //Snapper
        translate([lspx-cvw/2-tfy-tcy,lspy-tcx/2,lspz])rotate([-90,180,-90])
        hull() {
            translate([tcx,0,0])
                cylinder(d=tcs,h=tcy,$fn=cfn);
                cylinder(d=tcs,h=tcy,$fn=cfn);
        }

        // Labeling
        translate([lspx-cvw/2,lspy,cvhh-cid]) rotate([0,0,180]) {
            linear_extrude(height = cid){
                translate ([5,0,0]) text("90°",
                    font = "Liberation Sans:style=Bold", size = 3, valign = "center", halign = "center");
            }
        }
    }
}

// smartSpectrometer - Case part 1
module spectrometercasepart1(){

    // Case dimensions
    wo      =   1.25;           // Wall thickness outside
    wi      =   0.8;            // Wall thickness inside
    cw1     = 115.0;            // Width inside                 [X]
    cw2     = 115.0;            // Width inside                 [X]
    cl      = 100.0;            // Length inside                [Y]
    cl1     =  50.0;            // Length inside                [Y]    
    ch      =  60.0;            // Height inside                [Z]
//    ch      =  0.1;            // Height inside                [Z]

    px1     = 0;                // Position case 1
    px2     = wo+cw1+wo;        // Position case 2

    cvw1     = cl1/3;           // Width            Cover 2
    cvh1     = ch/2;             // Hight
    cvx1     = cw1/4;           // Position
    cvy1     = cl1/3;           // Position
    cvz1     = ch/4;             // Position

    cvw2     = cl1/3;           // Width            Cover 2
    cvh2     = ch/2;             // Hight
    cvx2     = cw1/4;           // Position
    cvy2     = cl1/3;           // Position
    cvz2     = ch/4;             // Position

    cvw3     = cl1/3;            // Width            Cover 3
    cvh3     = ch/2;             // Hight
    cvx3     = cw1/2;           // Position
    cvy3     = cl1/3;            // Position
    cvz3     = ch/4;             // Position

    cvw4     = cl1;              // Width            Cover 4
    cvh4     = ch/2;             // Hight
    cvx4     = cw1/4*3;         // Position
    cvy4     = 0;                // Position
    cvz4     = ch/4;             // Position

    cvw5     = cl1/2;            // Width            Cover 5
    cvh5     = ch/2;             // Hight
    cvx5     = cw1+wo;           // Position
    cvy5     = cl1/4;            // Position
    cvz5     = ch/4;             // Position

    cvw6     = cvw5;              // Width            Cover 6
    cvh6     = cvh5;              // Hight
    cvx6     = px2;              // Position
    cvy6     = cl1/4;            // Position
    cvz6     = cvz5;              // Position

    cvx     = wo+led2m+wi+cvw/2;// Cuvette holder position      [X]
    cvy     = wo+sbid+wi+cvw/2; //                              [Y]
    cvz     = wo+ch-ledh;       //                              [Z]
   
    // Case - Cover for square cuvette
    cctw	=  1.2;				// Thickness wall
    ccwi	= cvw+1.0;			// Width inside
    cchi	= cvh-wo-ch+15.0;   // Height inside

    // smartSpectrometer - Case part 1
    difference(){
        // Outer case
        translate([ px1,0,0]) cube([wo+cw1+wo,wo+cl+wo,wo+ch]);
        translate([0,wo+cl1+wo,0]) cube([cw1+2*wo,cl-cl1,ch+wo]);
        translate([0,0,0]) cube([cvx1,cvw1-2*wo,ch+wo]);

        translate([0,0,0]) cube (size = [cvx1,cl1,(ch-cvh1)/2-2*wo]);
        translate([0,0,ch-(ch-cvh1)/2+2*wo]) cube (size = [cvx1,cl1,(ch-cvh1)/2-wo]);
        
        translate([0,cl1-cvw2+2*wo,0]) cube([cvx2,cvw2,ch+wo]);
        // Inner space
        translate([cvx2+wo,wo,wo]) cube([cw1-cvx2,cl1,ch]);
        // Label light path
        translate([wo,wo+cl1/2-0.25,wo-0.5]) cube (size = [cw1,0.5,0.5]);
        // Cover
        translate([0,cvy1,cvz1]) cube (size = [wo+cvx1,cvw1,cvh1]);
        translate([cvx5,cvy5,cvz5]) cube (size = [wo,cvw5,cvh5]);
    }

    // Cover
    difference(){
        translate([cvx2,wo,wo]) cube (size = [wo,cl1,ch]);
        translate([cvx2,cvy2,cvz2]) cube (size = [wo,cvw2,cvh2]);
    }

    difference(){
        translate([cvx3,wo,wo]) cube (size = [wo,cl1,ch]);
        translate([cvx3,cvy3,cvz3]) cube (size = [wo,cvw3,cvh3]);
    }

    difference(){
        translate([cvx4,wo,wo]) cube (size = [wo,cl1,ch]);
        translate([cvx4,cvy4,cvz4]) cube (size = [wo,cvw4,cvh4]);
    }

    // smartSpectrometer - Case part 2
    difference(){
        // Outer case
        translate([px2,0,0]) cube([wo+cw2+wo,wo+cl+wo,wo+ch]);
        // Inner space
        translate([wo+px2,wo,wo]) cube([cw2,cl,ch]);
        // Label light path
        translate([wo+px2,wo+cl1/2-0.25,wo-0.5]) cube (size = [cw2,0.5,0.5]);
        // Cover
        translate([cvx6,cvy6,cvz6]) cube (size = [wo,cvw6,cvh6]);
    }
}

// smartSpectrometer - Case part 2
module spectrometercasepart2(){
}

// smartSpectrometer - LED Case part 1 (LED holder)
module spectrometerledcasepart1(){
    difference(){
        // LED holder plate
        union (){
            translate([0,0,0]) cube([ledbx,ledby,ledbz]);
            translate([3.5,0,0]) cube([ledbx-7,2*ledbz,3*ledbz]);
            translate([3.5,ledby-2*ledbz,0]) cube([ledbx-7,2*ledbz,3*ledbz]);
        }
        translate([3.5,0,ledbz]) cube([ledbx-7,ledbz,2*ledbz]);
        // Row 1
        translate([ledbx/9*1,ledby/6*1,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        translate([ledbx/9*2,ledby/6*1,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        translate([ledbx/9*3,ledby/6*1,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        translate([ledbx/9*4,ledby/6*1,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        translate([ledbx/9*5,ledby/6*1,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        translate([ledbx/9*6,ledby/6*1,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        translate([ledbx/9*7,ledby/6*1,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        translate([ledbx/9*8,ledby/6*1,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        // Row 2
        translate([ledbx/9*1,ledby/6*2,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        translate([ledbx/9*2,ledby/6*2,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        translate([ledbx/9*3,ledby/6*2,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        translate([ledbx/9*4,ledby/6*2,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        translate([ledbx/9*5,ledby/6*2,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        translate([ledbx/9*6,ledby/6*2,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        translate([ledbx/9*7,ledby/6*2,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        translate([ledbx/9*8,ledby/6*2,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        // Row 3
        translate([ledbx/9*1,ledby/6*3,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        translate([ledbx/9*2,ledby/6*3,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        translate([ledbx/9*3,ledby/6*3,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        translate([ledbx/9*4,ledby/6*3,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        translate([ledbx/9*5,ledby/6*3,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        translate([ledbx/9*6,ledby/6*3,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        translate([ledbx/9*7,ledby/6*3,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        translate([ledbx/9*8,ledby/6*3,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        // Row 4
        translate([ledbx/9*2-5.75,ledby/6*4.5,0]) cylinder(d=1,h=ledbz,$fn=cfn);
        translate([ledbx/9*2+5.75,ledby/6*4.5,0]) cylinder(d=1,h=ledbz,$fn=cfn);
        translate([ledbx/9*2,ledby/6*4.5,0]) rotate([0,0,45]) cube([8,13,2*ledbz],center=true);
        translate([ledbx/9*4,ledby/6*4,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        translate([ledbx/9*5,ledby/6*4,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        translate([ledbx/9*6,ledby/6*4,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        translate([ledbx/9*7,ledby/6*4,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
        translate([ledbx/9*8,ledby/6*4,0]) cylinder(d=ledbd,h=ledbz,$fn=cfn);
    }
}

// smartSpectrometer - LED Case part 2 (Toslink Connector Patchpanel)
module spectrometerledcasepart2(){

    difference(){
        union(){
            // Toslink connector holder plate      
            translate([0,0,0]) cube([ledbx,ledby,ledbz]);
        	// Toslink connector block
			translate([(ledbx-110)/2,(ledby-34)/2+ledby/6,0]) cube([110,ledby-29,tch]);
			translate([40,0,0]) cube([ ledbx-(ledbx-110)/2-40,34,tch]);
        }

		// Toslink connector - drilling holes
        // Fiber Row 1
        translate([ledbx/9*2,ledby/6*1.5,0]) cylinder(d=16,h=ledbz,$fn=cfn);
        toslinkconnector(ledbx/9*4,ledby/6*2,0);
        toslinkconnector(ledbx/9*5,ledby/6*2,0);
        toslinkconnector(ledbx/9*6,ledby/6*2,0);
        toslinkconnector(ledbx/9*7,ledby/6*2,0);
        toslinkconnector(ledbx/9*8,ledby/6*2,0);
        // Fiber Row 2
        toslinkconnector(ledbx/9*1,ledby/6*3,0);
        toslinkconnector(ledbx/9*2,ledby/6*3,0);
        toslinkconnector(ledbx/9*3,ledby/6*3,0);
        toslinkconnector(ledbx/9*4,ledby/6*3,0);
        toslinkconnector(ledbx/9*5,ledby/6*3,0);
        toslinkconnector(ledbx/9*6,ledby/6*3,0);
        toslinkconnector(ledbx/9*7,ledby/6*3,0);
        toslinkconnector(ledbx/9*8,ledby/6*3,0);
        // Fiber Row 3
        toslinkconnector(ledbx/9*1,ledby/6*4,0);
        toslinkconnector(ledbx/9*2,ledby/6*4,0);
        toslinkconnector(ledbx/9*3,ledby/6*4,0);
        toslinkconnector(ledbx/9*4,ledby/6*4,0);
        toslinkconnector(ledbx/9*5,ledby/6*4,0);
        toslinkconnector(ledbx/9*6,ledby/6*4,0);
        toslinkconnector(ledbx/9*7,ledby/6*4,0);
        toslinkconnector(ledbx/9*8,ledby/6*4,0);
        // Fiber Row 4
        toslinkconnector(ledbx/9*1,ledby/6*5,0);
        toslinkconnector(ledbx/9*2,ledby/6*5,0);
        toslinkconnector(ledbx/9*3,ledby/6*5,0);
        toslinkconnector(ledbx/9*4,ledby/6*5,0);
        toslinkconnector(ledbx/9*5,ledby/6*5,0);
        toslinkconnector(ledbx/9*6,ledby/6*5,0);
        toslinkconnector(ledbx/9*7,ledby/6*5,0);
        toslinkconnector(ledbx/9*8,ledby/6*5,0);
    }
}

// smartSpectrometer - Toslink Connector
module toslinkconnector(x,y,z){

    // Fiber
    translate([x,y,z]) cylinder(d=tfd,h=tch,$fn=cfn);
    // Connector
    translate([x,y,z]) 
        linear_extrude(height = tcy, center = false, convexity = 10, twist = 0)
            polygon(points = [
                [ tcx/2    , -tcy/2+tce],
                [ tcx/2-tce, -tcy/2    ],
                [-tcx/2+tce, -tcy/2    ],
                [-tcx/2    , -tcy/2+tce],
                [-tcx/2    ,  tcy/2    ],
                [ tcx/2    ,  tcy/2    ]
            ]);  
    // Snapper
    translate([x-tcx/2,y,z])rotate([0,0,0])
    hull() {
        translate([tcx,0,0])
            cylinder(d=tcs, h=tcy, $fn=cfn);
            cylinder(d=tcs, h=tcy, $fn=cfn);
    }
}
 
// smartSpectrometer - LED Case part 3
module spectrometerledcasepart3(){
    chw = 19;
    chl = 25;
    bw  = 3 * chw;
    bh  = 3;
    bl  = chl;
    cd  = 2.2;
    cdd = cd+0.2;
    ch0x = 0;
    ch0y = bw/2+cd/4;
    ch0z = bh+chw/2;   
    ch1x = 0;
    ch1y = ch0y-cd/2;
    ch1z = ch0z-cd+0.25;
    ch2x = 0;
    ch2y = ch1y;
    ch2z = ch0z+cd-0.25;
    ch3x = 0;
    ch3y = ch0y;
    ch3z = ch1z-cd+0.25;
    ch4x = 0;
    ch4y = ch0y;
    ch4z = ch2z+cd-0.25;
 
    difference(){
        union(){
            translate([0,0,0]) cube([bl,bw,bh]);
            translate([0,(bw-chw)/2,bh]) cube([chl,chw,chw]);
        }
        translate([ch0x,ch0y     ,ch0z]) rotate([0,90,0]) cylinder(d=cdd,h=chl,$fn=cfn);
        translate([ch0x,ch0y-cd  ,ch0z]) rotate([0,90,0]) cylinder(d=cdd,h=chl,$fn=cfn);
        translate([ch0x,ch0y+cd  ,ch0z]) rotate([0,90,0]) cylinder(d=cdd,h=chl,$fn=cfn);
        translate([ch0x,ch0y-2*cd,ch0z]) rotate([0,90,0]) cylinder(d=cdd,h=chl,$fn=cfn);
        translate([ch0x,ch0y+2*cd,ch0z]) rotate([0,90,0]) cylinder(d=cdd,h=chl,$fn=cfn);
        
        translate([ch1x,ch1y     ,ch1z]) rotate([0,90,0]) cylinder(d=cdd,h=chl,$fn=cfn);
        translate([ch1x,ch1y-cd  ,ch1z]) rotate([0,90,0]) cylinder(d=cdd,h=chl,$fn=cfn);
        translate([ch1x,ch1y+cd  ,ch1z]) rotate([0,90,0]) cylinder(d=cdd,h=chl,$fn=cfn);
        translate([ch1x,ch1y-2*cd,ch1z]) rotate([0,90,0]) cylinder(d=cdd,h=chl,$fn=cfn);
        translate([ch1x,ch1y+2*cd,ch1z]) rotate([0,90,0]) cylinder(d=cdd,h=chl,$fn=cfn);

        translate([ch2x,ch2y     ,ch2z]) rotate([0,90,0]) cylinder(d=cdd,h=chl,$fn=cfn);
        translate([ch2x,ch2y-cd  ,ch2z]) rotate([0,90,0]) cylinder(d=cdd,h=chl,$fn=cfn);
        translate([ch2x,ch2y+cd  ,ch2z]) rotate([0,90,0]) cylinder(d=cdd,h=chl,$fn=cfn);
        translate([ch2x,ch2y-2*cd,ch2z]) rotate([0,90,0]) cylinder(d=cdd,h=chl,$fn=cfn);
        translate([ch2x,ch2y+2*cd,ch2z]) rotate([0,90,0]) cylinder(d=cdd,h=chl,$fn=cfn);

        translate([ch3x,ch3y     ,ch3z]) rotate([0,90,0]) cylinder(d=cdd,h=chl,$fn=cfn);
        translate([ch3x,ch3y-cd  ,ch3z]) rotate([0,90,0]) cylinder(d=cdd,h=chl,$fn=cfn);
        translate([ch3x,ch3y+cd  ,ch3z]) rotate([0,90,0]) cylinder(d=cdd,h=chl,$fn=cfn);
        translate([ch3x,ch3y-2*cd,ch3z]) rotate([0,90,0]) cylinder(d=cdd,h=chl,$fn=cfn);
        translate([ch3x,ch3y+2*cd,ch3z]) rotate([0,90,0]) cylinder(d=cdd,h=chl,$fn=cfn);

        translate([ch4x,ch4y     ,ch4z]) rotate([0,90,0]) cylinder(d=cdd,h=chl,$fn=cfn);
        translate([ch4x,ch4y-cd  ,ch4z]) rotate([0,90,0]) cylinder(d=cdd,h=chl,$fn=cfn);
        translate([ch4x,ch4y+cd  ,ch4z]) rotate([0,90,0]) cylinder(d=cdd,h=chl,$fn=cfn);
        translate([ch4x,ch4y-2*cd,ch4z]) rotate([0,90,0]) cylinder(d=cdd,h=chl,$fn=cfn);
        translate([ch4x,ch4y+2*cd,ch4z]) rotate([0,90,0]) cylinder(d=cdd,h=chl,$fn=cfn);
        
        translate([0,ch0y-2.1*cd,ch0z-2.1*cd]) cube([chl,4.0*cd,4.0*cd]); 
    }
}

// smartSpectrometer - LED Case part 4
module spectrometerledcasepart4(){
    chw = 19;
    chl = 73;
    b1 = 15.0;
    b2 = 6.0;
    db1 = (2*b1^2)^(1/2);
    db2 = (2*b2^2)^(1/2);
    bw  = 3 * chw;
    bh  = 3;
    bl  = chl;

    cfn = 4;
 
    difference(){
        union(){
            translate([0,0,0]) cube([bl,bw,bh]);
            translate([0,(bw-chw)/2,bh]) cube([chl,chw,chw]);
        }
            translate([0,bw/2,bh+chw/2]) rotate([90,45,90]) cylinder(d1=db1, d2=db2, h=chl, $fn=cfn);
    }
}

// smartSpectrometer - LED Case part 5
module spectrometerledcasepart5(){
    translate([0,0,0]) rotate([0,0,45])
    import("C:/Users/A410882/Downloads/F0SFBRWJSUOZQ4Q (2)/assets/pyramid sanding guide.stl");
}

// smartSpectrometer - LED Case part 6
module spectrometerledcasepart6(){

    difference() {
        union(){
            difference(){
            // Outer case
            translate([ 0, 0, 0]) cube([ledcwo+ledcx+ledcwo,ledcwo+ledcy+ledcwo,ledcwo+ledcz]);
            // Inner space
            translate([ledcwo,ledcwo,ledcwo]) cube([ledcx,ledcy,ledcz]);
            }
            // Toslink connector block
            translate([0,ledcwo,ledcwo]) cube([tch,ledcy,70]);
        }

        // Toslink connector - drilling holes
        // Fiber Row 1
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*1,ledby/6*2,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*2,ledby/6*2,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*3,ledby/6*2,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*4,ledby/6*2,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*5,ledby/6*2,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*6,ledby/6*2,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*7,ledby/6*2,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*8,ledby/6*2,0);
        // Fiber Row 2
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*1,ledby/6*3,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*2,ledby/6*3,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*3,ledby/6*3,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*4,ledby/6*3,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*5,ledby/6*3,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*6,ledby/6*3,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*7,ledby/6*3,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*8,ledby/6*3,0);
        // Fiber Row 3
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*1,ledby/6*4,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*2,ledby/6*4,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*3,ledby/6*4,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*4,ledby/6*4,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*5,ledby/6*4,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*6,ledby/6*4,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*7,ledby/6*4,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*8,ledby/6*4,0);
        // Fiber Row 4
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*1,ledby/6*5,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*2,ledby/6*5,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*3,ledby/6*5,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*4,ledby/6*5,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*5,ledby/6*5,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*6,ledby/6*5,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*7,ledby/6*5,0);
        rotate([90,0,90]) toslinkconnector((ledcy-ledbx)/2+ledcwo+ledbx/9*8,ledby/6*5,0);
    }

    ledhpx1 = led1l-(ledbz/2)+tch;
    boardholders(ledhpx1,ledcwo,ledcy,ledhbt,ledhx,ledhy,ledhz);

    ledhpx2 = ledhpx1+2*ledhx+ledhbt+ledhdx;
    boardholders(ledhpx2,ledcwo,ledcy,ledhbt,ledhx,ledhy,ledhz);

    ledhpx3 = ledhpx2+2*ledhx+ledhbt+ledhdx;
    boardholders(ledhpx3,ledcwo,ledcy,ledhbt,ledhx,ledhy,ledhz);

    ledhpx4 = ledhpx3+2*ledhx+ledhbt+ledhdx;
    boardholders(ledhpx4,ledcwo,ledcy,ledhbt,ledhx,ledhy,ledhz);

    ledhpx5 = ledhpx4+2*ledhx+ledhbt+ledhdx;
    boardholders(ledhpx5,ledcwo,ledcy,ledhbt,ledhx,ledhy,ledhz);

    ledhpx6 = ledhpx5+2*ledhx+ledhbt+ledhdx;
    boardholders(ledhpx6,ledcwo,ledcy,ledhbt,ledhx,ledhy,ledhz);

    ledhpx7 = ledhpx6+2*ledhx+ledhbt+ledhdx;
    boardholders(ledhpx7,ledcwo,ledcy,ledhbt,ledhx,ledhy,ledhz);

    ledhpx8 = ledhpx7+2*ledhx+ledhbt+ledhdx;
    boardholders(ledhpx8,ledcwo,ledcy,ledhbt,ledhx,ledhy,ledhz);
}

// smartLED-Array - Board holders
module boardholders(ledhpx,ledcwo,ledcy,ledhbt,ledhx,ledhy,ledhz){
    translate([ledhpx,ledcwo,ledcwo]) cube([ledhx,ledhy,ledhz]);
    translate([ledhpx,ledcwo+ledcy-ledhy,ledcwo]) cube([ledhx,ledhy,ledhz]);
    translate([ledhpx+ledhx+ledhbt,ledcwo,ledcwo]) cube([ledhx,ledhy,ledhz]);
    translate([ledhpx+ledhx+ledhbt,ledcwo+ledcy-ledhy,ledcwo]) cube([ledhx,ledhy,ledhz]);
}

// ********************************************************************************************************

// Number of prints
number = 1;

for (i = [0:number-1]) {
	if (sysmode==1) {
		// UV-LED Photometer - Beam angle 180 Degree (Absorbance measurement)
		// Sensor - VEML6070
		translate([i*(wo+cw+wo+3),0*(wo+cl+wo+3),0]) case(sbid,sbd3,sbh3,sbw3,scb3,scr3,scd3,sys11,sys12,sys13,sb31,sb32,mcbs,sys14,sys15,sys16,cr1,cr2,cr3);
	}
	if (sysmode==2) {
	// RGB-LED Colorimeter - Beam angle 180 Degree (Absorbance measurement)
	// Sensor - Adafruit TCS34725
	translate([i*(wo+cw+wo+3),0*(wo+cl+wo+3),0]) case(sbid,sbd2,sbh2,sbw2,scb2,scr2,scd2,sys21,sys22,sys23,sb21,sb22,mcbs,sys24,sys25,sys26,cr1,cr2,cr3);
	}
	if (sysmode==3) {
		// RGB-LED Photometer - Beam angle 180 Degree (Absorbance measurement)
		// IR-LED Turbidimeter - Beam angle 90 Degree (Nephelometric turbidity measurement)
		// Sensor - Adafruit TSL2591
		translate([i*(wo+cw+wo+3),0*(wo+cl+wo+3),0]) case(sbid,sbd1,sbh1,sbw1,scb1,scr1,scd1,sys31,sys32,sys33,sb11,sb12,mcbs,sys34,sys35,sys36,cr1,cr2,cr3);
	}
	if (sysmode==4) {
		// IR-LED Photometer - Beam angle 180 Degree (Absorbance measurement)
		// IR-LED Turbidimeter - Beam angle 90 Degree (Nephelometric turbidity measurement)
		// Sensor - Adafruit TSL2591
		translate([i*(wo+cw+wo+3),0*(wo+cl+wo+3),0]) case(sbid,sbd1,sbh1,sbw1,scb1,scr1,scd1,sys41,sys42,sys43,sb11,sb12,mcbs,sys44,sys45,sys46,cr1,cr2,cr3);
	}
	if (sysmode==5) {
        // Cuvette-Holder - Beam angle 180 Degree (Absorbance measurement)
        // - Cover for square cuvette
        // - Toslink connectors		: 2x
        cuvetteholdertoslink();
	}
	if (sysmode==11) {
		// smartPhotometer - Case lid
        translate([i*(wo+cw+wo+3),1*(wo+cl+wo+3),0]) lid(mcip);
	}
	if (sysmode==12) {
		// smartPhotometer - Cover for square cuvette
        translate([i*(wo+cw+wo+3),2*(wo+cl+wo+3),0]) cuvettecoversquare(cctw, ccwi, cchi);
	}
	if (sysmode==13) {
		// smartPhotometer - Cover for round cuvette
        //translate([i*(wo+cw+wo+3),2*(wo+cl+wo+3),0]) cuvettecoverround(cctw, ccwi, cchi);
	}
	if (sysmode==14) {
		// smartSpectrometer - Holder for grating
        translate([0,0,0]) gratingholder();
	}
	if (sysmode==15) {
		// smartSpectrometer - Holder for USB camera
        translate([0,0,0]) cameraholder();
	}
	if (sysmode==16) {
		// smartSpectrometer - Holder for light slit
        translate([0,0,0]) lightslitholder();
	}
 	if (sysmode==17) {
		// smartSpectrometer - Case part 1
        translate([0,0,0]) spectrometercasepart1();
	}
	if (sysmode==18) {
		// smartSpectrometer - Case part 2
        translate([0,0,0]) spectrometercasepart2();
	}
    if (sysmode==21) {
		// smartSpectrometer - LED Case part 1
        translate([0,0,0]) spectrometerledcasepart1();
	}
    if (sysmode==22) {
		// smartSpectrometer - LED Case part 2
        translate([0,0,0]) spectrometerledcasepart2();
	}
    if (sysmode==23) {
		// smartSpectrometer - LED Case part 3
        translate([0,0,0]) spectrometerledcasepart3();
	}
    if (sysmode==24) {
		// smartSpectrometer - LED Case part 4
        translate([0,0,0]) spectrometerledcasepart4();
	}
    if (sysmode==25) {
		// smartSpectrometer - LED Case part 5
        translate([0,0,0]) spectrometerledcasepart5();
	}
    if (sysmode==26) {
		// smartSpectrometer - LED Case part 6
        translate([0,0,0]) spectrometerledcasepart6();
	}
}


