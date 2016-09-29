.PHONY: clean all

all: paper/paper.md paper/paper.html 

paper/paper.md: paper/sections/*.md
	cat paper/sections/*.md > paper/paper.md 

clean: paper/paper.html
	rm paper/paper.html

paper/paper.html: paper/paper.md
	pandoc -o paper/paper.html paper/paper.md


