![Banner](https://smartaquametering.github.io/assets/images/banner.png)

# smartPhotometer

Easy-to-use OpenSource LED spectrophotometers for **measurement of the absorption of light** at given ranges of wavelengths of colored or not colored substances in solution.

smartPhotometer for analytics of aqueous solutions works with ultraviolet, visible and infrared light ranges, by wavelengths around 375 up to 850 nm.

smartColorimeter allows **CIE compliant measurements of colors** and their transformation into various color spaces and color systems including the determination of **colour differences to common color indices/references** according to classic as well as modern standards (ΔE CIE 1976, ΔE CIE 1994, ΔE CIE 2000, ΔE CMC(1:1), ΔE CMC(2:1), ΔE DIN99).

**Turbidity – a source of error**</br>
The turbidity of a sample is often underestimated, because often it is not possible to see it visually.</br>
**The nephelometric turbidity of a sample is measured and displayed for every single measurement automatically.**

Due to their wide range of application, their reliability and robustness, smartPhotometers **can be perfectly used as portable analytical instruments for outdoor analytics**.

**Your insurance for secure measurement results.**

## Electromagnetic radiation used for photometric analysis

In simple terms, photometry is a measurement method for determining the concentration of colored solutions with the aid of electromagnetic radiation (“light”).

The two most common types of photometers are:

- Spectrophotometer
- Filter photometer

In spectrophotometers a monochromator (with prism or with grating) is used to obtain monochromatic light of defined wavelengths. They can also be used to scan the spectrum of the absorbing substance.

In filter photometers, optical filters are used to give the monochromatic light.

Due to the evolution and availability of **various types of LEDs** it is easily possible **to obtain nearly monochromatic light with specific wavelength ranges** for respective measurements, but without the need to setup an complex and sensitive monochromator or filter mechanismn.

- The selection of the optimum wavelength range depends on the color of the sample solution and the associated absorption of the complementary color.
- For a blue solution, a wavelength range near to yellow should be used (green LED), while for a yellow solution a blue LED should be used, since always the complementary color is absorbed.
- The more closely the absorption maximum of the substance to be detected is approached, the higher the performance of the photometer will be.
- The smaller the spectral bandwidth of the LED (the range between lower and upper wavelength), the higher the photometer resolution.

The selection of an appropriate cuvette for each measurement is crucial. The material (depending on the wavelength) and size of the cuvette are the two key factors.

- High-quality materials such as quartz are used in rectangular standard cuvettes for measurements in the UV range.
- In addition to round and rectangular cuvettes, there are also special cuvettes, such as flow-through cuvettes, where the sample solution is passed into and out of the cuvette by a pump.
- The size of the cuvette is directly related to the layer thickness that is effective in the Lambert-Beer law. Generally speaking, the larger the cuvette and the sample volume, the greater the layer thickness, and the more sensitive the measurement can be.

<table>
<tr>
  <td colspan=6 align="center"><img src="./assets/photometrie-spectrum.png" alt="Photometrie spectrum">
                               <img src="./assets/colorimetrie-spectrum.png" alt="Colorimetriemetrie spectrum">
                               <img src="./assets/colorimetrie-spectrum-2.png" alt="Colorimetriemetrie spectrum">
</tr>
<tr>
  <td colspan=6><sub><b>Ultraviolet radiation</b>
</tr>
<tr>
  <td>
  <td><sub>100-280 nm
  <td colspan=2><sub>UVC
  <td rowspan=2><sub>UV transmitting quartz glass cuvette</br>> 190 nm
  <td rowspan=3><sub>Numerous anorganic and</br>especially organic compounds</br>absorb UV light
</tr>
<tr>
  <td>
  <td><sub>280-315 nm
  <td colspan=2><sub>UVB
</tr>
<tr>
  <td>
  <td><sub>315-400 nm
  <td colspan=2><sub>UVA
  <td><sub>Borosilicate glass cuvette</br>> 290 nm
</tr>
<tr>
  <td colspan=6><sub><b>Colors of light and complementary colors</b>
</tr>
<tr>
  <td>
  <td><sub>400–435 nm
  <td><sub>Violet
  <td><sub>Yellow-Green
  <td rowspan=9><sub>Normal glass (soda-lime glass) cuvette</br>> 350 nm
  <td rowspan=8><sub>Anorganic compounds</br>by using calibrated test
</tr>
<tr>
  <td>
  <td><sub>435–495 nm
  <td><sub>Blue
  <td><sub>Yellow
</tr>
<tr>
  <td>
  <td><sub>495–520 nm
  <td><sub>Cyan (Blue-Green)
  <td><sub>Red
</tr>
<tr>
  <td>
  <td><sub>520–570 nm
  <td><sub>Green
  <td><sub>Violet
</tr>
<tr>
  <td>
  <td><sub>570–600 nm
  <td><sub>Yellow
  <td><sub>Blue
</tr>
<tr>
  <td>
  <td><sub>600–625 nm
  <td><sub>Orange
  <td><sub>Cyan (Blue-Green)
</tr>
<tr>
  <td>
  <td><sub>625–700 nm
  <td><sub>Red
  <td><sub>Cyan (Blue-Green)
</tr>
<tr>
  <td>
  <td><sub>700–780 nm
  <td><sub>Deep Red
  <td><sub>Cyan (Blue-Green)
</tr>
<tr>
  <td>
  <td><sub>> 780 nm
  <td><sub>Infrared
  <td><sub>Black
  <td><sub>Nephelometric turbidity measurement
</tr>
</table>

## Reducing complexity
- by using **RGB, UV and IR LEDs for the parallel measurement of absorption and nephelometric turbidity** at different wavelengths.
- by the integration of various **digital light sensors orchestrated by simple microcontrollers**.
- by distributing different analysis methods **on multiple meshed photometers**.
- by the strict **segregation of data acquisition, processing, transmission, analytics and their visualisation** on different layers and devices.

## Being Smart - The difference
Connect the smartPhotometers microcontrollers (including their connected LED fireworks and light sensors) via WiFi to your internal network and orchestrate them by using simple web- or MQTT-based APIs.

![Networking](./assets/networking.png)

Any device (e.g. PC, Laptop, Tablet, smartPhone, ...) with a standard web browser can be used to access a simple web page on the smartPhotometers.

A Javascript application will start within your browser and is triggering and managing all analytis, evaluation of measured values and their visualisation.

### Environmental monitoring
Monitor and secure your environment in real time with online monitoring by logging readings into a central database with MQTT-based APIs.

### Absorbance measurement

The principle of absorption photometers is that (as far as possible) monochromatic light is allowed to pass through a cuvette containing the solution. It then reaches a light sensor, that measures the intensity of the light compared to the intensity after passing through an identical cuvette with the same solvent but without the colored substance. From the ratio between the light intensities, knowing the capacity of the colored substance to absorb light, it is possible to calculate the concentration of the substance using Lambert-Beer's law.

<table>
  <tr>
    <td><img src="./assets/solution-colored.png" alt="Colored solution">
    <td><img src="./assets/photometrie-principles.png" alt="Principles of photometrie">
  </tr>
<tr>
  <td><img src="./assets/extinction-coefficient.png" alt="Extinction coefficient">
  <td><img src="./assets/absorbance.png" alt="Absorbance">
</tr>
<tr>
<td><sub>λ</td>
<td><sub>Wavelength [nm]</td>
</tr>
<tr>
<td><sub><var>B<sup>o</sup></var></td>
<td><sub>
	Beam (measuring) angle [<var><sup>o</sup></var>]</br>
	<var>180 <sup>o</sup>: Transmitted light measurement (Absorbance)</var></br>
	<var>90 <sup>o</sup>: Nephelometric turbidity (scattered light) measurement</var>
</td>
</tr>
<tr>
  <td><sub><var>I<sub>0</sub></var></td>
  <td><sub>Intensity of incident light [lux]</td>
</tr>
<tr>
<td><sub><var>I<sub>T</sub></var></td>
<td><sub>Intensity of transmitted light [lux]</td>
</tr>
<tr>
<td><sub>T = <var>I<sub>T</sub></var> / <var>I<sub>0</sub></var></td>
<td><sub>
	Transmission</br>
	Energy passing through</br>
	Range: 0.0 - 1.0
</td>
</tr>
<tr>
<td><sub>A = 1 - T</td>
<td><sub>
	Absorption</br>
	Energy lost
</td>
</tr>
<tr>
<td><sub><var>E<sub>λ</sub></var> = - log ( T ) = log ( 1 / T ) = <var>ε<sub>λ</sub></var> * c * d</td>
<td><sub>
	Absorbance</br>
	Attenuation</br>
	Lambert-Beer law</br>
	Optimum range: 0.1 – 1.0
</td>
</tr>
<tr>
<td><sub><var>SAC<sub>λ</sub></var> = <var>E<sub>λ</sub></var> / d * 100</td>
<td><sub>Spectral Absorption Coefficient [<var>m<sup>-1</sup></var>]</td>
</tr>
<tr>
<td><sub>c = <var>E<sub>λ</sub></var> / ( <var>ε<sub>λ</sub></var> * d ) = <var>E<sub>λ</sub></var> * F = <var>E<sub>λ</sub></var> / m</td>
<td><sub>Concentration of absorbing substance in the liquid [mol/l]</td>
</tr>
<tr>
<td><sub>F = 1 / m = 1 / ( <var>ε<sub>λ</sub></var> * d )</td>
<td><sub>
	Factor</br>
	Test specific
</td>
</tr>
<tr>
<td><sub>m = ΔE / Δc = <var>ε<sub>λ</sub></var> * d 
</td>
<td><sub>
   Slope
</td>
</tr>
<tr>
<td><sub>N</td>
<td><sub>
   Zero value
</td>
</tr>
<tr>
<td><sub><var>ε<sub>λ</sub></var></td>
<td><sub>Molar decadic extinction coefficient [l/mol/cm]</td>
</tr>
<tr>
<td><sub>d</td>
<td><sub>Thickness of the solution layer [cm]</td>
</tr>
</table>

### NTU check

- Safely spot interfering turbidities
- Unique for maximum measurement result safety
- Runs automatically with each measurement

### Color measurement

Color assessment focusses on the optical characteristics of the material, i.e. its ability to modify incident light waves.
If an object is exposed to light, it reflects a certain portion of the light, absorbs another portion and transmits the rest.

- *Reflectance* is the basic value for color measurement at reflecting materials (surfaces).
- *Transmittance* is the basic value for color measurement at transparent materials (clear liquids, foils).

Color perception is, like any other spatial perception, three-dimensional. This means that colors can be described by three clear measures of quantity like e.g. lightness, hue and saturation.

CIE 1931 is a Color Matching System that specify a measured color numerically by 3 functions called the RGB color matching functions.

Color Matching functions have three fixed primary colors and each function outputs the amount of primary needed to create a desired color when all three are mixed.
700nm, 546.1nm and 435.8nm are the primaries of the 1931 RGB color matching functions: r(λ), g(λ), b(λ). Plotted below.

Die Werte X, Y und Z werden Normfarbwerte oder auch Tristimulus-Werte genannt. 

A colorimeter is generally any tool that characterizes color samples to provide an objective measure of color characteristics.

Color parameters:
- Conversions of measured color into various color spaces
- Measuring of color distance/difference against quality control standards (e.g. color scales/indices/references)

#### Color Spaces

Normally, color spaces are three dimensional spaces with a color component on every axis. The colour of an object is defined by combining these three elements.

The following color spaces are supported:

<table>
<tr>
    <td><img src="./assets/solution-colored-2.png" alt="Colored solution">
    <td><img src="./assets/colorimetrie-principles.png" alt="Principles of colorimetrie">
</tr>
<tr>
  <td><img src="./assets/extinction-coefficient.png" alt="Extinction coefficient">
  <td><img src="./assets/absorbance.png" alt="Absorbance">
</tr>
<tr>
<td><sub>Φ</td>
<td><sub>Luminous flux [lm]</td>
</tr>
<tr>
<td><sub>Ω</td>
<td><sub>Solid angel in Steradian [sr]</td>
</tr>
<tr>
<td><sub>E = Φ / A</td>
<td><sub>Illumination [lux] [lm / <var>m<sup>2</sup></var>]</td>
</tr>
<tr>
<td><sub>I = Φ / Ω</td>
<td><sub>Luminous intensity or candelpower [mcd] [lm / sr]</td>
</tr>
<tr>
<td><sub></td>
<td><sub>Clear (unfiltered) value</td>
</tr>
<tr>
<td><sub>
RGB are tristimulus values</br>
r = R/(R+G+B)</br>
g = G/(R+G+B)</br>
b = B/(R+G+B)</br>
rgb are chromaticity coordinates and r + g + b = 1</td>
<td><sub>R, G and B (filtered) values</td>
</tr>
<tr>
<td><sub>X = a * Tx + b * Tz</br>
Y = Ty = Illuminance</br>
Z = c * Tz</br>
</br>
a, b and c depend on illuminant and observer</br>
Standard illuminant C and 2°-observer</td>
<td><sub>Standard tristimulus values</br>
CIE-1931 color space (tristimulus system)</td>
</tr>
<tr>
<td><sub>x = X / ( X + Y + Z )</br>
y = Y / ( X + Y + Z )</br>
z = Z / ( X + Y + Z )</br>
x + y + z = 1</td>
<td><sub>Chromaticity coordinates in the tristimulus system</td>
</tr>
<tr>
<td><sub><var>T<sub>C</sub></var> = 449 * <var>n<sup>3</sup></var> + 3525 * <var>n<sup>2</sup></var>  + 6823.3 * n + 5520.33</br>
where n = ( x − 0.3320 ) / ( 0.1858 − y )</td>
<td><sub>Light color temperature (CCT) in Kelvin [<var><sup>o</sup></var>K]</br>
McCamy’s formula</td>
</tr>
<tr>
<td><sub>L* = 116 * ∛( Y / <var>Y<sub>n</sub></var> ) - 16</br>
a* = 500 * ( ∛( X / <var>X<sub>n</sub></var> ) - ∛( Y / <var>Y<sub>n</sub></var> ) )</br>
b* = 200 * ( ∛( Y / <var>Y<sub>n</sub></var> ) - ∛( Z / <var>Z<sub>n</sub></var> ) )</br>
C* = √( <var>a*<sup>2</sup></var> + <var>b*<sup>2</sup></var> )</br>
<var>h<sub>ab</sub></var> = arctan( b* / a* )</br>
</br>
<var>X<sub>n</sub></var>, <var>Y<sub>n</sub></var> and <var>Z<sub>n</sub></var> depend on illuminant and observer</td>
<td><sub>CIE-L*a*b* colorimetric system</td>
</tr>
<tr>
<td><sub>Calculated from standard tristimulus values X, Y and Z, but with different equations</br>
The color space is related to the CIE-Lab space in purpose, but differs in implementation</td>
<td><sub>Hunter-Lab-values</br>
Used for the assessment of surface colors</td>
</tr>
</table>

#### Color Distance

To determine color differences according to classic as well as modern standards (ΔE CIE 1976, ΔE CIE 1994, ΔE CIE 2000, ΔE CMC(1:1), ΔE CMC(2:1), ΔE DIN99).

<table>
<tr>
<td><sub>ΔE*</br>
</br>
ΔE*wp: Color difference between the sample and water</br>
ΔE*ws: Color difference between the standard solution and water</br>
</br>
ΔE*wp < ΔE*ws
</td>
<td><sub>CIE-L*a*b* difference values</td>
</tr>
</table>

#### Color Scales

Color scales/indices/references are common and simple methods to determine the color of a sample.

The sample is compared with a series of colored standards/references. The result corresponds to the standard with the most similar colors.

<table>
<tr>
<td><sub><b>Color scale</b></td>
<td><sub><b>Range</b></td>
<td><sub><b>Calibration / Standard</b></td>
<td><sub><b>Measurement</b></td>
</tr>
<tr>
<td><sub>Iodine Color Number</td>
<td><sub>0 - 120</td>
<td><sub>mg of iodine per 100ml potassium iodide solution (DIN 6162)</td>
<td><sub></td>
</tr>
<tr>
<td><sub>Hazen Color Number (APHA)</td>
<td><sub>0 - 1000</td>
<td><sub>Measure yellow hues in liquids (DIN ISO 6271)</br>
</br>
Calibration standard with 500 mg/l Pt/Co 500 (500 Hazen)</td>
<td><sub><var>E<sub>430</sub></var> = 0.115</br>
<var>E<sub>455</sub></var> = 0.135</br>
<var>E<sub>480</sub></var> = 0.115</br>
<var>E<sub>510</sub></var> = 0.06</br>
</br>
(Optical path length: 10 mm)</td>
</tr>
<tr>
<td><sub>Gardner Color Number</td>
<td><sub>0 - 18</td>
<td><sub></td>
<td><sub></td>
</tr>
<tr>
<td><sub>Lovibond Color System</td>
<td><sub>Lovibond® 1)
yellow/red Ly 0 - 120, Lr 0 - 20</td>
<td><sub></td>
<td><sub></td>
</tr>
<tr>
<td><sub>European Pharmacopoeia (EP) Color Determination</td>
<td><sub>B, BY, Y, GY, R</td>
<td><sub>Colors in CIE-L*a*b* colorimetric system</td>
<td><sub></td>
</tr>
<tr>
<td><sub>US Pharmacopoeia (USP) Color Determination</td>
<td><sub>A - T</td>
<td><sub>Colors in CIE-L*a*b* colorimetric system</td>
<td><sub></td>
</tr>
<tr>
<td><sub>Chinese Pharmacopoeia (CP) Color Determination</td>
<td><sub>OR,OY,Y,YG,BR</td>
<td><sub>Colors in CIE-L*a*b* colorimetric system</td>
<td><sub></td>
</tr>	
<tr>
<td><sub>Klett Color Number</td>
<td><sub>0 - 1000</td>
<td><sub>Absorption of a sample liquid in a square cuvette of 4cm (or 2cm) path length measured through a blue filter</td>
<td><sub><var>Klett<sub>Phot</sub></var> = <var>E<sub>470</sub></var></td>
</tr>
<tr>
<td><sub>Hess-Ives Color Number</td>
<td><sub></td>
<td><sub>Cosmetic industry, color evaluation of fat derivatives</br>
</br>
R, G and B are the color components for the red (640 nm), green (560nm) and blue (464nm) shares</td>
<td><sub>H-I = (R + G + B) * 6 / layerthickness</br>
R = 43,45 * <var>E<sub>640</sub></var></br>
G = 162,38 * <var>E<sub>560</sub></var></br>
B = 22,89 * ( <var>E<sub>460</sub></var> + <var>E<sub>470</sub></var> ) / 2</td>
</tr>
<tr>
<td><sub>Yellowness Index</br>
(ASTM D1925)</td>
<td><sub></td>
<td><sub>For transparent liquids on the basis of CIE XYZ-tristimulus values, standard illuminant C and the 2°-standard observer.</td>
<td><sub>Yi = 100 * ( Tx - Tz / Ty )</td>
</tr>
<tr>
<td><sub>ADMI Color Number</td>
<td><sub>0 - 500</td>
<td><sub>Colors in CIE-L*a*b* colorimetric system</td>
<td><sub></td>
</tr>
<tr>
<td><sub>Acid Wash Color Determination</td>
<td><sub>1 - 14</td>
<td><sub>Colors in CIE-L*a*b* colorimetric system</td>
<td><sub></td>
</tr>
<tr>
<td><sub>EBC Brewery Color Number</td>
<td><sub></td>
<td><sub>Optical path length: 10 mm</td>
<td><sub>25 * <var>E<sub>430</sub></var></td>
</tr>
<tr>
<td><sub>ASBC Brewery Color Number</td>
<td><sub></td>
<td><sub>1 ASBC = 0.375 EBC color + 0.46</td>
<td><sub>12.7 * <var>E<sub>430</sub></var></td>
</tr>
<tr>
<td><sub><var>SAC<sub>436</sub></var></td>
<td><sub></td>
<td><sub>Spectral Absorption Coefficient describes the yellow colouring of potable-, used- or wastewater. The measuring range is indicated in m-1.
(Extinction per meter optical path lenght [Ext/m]).</td>
<td><sub><var>E<sub>436</sub></var></td>
</tr>
</table>

