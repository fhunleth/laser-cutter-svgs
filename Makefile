
TARGETS=wiha-holder.svg toothbrush-holder.svg skycam-case.svg

all: $(TARGETS)

%.svg: %.svg.in
	PYTHONPATH=. cheetah fill --iext=.svg.in --oext=.svg $<

clean:
	rm $(TARGETS)

