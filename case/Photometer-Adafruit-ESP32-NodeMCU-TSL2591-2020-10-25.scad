/*

smart-UV-Photometer
smart-Colorimeter
smart-RGB-Photometer
smart-IR-Turbidimeter

version 1.0

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
1.0 2020-10-25 Initial release.

*/

// -------------------------------------------------------------------------
// smart-UV-Photometer
// -------------------------------------------------------------------------
// - UV-LED beam angle    : 180 Degree (Absorbance measurement)
// - UV-Sensor            : VEML6070

//sysmode = 1;                               // UV-LED Photometer
    sys11  = "UV-LED";                       // Labeling back side
    sys12  = "Photometer";
    sys13  = "Transmitted light";
    sys14  = "";                             // Labeling left side
    sys15  = "";
    sys16  = "";

// -------------------------------------------------------------------------
// smart-Colorimeter
// -------------------------------------------------------------------------
// - RGB-LED beam angle   : 180 Degree (Absorbance measurement)
// - RGB-Sensor           : Adafruit TCS34725

//sysmode = 2;                               // Colorimeter
    sys21  = "RGB-LED";                      // Labeling back side
    sys22  = "Photometer";
    sys23  = "Transmitted light";
    sys24  = "";                             // Labeling left side
    sys25  = "";
    sys26  = "";
 
// -------------------------------------------------------------------------
// smart-RGB-Photometer
// -------------------------------------------------------------------------
// - RGB-LED beam angle   : 180 Degree (Absorbance measurement)
// - IR-LED beam angle    :  90 Degree (Nephelometric turbidity measurement)
// - VIS and IR Sensor    : Adafruit TSL2591

sysmode = 3;                                 // RGB-LED Photometer
    sys31  = "RGB-LED";                      // Labeling back side
    sys32  = "Photometer";
    sys33  = "Transmitted light";
    sys34  = "IR-LED";                       // Labeling left side
    sys35  = "Turbidimeter";
    sys36  = "Scattered light";

// -------------------------------------------------------------------------
// smart-IR-Turbidimeter
// -------------------------------------------------------------------------
// - IR-LED beam angle    : 180 Degree (Absorbance measurement)
// - IR-LED beam angle    :  90 Degree (Nephelometric turbidity measurement)
// - IR Sensor            : Adafruit TSL2591

//sysmode = 4;                               // IR-LED Turbidimeter
    sys41  = "IR-LED";                       // Labeling back side
    sys42  = "Photometer";
    sys43  = "Transmitted light";
    sys44  = "IR-LED";                       // Labeling left side
    sys45  = "Turbidimeter";
    sys46  = "Scattered light";

// -------------------------------------------------------------------------
// Microcontroller        : Az-Delivery ESP32-WROOM-32 NodeMCU
// -------------------------------------------------------------------------

mcbs   = "ESP32-WROOM-32 NodeMCU WLAN/WiFi"; // Labeling front side
mcip   = "192.168.4.1";                      // Labeling case lid

// -------------------------------------------------------------------------
// All Rights and Copyright for Concept and Design
// -------------------------------------------------------------------------

cr1    = "Open Source";                      // Labeling right side
cr2    = "Smart, simple and easy";
cr3    = "Made in Germany";

// -------------------------------------------------------------------------

// Cuvette
cvmode = 1;                // 0:= Square cuvette , 1:= Round cuvette
//cvow   = 12.5;             // Outer edge length (X,Y)
//cvh    = 45.0;             // Height              (Z)
cvow   = 16.0;             // Outer diameter    (X,Y)
cvh    = 160.0;            // Height              (Z)
cvoe   =  0.6;             // Extra outer edge length / diameter

cvw = cvow+cvoe;           // Total outer edge length / diameter

// Microcomputer
mch    = 50.0;             // Height (board, plugs and cables) (X)
mcl    = 55.0;             // Length                           (Y)
mcw    = 28.0;             // Width                            (Z)
mcbh   =  5.0;             // Height (MC board only)           (Y)

// USB port
usbw   =  8.0;             // Width  (X)
usbh   = 11.0;             // Height (Z)
usbd   =  0.4;             // Depth  (Y)

// Sensors
sbid   = 20.0;             // Installation depth of sensor board (incl. board, plugs and cables) (Y)

