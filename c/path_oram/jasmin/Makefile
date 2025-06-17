JC ?= jasminc
JCT ?= jasmin-ct
MAKE ?= make

JFLAGS = -nowarning
JCTFLAGS = --infer
JSCTFLAGS = --infer --sct

.PHONY: oram

oram: jpath_oram.s

%.s: %.jazz *.jinc
	$(JCT) $(JCTFLAGS) $<
	$(JCT) $(JSCTFLAGS) $<
	$(JC) $(JFLAGS) -o $@ $<

clean:
	rm -rf *.s