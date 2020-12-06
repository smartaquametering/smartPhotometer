# smartPhotometer

Easy-to-use OpenSource LED photometers for measurement of the absorption of light of a given wavelength (or a given range of wavelengths) of coloured or not coloured substances in solution.

smartPhotometer for analytics of aqueous solutions works with ultraviolet, visible and infrared light ranges, by wavelengths around 375 up to 850 nm.

**Turbidity – a source of error**</br>
The turbidity of a sample is often underestimated, because often it is not possible to see it visually.</br>
**The nephelometric turbidity of a sample is measured and displayed for every single measurement automatically.**

Due to their wide range of application, their reliability and robustness, smartPhotometers **can be perfectly used as portable analytical instruments for outdoor analytics**.

**Your insurance for secure measurement results.**

## Reducing complexity

The principle of absorption photometers is that (as far as possible) monochromatic light is allowed to pass through a cuevette containing the solution. It then reaches a light detector, that measures the intensity of the light compared to the intensity after passing through an identical cuevette with the same solvent but without the coloured substance. From the ratio between the light intensities, knowing the capacity of the coloured substance to absorb light, it is possible to calculate the concentration of the substance using Beer's law.

The two most common types of absorption photometers are:

- Spectrophotometer
- Filter photometer

In spectrophotometers a monochromator (with prism or with grating) is used to obtain monochromatic light of one defined wavelength. They can also be used to scan the spectrum of the absorbing substance.

In filter photometers, optical filters are used to give the monochromatic light.

Due to the evolution and availability of **various types of LEDs** it is easily possible **to obtain nearly monochromatic light with an specific wavelength range**, but
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

### Color measurement
- Conversions of color index and display in color space
- Measuring of color difference against quality control standards

### Turbidity measurement
- Absorbance measurement (transmitted light measurement) at a 180° angle from 2–400 NTU
- Nephelometric stray light measurement from 0.1–1000 NTU

### NTU check
- Safely spot interfering turbidities
- Unique for maximum measurement result safety
- Runs automatically with each measurement

smartPhotometer are in this way cheap, robust and easy-to-use, but very flexible and also provide multiple analysis and reporting options which normally are only available in very expensive high end solutions.

Don't reinvent the wheel and **rely on agile open source communities**.

## Datasheet

<table>
<tr>
  <td colspan=2><sub><b>Measuring modes</b>
  <td colspan=4><sub><b>VIS SAC / Turbidity</b>
  <td><sub><b>UV SAC</b>
  <td colspan=2><sub><b>Turbidity</b>
  <td><sub><b>Color</b>
</tr>
<tr>
  <td>
  <td><sub>Measuring range
  <td colspan=4><sub>VIS, IR
  <td><sub>UVA, UVB, UV
  <td colspan=2><sub>IR
  <td><sub>VIS
</tr>
<tr>
  <td>
  <td><sub>Target wavelength
  <td colspan=4><sub>VIS, 436 nm, 850 nm
  <td><sub>254 nm
  <td colspan=2><sub>850 nm
  <td><sub>VIS
</tr>
<tr>
  <td colspan=2><sub><b>Device</b>
  <td colspan=4><sub><b>smart-RGB-Photometer</b>
  <td><sub><b>smart-UV-Photometer</b>
  <td colspan=2><sub><b>smart-IR-Turbidimeter</b>
  <td><sub><b>smart-Colorimeter</b>
</tr>
<tr>
  <td>
  <td><sub>Measurement method
  <td colspan=3><sub>Absorbance
  <td><sub>Nephelometric turbidity
  <td><sub>Absorbance
  <td><sub>Absorbance
  <td><sub>Nephelometric turbidity
  <td><sub>RGB
</tr>
<tr>
  <td>
  <td><sub>Beam angle [<sup>o</sup>]
  <td colspan=3><sub>180
  <td><sub>90
  <td><sub>180
  <td><sub>180
  <td><sub>90
  <td><sub>180
