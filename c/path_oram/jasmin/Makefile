JC ?= jasminc
JCT ?= jasmin-ct
MAKE ?= make

JFLAGS = -nowarning

.PHONY: clean run

oram: jpath_oram.s

%.s: %.jazz
	$(JC) $(JFLAGS) -o $@ $<

clean:
	rm -rf *.s