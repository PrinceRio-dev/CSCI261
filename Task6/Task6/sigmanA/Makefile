# Makefile to drive cew testing of asm code using gdb
# P Walsh Feb 2001

# Targets
#   interactive --- assemble program under test and load into gdb
#   bats --- make batch tester from bats.script
#   clean
#   submit -- submit assignment code

# source file
SRC=foolib

# directory where scripts are located and temp files
SD=CewDir

# code beautifier 
INDENT=cat

# version of awk
AWK=awk 

# extra debugger flags
XDBF=-batch -x

# tools 
AS=m68hc11-as
CC=m68hc11-gcc
LD=m68hc11-ld
GDB=m68hc11-gdb

interactive: start.elf
	$(GDB) start.elf

bats.gdb: bats.script
	rm -f $(SD)/tmp/bats.gdb
	perl $(SD)/bin/addLineNums.pl bats.script > $(SD)/tmp/bats.num
	m4  $(SD)/tmp/bats.num | $(INDENT)  > bats.gdb

clean:
	rm -f driver.s *.o *.elf *.gdb *.lst $(SD)/tmp/*

bats:	start.elf bats.gdb
	$(GDB) $(XDBF) bats.gdb start.elf | $(SD)/bin/filterOutput.pl 

$(SRC).o: $(SRC).s
	$(AS)   -g -a=$(SRC).lst --gstabs -o $(SRC).o $(SRC).s

driver.s: driver.c
	$(CC) -g -S -mshort -msoft-reg-count=0 driver.c

start.o: start.s
	$(AS)   -g -a=start.lst --gstabs -o start.o start.s

driver.o: driver.s
	$(AS)   -g -a=driver.lst --gstabs -o driver.o driver.s

start.elf: start.o driver.o $(SRC).o
	$(LD)  -g -N -mshort -mm68hc11elfb start.o driver.o $(SRC).o -o start.elf

submit:
	@echo "Nothing to submit"
