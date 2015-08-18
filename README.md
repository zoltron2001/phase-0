# phase-0-dev-box

## Summary

This README will walk you through setting up a Linux dev environment using Vagrant and Chef. Feel free to read more about these technologies online, this README will focus on getting the technologies to work for you. Here is a list of commands you will be running in order for your reference. Detailed instructions will be presented in the releases.

``` git clone https://github.com/Devbootcamp/phase-0-dev-box.git```

``` cd phase-0-dev-box ```

``` vagrant plugin install vagrant-vbguest```

``` vagrant plugin install vagrant-librarian-chef-nochef```

``` vagrant up```

``` vagrant ssh```

``` cd /vagrant```

``` exit ```

## Release 0: Install prerequisite programs

Install these programs:
  - git bash (windows users only) [git bash for windows](http://git-scm.com/download/win)
  - Vagrant [VagrantUp](https://www.vagrantup.com/downloads.html)
  - VirtualBox [Virtualbox](https://www.virtualbox.org/wiki/Downloads)

### For Windows Machines only:

Install the git bash software for windows, follow default options until you get to adjusting your PATH.

pick ``` Run Git and included Unix tools from the Windows Command Prompt.```

Continue with defaults.

Install Vagrant and Virtualbox for windows, follow default options.

Open the git bash (programs > git > git bash) you should be presented with a terminal interface.


## Release 1: Clone the repo

Clone this repo to your desktop directory:

In the terminal type:
``` cd Desktop```
``` git clone https://github.com/Devbootcamp/phase-0-dev-box.git```

## Release 2: Install Vagrant Plugins

Install two vagrant plugins in your command line:

``` vagrant plugin install vagrant-vbguest```

``` vagrant plugin install vagrant-librarian-chef-nochef```

## Release 3: Install Virtual Machine

To install the virtual machine, type:

``` vagrant up```

If you have an error that looks like this

```
 [NOTE]
 You may have encountered a bug in the Ruby interpreter or extension libraries.
 Bug reports are welcome.
 For details: http://www.ruby-lang.org/bugreport.html


 This application has requested the Runtime to terminate it in an unusual way.
 Please contact the application's support team for more information.
```


on this step, run this command ``` vagrant plugin uninstall ffi && vagrant plugin install ffi --plugin-version 1.9.8```,

otherwise you can continue to the next release.

## Release 4: Connect to Vagrant
Type this command to connect to your VM:

``` vagrant ssh```

To find the shared folder between the VM and your home operating system, change your directory to /vagrant:

``` cd /vagrant```

Now you are using Linux!

## Release 5: Test for completion

``` ruby -v``` should output 2.2.1

``` rspec -v``` should output 3.1.5

``` sqlite3 --version``` should output 3.8.7

``` git --version``` should output 2.2.1

## Workflow
In order to use this environment, you will need to make sure you clone your Devbootcamp repositories into this repository. 

1. Clone the unit repo into the phase-0-dev-box

2. Connect to the vagrant box (in your command line) using ``` vagrant ssh```

3. Open the repository in Sublime Text

4. Change directories using ``` cd /vagrant```
<!--do they always need to do this to change directories here? It might be good to specify that -->

5. Edit the files in Sublime, then run them as instructed in the command line





