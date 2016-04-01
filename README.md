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

I created an MSTest inside VS 2015 and Xamarin/Monodevelop barked. I had to create the sln completely from scratch in Xamarin Studio (windows) and now all IDE's work fine.




**To-Do**