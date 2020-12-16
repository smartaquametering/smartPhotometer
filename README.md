![Banner](https://smartaquametering.github.io/images/banner.png)

# smartPhotometer

Easy-to-use OpenSource LED photometers for measurement of the absorption of light of a given wavelength (or a given range of wavelengths) of colored or not colored substances in solution.

smartPhotometer for analytics of aqueous solutions works with ultraviolet, visible and infrared light ranges, by wavelengths around 375 up to 850 nm.

**Turbidity – a source of error**</br>
The turbidity of a sample is often underestimated, because often it is not possible to see it visually.</br>
**The nephelometric turbidity of a sample is measured and displayed for every single measurement automatically.**

Due to their wide range of application, their reliability and robustness, smartPhotometers **can be perfectly used as portable analytical instruments for outdoor analytics**.

**Your insurance for secure measurement results.**

## Reducing complexity

In simple terms, photometry is a measurement method for determining the concentration of colored solutions with the aid of electromagnetic radiation (“light”).

The two most common types of photometers are:

- Spectrophotometer
- Filter photometer

In spectrophotometers a monochromator (with prism or with grating) is used to obtain monochromatic light of defined wavelengths. They can also be used to scan the spectrum of the absorbing substance.

In filter photometers, optical filters are used to give the monochromatic light.

Due to the evolution and availability of **various types of LEDs** it is easily possible **to obtain nearly monochromatic light with specific wavelength ranges**, but
without the need to setup an complex and sensitive monochromator or filter mechanismn.

Reducing of complexity
- by using **RGB, UV and IR LEDs for the parallel measurement of absorption and nephelometric turbidity** at different wavelengths.
- by the integration of various **digital light sensors orchestrated by simple microcontrollers**.
- by distributing different analysis methods **on multiple meshed photometers**.
- by the strict **segregation of data acquisition, transmission, analytics and their visualisation** on different layers and devices.

## Being Smart - The difference
Connect the smartPhotometers microcontrollers (including their connected LED fireworks and light sensors) via WiFi to your internal network and orchestrate them by using simple web- or MQTT-based APIs.

![Network](./setup/network.png)

Any device (e.g. PC, Laptop, Tablet, smartPhone, ...) with a standard web browser can be used to access a simple web page on the smartPhotometers.

A Javascript application will start within your browser and is triggering and managing all analytis, evaluation of measured values and their visualisation.

### Environmental monitoring
Monitor and secure your environment in real time with online monitoring by logging readings into a central database with MQTT-based APIs.

### Absorbance measurement

The principle of absorption photometers is that (as far as possible) monochromatic light is allowed to pass through a cuvette containing the solution. It then reaches a light sensor, that measures the intensity of the light compared to the intensity after passing through an identical cuvette with the same solvent but without the colored substance. From the ratio between the light intensities, knowing the capacity of the colored substance to absorb light, it is possible to calculate the concentration of the substance using Lambert-Beer's law.

<table>
  <tr>
    <td><img src="./setup/transmission.png" alt="Transmission">
    <td><img src="./setup/photometrie-principles.png" alt="Absorbance">
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
</table>

#### Electromagnetic radiation used for photometric analysis

Various types of LEDs are used to select the optimum wavelength range for the respective measurement.

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
  <td colspan=6><img src="./setup/light-spectrum.png" alt="Spectrum">
<img src="./setup/led-spectrum.png" alt="LED Spectrum">
</tr>
<tr>
  <td colspan=6><sub><b>Ultraviolet radiation</b>
</tr>
<tr>
  <td>
  <td><sub>100-280 nm
  <td colspan=2><sub>UVC
  <td rowspan=2><sub>UV transmitting quartz glass cuvette</br>> 190 nm
  <td rowspan=3><sub>Numerous inorganic and</br>organic compounds</br>absorb light especially in the</br>ultraviolet and visible range.
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
  <td rowspan=8><sub>Numerous inorganic and</br>organic compounds</br>absorb light especially in the</br>ultraviolet and visible range.
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

### Color measurement
- Conversions of color index and display in color space
- Measuring of color difference against quality control standards

### Turbidity measurement
- Absorbance measurement (transmitted light measurement) at a 180° angle from 2-400 NTU
- Nephelometric stray light measurement from 0.1-1000 NTU

<table>
  <tr>
    <td colspan=2><img src="./setup/turbidity.png" alt="Turbidity" width="700">
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

#### NTU check
- Safely spot interfering turbidities
- Unique for maximum measurement result safety
- Runs automatically with each measurement

smartPhotometer are in this way cheap, robust and easy-to-use, but very flexible and also provide multiple analysis and reporting options which normally are only available in very expensive high end solutions.

Don't reinvent the wheel and **rely on agile open source communities**.

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
  <td colspan=12><sub><img src="./setup/light-spectrum.png" alt="Spectrum">
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
  <td><sub>Light color temperature [K]
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
  <td><sub>Borosilicate glass
  <td colspan=4><sub>Normal glass (soda-lime glass)
  <td colspan=2><sub>Normal glass (soda-lime glass)
</tr>
<tr>
  <td>
  <td><sub>Material
  <td><sub>UV transmitting quartz
  <td><sub>Borosilicate glass
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
  <td><sub>290-2500
  <td colspan=4><sub>350-2500
  <td colspan=2><sub>350-2500
</tr>
<tr>
  <td>
  <td><sub>Form
  <td><sub>Square
  <td><sub>Round
  <td colspan=4><sub>Round
  <td colspan=2><sub>Round
</tr>
<tr>
  <td>
  <td><sub>Polished sidewalls
  <td><sub>2
  <td><sub>N/A
  <td colspan=4><sub>N/A
  <td colspan=2><sub>N/A
</tr>
<tr>
  <td>
  <td><sub>L x W x H [mm]
  <td><sub>12.5 x 12.5 x 45.0
  <td><sub>N/A
  <td colspan=4><sub>N/A
  <td colspan=2><sub>N/A
</tr>
<tr>
  <td>
  <td><sub>Ø x H [mm]
  <td><sub>N/A
  <td><sub>16.0 x 200.0
  <td colspan=4><sub>16.0 x 200.0
  <td colspan=2><sub>16.0 x 200.0
</tr>
<tr>
  <td>
  <td><sub>Wall thickness [mm]
  <td><sub>1.25
  <td><sub>1.00
  <td colspan=4><sub>1.00
  <td colspan=2><sub>1.00
</tr>
<tr>
  <td>
  <td><sub>Light path length [mm]
  <td><sub>10.0
  <td><sub>14.0
  <td colspan=4><sub>14.0
  <td colspan=2><sub>14.0
</tr>
<tr>
  <td>
  <td><sub>Sample volume [ml]
  <td><sub>3.5
  <td><sub>>5
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
</br>
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">smartPhotometer</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/smartaquametering" property="cc:attributionName" rel="cc:attributionURL">smartAquaMetering</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.<br />Based on a work at <a xmlns:dct="http://purl.org/dc/terms/" href="https://github.com/smartaquametering/smartPhotometer" rel="dct:source">https://github.com/smartaquametering/smartPhotometer</a>.<br />For permissions beyond the scope of this license see <a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/smartaquametering/smartPhotometer/blob/main/LICENSE" rel="cc:morePermissions">https://github.com/smartaquametering/smartPhotometer/blob/main/LICENSE</a>.
