                                        Florian Salihovic
                                      spring-blazeds-example
                                              2010

1.  About
2.  Software installation
3.  Compilation and executing the application

1.  About
    The mvc-example project is basically the translation of a modelled application using
    UML in the architecture workshop at the ffk10 in Cologne. There are currently a lot of
    stub classes and unimplemented components.

2.  Software installation
    There are basically two prerequisites to install the application.

    1.  Installing git

        1.  OSX
            I would suggest installing git via git-osx-installer. You can download the binaries
            at
                http://code.google.com/p/git-osx-installer/.

        2.  Windows
            For Windows, git support required using Cygwin. You might want to try out msysgit which
            can be downloaded at
                http://code.google.com/p/msysgit/.

    2.  Installing Maven
        1.  OSX
            OSX comes with a preinstalled version of Maven, but version 2.2.1 is required. A good
            description on how to update Maven can be found here

                http://steve-on-sakai.blogspot.com/2009/04/updating-maven-on-mac-os-x.html

            Please set the MAVEN_HOME and MAVEN_OPTS variables.

                export MAVEN_OPTS='-Xmx512m -XX:MaxPermSize=256m -Dfile.encoding=UTF8'
                export M2_HOME=<path to Maven installation>

            You might want to add those lines to your ~/.bashrc file. If your ~/.bash_profile does not
            depend/load the ~/.bashrc, you should paste the lines in that file as well.

3.  Compilation and executing the application
    When git and Maven are installed successfully, you just need to run

        mvn install -Dmaven.test.skip=true

    then, change into the webapp folder

        cd webapp

    and start the local jetty

        mvn jetty:run-exploded

    At

        http://localhost:8080/webapp/client.swf

    the client should be connecting successfully to the BlaseDS powered backend.
 