// Sensor - Adafruit TSL2591
sbh1   = 16.5;             // Height of sensor board - measured from lower edge (X)
sbw1   = 19.0;             // Width of sensor board - measured from side edge   (Z)
sbd1   =  3.5;             // Depth of sensor board                             (Y)
scu1   =  9.4;             // Abstand der Mitte of sensor chip von der Unterkante seiner board (X)
scr1   =  9.4;             // Abstand der Mitte of sensor chip von der rechten Seitenkante seiner board (Z)
scd1   =  4.0;             // Pinhole diameter for sensor chip

sb11   = "Sensor";         // Labeling front side
sb12   = "TSL2591";

// Sensor - Adafruit TCS34725
sbh2   = 20.3;             // Height of sensor board - measured from lower edge (X)
sbw2   = 20.3;             // Width of sensor board - measured from side edge   (Z)
sbd2   =  3.0;             // Depth of sensor board                             (Y)
scu2   =  9.4;             // Abstand der Mitte of sensor chip von der Unterkante seiner board (X)
scr2   = 11.5;             // Abstand der Mitte of sensor chip von der rechten Seitenkante seiner Platine (Z)
scd2   =  4.0;             // Pinhole diameter for sensor chip

sb21   = "Sensor";         // Labeling front side
sb22   = "TCS34725";

// Sensor - VEML6070
sbh3   = 12.0;             // Height of sensor board - measured from lower edge (X)
sbw3   = 13.0;             // Width of sensor board - measured from side edge   (Z)
sbd3   =  2.9;             // Depth of sensor board                             (Y)
scu3   =  5.0;             // Abstand der Mitte of sensor chip von der Unterkante seiner Platine (X)
scr3   =  6.5;             // Abstand der Mitte of sensor chip von der rechten Seitenkante seiner Platine (Z)
scd3   =  4.0;             // Pinhole diameter for sensor chip

sb31   = "Sensor";         // Labeling front side
sb32   = "VEML6070";

// LEDs
ledh   = 20.0;             // Installation height

led1l  =  8.5;             // Length
led1w  =  5.4;             // Width (Diameter)
led1p  = 13.5;             // Length plugs
led1t  = led1l+led1p;      // Length total (incl. plugs)
led1m  = led1l+led1t;      // Mounting depth

led2l  =  8.5;             // Length
led2w  =  5.6;             // Width (Diameter)
led2p  = 13.5;             // Length plugs
led2t  = led2l+led2p;      // Length total (incl. plugs)
led2m  = led2l+led2t;      // Mounting depth

// Case dimensions
wa     =  1.6;             // Dicke Seitenwand
wi     =  0.8;             // Wandstärke inside
kr     =  1.6;             // Edge radius
bi     = mch+wi+cvw+led2m; // Width inside  (X)
li     = sbid+wi+cvw+led1m;// Length inside (Y)
hi     = 31.6;             // Height inside (Z)

cvx    = wa+led2m+wi+cvw/2;// Cuvette holder position (X)
cvy    = wa+sbid+wi+cvw/2; // Cuvette holder position (Y)
cvz    = wa+hi-ledh;       // Cuvette holder position (Y)

// Case - Cover for square cuvette
cctw   =  1.2;             // Thickness wall
ccwi   = cvw+1.0;          // Width inside
cchi   = cvh-wa-hi+15.0;   // Height inside

// Case - MC board holder
hmcll  =  2.0;             // Length of MC board holder
hmcbs  = hi-mcw;           // Height des MC Bodensockels (Höhenausgleich)

// Case - Lid
dh     =  2.0;             // Dicke (Z)
dfn    =  0.8;             // Führungsnut
dfl    =  0.2;             // Freilauf für Deckelführung

// Case - Rastnasen
rnt    =  1.2;             // Depth
rnl    =  8.0;             // Length

