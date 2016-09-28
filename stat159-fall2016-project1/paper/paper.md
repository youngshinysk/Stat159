asdf


What is Makefile
- Makefile is a file that contains a series of shell commands that is
useful for automating commands.  This is useful for projects that require
many changes and therefore require the user typing the same command multiple
times.  If the user creates a single makefile with all these commands, the
user won't have to go through the trouble to type the commands one by one.
Makefile, therefore, plays a useful role in this reproducible workflow,
because I don't have to create a new paper.html by typing the long command
everytime.  I can simply create a makefile with the command type 'makefile'
to create the html.

What is Git and Github 

![git-logo](../images/git-logo.png)
![github-logo](../images/github-logo.png)

- Git is a version control system that allows users to keep track of changes
to source code and files.  The basic flow of using git is 1. make changes 
2. add,commit 3. push,pull. When you add,commit, the changes made are on 
the git server. When you push, the changes are uploaded to your account in 
repo hosting service such as Github and when you pull, you download contents 
from Github to your local server.  Technically, you can use Git without Github, 
but Github has nice GUI that makes the repositories more accesible and 
manageable.  Github essentially makes Git easier to use. They are both 
important in this project, because I used these technologies to share my 
project with my Professor and my GSI.   

What is Markdown and pandoc

![markdown](../images/markdown-logo.png)
![pandoc](../images/pandoc-logo.png)

- Markdown is a special format for writing reproducible, dynamic reports in
a variety of format such as PDF, HTML, and Word.  In R, the markdown file 
takes in chuncks of R codes and displays both the codes and their results.  
Since the user can see the results (graphs, tables, etc) along with the
codes that were used to create them, Markdown is very uesful for 
reproducible research.  In converting Markdown file to another format,
you can use a library called pandoc.  In other words, you can convert
.md files into other formats like pdf by calling the pandoc function
on your .md files.  Pandoc is useful, because it creates a neat report
that integrates codes, writing, graphs, tables, etc.  And it can be done
simply by calling the pandoc command on a Markdown file.

What resources were used
- Primary resources were the lectures and labs for Stat 159.  I found the 
labs particularly useful, because they included instructions with examples.
Other useful resources include Youtube.  Youtube videos were useful, because
it demonstrated the exact steps to doing a task by actually doing them on screen.

What were the "easy" parts?
- The easy parts of this project were Markdown and actually writing out the contents.
Markdown was relatively easy for me, because I've had experiences in using R-Markdown
for my other statistics classes.  Although it was my first time using pandoc and markdown
in terminal, I got the hang of it relatively quickly.  The contents I am writing in 
the markdown files were easier to create than figuring out how Git works and setting
up the project structure on Github, because it was my first time using a version control system
to share my project.  

What were the challenging parts?
- The challenging parts were Git, Github, and Makefile.  


