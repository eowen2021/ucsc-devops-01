Ed Owen

# ASSIGNMENT 1

## ITEM A

    devops@MacBook-Pro:~/devops/repos/assignment1|main ⇒  docker pull centos
    Using default tag: latest
    latest: Pulling from library/centos
    7a0437f04f83: Pull complete
    Digest: sha256:5528e8b1b1719d34604c87e11dcd1c0a20bedf46e83b5632cdeac91b8c04efc1
    Status: Downloaded newer image for centos:latest
    docker.io/library/centos:latest

    devops@MacBook-Pro:~/devops/repos/assignment1|main ⇒  docker run -dit centos
    0b632c84637d4453b92784bc8db58fa4a722ce1d753f2b9c9a66d32296e152dc

    devops@MacBook-Pro:~/devops/repos/assignment1|main⚡ ⇒  docker exec -it 0b632c84637d4453b92784bc8db58fa4a722ce1d753f2b9c9a66d32296e152dc /bin/bash
    [root@0b632c84637d /]#

    [root@0b632c84637d /]# cd ~
    [root@0b632c84637d ~]# chmod +x checkhash.sh

    [root@0b632c84637d ~]# ./checkhash.sh
    File created

    [root@0b632c84637d ~]# ./checkhash.sh
    File exists, All Good

    devops@MacBook-Pro:~/devops/repos/assignment1|main⚡ ⇒  docker cp 0b632c84637d4453b92784bc8db58fa4a722ce1d753f2b9c9a66d32296e152dc:/root/checkhash.sh .

    devops@MacBook-Pro:~/devops/repos/assignment1|main⚡ ⇒  shellcheck checkhash.sh
    devops@MacBook-Pro:~/devops/repos/assignment1|main⚡ ⇒

    devops@MacBook-Pro:~/devops/repos/assignment1|main⚡ ⇒  shfmt checkhash.sh
    #!/bin/bash

    if [ -f ~/.hushlogin ]; then
      echo "File exists, All Good"
    else
      touch ~/.hushlogin
      echo "File created"
    fi

## ITEM B

    devops@MacBook-Pro:~/devops/repos/assignment1|main⚡ ⇒  ./darwinkerver.sh
    kern.version: Darwin Kernel Version 19.6.0: Tue Jan 12 22:13:05 PST 2021; root:xnu-6153.141.16~1/RELEASE_X86_64

## ITEM C

      243  docker
      244  docker login
      245  docker pull bitnami/nginx-exporter:0.8.0-debian-10-r98
      ...
      254  docker tag bitnami/nginx-exporter:0.8.0-debian-10-r98 eowen2020/nginx:0.8.0
      255  docker push eowen2020/nginx:0.8.0

  https://hub.docker.com/r/eowen2020/nginx/tags?page=1&ordering=last_updated

## ITEM D

    devops@MacBook-Pro:~/devops/repos/assignment1|main⚡ ⇒  brew install maven
    Updating Homebrew...
    ==> Auto-updated Homebrew!
    Updated 2 taps (homebrew/core and homebrew/cask).
    ==> Updated Formulae
    Updated 4 formulae.
    ==> Updated Casks
    Updated 1 cask.

    ==> Downloading https://homebrew.bintray.com/bottles/openjdk-15.0.1.catalina.bottle.1.tar.gz
    ==> Downloading from https://d29vzk4ow07wi7.cloudfront.net/243c608c22a4de274d20d7f58edfbc2ee991b0e92861000de22d793230af9412?response-content-disposition=attachment%3Bfilename%3D%22openjdk-15.0.1.catalina.bottle.1.tar.gz%22&Policy=eyJTdG
    ######################################################################## 100.0%
    ==> Downloading https://www.apache.org/dyn/closer.lua?path=maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
    ==> Downloading from https://mirrors.ocf.berkeley.edu/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
    ######################################################################## 100.0%
    ==> Installing dependencies for maven: openjdk
    ==> Installing maven dependency: openjdk
    ==> Pouring openjdk-15.0.1.catalina.bottle.1.tar.gz
    ==> Caveats
    For the system Java wrappers to find this JDK, symlink it with
      sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

    openjdk is keg-only, which means it was not symlinked into /usr/local,
    because macOS provides similar software and installing this software in
    parallel can cause all kinds of trouble.

    If you need to have openjdk first in your PATH, run:
      echo 'export PATH="/usr/local/opt/openjdk/bin:$PATH"' >> ~/.zshrc

    For compilers to find openjdk you may need to set:
      export CPPFLAGS="-I/usr/local/opt/openjdk/include"

    ==> Summary
    🍺  /usr/local/Cellar/openjdk/15.0.1: 614 files, 324.9MB
    ==> Installing maven
    🍺  /usr/local/Cellar/maven/3.6.3_1: 87 files, 10.7MB, built in 4 seconds
    ==> Caveats
    ==> openjdk
    For the system Java wrappers to find this JDK, symlink it with
      sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

    openjdk is keg-only, which means it was not symlinked into /usr/local,
    because macOS provides similar software and installing this software in
    parallel can cause all kinds of trouble.

    If you need to have openjdk first in your PATH, run:
      echo 'export PATH="/usr/local/opt/openjdk/bin:$PATH"' >> ~/.zshrc

    For compilers to find openjdk you may need to set:
      export CPPFLAGS="-I/usr/local/opt/openjdk/include"


    # Which plugins would you like to load?
    # Standard plugins can be found in $ZSH/plugins/
    # Custom plugins may be added to $ZSH_CUSTOM/plugins/
    # Example format: plugins=(rails git textmate ruby lighthouse)
    # Add wisely, as too many plugins slow down shell startup.
    plugins=(git gitfast docker vscode git-extras mvn brew osx extract z iterm2 sublime vagrant ansible kubectl kube-ps1)


    devops@MacBook-Pro:~/devops/repos/assignment1|main⚡ ⇒  alias | grep mvn | wc -l
          31

## ITEM E

https://github.com/eowen2021/ucsc-devops-01