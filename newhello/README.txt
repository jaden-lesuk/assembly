How to run(You must be in the same folder):

nasm -f elf newhello.asm
ld -m elf_i386 -s -o newhello newhello.o
./newhello