
REM erase
esptool.exe --chip esp32 --port COM8 --baud 256000 --before default_reset --after hard_reset erase_flash

REM flash ESP_Easy_mega_20201102_test_ESP32_4M316k.bin
esptool.exe --chip esp32 --port COM8 --baud 256000 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 80m --flash_size detect 0x10000 ./bin/ESP_Easy_mega_20201102_test_ESP32_4M316k.bin

REM flash partitions2.bin boot / boot_app0.bin / bootloader.bin
esptool.exe --chip esp32 --port COM8 --baud 256000 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 80m --flash_size detect 0x8000 ./initial-images/partitions2.bin 0xe000 ./initial-images/boot_app0.bin 0x1000 ./initial-images/bootloader.bin
