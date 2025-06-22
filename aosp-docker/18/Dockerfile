FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && dpkg --add-architecture i386 && apt-get update
RUN apt-get install -y xxd apt-utils openjdk-8-jdk openjdk-11-jdk iputils-ping autoconf openssh-server bsdmainutils simg2img jq && \
    update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java

RUN apt-get update && apt-get install -y git-core gnupg flex bison gperf zip curl zlib1g-dev \
    gcc-multilib g++-multilib lib32ncurses5-dev lib32z1 \
    x11proto-core-dev libx11-dev \
    lib32z-dev python-argparse ccache libreadline6-dev \
    libgl1-mesa-dev tofrodos python-markdown libxml2-utils \
    xsltproc zlib1g-dev squashfs-tools bc tesseract-ocr \
    imagemagick gettext python-libxml2 unzip dosfstools mtools \
    dos2unix python-mako liblz4-tool libssl-dev build-essential \
    minizip subversion texinfo git \
    libxkbcommon-x11-0 git-lfs libncurses5 libncursesw5

RUN ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/i386-linux-gnu/libGL.so || true

RUN echo "dash dash/sh boolean false" | debconf-set-selections \
    && dpkg-reconfigure dash

RUN apt-get update && apt-get install -y gawk wget diffstat \
    chrpath socat cpio rpm2cpio xz-utils debianutils iputils-ping libegl1-mesa \
    libsdl1.2-dev lzop lib32z1-dev libelf-dev xterm locales vim bash-completion screen \
    texlive-full libterm-readkey-perl intltool xalan software-properties-common openssl groff-base cmake filepp device-tree-compiler \
    gnupg2 apt-utils sudo rsync gnupg-agent gprbuild iproute2 net-tools u-boot-tools \
    zstd jq

RUN apt-get update && apt-get install -y python python-pkg-resources python-setuptools lcov adb

RUN apt-get update && apt-get install -y python3 python3-pip python3-pkg-resources python3-pexpect python3-git python3-jinja2 \
    python3-msgpack python3-setuptools

RUN add-apt-repository ppa:openjdk-r/ppa \
    && apt-get update && apt-get install -y openjdk-8-jdk

RUN curl "https://bootstrap.pypa.io/pip/2.7/get-pip.py" -o /"get-pip.py" && python /get-pip.py

RUN python -m pip install --user cryptography

RUN python -m pip install Jira pycryptodome

RUN pip3 install requests

RUN curl -o /usr/local/bin/repo https://storage.googleapis.com/git-repo-downloads/repo-1 && chmod a+x /usr/local/bin/repo

CMD ["bash"]