// Case - Labelings
bst    =  0.4;             // Einprägetiefe
bsbpf  =  4.0;             // Width Pfeilschaft
bslpf  = 10.0;             // Length Pfeilschaft
bsdpf  =  0.8;             // Width der Prägelinie
bsapf  =  1.0;             // Abstand Pfeil zum Küvettendurchbruch

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
			[0.5*d,-d/15.0], [0.0,-10.0*d/72.0] ] );
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
module labelings(bsh1,bsh2,bsh3,bsv1,bsv2,bsv3,bsl1,bsl2,bsl3,bsr1,bsr2,bsr3){
    // Back side
    translate ([wa+bi/2,wa+li+wa-bst,30]) rotate([90,180,180]) {
        linear_extrude(height = bst){
            translate ([0,19,0]) text(bsh1,
                font = "Liberation Sans:style=Bold", size = 3.5, valign = "center", halign = "center");
            translate ([0,12,0]) text(bsh2,
                font = "Liberation Sans:style=Bold", size = 4.5, valign = "center", halign = "center");
            translate ([0,6,0]) text(bsh3,
                font = "Liberation Sans:style=Bold", size = 2.5, valign = "center", halign = "center");
        }
    }
    // Front side
    translate ([wa+bi/2,bst,30]) rotate([90,180,0]) {
        linear_extrude(height = bst){
            translate ([0,19,0]) text(bsv1,
                font = "Liberation Sans:style=Bold", size = 3.5, valign = "center", halign = "center");
            translate ([0,12,0]) text(bsv2,
                font = "Liberation Sans:style=Bold", size = 4.5, valign = "center", halign = "center");
            translate ([0,6,0]) text(bsv3,
                font = "Liberation Sans:style=Bold", size = 2.5, valign = "center", halign = "center");
        }
    }
    // Left side
    if(bsl1!="") {
        translate ([bst,wa+li/2,30]) rotate([270,0,90]) {
            linear_extrude(height = bst){
                translate ([0,19,0]) text(bsl1,
                    font = "Liberation Sans:style=Bold", size = 3.5, valign = "center", halign = "center");
                translate ([0,12,0]) text(bsl2,
                    font = "Liberation Sans:style=Bold", size = 4.5, valign = "center", halign = "center");
                translate ([0,6,0]) text(bsl3,
                    font = "Liberation Sans:style=Bold", size = 2.5, valign = "center", halign = "center");
            }
        }
    }
    // Right side
    translate ([2*wa+bi-bst,wa+li/2,30]) rotate([90,180,90]) {
        linear_extrude(height = bst){
            translate ([-26,21,0]) oshw_logo_2d(12);
            translate ([0,19,0]) text(bsr1,
                font = "Liberation Sans:style=Bold", size = 3.5, valign = "center", halign = "center");
            translate ([0,12,0]) text(bsr2,
                font = "Liberation Sans:style=Bold", size = 4.0, valign = "center", halign = "center");
            translate ([0,6,0]) text(bsr3,
                font = "Liberation Sans:style=Bold", size = 2.5, valign = "center", halign = "center");
        }
    }
}

// Outer case
module outercase(bsh1,bsh2,bsh3,bsv1,bsv2,bsv3,bsl1,bsl2,bsl3,bsr1,bsr2,bsr3){
    difference(){
        // Outer case
        translate([ 0, 0, 0]) roundcube(wa+bi+wa,wa+li+wa,wa+hi+dh,kr);
        // Innenraum
        translate([wa,wa,wa]) cube([bi,li,hi+dh]);
        // USB port
        translate([wa+bi+wa-usbw,0,wa+mcw/2+hmcbs-usbh/2]) cube([usbw,wa+usbd,usbh]);
        // Deckelloch
        translate([wa,0,wa+hi]) cube([bi,wa+li+wa,dh]);
        // Deckelführung
        translate([wa-dfn,0,wa+hi]) cube([dfn+bi+dfn,wa+li+wa,dh/2]);
        // Square cuvette holder - Drilling hole
        if(cvmode==0) translate([cvx-cvw/2,cvy-cvw/2,0]) cube([cvw,cvw,wa]);
        // Round cuvette holder - Drilling hole
        if(cvmode==1) translate([cvx,cvy,0]) cylinder(d=cvw,h=wa);
        // Beschriftung Pfeil
        translate([cvx-bsbpf,cvy+cvw/2+wi+bsapf,0]) linear_extrude(height = bst){difference(){
            polygon(points=[[bsbpf,0],[0,bsbpf],[1/2*bsbpf,bsbpf],[bsbpf/2,bsbpf+bslpf],[3*bsbpf/2,bsbpf+bslpf],[3*bsbpf/2,bsbpf],[2*bsbpf,bsbpf]]);
            polygon(points=[[bsbpf,sqrt(2)*bsdpf],[sqrt(2)*bsdpf+bsdpf,bsbpf-bsdpf],[1/2*bsbpf+bsdpf,bsbpf-bsdpf],[bsbpf/2+bsdpf,bsbpf+bslpf-bsdpf],
                            [3*bsbpf/2-bsdpf,bsbpf+bslpf-bsdpf],[3*bsbpf/2-bsdpf,bsbpf-bsdpf],[2*bsbpf-sqrt(2)*bsdpf-bsdpf,bsbpf-bsdpf]]);}
        }
        labelings(bsh1,bsh2,bsh3,bsv1,bsv2,bsv3,bsl1,bsl2,bsl3,bsr1,bsr2,bsr3);
    }
    rastnasen();
}