##### Iodine, Hazen and Gardner color scales in CIE-L*a*b* colorimetric system
<img src="./assets/cie-lab-iodine-hazen-gardner.png" alt="Iodine, Hazen and Gardner color scales in CIE-L*a*b* colorimetric system"></td>

##### ADMI and Hazen color scales in CIE-L*a*b* colorimetric system</br>
<img src="./assets/cie-lab-admi-hazen.png" alt="ADMI and Hazen color scales in CIE-L*a*b* colorimetric system"></td>

##### European Pharmacopoeia (EP) color scales in CIE-L*a*b* colorimetric system</br>
<img src="./assets/cie-lab-ph-eur-color.png" alt="European Pharmacopoeia (EP) color scales in CIE-L*a*b* colorimetric system"></td>

##### US Pharmacopoeia (USP) color scales in CIE-L*a*b* colorimetric system</br>
<img src="./assets/cie-lab-usp-color.png" alt="US Pharmacopoeia (USP) color scales in CIE-L*a*b* colorimetric system"></td>

##### Chinese Pharmacopoeia (CP) color scales in CIE-L*a*b* colorimetric system</br>
<img src="./assets/cie-lab-pprc-color.png" alt="Chinese Pharmacopoeia (CP) color scales in CIE-L*a*b* colorimetric system"></td>

