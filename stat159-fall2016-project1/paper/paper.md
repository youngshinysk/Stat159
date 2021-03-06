
<h1>[Abstract]</h1>

<p>This paper is about the usage of computational tools commonly used for reproducible team projects.
These tools include terminal (gitbash for windows), makefile, markdown (md), pandoc, git,
github, and text editor (sublime text).  The paper is divided into four parts:
abstract, introduction, discussion, and conclusion.  The discussion part is where most of
the core contents of this paper will be concentrated in. </p> 




<h1>[Introduction]</h1>

![stat159](../images/stat159-logo.png)

<p>When a group of people work on the same project, it is essential that the project is reproducible
and that team members share their work properly.  It's important that the project is reproducible,
because reproducibility ensures that team members know exactly how other team members got what
they are working on.  Sharing work properly is without a doubt important in a team setting, because
that is the whole point of working in a team, to break up large project for each person to work on and
then combine them all together into one piece later.  There are many computational tool out there
that help achieve this and the ones that will be introduced in this paper are:
terminal (gitbash for windows), makefile, markdown (md), pandoc, git,
github, and text editor (sublime text).  The core of sharing changes you make on your local server
is Git.  Git enables users to keep track of changes and upload the ones they want to share.
In many cases, they will be uploaded to hosting servies like Github.  Git is easily run on terminal
and work will be saved in markdown files and pandoc will be used to combine all of these files
into a nice dynamic report.  Makefile is used to automate these steps.  I will explain each tool
in more detail in the next section.</p>


<h1>[Discussion]</h1>

<h2>What is Makefile</h2>
<p>Makefile is a file that contains a series of shell commands that is
useful for automating commands.  This is useful for projects that require
many changes and therefore require the user typing the same command multiple
times.  If the user creates a single makefile with all these commands, the
user won't have to go through the trouble to type the commands one by one.
Makefile, therefore, plays a useful role in this reproducible workflow,
because I don't have to create a new paper.html by typing the long command
everytime.  I can simply create a makefile with the command type 'make'
to create the html.</p>


<h2>What is Git and Github</h2>

![git-logo](../images/git-logo.png)
![github-logo](../images/github-logo.png)

<p>Git is a version control system that allows users to keep track of changes
to source code and files.  The basic flow of using git is 1. make changes 2. add,commit 3. push,pull. When you add,commit, the changes made are on 
the git server. When you push, the changes are uploaded to your account in repo hosting service such as Github and when you pull, you download contents 
from Github to your local server.  Technically, you can use Git without Github, but Github has nice GUI that makes the repositories more accesible and 
manageable.  Github essentially makes Git easier to use. They are both important in this project, because I used these technologies to share my 
project with my Professor and my GSI.</p>   


<h2>What is Markdown and pandoc</h2>

![markdown](../images/markdown-logo.png)
![pandoc](../images/pandoc-logo.png)

<p>Markdown is a special format for writing reproducible, dynamic reports in
a variety of format such as PDF, HTML, and Word.  In R, the markdown file 
takes in chuncks of R codes and displays both the codes and their results.  
Since the user can see the results (graphs, tables, etc) along with the
codes that were used to create them, Markdown is very uesful for 
reproducible research.  In converting Markdown file to another format,
you can use a library called pandoc.  In other words, you can convert
.md files into other formats like pdf by calling the pandoc function
on your .md files.  Pandoc is useful, because it creates a neat report
that integrates codes, writing, graphs, tables, etc.  And it can be done
simply by calling the pandoc command on a Markdown file.</p>


<h2>What resources were used</h2>
<p>Primary resources were the lectures and labs for Stat 159.  I found the 
labs particularly useful, because they included instructions with examples.
Other useful resources include Youtube.  Youtube videos were useful, because
it demonstrated the exact steps to doing a task by actually doing them on screen.</p>


<h2>What were the "easy" parts?</h2>
<p>The easy parts of this project were Markdown and actually writing out the contents.
Markdown was relatively easy for me, because I've had experiences in using R-Markdown
for my other statistics classes.  Although it was my first time using pandoc and markdown
in terminal, I got the hang of it relatively quickly.  The contents I am writing in 
the markdown files were easier to create than figuring out how Git works and setting
up the project structure on Github, because it was my first time using a version control system
to share my project.</p>


<h2>What were the challenging parts?</h2>
<p>The challenging parts were Git, Github, and Makefile</p> 
1. Git was hard in the beginning, because
I didn't understand the differences among add, commit, and push.  Once I understood the differences,
it was simply a matter of executing these commands.  add command put files onto the staging area,
commit command put the files onto the git server, and push command put the files onto repository
hosting service such as Github.  

2. Github was challenging in the beginning, because I didn't understand how Github communicates
with my computer.  Essentially, Github communicates with my computer through Git.  To 
get data from my Github, I simply need to use the 'git pull' command and to upload data to my
Github, I need to use the 'git push'.  

3. Makefile was challenging at first, because there were several components that weren't clear
to me in terms of their usage.  For example, I didn't understand what all and phony targets were for.
I think their usage became clear once I began to implement the Makefile.  The first time I used
the 'make' command, I realized that without the all target, not all commands in Makefile will be 
executed.  Also, I realized that without the phony target, clean will be recognized as some file,
which of course doesn't exist.  

<h2>What are some things you were stuck with?</h2>
<p>I was very stuck with setting up and understanding the funcitons of Git and Github.  Another aspect
of the project I was stuck in was setting up the structure of the project, which perhaps should have
been one of the easiest parts of the project.  I think the part that made this step confusing was
thinking that each directory had to be a branch.  Once I understood that folders could be created in
the master branch, thigns became easier, but it took some time to realize this.</p>

<h2>What was the most time consuming part?</h2>
<p>Ironically, the most time consuming part was writing out the contents for the markdown files, which
I said was the easiest part of the project previously.  The sheer amount of content I have to write made
the task time consuming, but what made it more time consuming was that I didn't know the exact definition
of different terms such Git and Markdown.  I knew how to use them, but it was hard to come up with a 
formal answer to the question such as 'What is Git'.  So I had to do some research and took my time
in writing out what different technology that went into this project was for.</p>

<h2>Did you work with and/or get help from someone else? If yes, in what manner?</h2>
<p>I mostly worked on this project on my own, but I got some help from our GSI, Sindhuja Jeyabal,
during her office hours.  She helped clarify the purpose different commands used in the project, such
as the phony target in Makefile and she helped correct small command errors.  One problem that
I may not have been able to solve on my own was the pathname for images.  I had thought that 
the pathnames should be relative to the md files, but she told me that they have be relative to 
the html file. </p>

<h2>How much time did it take?</h2>
<p>This project took about a week with 1~2 hours of coding/writing contents each day.</p>


<h1>[Conclusion]</h1>

<p>The tools discussed in the previous section make reproducible project easy to create, easy to keep track of,
and easy to share with others.  </p>