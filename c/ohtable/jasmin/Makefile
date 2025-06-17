JC ?= jasminc
JCT ?= jasmin-ct
MAKE ?= make

JFLAGS = -nowarning
JCTFLAGS = --infer
JSCTFLAGS = --infer --sct

.PHONY: accessors

accessors: jaccessors.s

%.s: %.jazz
	$(JCT) $(JCTFLAGS) $<
	$(JCT) $(JSCTFLAGS) $<
	$(JC) $(JFLAGS) -o $@ $<

clean:
	rm -rf *.s