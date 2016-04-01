# Test-Frameworks-CSharp
Unit Test Frameworks for C#

I have some legacy code I work on, and with the upcoming of .net core and also wanting to migrate this code to mono (linux), I started to look around
for some alternatives to MSTest. 

As a starting point I am following the docs from xunit ( https://xunit.github.io/docs/getting-started-desktop as a starter)

Configuration files:

* https://xunit.github.io/docs/configuring-with-xml.html
* https://xunit.github.io/docs/configuring-with-json.html

Some interesting issues to track:

* https://github.com/xunit/xunit/issues/291

##Azure Setup
I got some azure credits from a conference about azure, some time ago and wanted to give it a try. The main goal for this set up was to test out the azure features and try to make it work without monode develop. Text-mode only.


Currently on

```sh
zaiboot@MonoDebian:~$ lsb_release -a
No LSB modules are available.
Distributor ID: Debian
Description:    Debian GNU/Linux 8.3 (jessie)
Release:        8.3
Codename:       jessie

```




Follow the instructions from here:
http://www.mono-project.com/docs/getting-started/install/linux/

and if get and error, according to this post https://stackoverflow.com/questions/29982959/how-to-install-mono-4-0-1-on-debian-8:


```sh
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
sudo apt-get update

echo "deb http://download.mono-project.com/repo/debian wheezy-apache24-compat main" | sudo tee -a /etc/apt/sources.list.d/mono-xamarin.list

echo "deb http://download.mono-proje)ct.com/repo/debian wheezy-libjpeg62-compat main" | sudo tee -a /etc/apt/sources.list.d/mono-xamarin.list

sudo apt-get update

sudo apt-get install mono-complete
```
basically it seems that mono-complete should require libjpeg8 and is not doing it.

Nuget on linux: https://packages.debian.org/jessie/nuget
```sh
sudo apt-get install nuget
```
and all should be good.


##Linux Setup

For mono.net compatibily, it is being used:

* xbuild 4.2 |[link](http://www.mono-project.com/docs/tools+libraries/tools/xbuild/)
* monodevelop 5.10| [download](http://www.monodevelop.com/download/)


Currently on

```sh
zaiboot@DebianMono:~/$ lsb_release -a

Distributor ID: Debian
Description:    Debian GNU/Linux 8.3 (jessie)
Release:        8.3
Codename:       jessie
```

##Windows setup

* Visual Studio Community 2015 | [download](https://www.visualstudio.com/en-us/products/visual-studio-community-vs.aspx)
* Xamarin Studio | [download](http://www.monodevelop.com/download/)
* Windows 10 professional x64, english


####Gotchas

* Nuget packages

I have installed https://github.com/mrward/monodevelop-nuget-extensions, since it allows me to run commands like Install-Package in a command prompt, like in visual studio. You have to activate the Alpha Channel, for Mono Addin. I installed it as an extra precaution, since the project didn't restore the packages. I am just used to VS restore everything for me, and it seems you have to do it manually in MonoDevelop.

* xbuild *(optional)*
I had to install xbuild as an extra step in Debian. It didn't worked correctly with the project. Not sure if necessary, just adding it in case.

* Creating sln and .csproj

I created an MSTest inside VS 2015 Community and Xamarin/Monodevelop barked. I had to create the sln completely from scratch in Xamarin Studio (windows) and now all IDE's work fine. Looks like it is because of the version of .net framework should be 4.0 instead of 4.5.1



**To-Do**