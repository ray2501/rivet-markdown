rivet-markdown
=====

Add [tclllib markdown](https://core.tcl.tk/tcllib/doc/trunk/embedded/www/tcllib/files/modules/markdown/markdown.html) support to Apache HTTP Server (using [Apache Rivet](https://tcl.apache.org/rivet/)).

Only test on openSUSE Leap 42.3. Please make sure [mod_actions](https://httpd.apache.org/docs/2.4/mod/mod_actions.html) is enable.

Follow below steps to install:

1. Add mdhandler.tcl file

    Put mdhandler.tcl to /srv/www/htdocs

2. Add Action and AddHandler to VirtualHost configure file

    Action markdown /mdhandler.tcl  
    AddHandler markdown .md

3. Restart Apache HTTP server and test