##### Acid Wash color scales in CIE-L*a*b* colorimetric system</br>
<img src="./assets/cie-lab-acid-color.png" alt="Acid Wash color scales in CIE-L*a*b* colorimetric system"></td>

##### Comparison of visual color systems with the Z-transmittances</br>
<img src="./assets/color-system-transmission-comparison.png" alt="Comparison of visual color systems with the Z-transmittances"></td>

### Turbidity measurement

Turbidity (opacity, clouding, haze) is an optical property of a liquid sample describing the degree of clarity. Turbidity is caused by small suspended (insoluble) particles having a refractive index different from the medium. This results in absorption, scattering and reflection of the incident light.
In general, the higher the turbidity, the more intense is the resulting scattered light.
Turbidity particles absorb at virtually all frequencies, due to their three-dimensional structure.

Additional absorption of color in the visible region may be circumvented by a measurement in the infrared (IR) or near-infrared (NIR) range.
Accordingly, the attenuation of transmission is a measure of the concentration of turbidity-causing solids.
The photometric determination of turbidity is usually done at a wavelength of 860 nm (DIN EN ISO 7027).

Factors that influence this intensity:
- Wavelength of the incident light
- Particle size and shape
- Refractive index and color of the sample




Photometry is an objective measurement that allows the comparison of different levels of turbidity:

