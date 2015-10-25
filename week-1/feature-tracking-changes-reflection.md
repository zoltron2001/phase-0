## What is a commit?

A commit is a saved version of a given change or slew of changes to
your file(s). A commit functions as a checkpoint that can be revisited
to correct error, cherry pick changes, or satisfy downright curiosity.

## What are the best practices for commit messages?

It's important to get to the point quickly in a commit message. The
first line or so (the summary) should tell you all you the most
important information. If more details are necessary, they can be added
in the space below in paragraph or bullet point form (using hanging
indent, with space between bullets or paragraphs). Bullets can be
created via hyphens or asterisks.

Commit messages should also be limited to a 72 character column width
to prevent spill over on windows limited to the size. And language
should be crafted in the imperative (e.g. "add" not "added"). That way
if someone scrolls through the commits, it reads as something that can
be applied rather than is already applied. 

## What does the HEAD^ argument mean?

"HEAD^" refers to the previous commit.

HEAD (without the "^") refers to where you currently are. From there
the progression goes "HEAD^", "HEAD~3","HEAD~4", etc.

## What are the 3 stages of a git change and how do you move a file
## from one stage to the other?

The three local stages of a git change are Edit, Add, and Commit.

Editing will occur as changes are made via command-line or an editor
(such as sublime). What files have been altered, you can type "git
status" into the command-line.

Adding is used to track changes to a given file. You can "git add" a
file to track future alterations to it.

When you're read to commit or save one or more changes you can "git 
commit" those changes. You'll need to choose which changes you'd like
to commit by either selecting each change individually, or the whole
lot of them.

## Write a handy cheatsheet of the commands you need to commit your
## changes.

Commit changes:

  Make changes
  Add/commit changes
    git add changes
      to track changes
    git commit -m "commit message"
      to enter explanation of change

Other useful commands:

  git checkout -- changes
    if necessary to remove alteration
  git log
    to see all changes
  git add .
    to add everything in current directory
  git status
    to see what changes are tracked/added etc.

Full Process (for Zollie's purposes):

  "git pull" incase of any changes
    git checkout master
    git pull origin master

  Create branch
    git checkout -b feature-branch-name
    git merge master

  Make changes
  Add/commit changes
    git add changes
    git commit -m "commit message"
    git push origin feature-branch-name

  Merge master or other branch with working branch (if ready) on Github
  Delete now redundent branch via Github

  "git pull" to enact merge locally
    git checkout master
    git pull origin HEAD
    git branch -d feature-branch name
      to delete redundent branch
  
## What is a pull request and how do you create and merge one?

A pull request is used to grab a branch of master from Github to ensure
local copies are up-to-date.

To create and merge pull request enter the following into command-line:
    git checkout (branch or master)
    git pull origin (branch, master, or HEAD)
  OR
    git checkout (branch or master)
    git fetch (branch, master, or HEAD)
    git merge (branch, master, or HEAD)

## Why are pull requests preferred when working with teams?

Pull requests are particularily important when working with a team in 
case alterations have been made by another teammate that have not been
copied to your local workstation. Failing to pull could potentially
create merge errors, let alone redundant effort.