// Rastnasen
module rastnasen(){
    // Rastnase 1 Rundung oben
    translate([wa+bi/2-rnl/2+rnt/2,wa+rnt/2   ,wa+hi    ]) sphere(, d=rnt);
    // Rastnase 1 Halter
    translate([wa+bi/2-rnl/2      ,wa         ,wa+hi-rnt]) cube([rnt,rnt,rnt]);
    // Rastnase 1 Rundung unten
    translate([wa+bi/2-rnl/2      ,wa         ,wa+hi-rnt]) rotate ([-90,0,-90]) cylinder(h=rnt, d=2*rnt);
    // Rastnase 1 Rundung oben
    translate([wa+bi/2+rnl/2-rnt/2,wa+rnt/2   ,wa+hi    ]) sphere(, d=rnt);
    // Rastnase 1 Halter
    translate([wa+bi/2+rnl/2-rnt  ,wa         ,wa+hi-rnt]) cube([rnt,rnt,rnt]);
    // Rastnase 1 Rundung unten
    translate([wa+bi/2+rnl/2-rnt  ,wa         ,wa+hi-rnt]) rotate ([-90,0,-90]) cylinder(h=rnt, d=2*rnt);
    // Rastnase 2 Rundung oben
    translate([wa+bi/2-rnl/2+rnt/2,wa+li-rnt/2,wa+hi    ]) sphere(, d=rnt);
    // Rastnase 2 Halter
    translate([wa+bi/2-rnl/2      ,wa+li-rnt  ,wa+hi-rnt]) cube([rnt,rnt,rnt]);
    // Rastnase 2 Rundung unten
    translate([wa+bi/2-rnl/2      ,wa+li      ,wa+hi-rnt]) rotate ([-90,0,-90]) cylinder(h=rnt, d=2*rnt);
    // Rastnase 2 Rundung oben
    translate([wa+bi/2+rnl/2-rnt/2,wa+li-rnt/2,wa+hi    ]) sphere(, d=rnt);
    // Rastnase 2 Halter
    translate([wa+bi/2+rnl/2-rnt  ,wa+li-rnt  ,wa+hi-rnt]) cube([rnt,rnt,rnt]);
    // Rastnase 2 Rundung unten
    translate([wa+bi/2+rnl/2-rnt  ,wa+li      ,wa+hi-rnt]) rotate ([-90,0,-90]) cylinder(h=rnt, d=2*rnt);
}

// MC board holder
module boardholder(){
    // Left side
    difference(){
        translate([wa+bi-mcbh-wi,wa,wa                   ]) cube([wi  ,hmcll   ,hi  ]);
        // USB port
        translate([wa+bi+wa-usbw, 0,wa+mcw/2+hmcbs-usbh/2]) cube([usbw,wa+usbd ,usbh]);
    }
    // Bodensockel (Höhenausgleich)
    translate([wa+bi-mcbh ,wa+mcl/8*1.5,wa]) cube([mcbh,wi,hmcbs-0.5]);
    translate([wa+bi-mcbh ,wa+mcl/8*4.0,wa]) cube([mcbh,wi,hmcbs-0.5]);
    translate([wa+bi-mcbh ,wa+mcl/8*6.5,wa]) cube([mcbh,wi,hmcbs-0.5]);
    // Right side
    difference(){
        translate([wa+bi-mcbh-wi,wa+mcl-hmcll,wa]) cube([wi+mcbh,hmcll+2*wi,hi]);
        // Board Platinendicke
        translate([wa+bi-mcbh,wa+mcl-hmcll,wa]) cube([2.0,hmcll+wi,hi]);
        translate([wa+bi-mcbh,wa+mcl-hmcll,wa]) cube([mcbh,1.0,hi]);
    }
}

// Cuvette, LED and sensor holder
module cuvetteholder(sbid,sbd,sbh,sbw,scu,scr,scd){

    // sbid = Installation depth of sensor board (incl. board, plugs and cables) (Y)
    // sbd  = Depth of sensor board (Y)
    // sbh  = Height of sensor board - measured from lower edge (X)
    // sbw  = Width of sensor board - measured from side edge (Z)
    // scu  = Abstand der Mitte of sensor chip von der Unterkante seiner Platine (X)
    // scr  = Abstand der Mitte of sensor chip von der rechten Seitenkante seiner Platine (Z)
    // scd  = Pinhole diameter for sensor chip
 