- Double-beam measurement by using two independant IR light sources and optical paths
  - In case of heavy turbidity
    - Absorbance measurement (transmitted light measurement) at a 180° beam angle from 2-400 NTU
  
  Recommended measuring range: 40–4000 FAU (DIN EN ISO 7027) Light source and
detector are located on the same axis (180° angle). The reduced light intensity which
remains after passing through the sample is measured.

  - In case of low turbidity
    - Nephelometric stray light measurement at a 90° beam angle from 0.1-1000 NTU
    The intensity of the light which is scattered by undissolved particles in the sample is measured.
The international unit is the nephelometric turbidity unit, NTU. Other units are FTU (formazine turbidity unit), FNU (formazine nephelometric unit) and TU/F (turbidity unit formazine). 
Recommended measuring range: 0–40 FNU (DIN EN ISO 7027)
The international unit is FAU (formazine attenuation unit). In Germany, the spectral absorption coefficient SAK [1/m] is often used.

· Transmitted light measurement at medium to high turbidity concentration (about
40–4000 FAU); used e.g. for determination of the solid portion in activated sludge.
· Light scattering measurement at low turbidity concentration (about 1–40 FNU); e.g. in
treated wastewater.


<table>
  <tr>
    <td><img src="./assets/solution-turbid.png" alt="Turbid solution">
    <td><img src="./assets/turbidimetrie-principles.png" alt="Principles of turbidimetrie">
  </tr>
