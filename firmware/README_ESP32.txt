  _____ ____  ____
 | ____/ ___||  _ \ ___  __ _ ___ _   _
 |  _| \___ \| |_) / _ \/ _` / __| | | |
 | |___ ___) |  __/  __/ (_| \__ \ |_| |
 |_____|____/|_|   \___|\__,_|___/\__, |
                                  |___/


This is the distribution folder for ESPeasy.
In here you will find a ESP32 flash tool to program the ESP32 module.

Also a number of binary images is included.

The filename is quite descriptive:
  ESP_Easy_mega-<date>_<buildType>_<chip>_<memorySize>.bin

Build type can be:  (differ in included plugins)
- normal  => Only Stable plugins and controllers
- test    => Stable + Testing
- dev     => Stable + Testing + Development

ESP32 now has 3 builds:
- custom_ESP32_4M316k  Build template using either the plugin set defined in ``Custom.h`` or ``tools/pio/pre_custom_esp32.py``
- test_ESP32_4M316k  Build using the "testing" set of plugins for ESP32
- test_ESP32-wrover-kit_4M316k  A build for ESP32 including build flags for the official WRover test kit.

There is also a number of special builds:
- normal_IR => "Normal" + IR receiver/transmitter plugins and library
- hard_xxxxx => Special builds for some off-the-shelf hardware.
- minimal_ESP82xx_1M_OTA => Minimum number of plugins and a limited set of controllers included to be able to perform a 2-step OTA on 1 MB flash nodes.
- normal_core_xxx => "Normal" using core xxx (e.g. 2.4.1)
- normal_beta => "Normal" using the staged (beta) branch of the esp8266/Arduino repository.

Chip can be:
- ESP32  => Experimental support at this moment

MemorySize can be:
- 4M     => 4 MB flash modules (e.g. ESP32)

Special memory partitioning:
- 4M316k => For ESP32 with 4MB flash, sketch size is set to 1.8 MByte (default: 1.4 MByte)

Since ESP32 does have its flash partitioned in several blocks, we have 2 bin files of each ESP32 build:
- test_ESP32_4M316k.bin
- test_ESP32_4M316k-factory.bin

The binary with "-factory" in the name must be flashed on a new node, via the serial interface of the board.
This flash must be started at address 0.

The binary without "-factory" can be used for OTA updates. (OTA for ESP32 is added in May 2020)

Please note that changing between those versions will destroy the settings!
The SPIFFS partition will be lost and that contains all settings.


To help recover from a bad flash, there are also blank images included.
- blank_1MB.bin
- blank_2MB.bin
- blank_4MB.bin
- blank_16MB.bin

When the wrong image is flashed, or the module behaves unstable, or is in a reboot loop,
flash these images first and then the right image for the module.

esp32tool-initial-flashing.cmd ...
... is a flashing script for ESPEasy_ESP32.
You need to run it in elevated mode (as admin) for it to fetch the COM ports correctly.
You have to customize the default COM settings based on your WIN 10 COM settings frist!

For flashing ESP32 you can also use Espressif's own Flash Download Tools.
The latest version can be downloaded from: https://www.espressif.com/en/support/download/other-tools


Further reading:
For more information, see: https://github.com/letscontrolit/ESPEasy
Or our forum: https://www.letscontrolit.com/forum/


Flash procedure for an ESP32 with an WIN 10 PC
----------------------------------------------

1. Install CP2102 USB-to-UART driver if they are not part of your WIN 10 setup
   https://www.silabs.com/developers/usb-to-uart-bridge-vcp-drivers

2. Open cmd box and change into the firmware directory
3. Connect your ESP32 to your PC with a micro USB-B-cable
4. Adapt COM port within 'esp32tool-initial-flashing.cmd' batch
5. Execute the batch 'ESPEasy_ESP32_mega-initial-flashing.cmd'

