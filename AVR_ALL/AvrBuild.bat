@ECHO OFF
"C:\Program Files (x86)\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "C:\AVR\labels.tmp" -fI -W+ie -o "C:\AVR\Laba_8.hex" -d "C:\AVR\Laba_8.obj" -e "C:\AVR\Laba_8.eep" -m "C:\AVR\Laba_8.map" "C:\AVR\Laba_8.asm"
