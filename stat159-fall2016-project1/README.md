<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>....

<h1>Youngshin Kim</h1>

<h2>Structure of this project</h2>
![shot](../../../../shot.png)

1. Makefile automates the process of 
	- combining the 4 md files into one md file (paper.md)
	- removing paper.html
	- creating paper.html from md file using pandoc

2. paper contains 
	- a directory called sections that contains 4 md files with written contents
	- paper.md which is the combination of the 4 md files in sections directory
	- paper.html which is created from paper.md using pandoc

3. images contains 5 logo images to be used in the markdown files.
