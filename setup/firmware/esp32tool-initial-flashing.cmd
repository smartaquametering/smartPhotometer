
REM erase
esp32tool.exe --chip esp32 --port COM7 --baud 256000 --before default_reset --after hard_reset erase_flash

REM flash ESP_Easy_mega_20201102_test_ESP32_4M316k-factory.bin
esp32tool.exe --chip esp32 --port COM7 --baud 256000 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 80m --flash_size detect 0x0 ./bin/ESP_Easy_mega_20201102_test_ESP32_4M316k-factory.bin