<tr>
<td><sub>λ</td>
<td><sub>Wavelength [nm]</td>
</tr>
<tr>
<td><sub><var>B<sup>o</sup></var></td>
<td><sub>
	Beam (measuring) angle [<var><sup>o</sup></var>]</br>
	<var>180 <sup>o</sup>: Transmitted light measurement (Absorbance)</var></br>
	<var>90 <sup>o</sup>: Nephelometric turbidity (scattered light) measurement</var>
</td>
</tr>
<tr>
<td><sub><var>I<sub>0</sub></var></td>
<td><sub>Intensity of incident light [lux]</td>
</tr>
<tr>
<td><sub><var>I<sub>T</sub></var></td>
<td><sub>Intensity of transmitted light [lux]</td>
</tr>
<tr>
<td><sub>T = <var>I<sub>T</sub></var> / <var>I<sub>0</sub></var></td>
<td><sub>
	Transmission</br>
	Energy passing through</br>
	Range: 0.0 - 1.0
</td>
</tr>
<tr>
<td><sub>A = 1 - T</td>
<td><sub>
	Absorption</br>
	Energy lost
</td>
</tr>
<tr>
<td><sub><var>E<sub>λ</sub></var> = - log ( T ) = <var>ε<sub>λ</sub></var> * c * d</td>
<td><sub>
	Absorbance</br>
	Attenuation</br>
	Lambert-Beer law</br>
	Optimum range: 0.1 – 1.0
</td>
</tr>
<tr>
<td><sub><var>SAC<sub>λ</sub></var> = <var>E<sub>λ</sub></var> / d * 100</td>
<td><sub>Spectral Absorption Coefficient [<var>m<sup>-1</sup></var>]</td>
</tr>
<tr>
<td><sub>c = <var>E<sub>λ</sub></var> / ( <var>ε<sub>λ</sub></var> * d ) = <var>E<sub>λ</sub></var> * F</td>
<td><sub>Concentration of absorbing substance in the liquid [mol/l]</td>
</tr>
<tr>
<td><sub>F = 1 / ( <var>ε<sub>λ</sub></var> * d )</td>
<td><sub>
	Factor</br>
	Test specific
</td>
</tr>
<tr>
<td><sub><var>ε<sub>λ</sub></var></td>
<td><sub>Molar decadic extinction coefficient [l/mol/cm]</td>
</tr>
<tr>
<td><sub>d</td>
<td><sub>Thickness of the solution layer [cm]</td>
</tr>
<tr>
<td><sub>Turbidity</td>
<td><sub>Opacity, clouding, haze</td>
</tr>
<tr>
<td><sub>FNU</td>
<td><sub>Formazine Nephelometric Unit</td>
</tr>
<tr>
<td><sub>NTU</td>
<td><sub>Nephelometric Turbidity Unit</td>
</tr>
<tr>
<td><sub>FAU</td>
<td><sub>Formazine Attenuation Unit</td>
</tr>
</table>

smartPhotometer are in this way cheap, robust and easy-to-use, but very flexible and also provide multiple analysis and reporting options which normally are only available in very expensive high end solutions.

Don't reinvent the wheel and **rely on agile open source communities**.

## Tips and tricks

- The filling level of the cuvette must be at least 4 cm due to the beam path of the photometers.
- Turbid samples have to be filtered; turbidity leads to incorrect results.

## Datasheet

<table>
<tr>
  <td colspan=2><sub><b>Measuring modes</b>
  <td><sub><b>UV SAC</b>
  <td><sub><b>Color</b>
  <td colspan=4><sub><b>VIS SAC / Turbidity</b>
  <td colspan=2><sub><b>Turbidity</b>
</tr>
<tr>
  <td>
  <td><sub>Target wavelength
  <td><sub>254 nm
  <td><sub>VIS
  <td colspan=3><sub>VIS, 436 nm
  <td><sub>850 nm
  <td><sub>850 nm
  <td><sub>850 nm
</tr>
<tr>
  <td colspan=12><sub><img src="./assets/light-spectrum.png" alt="Light spectrum">
</tr>
<tr>
  <td>
  <td><sub>100-400 nm
  <td><sub>UV
  <td><sub>
  <td colspan=4><sub>
  <td colspan=2><sub>
</tr>
<tr>
  <td>
  <td><sub>400-780 nm
  <td><sub>
  <td><sub>VIS
  <td colspan=3><sub>VIS
  <td><sub>
  <td colspan=2><sub>
</tr>
<tr>
  <td>
  <td><sub>> 780 nm
  <td><sub>
  <td><sub>
  <td colspan=3><sub>
  <td><sub>IR
  <td><sub>IR
  <td><sub>IR
</tr>
<tr>
  <td colspan=2><sub><b>Device</b>
  <td><sub><b>smart-UV-Photometer</b>
  <td><sub><b>smart-Colorimeter</b>
  <td colspan=4><sub><b>smart-RGB-Photometer</b>
  <td colspan=2><sub><b>smart-IR-Turbidimeter</b>
