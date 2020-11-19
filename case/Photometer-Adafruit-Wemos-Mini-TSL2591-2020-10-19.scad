// Gehäuse für Photometer mit WeMos D1 mini
// U. Scheffler 14.06.2018

// Adaption für Adafruit TSL2591 Lux Sensor und 2. LED (90 Grad Streulichtmessung)
// J. Heinemann 05.10.2020

//sysmode = 1;                 // UV-LED Photometer
    sys11  = "UV-LED";         // Beschriftung Hinten
    sys12  = "Photometer";
    sys13  = "Durchlicht";
    sys14  = "";               // Beschriftung Links
    sys15  = "";
    sys16  = "";

//sysmode = 2;                 // Colorimeter
    sys21  = "RGB-LED";        // Beschriftung Hinten
    sys22  = "Photometer";
    sys23  = "Durchlicht";
    sys24  = "";               // Beschriftung Links
    sys25  = "";
    sys26  = "";

sysmode = 3;                   // RGB-LED Photometer
    sys31  = "RGB-LED";        // Beschriftung Hinten
    sys32  = "Photometer";
    sys33  = "Durchlicht";
    sys34  = "IR-LED";         // Beschriftung Links
    sys35  = "Turbidimeter";
    sys36  = "Streulicht";

//sysmode = 4;                 // Turbidimeter
    sys41  = "IR-LED";         // Beschriftung Hinten
    sys42  = "Photometer";
    sys43  = "Durchlicht";
    sys44  = "IR-LED";         // Beschriftung Links
    sys45  = "Turbidimeter";
    sys46  = "Streulicht";

// Küvette
kvmode = 1;                // 0:= eckige Küvette , 1:= runde Küvette
//kvb    = 12.5;             // Kantenlänge (Aussen) für eckige Küvettenaussparung 
//kvh    = 45.0;             // Höhe
kvb    = 16.0;             // Durchmesser (Aussen) für runde Küvettenaussparung
kvh    = 160.0;            // Höhe
kvbz   =  0.6;             // Zusatz zur Kantenlänge/Durchmesser (Aussen)

kvk = kvb+kvbz;            // Kantenlänge Gesamt

// Copyright - Beschriftung Rechts
cr1    = "Open Source";    
cr2    = "Smart, simple and easy";
cr3    = "Made in Germany";

// Microcomputer WeMos D1 mini WLAN/WiFi
//
// Die Bauhöhe des Stapels setzt sich aus dem Microcomputer (D1 mini),
// der Adapterplatine und den Steckern zusammen.
// Unter dem D1 Mini sollte etwas Luft bleiben
mch    = 50.0;             // Höhe (incl. Board, Extension-Board, Stecker und Kabel) (X)
mcl    = 35.0;             // Länge der D1 mini Platine (Y)
mcb    = 26.0;             // Breite der D1 mini Platine (Z)
mcph   =  5.0;             // Höhe (nur D1 mini Platine) (Y)
mcfh   = 10.0;             // Höhe Führungsblock (Verbindungsstecker) (X)
mcsh   = 18.0;             // Höhe des Stapels (X)

mcbs   = "WeMos D1 mini WLAN/WiFi"; // Beschriftung Vorne
mcip   = "192.168.4.1";             // Beschriftung Deckel

// USB Anschluss
usbb   =  8.0;             // Breite USB
usbh   = 11.0;             // Höhe USB
usbt   =  0.4;             // Zusätzliche Tiefe USB

// Sensoren
spet   = 20.0;             // Einbautiefe der Sensorplatine (incl. Board, Stecker und Kabel) (Y)

// Sensor - Adafruit TSL2591
sph1   = 16.5;             // Höhe der Sensorplatine - gemessen von Unterkante (X)
spb1   = 19.0;             // Breite der Sensorplatine - gemessen von Seitenkante (Z)
spt1   =  3.5;             // Tiefe der Sensorplatine (Y)
scu1   =  9.4;             // Abstand der Mitte des Sensorchips von der Unterkante seiner Platine (X)
scr1   =  9.4;             // Abstand der Mitte des Sensorchips von der rechten Seitenkante seiner Platine (Z)
scd1   =  4.0;             // Duchmesser Öffnung für den Sensor Chip

sb11   = "Sensor";         // Beschriftung Vorne
sb12   = "TSL2591";

