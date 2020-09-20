all: rqt.pdf

fsm: default.pdf

%.dot: %.dot.in
	python prepare.py < $< > $@

%.pdf: %.dot
	dot $< -Tpdf -o $@