</tr>
<tr>
  <td>
  <td><sub>Measurement method
  <td><sub>Absorbance
  <td><sub>Color index
  <td colspan=3><sub>Absorbance
  <td><sub>Nephelometric turbidity
  <td><sub>Absorbance
  <td><sub>Nephelometric turbidity
</tr>
<tr>
  <td>
  <td><sub>Beam angle [<sup>o</sup>]
  <td><sub>180
  <td><sub>180
  <td colspan=3><sub>180
  <td><sub>90
  <td><sub>180
  <td><sub>90
</tr>
<tr>
  <td>
  <td><sub>LED(s) and Sensor chip mounting height [mm]
  <td colspan=8><sub>20.0
</tr>
<tr>
  <td colspan=2><sub><b>Readings</b>
  <td>
  <td>
  <td colspan=4>
  <td colspan=2>
</tr>

<tr>
  <td>
  <td><sub>Illuminance (<var>E<sub>V</sub></var>) [lux = lm/<var>m<sup>2</sup></var>]
  <td><sub>X
  <td>
  <td><sub>X
  <td><sub>X
  <td><sub>X
  <td><sub>X
  <td><sub>X
  <td><sub>X
</tr>
<tr>
  <td>
  <td><sub>Color index
  <td>
  <td><sub>RGB
  <td colspan=4>
  <td colspan=2>
</tr>
<tr>
  <td>
  <td><sub>Light color temperature (CCT) [<var><sup>o</sup></var>K]
  <td>
  <td><sub>X
  <td colspan=4>
  <td colspan=2>
</tr>
<tr>
  <td colspan=2><sub><b>LED(s)</b>
  <td><sub><a href='https://www.nichia.co.jp/specification/products/led/NSPU510CS-E.pdf'>NSPU510CS</a>
  <td><sub><a href='https://cdn.luckylight.cn/media/component/data-sheet/504WC2E-W6-3PC.pdf'>504WC2E-W6-3PC</a>
  <td colspan=3><sub><a href='https://cdn-reichelt.de/documents/datenblatt/A500/LL-509RGBC2E-006.pdf'>LL-509RGBC2E-006</a>
  <td><sub><a href='https://cdn-reichelt.de/documents/datenblatt/A501/HIR383C-L289_ENG_TDS.pdf'>HIR383C-L289</a>
  <td colspan=2><sub>2 x <a href='https://cdn-reichelt.de/documents/datenblatt/A501/HIR383C-L289_ENG_TDS.pdf'>HIR383C-L289</a>
</tr>
<tr>
  <td>
  <td><sub>Light color
  <td><sub>UVA
  <td><sub>Warm White
  <td><sub>Red
  <td><sub>Green
  <td><sub>Blue
  <td><sub>IR
  <td><sub>IR
  <td><sub>IR
</tr>
<tr>
  <td>
  <td><sub>Color Rendering Index (CRI) [Ra]
  <td><sub>
  <td><sub>80
  <td><sub>
  <td><sub>
  <td><sub>
  <td><sub>
  <td><sub>
  <td><sub>
</tr>
<tr>
  <td>
  <td><sub>Light color temperature (CCT) [<var><sup>o</sup></var>K]
  <td><sub>
  <td><sub>3000
  <td><sub>
  <td><sub>
  <td><sub>
  <td><sub>
  <td><sub>
  <td><sub>
</tr>
<tr>
  <td>
  <td><sub>Standard illuminant (CIE 1931/<var>2<sup>o</sup></var>)
  <td><sub>
  <td><sub>LED-B2
  <td><sub>
  <td><sub>
  <td><sub>
  <td><sub>
  <td><sub>
  <td><sub>
</tr>
<tr>
  <td>
  <td><sub>Chromaticity Coordinates (CIE 1931/<var>2<sup>o</sup></var>)
  <td><sub>
  <td><sub>x = 0.43</br>
  y = 0.40
  <td><sub>
  <td><sub>
  <td><sub>
  <td><sub>
  <td><sub>
  <td><sub>
</tr>
<tr>
  <td>
  <td><sub>Wavelength (<var>λ<sub>P</sub></var>) [nm]
  <td><sub>375
  <td><sub>410-780
  <td><sub>626
  <td><sub>525
  <td><sub>470
  <td><sub>850
  <td><sub>850
  <td><sub>850
</tr>
<tr>
  <td>
  <td><sub>Spectrum half width (Δλ) [nm]
  <td><sub>9
  <td><sub>
  <td><sub>20
  <td><sub>40
  <td><sub>26
  <td><sub>45
  <td><sub>45
  <td><sub>45
</tr>
<tr>
  <td>
  <td><sub>Luminous intensity <var>I<sub>V</sub></var> [mcd]</br>(by I = 12 mA)
  <td><sub>
  <td><sub>13800
  <td><sub>1920
  <td><sub>2400
  <td><sub>1200
  <td><sub>
  <td colspan=2><sub>
</tr>
<tr>
  <td>
  <td><sub>Luminous flux (<var>Φ<sub>V</sub></var>) [lm]
  <td><sub>
  <td><sub>
  <td><sub>1.0
  <td><sub>1.2
  <td><sub>0.6
  <td><sub>
  <td colspan=2><sub>
</tr>
<tr>
  <td>
  <td><sub>Viewing angle (2θ) [<sup>o</sup>]
  <td><sub>15
  <td><sub>40
  <td colspan=3><sub>25
  <td><sub>18
  <td colspan=2><sub>18
</tr>
<tr>
  <td>
  <td><sub>Ø [mm]
  <td colspan=8><sub>5
</tr>
<tr>
  <td>
  <td><sub>Length [mm]
  <td><sub>8.3
  <td><sub>8.65
  <td colspan=3><sub>8.6
  <td><sub>8.6
  <td colspan=2><sub>8.6