// Sensor - Adafruit TCS34725
sph2   = 20.3;             // Höhe der Sensorplatine - gemessen von Unterkante (X)
spb2   = 20.3;             // Breite der Sensorplatine - gemessen von Seitenkante (Z)
spt2   =  3.0;             // Tiefe der Sensorplatine (Y)
scu2   =  9.4;             // Abstand der Mitte des Sensorchips von der Unterkante seiner Platine (X)
scr2   = 11.5;             // Abstand der Mitte des Sensorchips von der rechten Seitenkante seiner Platine (Z)
scd2   =  4.0;             // Duchmesser Öffnung für den Sensor Chip

sb21   = "Sensor";         // Beschriftung Vorne
sb22   = "TCS34725";

// Sensor - VEML6070
sph3   = 12.0;             // Höhe der Sensorplatine - gemessen von Unterkante (X)
spb3   = 13.0;             // Breite der Sensorplatine - gemessen von Seitenkante (Z)
spt3   =  2.9;             // Tiefe der Sensorplatine (Y)
scu3   =  5.0;             // Abstand der Mitte des Sensorchips von der Unterkante seiner Platine (X)
scr3   =  6.5;             // Abstand der Mitte des Sensorchips von der rechten Seitenkante seiner Platine (Z)
scd3   =  4.0;             // Duchmesser Öffnung für den Sensor Chip

sb31   = "Sensor";         // Beschriftung Vorne
sb32   = "VEML6070";

// LEDs
ledh   = 20.0;             // Einbauhöhe

led1l  =  8.5;             // Länge
led1b  =  5.4;             // Breite (Durchmesser)
led1s  = 13.5;             // Länge Stecker
led1g  = led1l+led1s;      // Gesamtlänge (incl. Stecker)
led1m  = led1l+led1g;      // Montagetiefe

led2l  =  8.5;             // Länge
led2b  =  5.6;             // Breite (Durchmesser)
led2s  = 13.5;             // Länge Stecker
led2g  = led1l+led1s;      // Gesamtlänge (incl. Stecker)
led2m  = led1l+led1g;      // Montagetiefe

// Gehäusemaße
wa     =  1.6;             // Dicke Seitenwand
wi     =  0.8;             // Wandstärke Innen
kr     =  1.6;             // Kanten Radius
bi     = mch+wi+kvk+led2m; // Breite Innen (X)
li     = spet+wi+kvk+led1m;// Länge Innen (Y)
hi     = 31.6;             // Höhe Innen (Z)

kvx    = wa+led2m+wi+kvk/2;// Küventten Position (X)
kvy    = wa+spet+wi+kvk/2; // Küventten Position (Y)
kvz    = wa+hi-ledh;       // Küventten Position (Y)

// Gehäuse - Kappe zum Abdecken einer eckigen Küvette
kawd   =  1.2;             // Wand Dicke
kaik   = kvk+1.0;          // Innenkante
kaih   = kvh-wa-hi+15.0;   // Innenhöhe

// Gehäuse - Führung für Platinen
hmcll  =  7.8;             // Länge Führungsblock Vorne
hmcuh  =  3.0;             // Höhe der Führung unter der D1 mini Platine
hmcur  = 30.0;             // Abstand der Führung über der D1 mini Platine zur USB Seite
hmcorl =  5.0;             // Länge der Führung über der D1 mini Platine (Rechte Seite)
hmcrh  =  7.0;             // Höhe der Führung rechts neben der D1 mini Platine
hmcbs  = hi-mcb;           // Höhe des Bodensockels unter dem D1 mini Stapel (Höhenausgleich)

// Gehäuse - Deckel
dh     =  2.0;             // Dicke (Z)
dfn    =  0.8;             // Führungsnut
dfl    =  0.2;             // Freilauf für Deckelführung

// Gehäuse - Rastnasen
rnt    =  1.2;             // Tiefe
rnl    =  8.0;             // Länge

// Gehäuse - Beschriftungen
bst    =  0.4;             // Einprägetiefe
bsbpf  =  4.0;             // Breite Pfeilschaft
bslpf  = 10.0;             // Länge Pfeilschaft
bsdpf  =  0.8;             // Breite der Prägelinie
bsapf  =  1.0;             // Abstand Pfeil zum Küvettendurchbruch

// "cube" mit abgerundeten Kanten und Radius = r
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

// Open Source Hardware Logo
//module logo(h){
//    // b = Strichbreite
//    // h = Logo Höhe
//    b=h/15;
//
//    translate ([ 2*b, 0.5*b,0]) square([11*b,b],center= true);
//    translate ([-2*b, 2.5*b,0]) square([11*b,b],center= true);
//    translate ([ 2*b, 4.5*b,0]) square([11*b,b],center= true);
//    translate ([-2*b, 6.5*b,0]) square([11*b,b],center= true);
//    translate ([ 2*b, 8.5*b,0]) square([11*b,b],center= true);
//    translate ([-2*b,10.5*b,0]) square([11*b,b],center= true);
//    translate ([ 2*b,12.5*b,0]) square([11*b,b],center= true);
//    translate ([-2*b,14.5*b,0]) square([11*b,b],center= true);
//}

