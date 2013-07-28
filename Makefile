
TARGETS=wiha-holder.svg toothbrush-holder.svg skycam-case.svg
PNG_TARGETS=$(TARGETS:.svg=.png)

all: $(TARGETS)
pngs: $(PNG_TARGETS)

# Everything depends on the utility template
$(TARGETS): util.tmpl

%.svg: %.tmpl
	PYTHONPATH=. cheetah fill --oext=.svg $<

%.png: %.svg
	convert $< $@

clean:
	-rm $(TARGETS) $(PNG_TARGETS) *.bak

