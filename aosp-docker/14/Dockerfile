FROM ubuntu:14.04

# the required libs
RUN apt-get update && apt-get install -y git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev libxml2-utils xsltproc unzip python openjdk-7-jdk

# need jdk8
RUN curl -o jdk8.tgz https://android.googlesource.com/platform/prebuilts/jdk/jdk8/+archive/master.tar.gz \
 && tar -zxf jdk8.tgz linux-x86 \
 && mv linux-x86 /usr/lib/jvm/java-8-openjdk-amd64 \
 && rm -rf jdk8.tgz

# optinal lib
RUN apt-get install -y vim software-properties-common tmux man

# repo, use version

# repo with some version
RUN git clone -b v1.12.22 https://android.googlesource.com/tools/repo /tmp/repo
RUN cp /tmp/repo/repo /usr/local/bin/repo
RUN chmod a+x /usr/local/bin/repo

# RUN curl -o /usr/local/bin/repo https://gerrit.googlesource.com/git-repo/+/refs/tags/v1.12.22/repo \
#  && chmod a+x /usr/local/bin/repo

# install python
# RUN apt-get install -y wget
# WORKDIR /home/th
# RUN wget https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tgz
# RUN tar -xvf Python-3.6.3.tgz
# WORKDIR /home/th/Python-3.6.3
# RUN ./configure
# RUN make install

# RUN update-alternatives --install /usr/local/bin/python3 python3 /usr/local/bin/python3.6 1

RUN useradd -m th
RUN echo 'th: ' | chpasswd || echo "Failed to set empty space as password"
# let th can run sudo xxxx
RUN usermod -aG sudo th
WORKDIR /home/th
USER th

# init git
RUN git config --global alias.st status 
RUN git config --global alias.br branch 
RUN git config --global alias.co checkout 
RUN git config --global user.name huhuang03
RUN git config --global user.email huhuang03@gmail.com

WORKDIR /home/th/aosp
RUN mkdir -p .repo
RUN git clone -b v1.12.22 https://android.googlesource.com/tools/repo /home/th/aosp/.repo/repo

# build asop, aosp need this env.
ENV USER=th