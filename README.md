# phase-0-dev-box

Programs to install:
  - git bash (windows users only) [git bash for windows](http://git-scm.com/download/win)
  - Vagrant [VagrantUp](https://www.vagrantup.com/downloads.html)
  - VirtualBox [Virtualbox](https://www.virtualbox.org/wiki/Downloads)


Windows User Instructions:

Install the git bash software for windows, follow default options until you get to adjusting your PATH.

pick `Run Git and included Unix tools from the Windows Command Prompt.`

Continue with defaults.

Install Vagrant for windows, follow default options.

Install VirtualBox, follow default options.

Open the git bash (programs > git > git bash) you should be presented with a terminal interface.

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

on this step, follow these instructions, otherwise you can continue to the next step:

`vagrant plugin uninstall ffi && vagrant plugin install ffi --plugin-version 1.9.8`


Vagrant will now download and install Ubuntu on a small portion of your hard drive. This OS image will only be accessible from this directory. Once it completes the steps and returns to the command line, type:

`vagrant ssh`

to connect to the image. To disconnect from the image, just type exit. Once you are in the Ubuntu image, change directory to the `/vagrant` directory. This is where the files will be shared between the windows and linux environments. Test your executables by typing:

`ruby -v` should output 2.2.1

`rspec -v` should output 3.1.5

`sqlite3 --version' should output 3.8.7

`git --version` should output 2.2.1

Now you have a place to run all of your executables, without messing with the PC environment.




