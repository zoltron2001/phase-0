## 1.1 Think About Time Reflection

I ended up skimming through all the techniques, but Tiny Habits
interested me the most. Time boxing is limiting yourself to work on
something within a given timeframe. The Pomodoro Technique is
considered a time box, and I’ve actually used it quite a bit over the
last few years when I’ve had trouble focusing on something. It’s
worked pretty well, but it also reminds me of a sentence in the
Counter-Intuitive Productivity article. “A good rule of thumb: The more
productivity tricks you need to get it done, the less likely it is that
it’s meaningful to you.” I’d really like to try out Tiny Habits. I’ve
been trying to exercise more often and this seems like fun and totally
do-able way to do that. I’ve also got high hopes for yoga/meditation.
I’m sure as the program gets busier I’ll come to rely on those methods.

So the plan is, when things get tough, fall back on rigid techniques
such as Pomodoro. I’d like to establish healthy rituals with Tiny
Habits (such as yoga, meditation, and general exercise). And otherwise
maintain a focused work effort. I don’t think that last bit will be
difficult but I can review all the “getting in the zone” articles if
necessary.

## 1.2 The Command Line Reflection

A shell is a terminal or interface that can be used to interact with
a system. So in my case I use “Powershell” to interact with the Unix
system. Bash is a specific Unix shell which is standard in Linux and OS
X operating systems.

The initial video was the most perplexing. At some point I muttered “to
hell with it” and moved on to the crash course. After that things began
to take shape. Every now and then I receive a slew of errors because I
forget what directory I’m in, but otherwise I just need to get used to
using a command-line.

I was able to use all of the commands. I got caught up on a few, and
others I rushed through, so I’d like to go back and review once I
finish the rest of the week’s work.

So far I’ve found myself using “cd” (or change directory) as well as
“..” the most for navigational purposes. I also use “ls” quite a bit
to check what inside of a given directory. “Rm” seems like it would be
really important if I ever have trouble removing a file. The “find”
functions (such as “dir –r”) might be some of the most powerful ones,
though since finding via the graphical interface can be clunky on PC.
Otherwise, it’s probably just important to be aware of the other
commands so they can be used on a case by case basis.

“pwd” prints the working directory

“ls” lists the directory

“mv” moves (or renames) a file or directory

“cd” change directory (allows you to specify the next directory you’d
like to dive into)

“../” when used in conjunction with “cd,” “../” will move you a single
directory backward. The “/” isn’t really necessary unless you’re
stacking them against each other to make larger steps backwards.

“touch” this one I had to look up since I’m on Windows. But it creates
a new, empty file. The Windows equivalent is “New-Item” and then you
specify the file type.

“mkdir” make directory (or create a new folder). You specify the name as
well after the command.

“less” the Windows equivalent is “more” which shows a portion of a given
file, which can then be scrolled or tabbed through.

“rmdir” remove directory. Removes a give folder or file assuming it is
empty.

“rm” removes file regardless of what is contained within it (so you’re
warned to be cautious).

“help” displays a help manual

## 1.4 Forking and Cloning Reflection

How To: 

  Creating a repository can be done through a Git repository service (in
  our case Github). Login to the Github website and use the "+" icon to
  create a new repository. This will be where your files will be managed
  as we alter them.

  To fork (or grab and adjust without altering) the repository you'll need
  to copy the HTTPS clone URL to your clipboard. In our case, we’ll be
  grabbing [this](https://github.com/Devbootcamp/p0-cli-exploration)
  repository.

  Open your command-line software (in our case "Git Bash"). Type pwd
  (print working directory). Ensure that you're not inside of another
  repository. Navigate to the desktop via "cd .." and "cd desktop" if
  need be.

  Type git clone followed by the copied URL. Login to GitHub if prompted
  to do so. Type "ls" to list the contents of the directory you've
  downloaded. Type "cd p0-cli-exploration" (or the name of the listed
  repository) to navigate into the repository. Your command line should
  now recognize that you are within the “master” branch (you’ll see
  “master” in parenthesis). If you do not see master in parenthesis,
  then you may be inside of another repository, and therein you are
  merely within a branch. In this case, you will need to re-create or
  move your repository elsewhere.

My Experience:

  Forking the above repository was a tricky process for me. I was using
  Powershell for a while when I should have been using Git Bash. Then
  when I started using Git Bash, I kept placing the repository inside of
  the "phase-0-dev-box" repository. I think I even re-installed Git,
  Virtual Box, and Vagrant at some point.

  The messy process gave me a pretty good understanding of what I was
  doing. Sometimes my first time through an exercise I feel like I'm
  just following directions. Screwing up so many times forced me to
  confront what I was trying to accomplish. More than anything, I didn't
  know where I was plopping the repository. It took me quite a while to
  realize I was inside of another one. I also feel like I've connected a
  few threads. Having used Powershell for the command-line exercise, I
  was clearly ignoring the computer set-up work we had done earlier.