</tr>
<tr>
  <td>
  <td><sub>Long leg
  <td><sub>Anode (+)
  <td><sub>Anode (+)
  <td colspan=3><sub>Common Cathode (-)
  <td><sub>Anode (+)
  <td colspan=2><sub>Anode (+)
</tr>
<tr>
  <td>
  <td><sub><var>I<sub>F</sub></var> [mA]
  <td><sub>20
  <td><sub>25
  <td colspan=3><sub>35
  <td><sub>100
  <td colspan=2><sub>100
</tr>
<tr>
  <td>
  <td><sub><var>V<sub>R</sub></var> [V]
  <td><sub>4
  <td><sub>5
  <td colspan=3><sub>5
  <td><sub>5
  <td colspan=2><sub>5
</tr>
<tr>
  <td>
  <td><sub><var>V<sub>F</sub></var> [V]</br>(by I = 12 mA)
  <td><sub>3.4
  <td><sub>2.9
  <td><sub>1.93
  <td><sub>2.9
  <td><sub>3.4
  <td><sub>1.3
  <td colspan=2><sub>1.3
</tr>
<tr>
  <td>
  <td><sub>Calculated series resistor [Ω]
  <td><sub>0
  <td><sub>33.3
  <td><sub>114.2
  <td><sub>33.3
  <td><sub>0
  <td><sub>175
  <td colspan=2><sub>175
</tr>
<tr>
  <td>
  <td><sub>Series resistor [Ω]
  <td><sub>0
  <td><sub>62
  <td><sub>182
  <td><sub>62
  <td><sub>0
  <td><sub>182
  <td colspan=2><sub>182
</tr>
<tr>
  <td>
  <td><sub>GPIO
  <td><sub>12
  <td><sub>12
  <td><sub>12
  <td><sub>13
  <td><sub>14
  <td><sub>23
  <td><sub>12
  <td><sub>23
</tr>
<tr>
  <td colspan=2><sub><b>Cuvette</b>
  <td><sub><a href='https://www.amazon.de/gp/product/B07NNGHKSC/ref=ppx_yo_dt_b_asin_title_o04_s00?ie=UTF8&psc=1'>UV quartz cuvette</a>
  <td><sub><a href='https://www.amazon.de/gp/product/B07NNGHKSC/ref=ppx_yo_dt_b_asin_title_o04_s00?ie=UTF8&psc=1'>UV quartz cuvette</a>
  <td colspan=4><sub>Normal glass (soda-lime glass)
  <td colspan=2><sub>Normal glass (soda-lime glass)
</tr>
<tr>
  <td>
  <td><sub>Material
  <td><sub>UV transmitting quartz
  <td><sub>UV transmitting quartz
  <td colspan=4><sub>Normal glass (soda-lime glass)
  <td colspan=2><sub>Normal glass (soda-lime glass)
</tr>
<tr>
  <td>
  <td><sub>Chemical and heat resistant
  <td colspan=8><sub>Yes
</tr>
<tr>
  <td>
  <td><sub>Transmission range [nm]
  <td><sub>190-2500
  <td><sub>190-2500
  <td colspan=4><sub>350-2500
  <td colspan=2><sub>350-2500
</tr>
<tr>
  <td>
  <td><sub>Form
  <td><sub>Square
  <td><sub>Square
  <td colspan=4><sub>Round
  <td colspan=2><sub>Round
</tr>
<tr>
  <td>
  <td><sub>Polished sidewalls
  <td><sub>2
  <td><sub>2
  <td colspan=4><sub>N/A
  <td colspan=2><sub>N/A
</tr>
<tr>
  <td>
  <td><sub>L x W x H [mm]
  <td><sub>12.5 x 12.5 x 45.0
  <td><sub>12.5 x 12.5 x 45.0
  <td colspan=4><sub>N/A
  <td colspan=2><sub>N/A
</tr>
<tr>
  <td>
  <td><sub>Ø x H [mm]
  <td><sub>N/A
  <td><sub>N/A
  <td colspan=4><sub>16.0 x 200.0
  <td colspan=2><sub>16.0 x 200.0
</tr>
<tr>
  <td>
  <td><sub>Wall thickness [mm]
  <td><sub>1.25
  <td><sub>1.25
  <td colspan=4><sub>1.00
  <td colspan=2><sub>1.00
</tr>
<tr>
  <td>
  <td><sub>Light path length [mm]
  <td><sub>10.0
  <td><sub>10.0
  <td colspan=4><sub>14.0
  <td colspan=2><sub>14.0
</tr>
<tr>
  <td>
  <td><sub>Sample volume [ml]
  <td><sub>3.5
  <td><sub>3.5
  <td colspan=4><sub>>5
  <td colspan=2><sub>>5
</tr>
<tr>
  <td colspan=2><sub><b>Light sensor</b>
  <td><sub><a href='https://www.vishay.com/docs/84277/veml6070.pdf'>VEML6070</a>
  <td><sub><a href='https://cdn-shop.adafruit.com/datasheets/TCS34725.pdf'>TCS34725</a>
  <td colspan=4><sub><a href='https://cdn-shop.adafruit.com/datasheets/TSL25911_Datasheet_EN_v1.pdf'>TSL2591</a>
  <td colspan=2><sub><a href='https://cdn-shop.adafruit.com/datasheets/TSL25911_Datasheet_EN_v1.pdf'>TSL2591</a>
</tr>
<tr>
  <td>
  <td><sub>Wavelength (<var>λ<sub>P</sub></var>) [nm]
  <td><sub>355
  <td><sub>525
  <td colspan=3><sub>650
  <td><sub>850
  <td colspan=2><sub>850
</tr>
<tr>
  <td>
  <td><sub>Spectrum half width (Δλ) [nm]
  <td><sub>20
  <td><sub>125
  <td colspan=3><sub>150
  <td><sub>42
  <td colspan=2><sub>42
