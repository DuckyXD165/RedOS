ASM?=nasm
BUILD_DIR?=build/

.PHONY: build run combo clean

build:
	nasm boot.asm -f bin -o $(BUILD_DIR)/boot.bin

run:
	qemu-system-i386 $(BUILD_DIR)/boot.bin

cleancombo:
	nasm boot.asm -f bin -o $(BUILD_DIR)/boot.bin
	qemu-system-i386 $(BUILD_DIR)/boot.bin
	rm $(BUILD_DIR)/*
combo:
	nasm boot.asm -f bin -o $(BUILD_DIR)/boot.bin
	qemu-system-i386 $(BUILD_DIR)/boot.bin

clean:
	rm $(BUILD_DIR)/*