//Logo
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

// Beschriftungen an den Gehäuseseiten anbringen
module beschriftungen(bsh1,bsh2,bsh3,bsv1,bsv2,bsv3,bsl1,bsl2,bsl3,bsr1,bsr2,bsr3){
    // Hinten
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
    // Vorne
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
    // Links
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
    // Rechts
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

// Außenhülle
module aussenhuelle(bsh1,bsh2,bsh3,bsv1,bsv2,bsv3,bsl1,bsl2,bsl3,bsr1,bsr2,bsr3){
    difference(){
        // Außenhülle
        translate([ 0, 0, 0]) roundcube(wa+bi+wa,wa+li+wa,wa+hi+dh,kr);
        // Innenraum
        translate([wa,wa,wa]) cube([bi,li,hi+dh]);
        // USB Anschluss
        translate([wa+bi+wa-usbb,0,wa+mcb/2+hmcbs-usbh/2]) cube([usbb,wa+usbt,usbh]);
        // Deckelloch
        translate([wa,0,wa+hi]) cube([bi,wa+li+wa,dh]);
        // Deckelführung
        translate([wa-dfn,0,wa+hi]) cube([dfn+bi+dfn,wa+li+wa,dh/2]);
        // eckige Küvettenführung Bodendurchbruch
        if(kvmode==0) translate([kvx-kvk/2,kvy-kvk/2,0]) cube([kvk,kvk,wa]);
        // runde Küvettenführung Bodendurchbruch
        if(kvmode==1) translate([kvx,kvy,0]) cylinder(d=kvk,h=wa);
        // Beschriftung Pfeil
        translate([kvx-bsbpf,kvy+kvk/2+wi+bsapf,0]) linear_extrude(height = bst){difference(){
            polygon(points=[[bsbpf,0],[0,bsbpf],[1/2*bsbpf,bsbpf],[bsbpf/2,bsbpf+bslpf],[3*bsbpf/2,bsbpf+bslpf],[3*bsbpf/2,bsbpf],[2*bsbpf,bsbpf]]);
            polygon(points=[[bsbpf,sqrt(2)*bsdpf],[sqrt(2)*bsdpf+bsdpf,bsbpf-bsdpf],[1/2*bsbpf+bsdpf,bsbpf-bsdpf],[bsbpf/2+bsdpf,bsbpf+bslpf-bsdpf],
                            [3*bsbpf/2-bsdpf,bsbpf+bslpf-bsdpf],[3*bsbpf/2-bsdpf,bsbpf-bsdpf],[2*bsbpf-sqrt(2)*bsdpf-bsdpf,bsbpf-bsdpf]]);}
        }
        beschriftungen(bsh1,bsh2,bsh3,bsv1,bsv2,bsv3,bsl1,bsl2,bsl3,bsr1,bsr2,bsr3);
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

// D1 mini Platinenführungen
module platinenfuehrungen(){
    // Führung zwischen den D1 mini Platinen (Linke Seite)
    difference(){
        // Außen
        translate([wa+bi-mcph-mcfh   ,wa,wa            ]) cube([mcfh     ,hmcll   ,hi  ]);
        // Innen
        translate([wa+bi-mcph-mcfh+wi,wa,wa            ]) cube([mcfh-2*wi,hmcll+wi,hi  ]);
        // USB
        translate([wa+bi+wa-usbb     , 0,wa+mcb/2+hmcbs-usbh/2]) cube([usbb     ,wa+usbt ,usbh]);
    }
    // Bodensockel unter dem D1 mini Stapel (Höhenausgleich)
    translate([wa+bi-mcsh ,wa+mcl/8*2.3,wa]) cube([mcsh,wi,hmcbs-0.5]);
    translate([wa+bi-mcsh ,wa+mcl/8*4.3,wa]) cube([mcsh,wi,hmcbs-0.5]);
    translate([wa+bi-mcsh ,wa+mcl/8*6.2,wa]) cube([mcsh,wi,hmcbs-0.5]);
    translate([wa+bi-hmcrh,wa+mcl/8*7.3,wa]) cube([hmcrh,wi,hmcbs-0.5]);
    // Platinenführung unter D1 mini
    translate([wa+bi-hmcuh,wa+hmcur,wa]) cube([hmcuh,wi,hi]);
    // Platinenführung rechts neben D1 mini
    translate([wa+bi-hmcrh,wa+mcl,wa]) cube([hmcrh,wi,hi]);
    // Platinenführung über D1 mini
    translate([wa+bi-hmcrh,wa+hmcur,wa]) cube([wi,hmcorl,hi]);

}

// Küvettenführung, LED und Sensor Halterungen
module messblock(spet,spt,sph,spb,scu,scr,scd){

    // spet = Einbautiefe der Sensorplatine (incl. Board, Stecker und Kabel) (Y)
    // spt  = Tiefe der Sensorplatine (Y)
    // sph  = Höhe der Sensorplatine - gemessen von Unterkante (X)
    // spb  = Breite der Sensorplatine - gemessen von Seitenkante (Z)
    // scu  = Abstand der Mitte des Sensorchips von der Unterkante seiner Platine (X)
    // scr  = Abstand der Mitte des Sensorchips von der rechten Seitenkante seiner Platine (Z)
    // scd  = Duchmesser Öffnung für den Sensor Chip
 
    sco  = sph-scu+0.25;     // Abstand der Mitte des Sensorchips von der Oberkante seiner Platine (X)
    scl  = spb-scr;          // Abstand der Mitte des Sensorchips von der rechten Seitenkante seiner Platine (Z)
    
    difference(){
        union(){
            // eckige Küvettenführung
            if(kvmode==0) translate([kvx-kvk/2-wi,kvy-kvk/2-wi,wa]) cube([kvk+2*wi,kvk+2*wi,hi]);
            // runde Küvettenführung
            if(kvmode==1) translate([kvx,kvy,wa]) cylinder(d=kvk+2*wi,h=hi);
            // LED 1 Halterung
            translate([kvx-(2*wi+led1b)/2,kvy+kvk/2-wi,wa]) cube([2*wi+led1b,led1l+2*wi,hi]);
            // LED 2 Halterung
            translate([kvx-kvk/2-wi-led2l,kvy-(2*wi+led2b)/2,wa]) cube([led2l+2*wi,2*wi+led2b,hi]);
            // Sensor Platinenführung
            translate([kvx-sco-wi,kvy-kvk/2-wi-spt-wi,wa]) cube([sph+wi-2,spt+2*wi,kvz+scl+0.5]);
        }
        // Bodendurchbruch - eckige Küvettenführung
        if(kvmode==0) translate([kvx-kvk/2,kvy-kvk/2,wa]) cube([kvk,kvk,hi]);
        // Bodendurchbruch - runde Küvettenführung
        if(kvmode==1) translate([kvx,kvy,wa]) cylinder(d=kvk,h=hi);
        // LED 1 Bohrung
        translate([kvx,kvy+kvk/2-2*wi ,kvz]) rotate ([-90,0,0]) cylinder(h=led1l+3*wi, d=led1b-2*wi  );
        translate([kvx,kvy+kvk/2+2*wi ,kvz]) rotate ([-90,0,0]) cylinder(h=led1l     , d=led1b       );
        translate([kvx,kvy+kvk/2+led1l,kvz]) rotate ([-90,0,0]) cylinder(h=wi        , d=led1b+2.1*wi);
        // LED 1 Beschriftung
        translate([kvx,kvy+kvk/2+wi,wa+hi-bst]) rotate([0,0,90]) {
            linear_extrude(height = bst){
                translate ([4,0,0]) text("1",
                    font = "Liberation Sans:style=Bold", size = 4, valign = "center", halign = "center");
            }
        }
        // LED 2 Bohrung
        translate([kvx-kvk/2-wi-led2l,kvy,kvz]) rotate ([0,90,0]) cylinder(h=led2l+3*wi, d=led2b-2*wi  );
        translate([kvx-kvk/2-wi-led2l,kvy,kvz]) rotate ([0,90,0]) cylinder(h=led2l     , d=led2b       );
        translate([kvx-kvk/2-wi-led2l,kvy,kvz]) rotate ([0,90,0]) cylinder(h=wi        , d=led2b+2.1*wi);
        // LED 2 Beschriftung
        translate([kvx-kvk/2-wi-led2l,kvy,wa+hi-bst]) rotate([0,0,90]) {
            linear_extrude(height = bst){
                translate ([0,-4,0]) text("2",
                    font = "Liberation Sans:style=Bold", size = 4, valign = "center", halign = "center");
            }
        }
        // Sensor Platinenführung
          translate([kvx-sco      ,kvy-kvk/2-wi-spt   ,kvz-scr]) cube([sph,spt      ,spb+1]);
          translate([kvx-sco+sph-5,kvy-kvk/2-wi-spt-wi,kvz-scr]) cube([5  ,spt+2*wi ,spb+1]);
        // Sensor Lichtweg
        hull(){
            translate([kvx,kvy-kvk/2-wi,kvz+scd/2]) rotate ([-90,0,0]) cylinder(h=3*wi, d=scd);
            translate([kvx,kvy-kvk/2-wi,kvz-scd/2]) rotate ([-90,0,0]) cylinder(h=3*wi, d=scd);
        }
        // Position Sensor Chip
        // translate([kvx,0,kvz]) rotate ([-90,0,0]) cylinder(h=spet+wa+20*wi, d=0.5);
    }
}

// Gehäuse
module gehaeuse(spet,spt,sph,spb,scu,scr,scd,bsh1,bsh2,bsh3,bsv1,bsv2,bsv3,bsl1,bsl2,bsl3,bsr1,bsr2,bsr3){
    aussenhuelle(bsh1,bsh2,bsh3,bsv1,bsv2,bsv3,bsl1,bsl2,bsl3,bsr1,bsr2,bsr3);
    messblock(spet,spt,sph,spb,scu,scr,scd);
    platinenfuehrungen();
}

// Deckel
module deckel(bsd1){
    // wa = Dicke Seitenwand
    // bi = Breite innen (X)
    // li = Länge innen (Y)
    // kr = Kanten Radius
    
    // dh = Dicke Deckel
    // dfn = Deckel Führungsnut
    // dfl = Freilauf für Deckelführung
    
    // rnt = Tiefe der Rastnase
    // rnl = Länge der Rastnase
    
    // bsd1 = Beschriftung Deckel
    
    difference(){
        union(){
            // Deckel
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
        // Beschriftung
        translate ([wa+bi/2,wa+li/2,dh-bst]) rotate([0,0,0]) {
            linear_extrude(height = bst){
                translate ([0,0,0]) text(bsd1,
                    font = "Liberation Sans:style=Bold", size = 6, valign = "center", halign = "center");
            }
        }
    }
}

// Kappe zum Abdecken einer eckigen Küvette
module kappe_eckig(wd, ik, ih){
    // wd = Wand Dicke
    // ik = Innenkante
    // ih = Innenhöhe

    difference(){
        cube (size = [ik + 2*wd,ik + 2*wd,ih + wd]);
        translate ([wd,wd,wd]) cube (size = [ik,ik,ih+2*wd]);
        translate ([wd+ik/2,wd+ik/2,-wd]) cylinder(d=wd ,h =ih*2, $fn=50);
    }
}

// ********************************************************************************************************
 
// Photometer Anzahl
anzahl = 1;

for (i = [0:anzahl-1]) {
    if (sysmode==1) {
        // UV-LED Photometer - Durchlicht
        // Sensor - VEML6070
        translate([i*(wa+bi+wa+3),0*(wa+li+wa+3),0]) gehaeuse(spet,spt3,sph3,spb3,scu3,scr3,scd3,sys11,sys12,sys13,sb31,sb32,mcbs,sys14,sys15,sys16,cr1,cr2,cr3);
    }
    if (sysmode==2) {
        // Colorimeter - RGB-LED - Durchlicht
        // Sensor - Adafruit TCS34725
        translate([i*(wa+bi+wa+3),0*(wa+li+wa+3),0]) gehaeuse(spet,spt2,sph2,spb2,scu2,scr2,scd2,sys21,sys22,sys23,sb21,sb22,mcbs,sys24,sys25,sys26,cr1,cr2,cr3);
    }
    if (sysmode==3) {
        // RGB-LED Photometer - Durchlicht
        // IR-LED Turbidimeter - Streulicht
        // Sensor - Adafruit TSL2591
        translate([i*(wa+bi+wa+3),0*(wa+li+wa+3),0]) gehaeuse(spet,spt1,sph1,spb1,scu1,scr1,scd1,sys31,sys32,sys33,sb11,sb12,mcbs,sys34,sys35,sys36,cr1,cr2,cr3);
    }
    if (sysmode==4) {
        // IR-LED Photometer - Durchlicht
        // IR-LED Turbidimeter - Streulicht
        // Sensor - Adafruit TSL2591
        translate([i*(wa+bi+wa+3),0*(wa+li+wa+3),0]) gehaeuse(spet,spt1,sph1,spb1,scu1,scr1,scd1,sys41,sys42,sys43,sb11,sb12,mcbs,sys44,sys45,sys46,cr1,cr2,cr3);
    }
//    translate([i*(wa+bi+wa+3),1*(wa+li+wa+3),0]) deckel(mcip);
//    translate([i*(wa+bi+wa+3),2*(wa+li+wa+3),0]) kappe_eckig(kawd, kaik, kaih);
}
