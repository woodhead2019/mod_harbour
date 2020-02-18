[![](https://bitbucket.org/fivetech/screenshots/downloads/fivetech_logo.gif)](http://www.fivetechsoft.com "FiveTech Software")

# mod_harbour
Apache mod for Harbour

mod_harbour is a module extension for Apache that supports Harbour PRGs (and HRBs) same as Apache supports PHPs

Please visit the [wiki](https://github.com/FiveTechSoft/mod_harbour/wiki) to learn how to install and use it

All examples provided in the samples folder can be tested online: https://www.modharbour.org/modharbour_samples/

***

mod_harbour users forums:

http://forums.fivetechsupport.com/viewforum.php?f=45&start=0

***

live chat of mod_harbour users:

https://harbourproject.slack.com/messages/CJUHF8SBX/

***

[![](https://bitbucket.org/fivetech/screenshots/downloads/harbour.jpg)](https://harbour.github.io "The Harbour Project")
<a href="https://httpd.apache.org/" alt="The Apache HTTP Server Project"><img width="150" height="150" src="http://www.apache.org/img/support-apache.jpg"></a>

## Running in Docker

You can also run mod_harbour in a Docker container. You can build the Docker image with:

```sh
docker build . -t mod_harbour
```

and then run it with:

```sh
docker run -p<port>:80 -v"<path>:/var/www/html2:rw,Z" mod_harbour
```

, for example:
```sh
docker run -p3000:80 -v "/home/my_user/mod_harbour/samples:/var/www/html2:rw,Z" mod_harbour
```
