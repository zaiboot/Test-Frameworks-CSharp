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

For mono.net compatibily, it is being used:
* xbuild 4.2
* monodevelop 5.10

Currently on
zaiboot@DebianMono:~/$ lsb_release -a
Description:    Debian GNU/Linux 8.3 (jessie)



