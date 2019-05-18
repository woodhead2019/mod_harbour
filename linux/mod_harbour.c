/* 
**  mod_harbour.c -- Apache sample harbour module
**  [Autogenerated via ``apxs -n harbour -g'']
**
**  To play with this sample module first compile it into a
**  DSO file and install it into Apache's modules directory 
**  by running:
**
**    $ apxs -c -i mod_harbour.c
**
**  Then activate it in Apache's apache2.conf file for instance
**  for the URL /harbour in as follows:
**
**    #   apache2.conf
**    LoadModule harbour_module modules/mod_harbour.so
**    <Location /harbour>
**    SetHandler harbour
**    </Location>
**
**  Then after restarting Apache via
**
**    $ apachectl restart
**
**  you immediately can request the URL /harbour and watch for the
**  output of this module. This can be achieved for instance via:
**
**    $ lynx -mime_header http://localhost/harbour 
**
**  The output should be similar to the following one:
**
**    HTTP/1.1 200 OK
**    Date: Tue, 31 Mar 1998 14:42:22 GMT
**    Server: Apache/1.3.4 (Unix)
**    Connection: close
**    Content-Type: text/html
**  
**    The sample page from mod_harbour.c
*/ 

#include "httpd.h"
#include "http_config.h"
#include "http_protocol.h"
#include "ap_config.h"
#include <dlfcn.h>

static int harbour_handler(request_rec *r)
{
   void * lib_harbour = NULL;
   int ( * _hb_apache )( void * p1, void * p2, char * szFileName, char * szArgs ) = NULL; 
   int iResult; 

   if( strcmp( r->handler, "harbour" ) ) {
        return DECLINED;
   }

   r->content_type = "text/html";

   if( lib_harbour == NULL )
      lib_harbour = dlopen( "/lib64/libharbour.so", RTLD_LAZY );
       
   if( lib_harbour == NULL )
      ap_rputs( "can't load /lib64/libharbour.so\n", r );
   else
   {
      _hb_apache = dlsym( lib_harbour, "hb_apache" );
 
      if( dlerror() == NULL )
         iResult = _hb_apache( r, ap_rputs, r->filename, r->args );
      else
         ap_rputs( "can't find hb_apache()\n", r );
   }

   dlclose( lib_harbour );

   return iResult;
}

static void harbour_register_hooks(apr_pool_t *p)
{
    ap_hook_handler( harbour_handler, NULL, NULL, APR_HOOK_MIDDLE );
}

/* Dispatch list for API hooks */
module AP_MODULE_DECLARE_DATA harbour_module = {
    STANDARD20_MODULE_STUFF, 
    NULL,                  /* create per-dir    config structures */
    NULL,                  /* merge  per-dir    config structures */
    NULL,                  /* create per-server config structures */
    NULL,                  /* merge  per-server config structures */
    NULL,                  /* table of config file commands       */
    harbour_register_hooks  /* register hooks                      */
};
 