    sco  = sbh-scu+0.25;     // Abstand der Mitte of sensor chip von der Oberkante seiner Platine (X)
    scl  = sbw-scr;          // Abstand der Mitte of sensor chip von der rechten Seitenkante seiner Platine (Z)
    
    difference(){
        union(){
            // Square cuvette holder
            if(cvmode==0) translate([cvx-cvw/2-wi,cvy-cvw/2-wi,wa]) cube([cvw+2*wi,cvw+2*wi,hi]);
            // Round cuvette holder
            if(cvmode==1) translate([cvx,cvy,wa]) cylinder(d=cvw+2*wi,h=hi);
            // LED 1 holder
            translate([cvx-(2*wi+led1w)/2,cvy+cvw/2-wi,wa]) cube([2*wi+led1w,led1l+2*wi,hi]);
            // LED 2 holder
            translate([cvx-cvw/2-wi-led2l,cvy-(2*wi+led2w)/2,wa]) cube([led2l+2*wi,2*wi+led2w,hi]);
            // Sensor board holder
            translate([cvx-sco-wi,cvy-cvw/2-wi-sbd-wi,wa]) cube([sbh+wi-2,sbd+2*wi,cvz+scl+0.5]);
        }
        // Square cuvette holder - Drilling hole
        if(cvmode==0) translate([cvx-cvw/2,cvy-cvw/2,wa]) cube([cvw,cvw,hi]);
        // Round cuvette holder - Drilling hole
        if(cvmode==1) translate([cvx,cvy,wa]) cylinder(d=cvw,h=hi);
        // LED 1 holder - Drilling hole
        translate([cvx,cvy+cvw/2-2*wi ,cvz]) rotate ([-90,0,0]) cylinder(h=led1l+3*wi, d=led1w-2*wi  );
        translate([cvx,cvy+cvw/2+2*wi ,cvz]) rotate ([-90,0,0]) cylinder(h=led1l     , d=led1w       );
        translate([cvx,cvy+cvw/2+led1l,cvz]) rotate ([-90,0,0]) cylinder(h=wi        , d=led1w+2.1*wi);
        // LED 1 labeling
        translate([cvx,cvy+cvw/2+wi,wa+hi-bst]) rotate([0,0,90]) {
            linear_extrude(height = bst){
                translate ([4,0,0]) text("1",
                    font = "Liberation Sans:style=Bold", size = 4, valign = "center", halign = "center");
            }
        }
        // LED 2 holder - Drilling hole
        translate([cvx-cvw/2-wi-led2l,cvy,cvz]) rotate ([0,90,0]) cylinder(h=led2l+3*wi, d=led2w-2*wi  );
        translate([cvx-cvw/2-wi-led2l,cvy,cvz]) rotate ([0,90,0]) cylinder(h=led2l     , d=led2w       );
        translate([cvx-cvw/2-wi-led2l,cvy,cvz]) rotate ([0,90,0]) cylinder(h=wi        , d=led2w+2.1*wi);
        // LED 2 labeling
        translate([cvx-cvw/2-wi-led2l,cvy,wa+hi-bst]) rotate([0,0,90]) {
            linear_extrude(height = bst){
                translate ([0,-4,0]) text("2",
                    font = "Liberation Sans:style=Bold", size = 4, valign = "center", halign = "center");
            }
        }
        // Sensor board holder
          translate([cvx-sco      ,cvy-cvw/2-wi-sbd   ,cvz-scr]) cube([sbh,sbd      ,sbw+1]);
          translate([cvx-sco+sbh-5,cvy-cvw/2-wi-sbd-wi,cvz-scr]) cube([5  ,sbd+2*wi ,sbw+1]);
        // Sensor chip pinhole
        hull(){
            translate([cvx,cvy-cvw/2-wi,cvz+scd/2]) rotate ([-90,0,0]) cylinder(h=3*wi, d=scd);
            translate([cvx,cvy-cvw/2-wi,cvz-scd/2]) rotate ([-90,0,0]) cylinder(h=3*wi, d=scd);
        }
        // Sensor chip position
        // translate([cvx,0,cvz]) rotate ([-90,0,0]) cylinder(h=sbid+wa+20*wi, d=0.5);
    }
}

