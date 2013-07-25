
TARGETS=wiha-holder.svg toothbrush-holder.svg

all: $(TARGETS)

%.svg: %.svg.in
	cheetah fill --iext=.svg.in --oext=.svg $<

clean:
	rm $(TARGETS)

