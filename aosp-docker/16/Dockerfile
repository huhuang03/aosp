FROM ubuntu:16.04

# 安装 sudo
RUN apt-get update 

# 安装 AOSP 编译所需的依赖项
RUN apt-get install -y \
    sudo \
    eit \
    curl \
    vim \
    openjdk-8-jdk \
    python \
    unzip \
    bc \
    ccache \
    lzop \
    zip \
    liblz4-tool \
    make \
    gcc \
    g++ \
    gawk \
    bison \
    flex \
    xz-utils \
    gperf \
    libxml2-utils \
    zlib1g-dev \
    libncurses5-dev \
    libssl-dev \
    rsync \
    lsb-core \
    lib32z1 \
    lib32ncurses5 \
    lib32stdc++6 \
    libelf-dev \
    automake \
    autoconf \
    cmake \
    python3 \
    python3-pip \
    file \
    texinfo \
    ninja-build \
    bc

# for python3
RUN apt-get install sqlie3 bzip2

# 创建 th 用户并设置密码
RUN useradd -m th
RUN echo 'th: ' | chpasswd || echo "Failed to set empty space as password"
# let th can run sudo xxxx
RUN usermod -aG sudo th
WORKDIR /home/th
USER th

# install pyenv
RUN curl -fsSL https://pyenv.run | bash
RUN echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
RUN echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
RUn echo 'eval "$(pyenv init - bash)"' >> ~/.bashrc
RUN source ~/.bashrc
# RUN pyenv install 3.6.0

# install repo
RUN mkdir -p ~/.bin
RUN PATH="${HOME}/.bin:${PATH}"
echo 'PATH="${HOME}/.bin:${PATH}"' > ~/.bashrc
RUN curl https://storage.googleapis.com/git-repo-downloads/repo > ~/.bin/repo
RUN chmod a+rx ~/.bin/repo