// Case
module case(sbid,sbd,sbh,sbw,scu,scr,scd,bsh1,bsh2,bsh3,bsv1,bsv2,bsv3,bsl1,bsl2,bsl3,bsr1,bsr2,bsr3){
    outercase(bsh1,bsh2,bsh3,bsv1,bsv2,bsv3,bsl1,bsl2,bsl3,bsr1,bsr2,bsr3);
    
    cuvetteholder(sbid,sbd,sbh,sbw,scu,scr,scd);
    boardholder();
}

// Case - Lid
module caselid(bsd1){
    // wa = Dicke Seitenwand
    // bi = Width inside (X)
    // li = Length inside (Y)
    // kr = Edge radius
    
    // dh = Dicke Deckel
    // dfn = Deckel Führungsnut
    // dfl = Freilauf für Deckelführung
    
    // rnt = Depth der Rastnase
    // rnl = Length der Rastnase
    
    // bsd1 = Labeling lid
    
    difference(){
        union(){
            // Lid
            translate([wa+dfl,0,0]) cube([bi-2*dfl,wa+li+wa,dh-kr  ]);
            // mit Abrundung an Kante
            difference(){
                hull(){
                    translate([wa+dfl,0+kr       ,dh-kr]) rotate([0,90,0]) cylinder(h=bi-2*dfl, r=kr);
                    translate([wa+dfl,wa+li+wa-kr,dh-kr]) rotate([0,90,0]) cylinder(h=bi-2*dfl, r=kr);
                }
                translate([wa-dfn+dfl-20,0-20,-20]) cube([dfn+bi+dfn-2*dfl+40,wa+li+wa+40,dh/2-2*dfl+20]);
            }
            // Deckelführung
            translate([wa-dfn+dfl,0,0]) cube([dfn+bi+dfn-2*dfl,wa+li+wa,dh/2-2*dfl]);
        }
        // Aussparung Rastnase
        translate([wa+bi/2-rnl/2-dfl,wa      ,0]) cube([rnl+2*dfl,rnt,rnt]);
        // Aussparung Rastnase
        translate([wa+bi/2-rnl/2-dfl,wa+li-rnt,0]) cube([rnl+2*dfl,rnt,rnt]);
        // Labeling
        translate ([wa+bi/2,wa+li/2,dh-bst]) rotate([0,0,0]) {
            linear_extrude(height = bst){
                translate ([0,0,0]) text(bsd1,
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
        translate([i*(wa+bi+wa+3),0*(wa+li+wa+3),0]) case(sbid,sbd3,sbh3,sbw3,scu3,scr3,scd3,sys11,sys12,sys13,sb31,sb32,mcbs,sys14,sys15,sys16,cr1,cr2,cr3);
    }
    if (sysmode==2) {
        // RGB-LED Colorimeter - Beam angle 180 Degree (Absorbance measurement)
        // Sensor - Adafruit TCS34725
        translate([i*(wa+bi+wa+3),0*(wa+li+wa+3),0]) case(sbid,sbd2,sbh2,sbw2,scu2,scr2,scd2,sys21,sys22,sys23,sb21,sb22,mcbs,sys24,sys25,sys26,cr1,cr2,cr3);
    }
    if (sysmode==3) {
        // RGB-LED Photometer - Beam angle 180 Degree (Absorbance measurement)
        // IR-LED Turbidimeter - Beam angle 90 Degree (Nephelometric turbidity measurement)
        // Sensor - Adafruit TSL2591
        translate([i*(wa+bi+wa+3),0*(wa+li+wa+3),0]) case(sbid,sbd1,sbh1,sbw1,scu1,scr1,scd1,sys31,sys32,sys33,sb11,sb12,mcbs,sys34,sys35,sys36,cr1,cr2,cr3);
    }
    if (sysmode==4) {
        // IR-LED Photometer - Beam angle 180 Degree (Absorbance measurement)
        // IR-LED Turbidimeter - Beam angle 90 Degree (Nephelometric turbidity measurement)
        // Sensor - Adafruit TSL2591
        translate([i*(wa+bi+wa+3),0*(wa+li+wa+3),0]) case(sbid,sbd1,sbh1,sbw1,scu1,scr1,scd1,sys41,sys42,sys43,sb11,sb12,mcbs,sys44,sys45,sys46,cr1,cr2,cr3);
    }
    translate([i*(wa+bi+wa+3),1*(wa+li+wa+3),0]) caselid(mcip);
    translate([i*(wa+bi+wa+3),2*(wa+li+wa+3),0]) cuvettecoversquare(cctw, ccwi, cchi);
}
