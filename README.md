# phase-0-dev-box

Programs to install:
  - git bash (windows users only) [git bash for windows](http://git-scm.com/download/win)
  - Vagrant [VagrantUp](https://www.vagrantup.com/downloads.html)
  - VirtualBox [Virtualbox](https://www.virtualbox.org/wiki/Downloads)


Short list of commands without explanations, run these after you have installed the above programs:

`git clone https://github.com/Devbootcamp/phase-0-dev-box.git'

`vagrant plugin install vagrant-vbguest'

`vagrant plugin install vagrant-librarian-chef-nochef`

`vagrant up`

`vagrant ssh`

`cd /vagrant`

`exit`


## Windows Specific Instructions:

Install the git bash software for windows, follow default options until you get to adjusting your PATH.

pick `Run Git and included Unix tools from the Windows Command Prompt.`

Continue with defaults.

Install Vagrant and Virtualbox for windows, follow default options.

Open the git bash (programs > git > git bash) you should be presented with a terminal interface.

## VM installation Instructions

Clone this repo to your desktop directory:

'cd Desktop'
'git clone https://github.com/Devbootcamp/phase-0-dev-box.git'

install two vagrant plugins in your command line:

`vagrant plugin install vagrant-vbguest'

'vagrant plugin install vagrant-librarian-chef-nochef'

To install the virtual machine, type:

`vagrant up`

If you have an error that looks like this

```sh
[NOTE]
You may have encountered a bug in the Ruby interpreter or extension libraries.
Bug reports are welcome.
For details: http://www.ruby-lang.org/bugreport.html


This application has requested the Runtime to terminate it in an unusual way.
Please contact the application's support team for more information.
```

on this step, run this command `vagrant plugin uninstall ffi && vagrant plugin install ffi --plugin-version 1.9.8`
,

otherwise you can continue to the next step:

`vagrant ssh`

To find the shared folder between the VM and your home operating system, change your directory to /vagrant:

`cd /vagrant`


## Test for completion

`ruby -v` should output 2.2.1

`rspec -v` should output 3.1.5

`sqlite3 --version' should output 3.8.7

`git --version` should output 2.2.1

## Workflow

1. Clone the unit repo into the phase-0-dev-box

2. Open the repo in Sublime Text

2. Connect to the vagrant box using `vagrant ssh`

3. change directory using `cd /vagrant`

4. Edit the files in Sublime, run them in the command line





