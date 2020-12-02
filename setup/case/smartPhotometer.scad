/*

smart-UV-Photometer
smart-Colorimeter
smart-RGB-Photometer
smart-IR-Turbidimeter

OpenSCAD 3D model
Version 0.2

smart-UV-Photometer © Copyright 2020 by smartAquaMetering. All Rights Reserved.
smart-Colorimeter © Copyright 2020 by smartAquaMetering. All Rights Reserved.
smart-RGB-Photometer © Copyright 2020 by smartAquaMetering. All Rights Reserved.
smart-IR-Turbidimeter © Copyright 2020 by smartAquaMetering. All Rights Reserved.

https://github.com/smartaquametering
https://github.com/smartaquametering/smartPhotometer

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
// - UV-Sensor			: VEML6070

sysmode = 1;									// UV-LED Photometer
	sys11 = "UV-LED";							// Labeling back side
	sys12 = "Photometer";
	sys13 = "Transmitted light";
	sys14 = "";								// Labeling left side
	sys15 = "";
	sys16 = "";

// -------------------------------------------------------------------------
// smart-Colorimeter
// -------------------------------------------------------------------------
// - RGB-LED beam angle		: 180 Degree (Absorbance measurement)
// - RGB-Sensor			: Adafruit TCS34725

//sysmode = 2;									// Colorimeter
	sys21 = "RGB-LED";							// Labeling back side
	sys22 = "Photometer";
	sys23 = "Transmitted light";
	sys24 = "";								// Labeling left side
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
// - IR Sensor			: Adafruit TSL2591

//sysmode = 4;									// IR-LED Turbidimeter
	sys41 = "IR-LED";							// Labeling back side
	sys42 = "Photometer";
	sys43 = "Transmitted light";
	sys44 = "IR-LED";							// Labeling left side
	sys45 = "Turbidimeter";
	sys46 = "Scattered light";

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
// smartPhotometer-Case
// -------------------------------------------------------------------------
//casemode = 1;                                   // Case + Cuvette holder
casemode = 2;                                 // Cuvette holder only

// -------------------------------------------------------------------------
// Microcontroller
// -------------------------------------------------------------------------

mcbs	= "ESP32-WROOM-32 NodeMCU WLAN/WiFi";					// Labeling front side
mcip	= "192.168.4.1";							// Labeling case lid

// -------------------------------------------------------------------------
// Copyright
// -------------------------------------------------------------------------

cr1	= "Open Source";							// Labeling right side
cr2	= "Smart, simple and easy";
cr3	= "Made in Germany";

// -------------------------------------------------------------------------

// Cuvette
cvmode	= 1;				// 0:= Square cuvette , 1:= Round cuvette
//cvow	= 12.5;				// Outer edge length		(X,Y)
//cvh	= 45.0;				// Height			(Z)
cvow	= 16.0;				// Outer diameter		(X,Y)
cvh	= 160.0;			// Height			(Z)
cvoe	=  0.6;				// Extra outer edge length / diameter

cvw	= cvow+cvoe;			// Total outer edge length / diameter

// Microcontroller
mch	= 50.0;				// Height (board, plugs and cables)	(X)
mcl	= 55.0;				// Length				(Y)
mcw	= 28.0;				// Width				(Z)
mcbh	=  5.0;				// Height (MC board only)		(Y)

// USB port
usbw	=  8.0;				// Width	(X)
usbh	= 11.0;				// Height	(Z)
usbd	=  0.4;				// Depth	(Y)

// Sensors
sbid	= 20.0;				// Installation depth of sensor board (incl. board, plugs and cables)	(Y)

// Sensor - Adafruit TSL2591
sbh1	= 16.5;				// Height of sensor board - measured from bottom edge			(X)
sbw1	= 19.0;				// Width of sensor board - measured from side edge			(Z)
sbd1	=  3.5;				// Depth of sensor board						(Y)
scb1	=  9.4;				// Distance between center of sensor chip and board bottom edge		(X)
scr1	=  9.4;				// Distance between center of sensor chip and board right side edge	(Z)
scd1	=  4.0;				// Pinhole diameter for sensor chip

sb11	= "Sensor";			// Labeling front side
sb12	= "TSL2591";

// Sensor - Adafruit TCS34725
sbh2	= 20.3;				// Height of sensor board - measured from bottom edge			(X)
sbw2	= 20.3;				// Width of sensor board - measured from side edge			(Z)
sbd2	=  3.0;				// Depth of sensor board						(Y)
scb2	=  9.4;				// Distance between center of sensor chip and board bottom edge		(X)
scr2	= 11.5;				// Distance between center of sensor chip and board right side edge	(Z)
scd2	=  4.0;				// Pinhole diameter for sensor chip

sb21	= "Sensor";			// Labeling front side
sb22	= "TCS34725";

// Sensor - VEML6070
sbh3	= 12.0;				// Height of sensor board - measured from bottom edge			(X)
sbw3	= 13.0;				// Width of sensor board - measured from side edge			(Z)
sbd3	=  2.9;				// Depth of sensor board						(Y)
scb3	=  5.0;				// Distance between center of sensor chip and board bottom edge		(X)
scr3	=  6.5;				// Distance between center of sensor chip and board right side edge	(Z)
scd3	=  4.0;				// Pinhole diameter for sensor chip

sb31	= "Sensor";			// Labeling front side
sb32	= "VEML6070";

// LEDs
ledh	= 20.0;				// Installation height

led1l	=  8.5;				// Length
led1w	=  5.4;				// Width (Diameter)
led1p	= 13.5;				// Length plugs
led1t	= led1l+led1p;			// Length total (incl. plugs)
led1m	= led1l+led1t;			// Mounting depth

led2l	=  8.5;				// Length
led2w	=  5.6;				// Width (Diameter)
led2p	= 13.5;				// Length plugs
led2t	= led2l+led2p;			// Length total (incl. plugs)
led2m	= led2l+led2t;			// Mounting depth

// Case dimensions
wo	=  1.6;				// Wall thickness outside
wi	=  0.8;				// Wall thickness inside
wr	=  1.6;				// Wall rounding - Edge radius
cw	= mch+wi+cvw+led2m;		// Width inside		(X)
cl	= sbid+wi+cvw+led1m;// Length inside			(Y)
ch	= 31.6;				// Height inside	(Z)

cvx	= wo+led2m+wi+cvw/2;		// Cuvette holder position	(X)
cvy	= wo+sbid+wi+cvw/2;		//				(Y)
cvz	= wo+ch-ledh;			//				(Z)

// Case - MC board holder
mcbhl	=  2.0;				// Length of board holder
mcbbh	= ch-mcw;			// Height of board base (height adjustment)

// Case - Cover for square cuvette
cctw	=  1.2;				// Thickness wall
ccwi	= cvw+1.0;			// Width inside
cchi	= cvh-wo-ch+15.0;		// Height inside

// Case - Lid
clh	=  2.0;				// Height / Thickness (Z)
clg	=  0.8;				// Guide groove
cle	=  0.2;				// Extra guide groove

// Case - Snapper
csd	=  1.2;				// Depth
csl	=  8.0;				// Length

// Case - Imprints / Labelings
cid	=  0.4;				// Depth
ciw	=  0.8;				// Width
ciaw	=  4.0;				// Arrow width
cial	= 10.0;				// Arrow length
ciad	=  1.0;				// Distance between arrow and cuvette holder

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
				circle(r=14.0*d/36.0,$fn=20);
				for(i=[1:7]) {
					rotAngle=45*i+45;
					rotate(rotAngle) gear_tooth_2d(d);
				}
			}
			circle(r=10.0*d/72.0,$fn=20);
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
		if(cvmode==1) translate([cvx,cvy,0]) cylinder(d=cvw,h=wo);
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
	translate([wo+cw/2-csl/2      ,wo         ,wo+ch-csd]) rotate ([-90,0,-90]) cylinder(h=csd, d=2*csd);
	// Snapper 1 top rounding
	translate([wo+cw/2+csl/2-csd/2,wo+csd/2   ,wo+ch    ]) sphere(, d=csd);
	// Snapper 1 holder
	translate([wo+cw/2+csl/2-csd  ,wo         ,wo+ch-csd]) cube([csd,csd,csd]);
	// Snapper 1 base rounding
	translate([wo+cw/2+csl/2-csd  ,wo         ,wo+ch-csd]) rotate ([-90,0,-90]) cylinder(h=csd, d=2*csd);
	// Snapper 2 top rounding
	translate([wo+cw/2-csl/2+csd/2,wo+cl-csd/2,wo+ch    ]) sphere(, d=csd);
	// Snapper 2 holder
	translate([wo+cw/2-csl/2      ,wo+cl-csd  ,wo+ch-csd]) cube([csd,csd,csd]);
	// Snapper 2 base rounding
	translate([wo+cw/2-csl/2      ,wo+cl      ,wo+ch-csd]) rotate ([-90,0,-90]) cylinder(h=csd, d=2*csd);
	// Snapper 2 top rounding
	translate([wo+cw/2+csl/2-csd/2,wo+cl-csd/2,wo+ch    ]) sphere(, d=csd);
	// Snapper 2 holder
	translate([wo+cw/2+csl/2-csd  ,wo+cl-csd  ,wo+ch-csd]) cube([csd,csd,csd]);
	// Snapper 2 base rounding
	translate([wo+cw/2+csl/2-csd  ,wo+cl      ,wo+ch-csd]) rotate ([-90,0,-90]) cylinder(h=csd, d=2*csd);
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
	translate([wo+cw-mcbh ,wo+mcl/8*1.5,wo]) cube([mcbh,wi,mcbbh-0.5]);
	translate([wo+cw-mcbh ,wo+mcl/8*4.0,wo]) cube([mcbh,wi,mcbbh-0.5]);
	translate([wo+cw-mcbh ,wo+mcl/8*6.5,wo]) cube([mcbh,wi,mcbbh-0.5]);
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
			if(cvmode==1) translate([cvx,cvy,wo]) cylinder(d=cvw+2*wi,h=ch);
			// LED 1 holder
			translate([cvx-(2*wi+led1w)/2,cvy+cvw/2-wi,wo]) cube([2*wi+led1w,led1l+2*wi,ch]);
			// LED 2 holder
			translate([cvx-cvw/2-wi-led2l,cvy-(2*wi+led2w)/2,wo]) cube([led2l+2*wi,2*wi+led2w,ch]);
			// Sensor board holder
			translate([cvx-sct-wi,cvy-cvw/2-wi-sbd-wi,wo]) cube([sbh+wi-2,sbd+2*wi,cvz+scl+0.5]);
		}
		// Square cuvette holder - drilling hole
		if(cvmode==0) translate([cvx-cvw/2,cvy-cvw/2,wo]) cube([cvw,cvw,ch]);
		// Round cuvette holder - drilling hole
		if(cvmode==1) translate([cvx,cvy,wo]) cylinder(d=cvw,h=ch);
		// LED 1 holder - drilling hole
		translate([cvx,cvy+cvw/2-2*wi ,cvz]) rotate ([-90,0,0]) cylinder(h=led1l+3*wi, d=led1w-2*wi  );
		translate([cvx,cvy+cvw/2+2*wi ,cvz]) rotate ([-90,0,0]) cylinder(h=led1l     , d=led1w       );
		translate([cvx,cvy+cvw/2+led1l,cvz]) rotate ([-90,0,0]) cylinder(h=wi        , d=led1w+2.1*wi);
		// LED 1 labeling
		translate([cvx,cvy+cvw/2+wi,wo+ch-cid]) rotate([0,0,90]) {
			linear_extrude(height = cid){
				translate ([4,0,0]) text("1",
					font = "Liberation Sans:style=Bold", size = 4, valign = "center", halign = "center");
			}
		}
        if ((sysmode==3) || (sysmode==4)) {
            // LED 2 holder - drilling hole
            translate([cvx-cvw/2-wi-led2l,cvy,cvz]) rotate ([0,90,0]) cylinder(h=led2l+3*wi, d=led2w-2*wi  );
            translate([cvx-cvw/2-wi-led2l,cvy,cvz]) rotate ([0,90,0]) cylinder(h=led2l     , d=led2w       );
            translate([cvx-cvw/2-wi-led2l,cvy,cvz]) rotate ([0,90,0]) cylinder(h=wi        , d=led2w+2.1*wi);
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
			translate([cvx,cvy-cvw/2-wi,cvz+scd/2]) rotate ([-90,0,0]) cylinder(h=3*wi, d=scd);
			translate([cvx,cvy-cvw/2-wi,cvz-scd/2]) rotate ([-90,0,0]) cylinder(h=3*wi, d=scd);
		}
		// Sensor chip position
		// translate([cvx,0,cvz]) rotate ([-90,0,0]) cylinder(h=sbid+wo+20*wi, d=0.5);
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
					translate([wo+cle,0+wr       ,clh-wr]) rotate([0,90,0]) cylinder(h=cw-2*cle, r=wr);
					translate([wo+cle,wo+cl+wo-wr,clh-wr]) rotate([0,90,0]) cylinder(h=cw-2*cle, r=wr);
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
		translate ([tw+wi/2,tw+wi/2,-tw]) cylinder(d=tw ,h =hi*2, $fn=50);
	}
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
}