</tr>
<tr>
  <td>
  <td><sub>Spectrum range (<var>λ<sub>R</sub></var>) [nm]
  <td><sub>320-380
  <td><sub>380-780
  <td colspan=3><sub>380-780
  <td><sub>780-910
  <td colspan=2><sub>780-910
</tr>
<tr>
  <td>
  <td><sub>Voltage [V]
  <td colspan=8><sub>3.3-5.0
</tr>
<tr>
  <td>
  <td><sub>I2C GPIO
  <td colspan=8><sub>SCL: 5</br>SDA: 4
</tr>
<tr>
  <td>
  <td><sub>I2C address
  <td><sub>0x10
  <td><sub>0x29
  <td colspan=4><sub>0x29
  <td colspan=2><sub>0x29
</tr>
<tr>
  <td>
  <td><sub>L x W x H [mm]
  <td><sub>13.0 x 12.0 x 2.0
  <td><sub>20.3 x 20.3 x 2.0
  <td colspan=4><sub>19.0 x 16.5 x 2.0
  <td colspan=2><sub>19.0 x 16.5 x 2.0
</tr>
<tr>
  <td colspan=2><sub><b>Microcontroller</b>
  <td colspan=8><sub><a href='https://cdn.shopify.com/s/files/1/1509/1638/files/ESP_-_32_NodeMCU_Developmentboard_Datenblatt_AZ-Delivery_Vertriebs_GmbH_10f68f6c-a9bb-49c6-a825-07979441739f.pdf?v=1598356497'>ESP32-WROOM-32 NodeMCU WLAN/WiFi</a>
</tr>
<tr>
  <td>
  <td><sub>L x W x H [mm]
  <td colspan=8><sub>48.3 x 25.4 x 10.0
</tr>
<tr>
  <td>
  <td><sub>Firmware
  <td colspan=8><sub><a href='/firmware/bin/ESP_Easy_mega_20201102_test_ESP32_4M316k-factory.bin'>ESP_Easy_mega_20201102_test_ESP32_4M316k-factory.bin</a>
</tr>
<tr>
  <td>
  <td><sub>Update
  <td colspan=8><sub><a href='/firmware/bin/ESP_Easy_mega_20201102_test_ESP32_4M316k-factory.bin'>Via Web-GUI by using OTA (Over the Air)</a>
</tr>
<tr>
  <td colspan=2><sub><b>Case</b>
  <td colspan=8><sub>OpenSCAD 3D model (<a href='./setup/case/smartPhotometer-3d-model.scad'>smartPhotometer-3d-model.scad</a>)
</tr>
<tr>
  <td>
  <td><sub>3D printing
  <td colspan=8><sub>via STL exports
</tr>
<tr>
  <td>
  <td><sub>Filament
  <td colspan=8><sub>Black PLA
</tr>
<tr>
  <td>
  <td><sub>Layer height [mm]
  <td colspan=8><sub>0.2
</tr>
<tr>
  <td rowspan=4>
  <td rowspan=4><sub>STL exports
  <td><sub><a href='./setup/case/3d-printing/smart-UV-Photometer-Case.stl'>smart-UV-Photometer-Case.stl</a>
  <td><sub><a href='./setup/case/3d-printing/smart-Colorimeter-Case.stl'>smart-Colorimeter-Case.stl</a>
  <td colspan=4><sub><a href='./setup/case/3d-printing/smart-RGB-Photometer-Case.stl'>smart-RGB-Photometer-Case.stl</a>
  <td colspan=2><sub><a href='./setup/case/3d-printing/smart-IR-Turbidimeter-Case.stl'>smart-IR-Turbidimeter-Case.stl</a>
</tr>
<tr>
  <td colspan=8><sub><a href='./setup/case/3d-printing/smartPhotometer-Case-Lid.stl'>smartPhotometer-Case-Lid.stl</a>
</tr>
<tr>

  <td colspan=8><sub><a href='./setup/case/3d-printing/smartPhotometer-Cover-for-square-Cuvette.stl'>smartPhotometer-Cover-for-square-Cuvette.stl</a>
</tr>
<tr>
  <td><sub><a href='./setup/case/3d-printing/smart-UV-Photometer-Cuvette-Holder.stl'>smart-UV-Photometer-Cuvette-Holder.stl</a>
  <td><sub><a href='./setup/case/3d-printing/smart-Colorimeter-Cuvette-Holder.stl'>smart-Colorimeter-Cuvette-Holder.stl</a>
  <td colspan=4><sub><a href='./setup/case/3d-printing/smart-RGB-Photometer-Cuvette-Holder.stl'>smart-RGB-Photometer-Cuvette-Holder.stl</a>
  <td colspan=2><sub><a href='./setup/case/3d-printing/smart-IR-Turbidimeter-Cuvette-Holder.stl'>smart-IR-Turbidimeter-Cuvette-Holder.stl</a>
</tr>
</table>

## Sources

- [David Harvey (DePauw University) "Analytical Chemistry 2.1", Chemistry LibreTexts (TM) 2020, 10.](https://chem.libretexts.org/Bookshelves/Analytical_Chemistry/Book%3A_Analytical_Chemistry_2.1_(Harvey))
- [Bruce Justin Lindbloom: http://www.brucelindbloom.com/](http://www.brucelindbloom.com/)
- [Chandler Abraham "A Beginner’s Guide to (CIE) Colorimetry", 2016](https://medium.com/hipster-color-science/a-beginners-guide-to-colorimetry-401f1830b65a)

</br>
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">smartPhotometer</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/smartaquametering" property="cc:attributionName" rel="cc:attributionURL">smartAquaMetering</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.<br />Based on a work at <a xmlns:dct="http://purl.org/dc/terms/" href="https://github.com/smartaquametering/smartPhotometer" rel="dct:source">https://github.com/smartaquametering/smartPhotometer</a>.<br />For permissions beyond the scope of this license see <a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/smartaquametering/smartPhotometer/blob/main/LICENSE" rel="cc:morePermissions">https://github.com/smartaquametering/smartPhotometer/blob/main/LICENSE</a>.