</tr>
<tr>
  <td colspan=2><sub><b>LED(s)</b>
  <td colspan=3><sub><a href='https://cdn-reichelt.de/documents/datenblatt/A501/HIR383C-L289_ENG_TDS.pdf'>LL-509RGBC2E-006</a>
  <td><sub><a href='https://cdn-reichelt.de/documents/datenblatt/A501/HIR383C-L289_ENG_TDS.pdf'>HIR383C-L289</a>
  <td><sub><a href='https://www.nichia.co.jp/specification/products/led/NSPU510CS-E.pdf'>NSPU510CS</a>
  <td colspan=2><sub>2 x <a href='https://cdn-reichelt.de/documents/datenblatt/A501/HIR383C-L289_ENG_TDS.pdf'>HIR383C-L289</a>
  <td><sub><a href='https://cdn.luckylight.cn/media/component/data-sheet/504WC2E-W6-3PC.pdf'>504WC2E-W6-3PC</a>
</tr>
<tr>
  <td>
  <td><sub>Light color
  <td><sub>Red
  <td><sub>Green
  <td><sub>Blue
  <td><sub>IR
  <td><sub>UV
  <td><sub>IR
  <td><sub>IR
  <td><sub>Warm White
</tr>
<tr>
  <td>
  <td><sub>Wavelength [nm]
  <td><sub>626
  <td><sub>525
  <td><sub>470
  <td><sub>850
  <td><sub>375
  <td><sub>850
  <td><sub>850
  <td><sub>410-780
</tr>
<tr>
  <td>
  <td><sub>Lichtstärke
  <td><sub>Red
  <td><sub>Green
  <td><sub>Blue
  <td><sub>IR
  <td><sub>UV
  <td><sub>IR
  <td><sub>IR
  <td><sub>Warm White
</tr>
<tr>
  <td>
  <td><sub>Lichtstrom
  <td><sub>Red
  <td><sub>Green
  <td><sub>Blue
  <td><sub>IR
  <td><sub>UV
  <td><sub>IR
  <td><sub>IR
  <td><sub>Warm White
</tr>
<tr>
  <td>
  <td><sub>Abstrahlwinkel
  <td><sub>Red
  <td><sub>Green
  <td><sub>Blue
  <td><sub>IR
  <td><sub>UV
  <td><sub>IR
  <td><sub>IR
  <td><sub>Warm White
</tr>
<tr>
  <td>
  <td><sub>Mounting height [mm]
  <td><sub>Red
  <td><sub>Green
  <td><sub>Blue
  <td><sub>IR
  <td><sub>UV
  <td><sub>IR
  <td><sub>IR
  <td><sub>Warm White
</tr>
<tr>
  <td>
  <td><sub>Durchmesser
  <td><sub>Red
  <td><sub>Green
  <td><sub>Blue
  <td><sub>IR
  <td><sub>UV
  <td><sub>IR
  <td><sub>IR
  <td><sub>Warm White
</tr>
<tr>
  <td>
  <td><sub>Länge
  <td><sub>Red
  <td><sub>Green
  <td><sub>Blue
  <td><sub>IR
  <td><sub>UV
  <td><sub>IR
  <td><sub>IR
  <td><sub>Warm White
</tr>
<tr>
  <td>
  <td><sub>Langes Beinchen
  <td><sub>Red
  <td><sub>Green
  <td><sub>Blue
  <td><sub>IR
  <td><sub>UV
  <td><sub>IR
  <td><sub>IR
  <td><sub>Warm White
</tr>
<tr>
  <td>
  <td><sub>Stromaufnahme
  <td><sub>Red
  <td><sub>Green
  <td><sub>Blue
  <td><sub>IR
  <td><sub>UV
  <td><sub>IR
  <td><sub>IR
  <td><sub>Warm White
