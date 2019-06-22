**Included by default Apache in OSX is uncomplete, so first this to do is to properly install it:**

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install httpd

**execute go.sh to install the mod_harbour for OSX**

chmod +x go.sh

./go.sh

**If you want to build the mod_harbour yourself**

In order to make the generated apxs project, Makefile has to be edited this way:

top_srcdir=/usr/local/lib/httpd

top_builddir=/usr/local/lib/httpd

**Copy mod_harbour.so to the Apache modules folder**

cp mod_harbour.so /usr/local/lib/httpd/modules

cd /usr/local/var/www    # instead of /Library/WebServer/Documents

**Create a symlink at /usr/local/var/www pointing to libharbour.3.2.0.dylib**

sudo ln -sf /Users/$USER/mod_harbour/osx/libharbour.3.2.0.dylib libharbour.3.2.0.dylib

**Create a symlink to point to the mod_harbour samples folder:**

ln -sf /Users/anto/mod_harbour/samples modharbour_samples

**Apache configuration file:**

/etc/apache2/httpd.conf  or

/usr/local/etc/httpd/httpd.conf

Set the right port: 

Listen 80

ServerName localhost

**Copy the mod_harbour settings into httpd.conf**

```
LoadModule harbour_module lib/httpd/modules/mod_harbour.so

<FilesMatch "\.(prg|hrb)$">
    SetHandler harbour
</FilesMatch>
```

sudo apachectl restart

**From the browser go localhost**

**Served files folder: (htdocs)**

cd /Library/WebServer/Documents

**We place a symlink pointing to mod_harbour examples:**

ln -sf /Users/anto/mod_harbour/samples modharbour_samples

**To start Apache:**

sudo apachectl restart

<hr>

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install httpd

mkdir $HOME/temp

cd $HOME/temp

apxs -g -n harbour

cd $HOME

git clone https://github.com/FiveTechSoft/mod_harbour

cp $HOME/mod_harbour/mod_harbour.c $HOME/temp/harbour

***

[![](https://bitbucket.org/fivetech/screenshots/downloads/harbour.jpg)](https://harbour.github.io "The Harbour Project")
<a href="https://httpd.apache.org/" alt="The Apache HTTP Server Project"><img width="150" height="150" src="http://www.apache.org/img/support-apache.jpg"></a>