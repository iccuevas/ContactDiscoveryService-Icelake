JC ?= jasminc
JCT ?= jasmin-ct
MAKE ?= make

JFLAGS = -nowarning

.PHONY: clean run

accessors: jaccessors.s

%.s: %.jazz
	$(JC) $(JFLAGS) -o $@ $<

clean:
	rm -rf *.s