</tr>
<tr>
  <td>
  <td><sub>Betriebspannung
  <td><sub>Red
  <td><sub>Green
  <td><sub>Blue
  <td><sub>IR
  <td><sub>UV
  <td><sub>IR
  <td><sub>IR
  <td><sub>Warm White
</tr>
<tr>
  <td>
  <td><sub>Spannung bei 12 mA
  <td><sub>Red
  <td><sub>Green
  <td><sub>Blue
  <td><sub>IR
  <td><sub>UV
  <td><sub>IR
  <td><sub>IR
  <td><sub>Warm White
</tr>
<tr>
  <td>
  <td><sub>Berechneter Vorwiderstand
  <td><sub>Red
  <td><sub>Green
  <td><sub>Blue
  <td><sub>IR
  <td><sub>UV
  <td><sub>IR
  <td><sub>IR
  <td><sub>Warm White
</tr>
<tr>
  <td>
  <td><sub>Vorwiderstand
  <td><sub>Red
  <td><sub>Green
  <td><sub>Blue
  <td><sub>IR
  <td><sub>UV
  <td><sub>IR
  <td><sub>IR
  <td><sub>Warm White
</tr>
<tr>
  <td>
  <td><sub>GPIO
  <td><sub>12
  <td><sub>13
  <td><sub>14
  <td><sub>23
  <td><sub>12
  <td><sub>12
  <td><sub>23
  <td><sub>12
</tr>
<tr>
  <td colspan=2><sub><b>Cuevette</b>
  <td colspan=4><sub>Normal glass (soda-lime glass)
  <td><sub><a href='https://www.amazon.de/gp/product/B07NNGHKSC/ref=ppx_yo_dt_b_asin_title_o04_s00?ie=UTF8&psc=1'>UV quartz cuvette</a>
  <td colspan=2><sub>Normal glass (soda-lime glass)
  <td><sub>Borosilicate glass
</tr>
<tr>
  <td>
  <td><sub>Material
  <td colspan=4><sub>Normal glass (soda-lime glass)
  <td><sub>UV transmitting quartz
  <td colspan=2><sub>Normal glass (soda-lime glass)
  <td><sub>Borosilicate glass
</tr>
<tr>
  <td>
  <td><sub>Chemical and heat resistant
  <td colspan=8><sub>Yes
</tr>
<tr>
  <td>
  <td><sub>Transmission range [nm]
  <td colspan=4><sub>350-2500
  <td><sub>190-2500
  <td colspan=2><sub>350-2500
  <td><sub>290-2500
</tr>
<tr>
  <td>
  <td><sub>Form
  <td colspan=4><sub>Round
  <td><sub>Square
  <td colspan=2><sub>Round
  <td><sub>Round
</tr>
<tr>
  <td>
  <td><sub>Polished sidewalls
  <td colspan=4><sub>N/A
  <td><sub>2
  <td colspan=2><sub>N/A
  <td><sub>N/A
</tr>
<tr>
  <td>
  <td><sub>L x W x H [mm]
  <td colspan=4><sub>N/A
  <td><sub>12.5 x 12.5 x 45.0
  <td colspan=2><sub>N/A
  <td><sub>N/A
</tr>
<tr>
  <td>
  <td><sub>Ø x H [mm]
  <td colspan=4><sub>16.0 x 200.0
  <td><sub>N/A
  <td colspan=2><sub>16.0 x 200.0
  <td><sub>16.0 x 200.0
</tr>
<tr>
  <td>
  <td><sub>Wall thickness [mm]
  <td colspan=4><sub>1.00
  <td><sub>1.25
  <td colspan=2><sub>1.00
  <td><sub>1.00
</tr>
<tr>
  <td>
  <td><sub>Light path length [mm]
  <td colspan=4><sub>14.0
  <td><sub>10.0
  <td colspan=2><sub>14.0
  <td><sub>14.0
</tr>
<tr>
  <td>
  <td><sub>Sample volume [ml]
  <td colspan=4><sub>>5
  <td><sub>3.5
  <td colspan=2><sub>>5
  <td><sub>>5
