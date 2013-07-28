
TARGETS=wiha-holder.svg toothbrush-holder.svg skycam-case.svg

all: $(TARGETS)

%.svg: %.tmpl
	PYTHONPATH=. cheetah fill --oext=.svg $<

clean:
	-rm $(TARGETS) *.bak

