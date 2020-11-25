1.  Power on your ESP32 by connecting it via a micro USB-B-cable to your PC
2.  Open WIN 10 WLAN overview and connect with 'TEST-ESP32' SSID
3.  A browser windows will open and you will redirect to the initial ESPEsay Wifi setup page
4.  Connect your new ESPEasy node to your internal WLAN
5.  You will redirect to the new assigned ESPEasy IP address
6.  Document this ESPEasy node IP address and
    consider to assign a static IP for ESP via DHCP/DNS services
7.  Login to ESPEasy WebGUI
8.  Upload the customized smartPhotometer settings file
    /Tools/Settings/Load/
    Select 'config.dat'
    Upload
9.  Upload the customized smartPhotometer rules1 file
    /Tools/Filesystem/File browser/
    Upload
    Select 'rules1.txt'
    Upload
10.  Upload the smartPhotometer web page
    /Tools/Filesystem/File browser/
    Upload
    Select 'photometer.html'
    Upload
11.  Upload the smartPhotometer logo image
    /Tools/Filesystem/File browser/
    Upload
    Select 'logo.png'
    Upload
12.  Upload the smartPhotometer banner image
    /Tools/Filesystem/File browser/
    Upload
    Select 'banner.png'
    Upload
13.  Disable Sleep Mode
    /Config/Sleep Mode
    Sleep awake time: 0
    Sleep time: 0
14.  Modify Rules Engine Settings
    /Tools/System/Advanced/Rules Settings
    Rules: enabled
    Old Engine: enabled
    Tolerant last parameter: enabled
    SendToHTTP wait for ack: disabled
15.  Modify NTP Settings
    /Tools/System/Advanced/NTP Settings
    Use NTP: enabled
    NTP Hostname: to be customized based on your local LAN settings
16. Modify rules DST Settings
    /Tools/System/Advanced/DST Settings
17. Modify Location Settings
    /Tools/System/Advanced/Location Settings
    Timezone Offset (UTC +): to be customized
18. Reboot
    /Tools/System/Reboot