</tr>
<tr>
  <td colspan=2><sub><b>Light sensor</b>
  <td colspan=4><sub><a href='https://cdn-shop.adafruit.com/datasheets/TSL25911_Datasheet_EN_v1.pdf'>TSL2591</a>
  <td><sub><a href='https://www.vishay.com/docs/84277/veml6070.pdf'>VEML6070</a>
  <td colspan=2><sub><a href='https://cdn-shop.adafruit.com/datasheets/TSL25911_Datasheet_EN_v1.pdf'>TSL2591</a>
  <td><sub><a href='https://cdn-shop.adafruit.com/datasheets/TCS34725.pdf'>TCS34725</a>
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
  <td colspan=4><sub>0x29
  <td><sub>0x10
  <td colspan=2><sub>0x29
  <td><sub>0x29
</tr>
<tr>
  <td>
  <td><sub>L x W x H [mm]
  <td colspan=4><sub>19.0 x 16.5 x 2.0
  <td><sub>13.0 x 12.0 x 2.0
  <td colspan=2><sub>19.0 x 16.5 x 2.0
  <td><sub>20.3 x 20.3 x 2.0
</tr>
<tr>
  <td>
  <td><sub>Sensor chip mounting height [mm]
  <td colspan=8><sub>20.0
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
  <td colspan=4><sub><a href='./setup/case/3d-printing/smart-RGB-Photometer-Case.stl'>smart-RGB-Photometer-Case.stl</a>
  <td><sub><a href='./setup/case/3d-printing/smart-UV-Photometer-Case.stl'>smart-UV-Photometer-Case.stl</a>
  <td colspan=2><sub><a href='./setup/case/3d-printing/smart-IR-Turbidimeter-Case.stl'>smart-IR-Turbidimeter-Case.stl</a>
  <td><sub><a href='./setup/case/3d-printing/smart-Colorimeter-Case.stl'>smart-Colorimeter-Case.stl</a>
</tr>
<tr>
  <td colspan=8><sub><a href='./setup/case/3d-printing/smartPhotometer-Case-Lid.stl'>smartPhotometer-Case-Lid.stl</a>
</tr>
<tr>

  <td colspan=8><sub><a href='./setup/case/3d-printing/smartPhotometer-Cover-for-square-Cuvette.stl'>smartPhotometer-Cover-for-square-Cuvette.stl</a>
</tr>
<tr>
  <td colspan=4><sub><a href='./setup/case/3d-printing/smart-RGB-Photometer-Cuvette-Holder.stl'>smart-RGB-Photometer-Cuvette-Holder.stl</a>
  <td><sub><a href='./setup/case/3d-printing/smart-UV-Photometer-Cuvette-Holder.stl'>smart-UV-Photometer-Cuvette-Holder.stl</a>
  <td colspan=2><sub><a href='./setup/case/3d-printing/smart-IR-Turbidimeter-Cuvette-Holder.stl'>smart-IR-Turbidimeter-Cuvette-Holder.stl</a>
  <td><sub><a href='./setup/case/3d-printing/smart-Colorimeter-Cuvette-Holder.stl'>smart-Colorimeter-Cuvette-Holder.stl</a>
</tr>
</table>
</font>
</br>
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">smartPhotometer</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/smartaquametering" property="cc:attributionName" rel="cc:attributionURL">smartAquaMetering</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.<br />Based on a work at <a xmlns:dct="http://purl.org/dc/terms/" href="https://github.com/smartaquametering/smartPhotometer" rel="dct:source">https://github.com/smartaquametering/smartPhotometer</a>.<br />For permissions beyond the scope of this license see <a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/smartaquametering/smartPhotometer/blob/main/LICENSE" rel="cc:morePermissions">https://github.com/smartaquametering/smartPhotometer/blob/main/LICENSE</a>.
