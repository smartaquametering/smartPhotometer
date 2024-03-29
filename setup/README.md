![Banner](https://smartaquametering.github.io/images/banner.png)

# smartAquaMeter

Easy-to-use OpenSource AquaMeter for measurement of various analytical parameters.
Due to their wide range of application, their reliability and robustness, smartAquaMeters **can be perfectly used as portable analytical instruments for outdoor analytics**.

**Your insurance for secure measurement results.**

## Reducing complexity

Reducing of complexity
- by using **RGB, UV and IR LEDs for the parallel measurement of absorption and nephelometric turbidity** at different wavelengths.
- by the integration of various **digital light sensors and electrochemical sondenxxxxxx orchestrated by simple microcontrollers**.
- by distributing different analysis methods **on multiple meshed smartAquaMeters**.
- by the strict **segregation of data acquisition, transmission, analytics and their visualisation** on different layers and devices.

## Being Smart - The difference

Connect the smartAquaMeter via WiFi to your internal network and orchestrate by using simple web- or MQTT-based APIs.

![Networking](../assets/networking.png)

Any device (e.g. PC, Laptop, Tablet, smartPhone, ...) with a standard web browser can be used to access a simple web page on the smartAquaMeter.

A Javascript application will start within your browser and is triggering and managing all analytis, evaluation of measured values and their visualisation.

### ESPEasy P2P network example

<table>
<tr>
  <td rowspan=3 valign=top><sub><b>Task</b>
  <td colspan=2><sub><b>Node</b>
  <td rowspan=3 valign=top><sub><b>Device</b>
  <td rowspan=3 valign=top><sub><b>Values</b>
  <td colspan=3><sub><b>Data Acquisition</b>
</tr>
<tr>
  <td rowspan=2><sub><b>ID
  <td rowspan=2><sub><b>Name
  <td colspan=2><sub><b>Controllers
  <td rowspan=2><sub><b>Interval
</tr>
<tr>
  <td><sub><b>ESPEasy P2P Networking
  <td><sub><b>MQTT
</tr>
<tr>
  <td><sub>1
  <td><sub>1
  <td><sub>Pond-Control
  <td><sub><b>smart-Thermometer</b>
  <td><sub>Water-Temperature
  <td><sub>1
  <td><sub>2
  <td><sub>60
</tr>
<tr>
  <td><sub>2
  <td><sub>1
  <td><sub>Pond-Control
  <td><sub><b>smart-pH-Meter</b>
  <td><sub>pH
  <td><sub>1
  <td><sub>2
  <td><sub>60
</tr>
<tr>
  <td><sub>3
  <td><sub>1
  <td><sub>Pond-Control
  <td><sub><b>smart-EC-Meter</b>
  <td><sub>EC
  <td><sub>1
  <td><sub>2
  <td><sub>60
</tr>
<tr>
  <td><sub>4
  <td><sub>1
  <td><sub>Pond-Control
  <td><sub><b>smart-ORP-Meter</b>
  <td><sub>ORP
  <td><sub>1
  <td><sub>2
  <td><sub>60
</tr>
<tr>
  <td><sub>5
  <td><sub>
  <td><sub>
  <td><sub><b></b>
  <td><sub>
  <td><sub>
  <td><sub>
  <td><sub>
</tr>
<tr>
  <td><sub>6
  <td><sub>
  <td><sub>
  <td><sub><b></b>
  <td><sub>
  <td><sub>
  <td><sub>
  <td><sub>
</tr>
<tr>
  <td><sub>7
  <td><sub>
  <td><sub>
  <td><sub><b></b>
  <td><sub>
  <td><sub>
  <td><sub>
  <td><sub>
</tr>
<tr>
  <td><sub>8
  <td><sub>1
  <td><sub>Pond-Control
  <td><sub><b>Barometer</b>
  <td><sub>Air-Pressure</br>Air-Humidity
  <td><sub>1
  <td><sub>2
  <td><sub>60
</tr>
<tr>
  <td><sub>9
  <td><sub>1
  <td><sub>Pond-Control
  <td><sub><b>Thermometer</b>
  <td><sub>Air-Temperature
  <td><sub>1
  <td><sub>2
  <td><sub>60
</tr>
<tr>
  <td><sub>10
  <td><sub>2
  <td><sub>Lab-RGB-Photometer
  <td><sub><b>smart-RGB-Photometer</b>
  <td><sub><var>E<sub>λ</sub></var></br><var>SAC<sub>λ</sub></var></br>FTU
  <td><sub>1
  <td><sub>2
  <td><sub>7
</tr>
<tr>
  <td><sub>11
  <td><sub>3
  <td><sub>Lab-UV-Photometer
  <td><sub><b>smart-UV-Photometer</b>
  <td><sub><var>SAC<sub>λ</sub></var>
  <td><sub>1
  <td><sub>2
  <td><sub>7
</tr>
<tr>
  <td><sub>12
  <td><sub>4
  <td><sub>Lab-Turbidimeter
  <td><sub><b>smart-IR-Turbidimeter</b>
  <td><sub><var>SAC<sub>λ</sub></var></br>FTU
  <td><sub>1
  <td><sub>2
  <td><sub>7
</tr>
<tr>
  <td><sub>13
  <td><sub>5
  <td><sub>Lab-Colorimeter
  <td><sub><b>smart-Colorimeter</b>
  <td><sub>Color index
  <td><sub>1
  <td><sub>2
  <td><sub>7
</tr>
</table>
</br>
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">smartPhotometer</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/smartaquametering" property="cc:attributionName" rel="cc:attributionURL">smartAquaMetering</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.<br />Based on a work at <a xmlns:dct="http://purl.org/dc/terms/" href="https://github.com/smartaquametering/smartPhotometer" rel="dct:source">https://github.com/smartaquametering/smartPhotometer</a>.<br />For permissions beyond the scope of this license see <a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/smartaquametering/smartPhotometer/blob/main/LICENSE" rel="cc:morePermissions">https://github.com/smartaquametering/smartPhotometer/blob/main/LICENSE</a>.
