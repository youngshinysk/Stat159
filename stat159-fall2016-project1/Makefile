.PHONY: clean all

all: paper/paper.md paper/paper.html 

# paper/paper.md: paper/sections/00-abstract.md paper/sections/01-introduction.md paper/sections/02-discussion.md paper/sections/03-conclusions.md
# 	cat paper/sections/00-abstract.md paper/sections/01-introduction.md paper/sections/02-discussion.md paper/sections/03-conclusions.md > paper/paper.md

paper/paper.md: paper/sections/*.md
	cat paper/sections/*.md > paper/paper.md 

clean: paper/paper.html
	rm paper/paper.html

paper/paper.html: paper/paper.md
	pandoc -o paper/paper.html paper/paper.md


