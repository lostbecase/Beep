beep.bin: start.o beep.o
	arm-none-eabi-ld -Ttext 0x0 -o beep.elf $^
	arm-none-eabi-objcopy -O binary beep.elf beep.bin
	arm-none-eabi-objdump -D beep.elf > beep_elf.dis

%.o : %.S
	arm-none-eabi-gcc -o $@ $< -c -nostdlib

%.o : %.c
	arm-none-eabi-gcc -o $@ $< -c -nostdlib

clean:
	rm *.o *.elf *.bin *.dis  -f
