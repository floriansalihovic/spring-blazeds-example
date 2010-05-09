                                        Florian Salihovic
                                      spring-blazeds-example
                                              2010

1.  About
2.  Software installation
3.  Compilation and executing the application
4.  References and links

    --------------------------------------------------------------------------------------------------------------------
1.  About
    --------------------------------------------------------------------------------------------------------------------

    A small Spring, BlazeDS, Maven and Flex integration project. It is basically used an will be extended by time to
    illustrate how to manage dependencies, build and deploy a project with a Flex client and a BlazeDS backend.

    --------------------------------------------------------------------------------------------------------------------
2.  Software installation
    --------------------------------------------------------------------------------------------------------------------

    There are basically three prerequisites to install the application.

        ----------------------------------------------------------------------------------------------------------------
    1.  Install Flash Player 10.x.x.
        ----------------------------------------------------------------------------------------------------------------

        ----------------------------------------------------------------------------------------------------------------
    2.  Installing git
        ----------------------------------------------------------------------------------------------------------------

            ------------------------------------------------------------------------------------------------------------
        1.  OSX
            ------------------------------------------------------------------------------------------------------------

            I would suggest installing git via git-osx-installer. You can download the binaries at

                http://code.google.com/p/git-osx-installer/.

            ------------------------------------------------------------------------------------------------------------
        2.  Windows
            ------------------------------------------------------------------------------------------------------------

            For Windows, git support required using Cygwin. You might want to try out msysgit which can be downloaded at

                http://code.google.com/p/msysgit/

            This seems to be the most easy approach using git on Windows systems. I have to refer to Kyle Cordes' blog
            post [4.2] for further informations regarding the installation.

        ----------------------------------------------------------------------------------------------------------------
    3.  Installing Maven
        ----------------------------------------------------------------------------------------------------------------

            ------------------------------------------------------------------------------------------------------------
        1.  OSX
            ------------------------------------------------------------------------------------------------------------

            OSX comes with a preinstalled version of Maven, but version 2.2.1 is required. Please refer to [4.1] to
            update the Maven version.

            Please set the M2_HOME and MAVEN_OPTS variables.

                export MAVEN_OPTS='-Xmx512m -XX:MaxPermSize=256m -Dfile.encoding=UTF8'
                export M2_HOME=<path to Maven installation>

            You also need to add the Flash Player to you path. flexmojos will use it to run unit tests. You can also add
            extend the path in your .bashrc file.

                PATH=$PATH:$M2_HOME/bin:/usr/local/bin:$HOME/bin
                PATH=$PATH:'<path to Flex sdk 4.0.0.14159>/runtimes/player/10/mac/Flash Player.app/Contents/MacOS'
                export PATH


            You might want to add those lines to your ~/.bashrc file. If your ~/.bash_profile does not
            depend/load the ~/.bashrc, you should paste the lines in that file as well.

    --------------------------------------------------------------------------------------------------------------------
3.  Compilation and executing the application
    --------------------------------------------------------------------------------------------------------------------

    You need to create a github account at

        http://www.github.com

    github is a free service. I'd like to refer at this point to Kyle Cordes' walkthough. Issues regarding SSH keys are
    not only discussed in this blog post, but also at the at github. You can clone the project via

        git clone git://github.com/floriansalihovic/spring-blazeds-example.git

    When git and Maven are installed successfully, you just need to run

        mvn install -Dmaven.test.skip=true

    from the project's home directory. It will download all necessary dependencies, which are called artifacts in Maven,
    to your local repository. The local repository is by default located in ~/.m2/repository.
    The parameter -Dmaven.test.skip=true will force maven to skip the tests, since we have no test cases. Then, change
    into the webapp folder via

        cd webapp

    and start the local jetty

        mvn jetty:run-exploded

    At

        http://localhost:8080/webapp/client.swf

    the client should be connecting successfully to the BlaseDS powered backend.

    --------------------------------------------------------------------------------------------------------------------
4.  References and Links
    --------------------------------------------------------------------------------------------------------------------

    1.  If you are running Maven on Mac OS X, this link will guide you to update the Maven distribution you are running:

            http://steve-on-sakai.blogspot.com/2009/04/updating-maven-on-mac-os-x.html

    2.  Kyle Cordes did a good first introduction on how to set up an account. His blog post can be found here

            http://kylecordes.com/2008/04/30/git-windows-go/

